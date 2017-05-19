# Copyright 2014 The GTK+Android Developers. See the COPYRIGHT
# file at the top-level directory of this distribution and at
# https://github.com/eugals/GTKAndroid/wiki/COPYRIGHT.
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.
#
# Author(s): Evgeny Sologubov
#

GTKA_LIB_PATH := $(abspath $(call my-dir))/..

$(call import-add-path, $(GTKA_LIB_PATH))

LOCAL_LDLIBS     += -llog -landroid -lEGL -lGLESv2 
LOCAL_C_INCLUDES += $(GTK_INCLUDES)
#LOCAL_SHARED_LIBRARIES += libglib libgtk libgdk libatk libgdk-pixbuf libpango libcairo libgmodule libgio libgobject  libffi libpcre 
LOCAL_SHARED_LIBRARIES := gtk glib gmodule gobject atk cairo ffi fontconfig \
						  freetype gdk gdk-pixbuf gio harfbuzz pcre pango
                         

LOCAL_STATIC_LIBRARIES +=  android_support android_native_app_glue 
include $(call my-dir)/gtkresources.mk

include $(BUILD_SHARED_LIBRARY)
$(call import-module,android/support)
$(call import-module,android/native_app_glue)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/atk)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/cairo)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/ffi)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/fontconfig)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/freetype)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/gdk)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/gdk-pixbuf)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/gio)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/glib)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/gmodule)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/gobject)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/gtk)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/pango)
$(call import-module,../../../home/ouyang/GTKAndroid-master/clibs/pcre)
