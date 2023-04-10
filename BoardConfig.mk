LOCAL_PATH := device/meizu/m2note

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Board
TARGET_BOOTLOADER_BOARD_NAME := mt6753
TARGET_BOARD_PLATFORM := mt6753
TARGET_IS_64_BIT := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/Image.gz-dtb
BOARD_MKBOOTIMG_ARGS := \
    --board $(TARGET_BOARD_PLATFORM) \
    --kernel_offset 0x8000 \
    --pagesize 2048
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_MKBOOTIMG_ARGS += \
    --base 0x40078000 \
    --ramdisk_offset 0x3F88000 \
    --second_offset 0xE88000 \
    --tags_offset 0xDF88000

# Partitons
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.treble
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
LZMA_RAMDISK_TARGETS := recovery
BOARD_HAS_FLIPPED_SCREEN := true
