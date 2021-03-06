---
title: rrcpcli
---

RRCP CLI (rrcpcli)

## About

This tool enables convinent dialog-style command-line interface for managing RRCP-enables switches.

Currently in alpha quality

## Example session

```shell
./rrcpcli -t 2 00:80:c8:e7:6e:30@eth0
Fetching current config from switch
OpenRRCP CLI Version 0.1.94.beta1
dlink_des1016d> en
dlink_des1016d# conf t
dlink_des1016d(config)# mls qos trust ?
  dscp                 Trust DSCP(TOS) value in IP header of incoming packets
  cos                  Trust CoS (802.1p) tag value of incoming packets
dlink_des1016d(config)# mls qos trust cos
dlink_des1016d(config)# in fa0/10
dlink_des1016d(config-0/10)# mls qos cos ?
0 - Set CoS value in incoming packets to 0 (low prioriry)
7 - Set CoS value in incoming packets to 7 (high prioriry)
dlink_des1016d(config-0/10)# mls qos cos 0
dlink_des1016d(config-0/10)# in fa0/11
dlink_des1016d(config-0/11)# mls qos cos 7
dlink_des1016d(config-0/11)# end
dlink_des1016d# sh ver
OpenRRCP CLI, Version 0.1.94.beta1
http://openrrcp.org.ru/
Licensed under terms of GPL
http://www.gnu.org/licenses/gpl.html#SEC1
16 FastEthernet/IEEE 802.3 interface(s)
Base ethernet MAC Address:  00:80:c8:e7:6e:30
Vendor: dlink
Model: des1016d
Chip: rtl8316b
802.1Q support: Yes
IGMP support: v1, v2
Facing host interface: eth0
dlink_des1016d# conf t
dlink_des1016d(config)# hostname access117
access117(config)# end
access117# show ?
  version              System hardware and software status
  configuration        Contents of Non-Volatile memory
  running-config       Current operating configuration
  startup-config       Contents of startup configuration
  interfaces           Interface status and configuration
  ip                   IP information
access117# show run
!
! Config for dlink des1016d switch at 00:80:c8:e7:6e:30@eth0
! generated by OpenRRCP CLI ver 0.1.94.beta1
!
version rtl8316b
!
mac-address-table aging-time 300
!
ip igmp snooping
rrcp enable
rrcp echo enable
no rrcp loop-detect enable
!
no vlan
no vlan drop invalid_vid
!
mls qos trust dscp
mls qos trust cos
wrr-queue ratio 16:1
!
flowcontrol dot3x
flowcontrol backpressure
no storm-control broadcast
no storm-control multicast
!
interface FastEthernet0/1
  rrcp enable
!
```
