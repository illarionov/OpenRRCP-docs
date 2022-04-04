---
title: HVLAN
---

## HVLAN - Home VLAN (Hierarchical HVLAN)

HVLAN is kind or port-based VLAN where all VLAN intersects on one port (or group of ports), which named "uplink
port(s)".

Let's imagine we have 5-port switch with 3 customers and 2 servers/routers:

|Port no.|who connected|
| - | - |
|1|customer "A"|
|2|customer "B"|
|3|customer "C"|
|4|server|
|5|router|

and want customers to "see" both server and router, but not to "see" each other. On the other hand, server and router
must see everything, without any restrictions. We can configure this scenario using HVLAN with two uplink ports and two
restricted ports. See here:

|Port no.|who connected|port-type|
| - | - |
|1|customer "A"|restricted|
|2|customer "B"|restricted|
|3|customer "C"|restricted|
|4|server|uplink|
|5|router|uplink|

This setup is commonly used, when PPPoE is implemented to deliver internet connectivity to customers thru cheap ethernet
switches of DSLAMs.

[RTL8316] offers two fixed HVLAN configs:

* Port 16 is uplink, others are resticted.
* Ports 15 and 16 are uplink, others are resticted.

See [here](device/dlink_des1016d_c2.md#hardware-modifications) for details.

[RTL8316B], [RTL8324], [RTL8326] and [RTL8326S] can offer any flexible set of uplink and restricted ports

[RTL8316]: chip/rtl8316.md
[RTL8316B]: chip/rtl8316b.md
[RTL8324]: chip/rtl8324.md
[RTL8326]: chip/rtl8326.md
[RTL8326S]: chip/rtl8326s.md
