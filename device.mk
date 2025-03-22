#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/pissarro
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6877 \
    bootctrl.mt6877.recovery

PRODUCT_PACKAGES += \
    libgptutils \
    libz \
    libcutils \

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# fastbootd
 PRODUCT_PACKAGES += \
     android.hardware.fastboot@1.0-impl-mock \
     fastbootd

# Health HAL
 PRODUCT_PACKAGES += \
     android.hardware.health@2.1-impl \
     android.hardware.health@2.1-service \
     libhealthd.$(PRODUCT_PLATFORM)

TARGET_RECOVERY_DEVICE_MODULES += \
     libion \
     libxml2

 RECOVERY_LIBRARY_SOURCE_FILES += \
     $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
     $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so
