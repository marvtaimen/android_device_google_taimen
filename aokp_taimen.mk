# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440x2880

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aokp_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:9/PQ2A.190405.003/5310204:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ2A.190405.003 5310204 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)

# Include gapps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
