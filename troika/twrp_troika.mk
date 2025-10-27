#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from troika device
$(call inherit-product, device/motorola/troika/device.mk)

PRODUCT_DEVICE := troika
PRODUCT_NAME := twrp_troika
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one action
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="troika-user 11 RSBS31.Q1-48-36-23 ef3cf release-keys"

BUILD_FINGERPRINT := motorola/troika_retail/troika_sprout:11/RSBS31.Q1-48-36-23/ef3cf:user/release-keys
