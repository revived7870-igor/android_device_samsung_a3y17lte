#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/a3y17lte

## Include common BoardConfig
include device/samsung/exynos7870-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := exynos7870-a3y17lte_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SUPER_PARTITION_SIZE := 4194304000
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 4194300000

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/configs/init/fstab.samsungexynos7870
