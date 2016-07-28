ifneq ($(filter d852,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles)

endif
