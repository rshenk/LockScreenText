THEOS_DEVICE_IP = xxx.xxx.x.xxx
export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:7.0:7.0
include theos/makefiles/common.mk

TWEAK_NAME = LockScreenText
LockScreenText_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
