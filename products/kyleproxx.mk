# Copyright (C) 2016 The Pure Nexus Project
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

# Include pure telephony configuration
include vendor/nexus/configs/pure_phone.mk

# Inherit AOSP device configuration for angler
$(call inherit-product, device/samsung/kyleproxx/device_kyleproxx.mk)

# Override AOSP build properties
PRODUCT_DEVICE := kyleproxx
PRODUCT_NAME := kyleproxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S758x

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=kyleproxx \
    BUILD_FINGERPRINT=samsung/kyleproxx/kyleproxx:7.1.2/N2G48C/4104010:userdebug/release-keys \
    PRIVATE_BUILD_DESC="kyleproxx-userdebug 7.1.2 N2G48C 4104010 release-keys"

# Addtional backup tools for dirty flash
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/generic/addon.d/91-font.sh:system/addon.d/91-font.sh
