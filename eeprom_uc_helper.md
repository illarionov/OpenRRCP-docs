---
title: EEPROM uC helper
---

EEPROM uC helper (EEPROM "High memory") is technique work around design flaw of ["Old" RTL8316B][RTL8316B] chip. This chip is
designed to use very small [EEPROM] (24c01), that not enough to save all controller's register (see
[RRCP features](rrcp_features.md) page for exact list). Even if particular switch contains larger EEPROM (24c04 for example),
only lower 128 bytes is used. To work this around, some switch manufacturers (Compex, for example) have added "helper"
microcontroller(uC) chip on board. This chip reads data from "high" EEPROM addresses (i.e. above standard 128 bytes) and
pushes this data to switch controller chip.

Newer [RTL8316BP] chip is capable to read from EEPROM all of his registers, thus eliminating need for external
"helper" microcontroller.

[RTL8316B]: chip/rtl8316b.md
[RTL8316BP]: chip/rtl8316bp.md
[EEPROM]: eeprom.md
