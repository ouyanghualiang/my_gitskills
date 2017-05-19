# Copyright 2007 The Android Open Source Project
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

# This makefile builds both for host and target, and so all the
# common definitions are factored out into a separate file to
# minimize duplication between the build rules.

MAKEFILE_PATH := $(call my-dir)
FFI_SOURCES_PATH := $(MAKEFILE_PATH)/distsrc
LOCAL_PATH:= $(FFI_SOURCES_PATH)

include $(CLEAR_VARS)

ffi_arch := $(TARGET_ARCH)
ffi_os := linux

# This include just keeps the nesting a bit saner.
include $(LOCAL_PATH)/Libffi.mk

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := ffi

export FFI_INCLUDES := $(LOCAL_PATH)/$(ffi_os)-$(ffi_arch) $(LOCAL_PATH)/include $(FFI_SOURCES_PATH)/linux-x86
LOCAL_C_INCLUDES := $(FFI_INCLUDES)
include $(BUILD_SHARED_LIBRARY)



