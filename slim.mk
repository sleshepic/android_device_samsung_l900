# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/cdma.mk)
 
# Release name
PRODUCT_RELEASE_NAME := l900
 
# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
 
# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)
 
# Inherit device configuration
$(call inherit-product, device/samsung/l900/full_l900.mk)
 
# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)
 
 
# Copy Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
 
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l900
PRODUCT_NAME := slim_l900
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := samsung
 
# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltespr BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.2/JZO54K/L900VPAMC2:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.2 JZO54K L900VPAMC2 release-keys"