# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# inherit twrp configs
$(call inherit-product, device/xiaomi/kenzo/recovery/twrp.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_kenzo
PRODUCT_DEVICE := kenzo
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3 Pro
