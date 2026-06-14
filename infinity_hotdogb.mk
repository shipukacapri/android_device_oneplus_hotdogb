#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common InfinityX stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := HD1901
PRODUCT_BRAND := OnePlus

# Infinity Flags
INFINITY_MAINTAINER := Shipu
TARGET_HAS_UDFPS := true
# Exclude Aperture in favor of OnePlus Camera
PRODUCT_NO_CAMERA := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7T-user 12 SKQ1.211113.001 Q.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7T/OnePlus7T:12/SKQ1.211113.001/Q.202303230244:user/release-keys \
    DeviceName=OnePlus7T \
    DeviceProduct=OnePlus7T \
    SystemDevice=OnePlus7T \
    SystemName=OnePlus7T
