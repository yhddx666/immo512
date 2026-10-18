#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# 1. 拉取 kenzok8/openwrt-daede 仓库源码到 package/daede 目录下
git clone https://github.com package/daede

# 2. 如果你的固件源码或软件源中已经包含了同名包，请先删除，避免编译冲突（可选，但建议加上）
rm -rf package/feeds/luci/luci-app-daede
