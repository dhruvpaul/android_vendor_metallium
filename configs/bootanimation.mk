# Copyright (C) 2014 ParanoidAndroid Project
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


# Add Metallium bootanimation based on xxxhdpi xxhdpi xhdpi hdpi tvdpi resolution

# Metallium XXHDPI Devices

ifneq ($(filter metallium_bacon metallium_cancro metallium_ferrari metallium_find5 metallium_find7 metallium_jactivelte metallium_d802,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/metallium/prebuilt/bootanimation/1920x1080.zip:system/media/bootanimation.zip
endif

#Metallium XHDPI Devices

ifneq ($(filter metallium_armani metallium_falcon metallium_lettuce metallium_n7100 metallium_mako metallium_tilapia metallium_tomato metallium_osprey,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
       vendor/metallium/prebuilt/bootanimation/1280x720.zip:system/media/bootanimation.zip
endif
