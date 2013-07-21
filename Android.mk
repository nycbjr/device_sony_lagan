LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sgp311,SGP311,pollux_windy)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
