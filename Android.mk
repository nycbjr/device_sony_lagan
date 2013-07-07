LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sgp311)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
