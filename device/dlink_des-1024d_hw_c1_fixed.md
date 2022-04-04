---
title: D-Link DES-1024D H/W rev.C1 "fixed"
---

There is very strange incident with D-Link DES-1024D H/W revision C1. D-Link first shipped this resivion with EEPROM
chip 24C02 soldered in, but some time later announced that there is throughput issues and suggest a "fix". "Fix" implies
de-soldering of 24C02 in their service-center.

Be aware that, if you have such "fixed" version, you need to solder appropriately programmed 24C02 back before you try
to use RRCP capabilities with this switch.
