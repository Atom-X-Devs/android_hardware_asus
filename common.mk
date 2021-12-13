#
# Copyright (C) 2021 The Atom-X Developers
#
# SPDX-License-Identifier: Apache-2.0
#

# Path
LOCAL_PATH := $(call my-dir)

# Lights
PRODUCT_PACKAGES += \
    android.hardware.lights-service.asus

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power-service.pixel-libperfmgr \
    android.hardware.power.stats@1.0-service.pixel

# Powerhint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/aidl/power-libperfmgr/sdm660_powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/google/interfaces \
    hardware/google/pixel

# Sepolicies
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy
