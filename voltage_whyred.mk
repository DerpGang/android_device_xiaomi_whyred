#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit from whyred device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := voltage_whyred
PRODUCT_MODEL := Redmi Note 5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

VOLTAGE_BUILD_TYPE = OFFICIAL

# boost framework
VOLTAGE_ALL_CORES := 0-7
VOLTAGE_CPU_SYS_BG := 0-3

VOLTAGE_CPU_SMALL_CORES := 0,1,2,3
VOLTAGE_CPU_BIG_CORES := 4,5,6,7
VOLTAGE_CPU_BG := 0-2
VOLTAGE_CPU_FG := 0-7
VOLTAGE_CPU_LIMIT_BG := 0-1
VOLTAGE_CPU_LIMIT_UI := 0-4
VOLTAGE_CPU_DISPLAY := 4-7

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="whyred-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEIMIFA release-keys" \
    BuildFingerprint=xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys \
    DeviceName=whyred \
    DeviceProduct=whyred
