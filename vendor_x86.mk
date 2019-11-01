LOCAL_PATH := $(call my-dir)

# include $(CLEAR_VARS)
# LOCAL_MODULE := SuperSU
# LOCAL_MODULE_TAGS := optional
# LOCAL_CERTIFICATE := PRESIGNED
# LOCAL_MODULE_CLASS := APPS
# LOCAL_SRC_FILES := $(LOCAL_PATH)/common/Superuser.apk
# LOCAL_PRIVATE_PLATFORM_APIS := true
# LOCAL_POST_INSTALL_CMD := chmod 6755 $(LOCAL_MODULE_PATH)/$(LOCAL_MODULE)
# LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
# LOCAL_UNSTRIPPED_PATH := $(LOCAL_MODULE_PATH)
# include $(BUILD_PREBUILT)


PRODUCT_COPY_FILES += \
    vendor/supersu/common/install-recovery.sh:system/etc/install-recovery.sh \
    vendor/supersu/common/install-recovery.sh:system/bin/install-recovery.sh \
    vendor/supersu/common/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/supersu/x86/su.pie:system/bin/.ext/.su \
    vendor/supersu/x86/su.pie:system/xbin/daemonsu \
    vendor/supersu/x86/su.pie:system/xbin/sugote \
    vendor/supersu/x86/su.pie:system/xbin/su \
    vendor/supersu/x86/supolicy:system/xbin/supolicy \
    vendor/supersu/x86/libsupol.so:system/lib/libsupol.so \
    vendor/supersu/x86/libsupol.so:system/lib64/libsupol.so

# PRODUCT_PACKAGES += SuperSU
