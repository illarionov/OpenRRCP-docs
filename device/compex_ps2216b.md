---
title: Compex PS2216B
---

## Description

16-port 10/100 unmanaged (or "smart") switch.

Plastic case

External PSU (In: 100-230VAC, Out: 3.3VDC/3A)

## Hardware versions

### Ver. 1A

Based on [RTL8316]

NOT SUPPORTED BY OPENRRCP

### Ver. 1B

Based on [RTL8316B] and [24C02]

Supported. Not all options are saved to EEPROM.

### Ver. 1C

Based on [RTL8316B], [24C08] and AT89C2051

Supported. All options are saved to EEPROM (?)

### Ver. 1D

Based on [RTL8316B], [24C08] and AT89C2051

Supported. All options are saved to EEPROM (?)

### Ver. 6D

Switches with this marking may have two distinctive internal component versions:

#### With RRCP vendor_id equals to 0x11f67003 or 0x11f67004

Based on [RTL8316B], [24C08] and AT89C2051

Supported. All options are saved to EEPROM.

#### With RRCP vendor_id equals to 0x11f67005

Same as ver. 6E

### Ver. 6E

Based on [RTL8316BP] and [24C08]. No uC is present, however, enhanced version of main chip (BP) can do all required
stuff.

Supported by openrrcp since version 0.2.0. All options are saved to EEPROM.

[RTL8316]: ../chip/rtl8316.md
[RTL8316B]: ../chip/rtl8316b.md
[RTL8316BP]: ../chip/rtl8316bp.md
[24C02]: ../eeprom.md#24c02
[24C08]: ../eeprom.md#24c08
