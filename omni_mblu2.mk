$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_MANUFACTURER := Meizu
PRODUCT_RELEASE_NAME := m2note
PRODUCT_NAME := omni_m2note
PRODUCT_DEVICE := m2note
PRODUCT_MODEL := M2 Note
PRODUCT_BRAND := Meizu
