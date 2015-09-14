# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xxhdpi

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/metallium/main.mk

$(call inherit-product, device/oppo/find5/full_find5.mk)

PRODUCT_NAME := metallium_find5
PRODUCT_DEVICE := find5

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=OPPO/oppo_12069/FIND5:4.1.1/JRO03L/1362469752:user/release-keys PRIVATE_BUILD_DESC="msm8960-user 4.1.1 JRO03L eng.oppo.20130328.172033 release-keys"
