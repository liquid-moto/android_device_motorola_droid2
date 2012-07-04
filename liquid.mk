# name
PRODUCT_RELEASE_NAME := DROID2

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# device
$(call inherit-product-if-exists, device/motorola/droid2/droid2.mk)

# products
PRODUCT_DEVICE := droid2
PRODUCT_BRAND := google
PRODUCT_NAME := liquid_droid2
PRODUCT_MODEL := DROID2
PRODUCT_MANUFACTURER := Motorola
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=liquid.droid2.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IMM76D \
    PRODUCT_NAME=droid2_vzw \
    BUILD_FINGERPRINT="google/soju/crespo:4.0.3/IML74K/239410:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys"

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/hdpi/bootanimation.zip:system/media/bootanimation.zip
