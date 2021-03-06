# Copyright (C) 2015 MerkMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (metallium_n7100,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := metallium_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/metallium/configs/telephony.mk)

# Include metallium common configuration
include vendor/metallium/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Override AOSP build properties
PRODUCT_NAME := metallium_n7100
PRODUCT_DEVICE := n7100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=t03gxx \
    TARGET_DEVICE=t03g \
    PRIVATE_BUILD_DESC="t03gxx-user 4.4.2 KOT49H N7100XXUFNL1 release-keys" \
    BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.4.2/KOT49H/N7100XXUFNL1:user/release-keys"

endif
