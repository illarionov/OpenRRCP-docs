---
title: EEPROM
---

An EEPROM (also called an E2PROM) or Electronically Erasable Programmable Read-Only Memory, is a non-volatile storage
chip used in computers and other devices to store small amounts of volatile (configuration) data. There are several
types of EEPROM chips. RTL83xx switch controllers user 24cXX series of [I2C].
EEPROM.

## 24c02

This chip comes in [DIP8] or [SOIC8] packages and can store 2Kbits (256 Bytes). This is minimum requirement for RTL83xx.

## 24c04

This chip comes in [DIP8] or [SOIC8] packages and can store 4Kbits (512 Bytes). This is more, than required for RTL83xx,
but is oftenly used for storing additional data (i.e. VLAN-configuration), that is used indirectly (by additional
[microcontroller]). See [here][eeprom_highmem] for details.

## 24c08

This chip comes in [DIP8] or [SOIC8] packages and can store 8Kbits (1024 Bytes). This is more, than required for
RTL83xx, but is oftenly used for storing additional data (i.e. VLAN-configuration), that is used indirectly (by
additional [microcontroller]). See [here][eeprom_highmem] for details.

[I2C]: http://en.wikipedia.org/wiki/I%C2%B2C
[DIP8]: dip8.md
[SOIC8]: soic8.md
[eeprom_highmem]: eeprom_uc_helper.md
[microcontroller]: http://en.wikipedia.org/wiki/Microcontroller
