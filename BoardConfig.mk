#
# Copyright (C) 2015-2016 The Android Open-Source Project
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
#

DEVICE_PATH := device/motorola/woods

#TARGET_RECOVERY_DEVICE_DIRS := $(DEVICE_PATH)
FORCE_32_BIT := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := mt6737m
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MT6735

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive androidboot.selinux=permissive
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_TAGS_OFFSET := 0xE000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

BOARD_USES_MTK_HARDWARE := true

# Partitions
# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4698144768
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_KMODULES := true


# TWRP stuff
DEVICE_RESOLUTION := 720x1280
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_MAX_BRIGHTNESS := 255
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FB2PNG := true
TW_NO_CPU_TEMP := true
TW_REBOOT_BOOTLOADER := true
TW_REBOOT_RECOVERY := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_USE_TOOLBOX := true
TARGET_USERIMAGES_USE_EXT4 := true
TW_HAVE_SELINUX := true

BOARD_SEPOLICY_DIRS := \
       device/motorola/woods/sepolicy

#
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
