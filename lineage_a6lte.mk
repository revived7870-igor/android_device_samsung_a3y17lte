#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device
$(call inherit-product, device/samsung/a6lte/device.mk)

## LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_a6lte
PRODUCT_DEVICE := a6lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy A6 2018
PRODUCT_MANUFACTURER := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
PRODUCT_SHIPPING_API_LEVEL := 26

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a6ltexx \
    PRIVATE_BUILD_DESC="a6ltexx-user 10 QP1A.190711.020 A600FNXXU9CVB1 release-keys"

BUILD_FINGERPRINT := samsung/a6ltexx/a6lte:10/QP1A.190711.020/A600FNXXU9CVB1:user/release-keys
