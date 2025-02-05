#
# Copyright (C) 2020 The LineageOS Project
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
#

PLATFORM_PATH := device/pantech/ef60
# Inherit from msm8974-common
-include device/pantech/msm8974-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := ef62l,ef60s,ef61k,ef60

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/bluetooth

# Light
TARGET_PROVIDES_LIBLIGHT := true

# Kernel
TARGET_KERNEL_CONFIG := LineageOS_ef60_defconfig
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := /home/hiru/android/kernel/GCC/arm-eabi-4.7-master/bin

# Properties
TARGET_SYSTEM_PROP += $(PLATFORM_PATH)/system.prop

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26534215680

# Init
TARGET_INIT_VENDOR_LIB := libinit_ef60
TARGET_RECOVERY_DEVICE_MODULES := libinit_ef60
