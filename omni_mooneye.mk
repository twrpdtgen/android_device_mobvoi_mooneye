#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mooneye device
$(call inherit-product, device/mobvoi/mooneye/device.mk)

PRODUCT_DEVICE := mooneye
PRODUCT_NAME := omni_mooneye
PRODUCT_BRAND := mobvoi
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mooneye-user 8.0.0 OWDR.180307.010 4736830 release-keys"

BUILD_FINGERPRINT := mobvoi/mooneye/mooneye:8.0.0/OWDR.180307.010/4736830:user/release-keys
