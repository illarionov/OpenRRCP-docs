---
title: rtl83xx
---
rtl83xx

## Description

rtl83xx is a traditional unix-style command-line tool to control RRCP-enabled switches.

## Commands

**This is currently in a draft/project stage, use build-in help to determine actual commandset**

`show runnig-config`

`show startup-config`

`show vlan [id <vlan-no>]`

`show interface [<port-list>] [summary]`

`config interface <port-list> enable|disable`

`config interface <port-list> [speed 10|100|1000|auto] [duplex full|half]`

`config interface <port-list> rate-limit input|output 128K|256K|512K|1M|2M|4M|8M|100M`

`config interface <port-list> mac-address learning enable|disable`

`config interface <port-list> rrcp enable|disable`

`config interface <port-list> mls qos cos 0|7`

`config flowcontrol dot3x enable|disable`

`config flowcontrol backpressure enable|disable`

`config rrcp enable|disable`

`config rrcp echo enable|disable`

`config rrcp loop-detect enable|disable`

`config rrcp authkey <arg>`

`config mac-address-table aging-time 0|12|300`

`config mac-address-table unknown-destination drop|pass`

`config storm-control broadcast level 0|1|2`

`config storm-control multicast level 0|1|2`



`config vlan disable|transparent`

`config vlan mode portbased|dot1q`

`config vlan clear`

`config vlan template-load hvlan|dot1qtree`

`config vlan add port <port-list> <vid>`

`config vlan delete port <port-list> <vid>`

`config vlan leaky <arg>`

`config monitor source interface <port-list> destination interface <port-no>`

`config mac-address xx:xx:xx:xx:xx:xx|xxxx.xxxx.xxxx`

`write memory|eeprom`

`write default`

`reboot [soft]`

`reboot hard`

`ping`

`scan [verbose]`

