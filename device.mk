# Copyright (C) 2022 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    vendor/qcom/opensource/audio-hal/primary-hal/configs/common/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    CutoutRingServiceApollo

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.apollo

PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.fingerprintextension@1.0.vendor

# IFAA manager
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom_ramdisk \
    init.apollo.rc

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.xiaomi

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/xiaomi

# Overlays
PRODUCT_PACKAGES += \
    AOSPAApolloFrameworks \
    AOSPAApolloSettings \
    AOSPAApolloSystemUI \
    ApolloFrameworks \
    ApolloSystemUI

# WLAN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wlan/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_CFI_INCLUDE_PATHS += \
    hardware/qcom/wlan/qcwcn/wpa_supplicant_8_lib
