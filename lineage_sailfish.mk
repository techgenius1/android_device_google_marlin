# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/device-lineage.mk

# Use Mini Gapps
TARGET_USES_MINI_GAPPS := true

# Remove apps
TARGET_INCLUDE_ACCORD := false
BUILD_BCR := false

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sailfish-user 10 QP1A.191005.007.A3 5972272 release-keys" \
    BuildFingerprint=google/sailfish/sailfish:10/QP1A.191005.007.A3/5972272:user/release-keys \
    DeviceName=sailfish

$(call inherit-product, vendor/google/sailfish/sailfish-vendor.mk)
