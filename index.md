---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

# layout: home
title: "Home"
layout: default
---

# Welcome to OpenRRCP project home

## What is this all about?

RRCP(Realtek Remote Configuration Protocol) is protocol for making some specific low-cost dumb ethernet switches act
like more expensive managed switches with no or little hardware modifications.

OpenRRCP is an open-source cross-platform RRCP-based toolset, that is able to configure and fetch status from such
ethernet switches.

See [RRCP] for more details.

See [Hardware](hardware.md) for full list of supported hardware.

See [RRCP security](rrcp_security.md) for info about security model and considerations.

## Status

Linux/FreeBSD and
[RTL8316B]/[RTL8316BP]/[RTL8324]/[RTL8324P]/[RTL8326]/[RTL8326S] are supported at the moment. Specific support for
[number](hardware.md#supported-switches) of switches is added and more to come. Potentially, any
UNIX system with libpcap and libdnet should be reasonable to port. Considerable efforts are putting now into creating
rrcp_cli, an implementation of cisco catalyst-like configuration interface for RRCP-enables switches.

## Tools

Currently, there are two tools:

[rtl83xx] — historically first and relatively mature OpenRRCP tool. It employs traditional unix command-line style to
control RRCP-enables switches.

and

[rrcpcli] — this one intended to make full-featured CLI dialog-style interface to any RRCP-enabled switch. Currently in
alpha-quality.

## File releases

[openrrcp-0.2.1.tar.gz](https://sourceforge.net/projects/openrrcp/files/openrrcp/openrrcp-0.2.1.tar.gz)

Notes for *BSD:

* libdnet is required

* you may want to try a [FreeBSD port]

## SVN Trunk

Currently, active development is going on, so trying SVN Trunk for new features is a good idea:

```sh
svn co http://openrrcp.svn.sourceforge.net/svnroot/openrrcp/trunk/
```

See [here][svn] for some details how to use SVN.

[RRCP]: rrcp.md
[RTL8316B]: chip/rtl8316b.md
[RTL8316BP]: chip/rtl8316bp.md
[RTL8324]: chip/rtl8324.md
[RTL8324P]: chip/rtl8324p.md
[RTL8326]: chip/rtl8326.md
[RTL8326S]: chip/rtl8326s.md
[rtl83xx]: rtl83xx.md
[rrcpcli]: rrcpcli.md
[FreeBSD port]: assets/bsd/openrrcp-freebsd-port.tgz
[svn]: svn.md
