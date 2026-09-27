// display_mgr.cpp — MrtmSwDetail display classes (FrameBuffer, Widget, TextWidget, BannerWidget,
// IconWidget, Ssd1306Driver, Screen) behind the C interface of display_mgr.h (ADR-0022).
// IEC 62304 §5.5.1, Class C. C++17, no exceptions, no RTTI, no heap: every object is static.
// REVIEW: no font — digits are 7-segment bars 32 px tall, banners a bar plus the message id;
// a glyph font (SOUP) is a decision for the display review.
#include <cstring>
#include "display_mgr.h"
extern "C" {
#include "event_log.h"
#include "mrtm_config.h"
#include "mrtm_hal.h"
}

namespace {

constexpr uint8_t kAddr = 0x3C;

class FrameBuffer {
public:
    static constexpr int kW = 128, kH = 64;
    void clear() { std::memset(px_, 0, sizeof px_); dirty_ = 0xFF; }
    void setPixel(int x, int y, bool on)
    {
        if (x < 0 || y < 0 || x >= kW || y >= kH) return;
        uint8_t &b = px_[(y / 8) * kW + x];
        uint8_t bit = static_cast<uint8_t>(1u << (y % 8));
        b = on ? static_cast<uint8_t>(b | bit) : static_cast<uint8_t>(b & ~bit);
        dirty_ |= static_cast<uint8_t>(1u << (y / 8));
    }
    void fill(int x, int y, int w, int h, bool on)
    {
        for (int j = y; j < y + h; j++)
            for (int i = x; i < x + w; i++) setPixel(i, j, on);
    }
    const uint8_t *page(int p) const { return &px_[p * kW]; }
    uint8_t dirtyPages() const { return dirty_; }
    void clean() { dirty_ = 0; }
private:
    uint8_t px_[kW * kH / 8] = {};
    uint8_t dirty_ = 0xFF;
};

class Widget {
public:
    Widget(int x, int y) : x_(x), y_(y) {}
    virtual ~Widget() = default;
    virtual void draw(FrameBuffer &fb) = 0;
    bool dirty() const { return dirty_; }
    void markClean() { dirty_ = false; }
protected:
    int x_, y_;
    bool dirty_ = true;
};

// Seven-segment digits, 32 px tall: 5.1 mm on the 0.96 in panel (MRTM-IFC-004).
class TextWidget : public Widget {
public:
    static constexpr int kGlyphH = 32;
    using Widget::Widget;
    void setTenths(int16_t tenths, bool valid)
    {
        if (tenths != tenths_ || valid != valid_) { tenths_ = tenths; valid_ = valid; dirty_ = true; }
    }
    int16_t tenths() const { return tenths_; }
    // @implements MRTM-SYS-011 MRTM-IFC-004
    void draw(FrameBuffer &fb) override
    {
        fb.fill(x_, y_, 96, kGlyphH, false);
        if (!valid_) { fb.fill(x_, y_ + kGlyphH / 2, 60, 3, true); return; }   // "---"
        int v = tenths_ < 0 ? -tenths_ : tenths_;
        int digits[3] = { (v / 100) % 10, (v / 10) % 10, v % 10 };             // dd.d degC
        if (tenths_ < 0) fb.fill(x_, y_ + kGlyphH / 2, 6, 3, true);
        for (int i = 0; i < 3; i++) segments(fb, x_ + 8 + i * 28 + (i == 2 ? 6 : 0), digits[i]);
        fb.fill(x_ + 62, y_ + kGlyphH - 3, 3, 3, true);                         // decimal point
    }
private:
    void segments(FrameBuffer &fb, int x, int d)
    {
        static const uint8_t kSeg[10] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F };
        const int w = 18, h = kGlyphH / 2 - 1, t = 3;
        const uint8_t s = kSeg[d];
        if (s & 0x01) fb.fill(x, y_, w, t, true);
        if (s & 0x02) fb.fill(x + w - t, y_, t, h, true);
        if (s & 0x04) fb.fill(x + w - t, y_ + h, t, h, true);
        if (s & 0x08) fb.fill(x, y_ + 2 * h - t + 1, w, t, true);
        if (s & 0x10) fb.fill(x, y_ + h, t, h, true);
        if (s & 0x20) fb.fill(x, y_, t, h, true);
        if (s & 0x40) fb.fill(x, y_ + h - 1, w, t, true);
    }
    int16_t tenths_ = 0;
    bool valid_ = false;
};

class BannerWidget : public Widget {
public:
    using Widget::Widget;
    void setMessage(display_msg_t m) { if (m != msg_) { msg_ = m; dirty_ = true; } }
    display_msg_t message() const { return msg_; }
    // @implements MRTM-SYS-005 MRTM-SYS-007 MRTM-SYS-013 MRTM-SYS-022 MRTM-SAF-012 MRTM-SAF-016 MRTM-MNT-003 MRTM-DMG-001
    void draw(FrameBuffer &fb) override
    {
        fb.fill(x_, y_, FrameBuffer::kW, 16, false);
        if (msg_ == MSG_NONE) return;
        fb.fill(x_, y_, FrameBuffer::kW, 16, true);                             // inverted bar
        for (int i = 0; i < static_cast<int>(msg_); i++) fb.fill(x_ + 4 + i * 6, y_ + 5, 4, 6, false);
    }
private:
    display_msg_t msg_ = MSG_NONE;
};

class IconWidget : public Widget {
public:
    using Widget::Widget;
    void setIcon(uint8_t batteryPct)
    {
        uint8_t step = static_cast<uint8_t>((batteryPct > 100 ? 100 : batteryPct) / 10 * 10);   // steps of 10 %
        if (step != pct_) { pct_ = step; dirty_ = true; }
    }
    uint8_t pct() const { return pct_; }
    // @implements MRTM-MNT-002
    void draw(FrameBuffer &fb) override
    {
        fb.fill(x_, y_, 22, 8, false);
        fb.fill(x_, y_, 22, 1, true); fb.fill(x_, y_ + 7, 22, 1, true);
        fb.fill(x_, y_, 1, 8, true); fb.fill(x_ + 21, y_, 1, 8, true);
        fb.fill(x_ + 1, y_ + 1, pct_ / 5, 6, true);                              // 0..20 px
    }
private:
    uint8_t pct_ = 0;
};

class Ssd1306Driver {
public:
    static constexpr uint32_t kTimeoutMs = MRTM_I2C_TIMEOUT_MS;
    mrtm_err_t init()
    {
        static const uint8_t kInit[] = { 0x00, 0xAE, 0xD5, 0x80, 0xA8, 0x3F, 0xD3, 0x00, 0x40, 0x8D, 0x14,
                                         0x20, 0x00, 0xA1, 0xC8, 0xDA, 0x12, 0x81, 0xCF, 0xD9, 0xF1, 0xDB,
                                         0x40, 0xA4, 0xA6, 0xAF };
        return hal_i2c_write(kAddr, kInit, sizeof kInit, kTimeoutMs);
    }
    mrtm_err_t sendPages(FrameBuffer &fb)
    {
        for (int p = 0; p < FrameBuffer::kH / 8; p++) {
            if (!(fb.dirtyPages() & (1u << p))) continue;
            const uint8_t cmd[] = { 0x00, static_cast<uint8_t>(0xB0 + p), 0x00, 0x10 };
            uint8_t data[1 + FrameBuffer::kW];
            data[0] = 0x40;
            std::memcpy(data + 1, fb.page(p), FrameBuffer::kW);
            if (hal_i2c_write(kAddr, cmd, sizeof cmd, kTimeoutMs) != MRTM_OK ||
                hal_i2c_write(kAddr, data, sizeof data, kTimeoutMs) != MRTM_OK) return MRTM_ERR_TIMEOUT;
        }
        fb.clean();
        return MRTM_OK;
    }
    // REVIEW: timing — 9 SCL pulses + re-init must fit in 1 s after a 100 ms timeout (MRTM-SAF-021).
    // @implements MRTM-SAF-021
    mrtm_err_t recoverBus()
    {
        hal_i2c_bus_reset();
        (void)event_log_post(MRTM_EV_I2C_BUS_RESET, 0, 0);
        return init();
    }
};

class Screen {
public:
    void update(const display_model_t &m) { model_ = m; }
    // @implements MRTM-PRF-004 MRTM-SYS-005 MRTM-SYS-013 MRTM-SAF-016 MRTM-MNT-003 MRTM-DMG-002
    void renderFrame(uint32_t now_ms)
    {
        if (!haveTemp_ || now_ms - lastTempMs_ >= MRTM_TEMP_REFRESH_MS) {  // temperature every 10 s
            temp_.setTenths(model_.temp_tenths, model_.temp_valid);
            lastTempMs_ = now_ms;
            haveTemp_ = true;
        }
        banner_.setMessage(pick(now_ms));
        battery_.setIcon(model_.battery_pct);
        Widget *all[] = { &temp_, &banner_, &battery_ };
        for (Widget *w : all)
            if (w->dirty()) { w->draw(fb_); w->markClean(); }
        if (driver_.sendPages(fb_) != MRTM_OK) (void)driver_.recoverBus();
    }
    mrtm_err_t start(uint32_t now_ms) { fb_.clear(); startMs_ = now_ms; return driver_.init(); }
    display_msg_t banner() const { return banner_.message(); }
    int16_t tenths() const { return temp_.tenths(); }
    uint8_t batteryPct() const { return battery_.pct(); }
private:
    // Most urgent first. Band and version share the first 3 s after power-up (MRTM-SAF-016, MNT-003).
    display_msg_t pick(uint32_t now_ms) const
    {
        switch (model_.alarm) {
        case ALARM_PROBE_FAULT: return MSG_PROBE_FAULT;
        case ALARM_BUZZER_FAULT: return MSG_BUZZER_FAULT;
        case ALARM_SOUNDING: case ALARM_SILENCED: return MSG_EXCURSION;        // for the whole excursion
        default: break;
        }
        uint32_t up = now_ms - startMs_;
        if (up < MRTM_BAND_SHOW_MS) return (up / 1000u) % 2u == 0u ? MSG_BAND : MSG_VERSION;
        if (model_.log_warn) return MSG_LOG_CAPACITY;
        if (model_.calib_due) return MSG_CALIBRATION_DUE;
        return MSG_NONE;
    }
    FrameBuffer fb_;
    TextWidget temp_{ 0, 20 };
    BannerWidget banner_{ 0, 0 };
    IconWidget battery_{ 104, 56 };
    Ssd1306Driver driver_;
    display_model_t model_{};
    uint32_t lastTempMs_ = 0, startMs_ = 0;
    bool haveTemp_ = false;
};

Screen g_screen;

}  // namespace

// @implements MRTM-SAF-016
extern "C" mrtm_err_t display_mgr_init(void)
{
    return g_screen.start(hal_now_ms()) == MRTM_OK ? MRTM_OK : MRTM_ERR_BUS;
}

// REVIEW: target form copies under a mutex (displayTask vs. writers); host is single-threaded.
extern "C" void display_mgr_update(const display_model_t *m)
{
    if (m != nullptr) g_screen.update(*m);
}

// @implements MRTM-PRF-004
extern "C" void display_mgr_tick(void)
{
    g_screen.renderFrame(hal_now_ms());
}

extern "C" display_msg_t display_mgr_banner(void) { return g_screen.banner(); }
extern "C" int16_t display_mgr_shown_tenths(void) { return g_screen.tenths(); }
extern "C" uint8_t display_mgr_shown_battery_pct(void) { return g_screen.batteryPct(); }
