# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
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

#Mainstage Versioning
MAINSTAGE_VERSION = v1.0

ifndef MAINSTAGE_BUILD_TYPE
    MAINSTAGE_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
endif 

ifeq ($(MAINSTAGE_BUILD_TYPE), OFFICIAL)


endif

MAINSTAGE_MOD_VERSION := MainstageOS-$(MAINSTAGE_VERSION)-$(shell date -u +%Y%m%d-%H%M)-$(MAINSTAGE_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.mainstage.version=$(MAINSTAGE_VERSION) \
  ro.mainstage.releasetype=$(MAINSTAGE_BUILD_TYPE) \
  ro.modversion=$(MAINSTAGE_MOD_VERSION)
  
MAINSTAGE_DISPLAY_VERSION := MainstageOS-$(MAINSTAGE_VERSION)-$(MAINSTAGE_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.mainstage.display.version=$(MAINSTAGE_DISPLAY_VERSION)
