# Check for target product
ifeq (metallium_osprey,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xhdpi

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include metallium common configuration
include vendor/metallium/main.mk

# Inherit device configuration
$(call inherit-product, device/motorola/osprey/full_osprey.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := metallium_osprey

PRODUCT_GMS_CLIENTID_BASE := android-motorola

endif
