# Inherit from device config
$(call inherit-product, device/oppo/cph1909/device.mk)

# Inherit from PixelExperience common config (CORRECT PATH)
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Product identifiers
PRODUCT_NAME := aosp_cph1909
PRODUCT_DEVICE := cph1909
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := A5s
PRODUCT_MANUFACTURER := OPPO
PRODUCT_SHIPPING_API_LEVEL := 29
# GApps configuration
TARGET_GAPPS_ARCH := arm64
GAPPS_VARIANT := stock
GAPPS_FORCE_PACKAGE_OVERRIDES := true
WITH_GAPPS := true
