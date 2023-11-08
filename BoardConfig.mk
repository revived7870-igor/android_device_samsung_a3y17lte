#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/a3y17lte

## Include common BoardConfig
include device/samsung/exynos7870-common/BoardConfigCommon.mk

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_a3y17lte

# Kernel
TARGET_KERNEL_CONFIG := exynos7870-a3y17lte_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4194304000

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.samsungexynos7870
