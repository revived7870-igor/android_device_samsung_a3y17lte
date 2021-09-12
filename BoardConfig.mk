#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/a6lte

## Include common BoardConfig
include device/samsung/exynos7870-common/BoardConfigCommon.mk

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_a6lte

# Kernel
TARGET_KERNEL_CONFIG := exynos7870-a6lte_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_ODMIMAGE_PARTITION_SIZE := 671088640
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4194304000
BOARD_VENDORIMAGE_PARTITION_SIZE := 629145600
