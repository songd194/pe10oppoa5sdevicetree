# Device specific packages and configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include vendor
$(call inherit-product, vendor/oppo/cph1909/vendor.mk)

# Device naming
PRODUCT_NAME := aosp_cph1909
PRODUCT_DEVICE := cph1909
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := A5s
TARGET_SUPPORTS_FACEUNLOCK := false
WITH_FACEUNLOCK := false

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml

# Fingerprint support
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Fingerprint HAL
PRODUCT_PACKAGES += \
    fingerprint.mt6765 \
