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

# Inherit from w931 device
$(call inherit-product, device/kido/w931/device.mk)

PRODUCT_DEVICE := w931
PRODUCT_NAME := omni_w931
PRODUCT_BRAND := qihoo
PRODUCT_MODEL := W931
PRODUCT_MANUFACTURER := kido

PRODUCT_GMS_CLIENTID_BASE := android-kido

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="w931-user 7.1.1 W931CN00X1000DPX1907260 1907260 test-keys"

BUILD_FINGERPRINT := qihoo/w931/w931:7.1.1/W931CN00X1000DPX1907260/1907260:user/test-keys
