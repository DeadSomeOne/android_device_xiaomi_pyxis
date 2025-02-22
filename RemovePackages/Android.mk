LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Chrome \
    Chrome-Stub \
    Drive \
    Gmail2 \
    Duo \
    Maps \
    YTMusic \
    Photos \
    Videos \
    YouTube \
    YoutubeMusicPrebuilt \
    PrebuiltGmail \
    GoogleTTS \
    talkback \
    TurboPrebuilt \
    ScribePrebuilt \
    SafetyHubPrebuilt

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
