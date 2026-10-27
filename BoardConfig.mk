#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/gta7lite

# Inherit from mt6765-common
include device/samsung/mt6765-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 213

# Kernel
TARGET_KERNEL_CONFIG := gta7lite_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/samsung/mt6765-common/BoardConfigVendor.mk
