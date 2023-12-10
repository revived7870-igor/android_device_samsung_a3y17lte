#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/hw/camera.exynos7870.so|vendor/lib/libexynoscamera.so|vendor/lib/libexynoscamera3.so)
            "${PATCHELF}" --replace-needed "libcamera_client.so" "libcamera_metadata_helper.so" "${2}"
            "${PATCHELF}" --replace-needed "libgui.so" "libgui_vendor.so" "${2}"
            ;;
        vendor/lib*/libsensorlistener.so)
            "$PATCHELF" --add-needed "libshim_sensorndkbridge.so" "$2"
            "$PATCHELF" --remove-needed "libandroid.so" "$2"
            ;;
	vendor/lib/hw/android.hardware.bluetooth@1.0-impl-qti.so)
        sed -i "s|/system/etc/firmware|/vendor/etc/firmware|g" "${2}"
            ;;
        vendor/lib64/hw/android.hardware.bluetooth@1.0-impl-qti.so)
        sed -i "s|/system/etc/firmware|/vendor/etc/firmware|g" "${2}"

    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=a3y17lte
export DEVICE_COMMON=exynos7870-common
export VENDOR=samsung

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
