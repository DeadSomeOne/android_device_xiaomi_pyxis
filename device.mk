#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_HAS_FM := true
TARGET_HAS_NFC := true
TARGET_HAS_UDFPS := true

# Inherit from sdm710-common
$(call inherit-product, device/xiaomi/sdm710-common/sdm710.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio_amplifier.tas2562

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-derp
# QDCM
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/qdcm/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm/arch-arm-armv7-a-neon/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-full-v29.so

# WiFi
PRODUCT_PACKAGES += \
    TargetWifiOverlay

# NFC
PRODUCT_PACKAGES += \
    NfcOverlayPyxis

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/pyxis/pyxis-vendor.mk)
