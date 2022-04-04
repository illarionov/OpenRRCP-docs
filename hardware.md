---
title: Hardware
---

Definitely, hardware does matters for OpenRRCP tools to work. Switch with Realtek
RTL8316B/RTL8316BP/RTL8324/RTL8326/RTL8326S chip will  almost surely do. Some are tested and confirmed to work (see
below). Realtek RTL8310P/RTL8318P/RTL8324P-based switches should also work, however was not tested yet. Try it and
report your results.

Here goes table of ethernet switches, that are known to work (or not to work) with OpenRRCP tools:

## Supported switches

{% capture supported_switches_links %}

[24C02]: eeprom.md#24c02
[24C04]: eeprom.md#24c04
[24C08]: eeprom.md#24c08
[SOIC8]: soic8.md
[DIP8]: dip8.md
[RTL8316]: chip/rtl8316.md
[RTL8316B]: chip/rtl8316b.md
[RTL8316BP]: chip/rtl8316bp.md
[RTL8324]: chip/rtl8324.md
[RTL8326]: chip/rtl8326.md
[RTL8326s]: chip/rtl8326s.md
[howto_enable_rrcp]: howto_enable_rrcp.md
[howto_enable_rrcp_method2]: howto_enable_rrcp.md#method-2-fixing-mac-address-for-rrcp-enabled-switches
[Acorp_HU16D]: device/acorp_hu16d.md
[Acorp_HU16DP]: device/acorp_hu16dp.md
[FGSW-2620]: device/planet_fgsw2620.md
[Edimax_ES3116P]: device/edimax_es3116p.md
[dlink_des1016d_c2]: device/dlink_des1016d_c2.md
[dlink_des1016d_d1]: device/dlink_des1016d_d1.md
[dlink_des1016d_d2]: device/dlink_des1016d_d2.md
[dlink_des1016d_d4]: device/dlink_des1016d_d4.md
[dlink_des1024d_b1]: device/dlink_des1024d_b1.md
[dlink_des1024d_c1]: device/dlink_des1024d_c1.md
[dlink_des1024d_c1_fixed]: device/dlink_des-1024d_hw_c1_fixed.md
[GigaX 1024I (GX1024I)]: device/asus_gigax_1024i.md
[GigaX 1024P (GX1024P)]: device/asus_gigax_1024p.md
[PS2216B]: device/compex_ps2216b.md
{% endcapture %}

<style type="text/css">
  .table_small table th, td {
    min-width: unset;
    padding: 0.3em 0.5em;
    font-size: 12px !important;
    line-height: 1.2;
  }
  .table_small table th, td p {
    margin: 0;
  }
  .table_small table td:nth-child(2), th:nth-child(2) {
    position: sticky;
    left: 0;
  }
</style>

{% include hardware_table.html switches=site.data.supported_switches %}

This is not the complete list for sure! If you have a dumb switch and a feeling, that it can be supported - just try it!

If you have an ethernet switch and it's manual says some words about RRCP, RMT or "WinSmart utility" or some other
custom toolset to manage it - try OpenRRCP, it almost surely would work.

__Remarks:__

"Possible" for EEPROM/uC means, that there is space on PCB and proper component can be readily soldered-in.

## Unsupported switches

{% include hardware_table.html switches=site.data.unsupported_switches %}

Note, that here are listed only switches, that have very similar supported counterpart (e.g. newer hardware version)

## What to do, if my switch is not listed here?

First, if you can open the cover and look at switch's chip name, do so. Realtek [RTL8316B], [RTL8324], [RTL8326]
and [RTL8326S] are supported for sure. RTL8310P, RTL8316BP, RTL8318P and RTL8324P can be supported too.

Second, try *"scan"* mode of supplied `rtl83x`x tool. Output will look like this:

```shell
 ./rtl8326 eth1 scan
  switch MAC      Hello REP
00:30:4f:4f:0c:75   +    +
```

If list is empty, then either switch is not supported, or RRCP protocol is disabled. Take a look on an article about
[enabling RRCP][howto_enable_rrcp].

{{ supported_switches_links }}
