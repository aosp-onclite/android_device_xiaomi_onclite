#
# Copyright (C) 2017-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Lunaris AOSP stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ENABLE_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_DISABLE_MATLOG := true
TARGET_OPTIMIZED_DEXOPT := true
USE_ADVANCED_DISPLAY_COLOR := true
USE_REALITY_ENGINE := true
SURFACE_FLINGER_BOOST := true
WITH_BCR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="onc-user 9 PKQ1.181021.001 V11.0.3.0.PFLMIXM release-keys" \
    BuildFingerprint=xiaomi/onc/onc:9/PKQ1.181021.001/V11.0.3.0.PFLMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
