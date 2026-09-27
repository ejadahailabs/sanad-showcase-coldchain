# 06-design/hardware — the hardware model (Phase 6)

`MrtmHardware.sysml` (IEC 62304 cl. 5.3.3; IEC 60601-1 frame): `part def Component` (part number, vendor, normal/alarm mA); six wiring `interface def`s that specialise the Phase 4 interfaces and add pin attributes (`OneWireWiring`, `I2cWiring`, `GpioWiring`, `ButtonWiring`, `SenseWiring`, `AnalogSenseWiring`); twelve chosen components, each specialising its Phase 4 part def and `Component`; `part def MrtmBoard :> MrtmUnit` redefining every part with its chosen component and every wire with its pins (the GPIO map), plus the new `mainsSenseLine`; 19 `satisfy` links.

Pictures: `../views/rendered/mrtmHwBlocks.svg`, `mrtmHwInterfaces.svg`. Tables: `../../09-hardware/` (generated). Every value EE-REVIEW.
