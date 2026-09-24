#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k65v1_64_bsp device
$(call inherit-product, device/alps/k65v1_64_bsp/device.mk)

PRODUCT_DEVICE := k65v1_64_bsp
PRODUCT_NAME := omni_k65v1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := k65v1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k65v1_64_bsp-user 15 AP3A.240905.015.A2 mp1V3 release-keys"

BUILD_FINGERPRINT := alps/vnd_k65v1_64_bsp/k65v1_64_bsp:15/AP3A.240905.015.A2/mp1V3:user/release-keys
