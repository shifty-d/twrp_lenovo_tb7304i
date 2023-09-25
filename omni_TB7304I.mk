#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB-7304I device
$(call inherit-product, device/lenovo/TB-7304I/device.mk)

PRODUCT_DEVICE := TB-7304I
PRODUCT_NAME := omni_TB7304I
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-7304I
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB-7304I_RF01_171018 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-7304I/TB-7304I:7.0/NRD90M/TB-7304I_S000041_171018_ROW:user/release-keys
