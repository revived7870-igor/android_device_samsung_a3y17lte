#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/a3y17lte

## Inherit common device
$(call inherit-product, device/samsung/exynos7870-common/exynos7870.mk)

## Inherit device vendor blobs
$(call inherit-product, vendor/samsung/a3y17lte/a3y17lte-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/fstab.samsungexynos7870:$(TARGET_COPY_OUT_RAMDISK)/fstab.samsungexynos7870 \
    $(DEVICE_PATH)/configs/init/fstab.samsungexynos7870:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.samsungexynos7870 \
    $(DEVICE_PATH)/configs/init/android.hardware.bluetooth@1.0-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.bluetooth@1.0-service-qti.rc \
    $(DEVICE_PATH)/configs/init/init.a3y17lte.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.a3y17lte.rc \
    $(DEVICE_PATH)/configs/init/init.baseband.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.baseband.rc \
    $(DEVICE_PATH)/configs/init/wifi_qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/wifi_qcom.rc \
    $(DEVICE_PATH)/configs/init/wifi_sec.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/wifi_sec.rc

# Display
TARGET_SCREEN_DENSITY := 320
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml

PRODUCT_PACKAGES += \
    audio_amplifier.exynos7870_32

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_touchkey.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/com.samsung.permission.SSENSOR.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.samsung.permission.SSENSOR.xml

# WCNSS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/grippower.info:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/grippower.info \
    $(LOCAL_PATH)/configs/wifi/qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wifi/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/WCNSS_cfg.dat \
    $(LOCAL_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
