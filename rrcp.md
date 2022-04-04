---
title: RRCP
---

## What is this

RRCP is protocol for making some specific low-cost dumb ethernet switches act like more expensive managed switches with
no or little hardware modifications.

Namely, switches based on Realtek's [RTL8316B], [RTL8324], [RTL8326] and [RTL8326S] are supported

## How it works

Most managed swiches from hardware point of view consists of configurable switch controller and and microcontoroller,
that from one side faces to user with web- or command-line- interface, while second faces to switch controller. Paradox
is that while microcontroller and all of it's flash/RAM/etc. makes about a half of the whole switch value, all the hard
work is done by switch controller. RRCP is a protocol, enabling any non-specialized processor (PC or embedded linux
router for example) to control one or more switch controller over Ethernet link, thus eliminating need in
microcontroller built in switch.

However, there is a drawback. Unlike normal managed switches, ordinary web browser or telnet/ssh client will not work to
control RRCP-enabled switch. First, controlling PC/router must be within Layer 2 (Ethernet) link from controlled switch.
Second - that PC/router must run special software.

[OpenRRCP] is an effort to create such software as open-source cross-platform toolset.

## Protocol

As a protocol, RRCP uses raw Ethernet frames with `0x8899` ethertype. Packets are requests and responses. Requests are
used to directly read or write switch controller registers. Responces carries read register number and register
contents. Writes does not generate any kind of acknowledge. Details are described [here][RRCP_protocol]

## Features

Set of features, that can be enabled via RRCP protocol depends largely on chip type and is discussed on
[RRCP features][RRCP_features] page

[RTL8316B]: chip/rtl8316b.md
[RTL8324]: chip/rtl8324.md
[RTL8326]: chip/rtl8326.md
[RTL8326S]: chip/rtl8326s.md
[RRCP_protocol]: rrcp_protocol.md
[RRCP_features]: rrcp_features.md
[OpenRRCP]: {{site.url}}
