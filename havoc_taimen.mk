
# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Include Havoc common configuration
include vendor/havoc/config/common_full_phone.mk

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LG
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 10 QP1A.191105.004 5908170 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:10/QP1A.191105.004/5908170:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
