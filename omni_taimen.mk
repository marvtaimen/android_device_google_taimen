# Boot animation
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

 # Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

 #treble
$(call inherit-product, build/make/target/product/treble_common_64.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

ALLOW_MISSING_DEPENDENCIES := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:9/PQ3A.190705.001/5565753:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ3A.190705.001 5565753 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)

# Include gapps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
