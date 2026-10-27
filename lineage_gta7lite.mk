#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gta7lite device
$(call inherit-product, device/samsung/gta7lite/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)


PRODUCT_NAME := lineage_gta7lite
PRODUCT_DEVICE := gta7lite
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T225
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gta7litexx-user 14 UP1A.231005.007 T220XXSAEYE4 release-keys" \
    BuildFingerprint=samsung/gta7litexx/gta7lite:14/UP1A.231005.007/T220XXSAEYE4:user/release-keys \
    DeviceProduct=gta7litexx \
    SystemName=gta7litexx

# Skip VINTF kernel version enforcement since we're using a prebuilt kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
