# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g72
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := universal9611
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := cortex-a73

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
# Samsung used cortex-a15 as 2nd cpu variant
#TARGET_2ND_CPU_VARIANT := cortex-a15

ENABLE_CPUSETS := true

TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_RECOVERY_DTBOIMAGE := device/samsung/a51nsxx/prebuilt/recovery_dtbo
TARGET_PREBUILT_KERNEL := device/samsung/a51nsxx/prebuilt/Image
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --dtb_offset 0x00000000 --dtb device/samsung/a51nsxx/prebuilt/dtb --tags_offset 0x00000100 --header_version 2 --board SRPSG30B002RU

BOARD_USES_METADATA_PARTITION := true

# Use it after testing
# Kernel
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CONFIG := exynos9610-a51xx_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/universal9610

# Image
#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/a51nsxx/mkbootimg.mk
#BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_KERNEL_BASE := 0x10000000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPSG30B002RU
#TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 6836715520
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6832521216
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    vendor \
    product \
    odm

# TWRP specific build flags
RECOVERY_VARIANT := twrp
ALLOW_MISSING_DEPENDENCIES=true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/kernel/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
TARGET_RECOVERY_FSTAB := device/samsung/a51nsxx/recovery.fstab
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_Y_OFFSET := 90
TW_H_OFFSET := -90
TW_MAX_BRIGHTNESS := 360
TW_DEFAULT_BRIGHTNESS := 100
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_TWRPAPP := true
#TW_INCLUDE_CRYPTO := true
