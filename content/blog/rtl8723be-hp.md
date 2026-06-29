---
title:  "Making rtl8723be Wireless Adapter Work In Linux"
date:   2016-03-05 20:00:00 +0530
categories: blogpost
comments: true
tags: [guides, linux]
slug: "rtl8723be-hp"
---

Till last year whenever I encountered a laptop with WiFi not working in linux it was a [Broadcom Wireless Adapter](https://wiki.archlinux.org/index.php/Broadcom_wireless#History).

But this year things are different.<!--more--> Nearly all new HP laptops are having problems with WiFi in linux (ubuntu, arch, manjaro). And surprisingly the problem is not that the WiFi driver is not working at all. But it is worse, the signal strength received is so weak that it is absolutely unusable.

A quick `lspci | grep Wireless` shows the Wireless Adapter in your system. In my case the device causing problem was a Realtek:

**RTL8723be**

After scanning through numerous threads I finally found the solution in this github issue:

[https://github.com/lwfinger/rtlwifi_new/issues/88](https://github.com/lwfinger/rtlwifi_new/issues/88)


So here is the step by step procedure to solve the issue:
---------------------------------------------------------

First some make sure the dependencies for building the driver are installed:

In Ubuntu:

`bash sudo apt-get install build-essential git`

In Arch:

```bash
sudo pacman -S git
sudo pacman -S linux-headers
```

Now clone the [rtlwifi_new](https://github.com/lwfinger/rtlwifi_new) repository:

`bash git clone git@github.com:lwfinger/rtlwifi_new.git`

Checkout the branch rock.new_btcoex
```bash
cd rtlwifi_new
git checkout rock.new_btcoex
```

Now build and install the driver

```bash
make
sudo make install
```

Reboot the system.

Now disable and enable the driver with proper parameters.

```bash
sudo modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=2
```

NOTE: If this does not work try: `sudo modprobe -v rtl8723be ant_sel=1`