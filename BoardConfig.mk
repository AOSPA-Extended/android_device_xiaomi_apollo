# Copyright (C) 2021 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/xiaomi/apollo

# Board Info
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Gestures
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Hacks
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_apollo

# Kernel
KERNEL_DEFCONFIG := apollo_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/etc/fstab.qcom

# Rootdir
SOONG_CONFIG_NAMESPACES += XIAOMI_KONA_ROOTDIR
SOONG_CONFIG_XIAOMI_KONA_ROOTDIR := PARTITION_SCHEME
SOONG_CONFIG_XIAOMI_KONA_ROOTDIR_PARTITION_SCHEME := a
