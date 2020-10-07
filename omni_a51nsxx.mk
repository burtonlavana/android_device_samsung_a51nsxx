# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a51nsxx
PRODUCT_NAME := omni_a51nsxx
PRODUCT_MODEL := SM-A515F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/samsung/a51nsxx/prebuilt/root,root)
