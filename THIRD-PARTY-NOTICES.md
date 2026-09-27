# Third-party notices

**In one line:** this repository uses a few outside tools and one outside specification, built by other people or organisations, not by us. This page names them and their licence, so credit is given — it does not copy any licence's full legal text; that gets fetched fresh from the source at the moment the repository actually goes public, so it's never stale.

| Name | What it is | Licence name | Where it's used here |
|---|---|---|---|
| **Unity** | A small C unit-testing framework | MIT License | `10-src/test/unity/` (see `SOUP.md` in that folder — SOUP means "Software Of Unknown Provenance", the medical-device term for outside code we didn't write) |
| **GoogleTest (gtest)** | A C++ unit-testing framework from Google | BSD 3-Clause License | Named in `runs/05-iec62304-pinned/07-adr/ADR-0023-unit-test-framework.md` as the unit-test framework choice for that run |
| **ESP-IDF** | Espressif's official development kit for the ESP32 family of microcontrollers | Apache License 2.0 | The firmware build target for the fridge monitor across all five runs (see each run's `09-hardware/` folder) |
| **OMG SysML v2** | The Object Management Group's systems-modelling language, version 2 — the picture language every run's architecture diagrams are drawn in | OMG's own specification and Pilot Implementation licence terms (published by OMG, not by us) | Every run's design views; validated with the "OMG Pilot" checker referenced throughout `FINDINGS.md` and the `13-assessment/` folders |

## Where to get the real, current licence text

At the moment this repository actually goes public, whoever does the flip should fetch each licence's current full text directly from its own source, rather than trusting a copy pasted in here months earlier:

- Unity — the licence file in Unity's own GitHub repository (ThrowTheSwitch/Unity)
- GoogleTest — the licence file in Google's own GitHub repository (google/googletest)
- ESP-IDF — the licence file in Espressif's own GitHub repository (espressif/esp-idf)
- OMG SysML v2 — the licence terms published on the Object Management Group's own site for the SysML v2 specification and Pilot Implementation

## What this page is not

This is a names-and-licences list, not a legal opinion. It does not say these licences are compatible with whichever option Masood picks in `LICENSING-OPTIONS.md` — that check is part of the owner decision, not assumed here.
