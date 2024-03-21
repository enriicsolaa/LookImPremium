ifeq ($(ROOTLESS),1)
THEOS_PACKAGE_SCHEME=rootless
endif

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = YouTube
DEBUG=0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LookImPremium

LookImPremium_FILES = Tweak.x
LookImPremium_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
