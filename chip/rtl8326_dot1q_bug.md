---
title: RTL8326 802.1Q bug
---

Realtek [RTL8326] and [RTL8326S] haw flawed IEEE 802.1Q VLAN support.

Namely - chip can't insert 802.1Q tag into frames, however all other aspects works correctly.

Technically, 802.1Q-enabled chip must support 4 modes of frame transport - see below:

| Ingress port | Egress port | Proposed action | RTL8326 action |
| - | - | -| - |
| Untagged | Untagged | Forward frame intact | Forward frame intact     |
| Untagged | Tagged   | Add 802.1Q tag       | **Forward frame intact** |
| Tagged   | Untagged | Strip 802.1Q tag     | Strip 802.1Q tag         |
| Tagged   | Tagged   | Forward frame intact | Forward frame intact     |

This bug renders 802.1Q support in RTL8326(S) almost useless. There is no fix or work-around, sorry.

[RTL8326]: rtl8326.md
[RTL8326S]: rtl8326s.md
