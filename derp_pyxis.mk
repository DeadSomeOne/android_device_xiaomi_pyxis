#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Target Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device UDFPS
TARGET_HAS_UDFPS := true

EXTRA_UDFPS_ANIMATIONS := true

TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Inherit from pyxis device
$(call inherit-product, device/xiaomi/pyxis/device.mk)

PRODUCT_NAME := derp_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pyxis-user 11 RKQ1.200826.002 V12.5.3.0.RFCEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/pyxis_eea/pyxis:11/RKQ1.200826.002/V12.5.3.0.RFCEUXM:user/release-keys
