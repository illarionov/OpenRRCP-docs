---
title: Features
---

## RRCP Feature list

Here goes list of all RRCP features with remarks on would it work on specific chip/switch or no.

| Feature | [RTL8326]/[26s][RTL8326S] | [RTL8316B]/[BP][RTL8316BP] | Saves to EEPROM |
| - | - | - | - |
| do scan(REP) |  +  |  +  |  N/A  |
| do scan(Hello) |  +  |  +  |  N/A  |
| do reboot |  +  |  +  |  N/A  |
| do ping |  +  |  +  |  N/A  |
| show per-port link-status |  +  |  +  |  N/A  |
| show per-port counters |  +  |  +  |  N/A  |
| show per-port distance to cable break/short |  -  |  Maybe[*](#showing-distance-to-cable-break-short)  |  N/A  |
| set VLAN([HVLAN]) |  +  |  +  |  +  |
| set VLAN(port-based) |  +  |  +  |  -  |
| set VLAN(802.1Q) |  -  |  +  |  -  |
| set 16-Bit "auth" key |  +  |  +  |  +  |
| set RRCP port mask |  +  |  +  |  +  |
| set storm-control |  +  |  +  |  +  |
| set loop-detect |  +  |  +  |  +  |
| set IGMP snooping |  ?  |  +  |  +  |
| set global QoS |  ?  |  +  |  +  |
| set global MAC learning |  +  |  +  |  +  |
| set global MAC aging time |  +  |  +  |  +  |
| set per-port set speed/dumplex |  +  |  +  |  +  |
| set per-port flow control |  +  |  +  |  +  |
| set per-port MAC learning |  +  |  +  |  +  |
| set per-port QoS |  ?  |  +  |  +  |
| set port trunking(bonding) |  +  |  +  |  +  |
| set port-mirroring |  -  |  +  |  -  |
| set switch's MAC address |  -  |  +  |  +  |
| read/write EEPROM over network |  -  |  +  |  +  |

## Showing distance to cable break short

This feature is performed by [RTL8208B][RTL8208B] [PHY][PHY] chip, but [RTL8316B]/[BP][RTL8316BP] is required to access PHY.

Note, that OpenRRCP does not currently support this feature, however, it eventually do.

[RTL8326]: chip/rtl8326.md
[RTL8326S]: chip/rtl8326s.md
[RTL8316B]: chip/rtl8316b.md
[RTL8316BP]: chip/rtl8316bp.md
[RTL8208B]: chip/rtl8208b.md
[PHY]: phy.md
[HVLAN]: hvlan.md
