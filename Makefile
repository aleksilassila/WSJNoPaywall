TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = WSJ


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WSJNoPaywall

WSJNoPaywall_FILES = Tweak.xm
WSJNoPaywall_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
