# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440x2880

# Inherit Colt product configuration
$(call inherit-product, vendor/colt/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false
RELEASE_TYPE := COLT_OFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:9/PQ1A.181205.002/5086253:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ1A.181205.002 5086253 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)

# Include gapps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
