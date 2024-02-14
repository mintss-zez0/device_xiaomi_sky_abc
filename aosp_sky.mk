#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from common CherishOS configuration
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := aosp_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Target
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# CherishOS Stuff with GApps
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
# CHERISH_VANILLA := true
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64


# Maintainer Stuff
CHERISH_BUILD_TYPE := OFFICIAL
CHERISH_MAINTAINER := DUCK

# Cherish props
CHERISH_CHIPSET := SM4450
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2460
