# 48MHz

In order to run code on the Ultimate64 using the 48 Mhz mode a set of requirements must be met, see [Turbo Mode control registers documentation](https://1541u-documentation.readthedocs.io/en/latest/config/turbo_mode.html#turbo-control-registers)

# System requirements

Ultimate64
*   Firmware version 1.33 or higher
*   Turbo Mode set to `Turbo Enable Bit`

# Tool chain

## Windows

https://github.com/markusC64/1541ultimate2/releases/tag/tools-v1.2.1

## Linux

# Turbo Control registers

The turbo mode can be controlled by setting values at specific addresses.

---

## $D030 - __Turbo Enable Bit__

This register is only available when the Turbo Mode selector is set to ‘Turbo Enable Bit’. Otherwise it simply reads $FF.

| Value | Details |
| --- | --- | 
| __bit 0__ (Write): | 0 = 1 MHz + Badlines<br />1 = Use settings from menu | 
|__bit 0__ (Read): |0 = Turbo Off<br/>1 = Turbo On |

---

## $D031 - __U64 Turbo Control__

This register is only available when the Turbo Mode selector is set to ‘U64 Turbo Registers’ or ‘Turbo Enable Bit’. Otherwise it simply reads $FF.

| Value | Details |
| --- | --- | 
| __bit 0-3__: | CPU Speed (index) <br />0 = 1 MHz<br />1 = 2 MHz<br />2 = 3 MHz<br />3 = 4 MHz<br />4 = 5 MHz<br />5 = 6 MHz<br />6 = 8 MHz<br />7 = 10 MHz<br />8 = 12 MHz<br />9 = 14 MHz<br />10 = 16 MHz<br />11 = 20 MHz<br />12 = 24 MHz<br />13 = 32 MHz<br />14 = 40 MHz<br />15 = 48 MHz<br />|
| __bit 7__: | Badline timing 0 = Enabled, 1 = Disabled | 

---

## $D07A - __SuperCPU compatible enable/disable registers__

This register is only available when the Turbo Mode selector is set to ‘U64 Turbo Registers’ or ‘Turbo Enable Bit’. This register is __write only__.

*   Software Speed Select - Normal

[Wiki SuperCPU](https://www.c64-wiki.com/wiki/SuperCPU)

---

## $D07B - __SuperCPU compatible enable/disable registers__

This register is only available when the Turbo Mode selector is set to ‘U64 Turbo Registers’ or ‘Turbo Enable Bit’. This register is __write only__.

*   Software Speed Select - Turbo (20 MHz)($079)

[Wiki SuperCPU](https://www.c64-wiki.com/wiki/SuperCPU)

---

## $D0BC - __SuperCPU Detect__

*   SuperCPU Mode Detect Register

This register is only available when it is separately enabled. This register is __read only__.

[Wiki SuperCPU](https://www.c64-wiki.com/wiki/SuperCPU)

---
