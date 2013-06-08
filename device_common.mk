# Copyright (C) 2013 The Android Open Source Project
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

# Platform specific overlays
#
DEVICE_PACKAGE_OVERLAYS += device/sony/lagan/overlay

# Platform specific packages
#
PRODUCT_PACKAGES += \
    Nfc \
    Tag \
    alsa.msm8960 \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8960 \
    com.android.nfc_extras \
    e2fsck \
    gps.msm8960 \
    libaudio-resampler \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libnfc \
    libnfc_jni \
    p2p_supplicant.conf \
    sensors.default \
    camera.qcom \
    camera.msm8960 \
    power.msm8960 \
    libmmcamera_interface2 \
    libmmcamera_interface \
    mm-vdec-omx-test \
    mm-venc-omx-test720p \
    libnetcmdiface
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Platform specific tags
#
PRODUCT_TAGS += dalvik.gc.type-precise

# Platform specific properties
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qmienabled=truee \
    ro.qualcomm.bt.hci_transport=smd \
    af.resampler.quality=255 \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.enable.wl_log=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.audio.fluence.mode=endfire \
    persist.audio.handset.mic=analog \
    persist.audio.lowlatency.rec=false \
    persist.hwc.mdpcomp.enable=true \
    persist.radio.add_power_save=1 \
    persist.radio.oem_socket=false \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.com.android.dataroaming=false \
    ro.com.google.clientidbase.ms=android-sonymobile \
    ro.com.google.clientidbase=android-sonyericsson \
    ro.hwui.text_small_cache_width=2048 \
    ro.hwui.texture_cache_size=128.0f \
    ro.opengles.version=131072 \
    wifi.interface=wlan0 \
    ro.carrier=wifi-only

# Platform specific default properties
#
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Platform specific files
#
SONY_ROOT = device/sony/lagan/rootdir
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/fstab.sony:root/fstab.sony \
    $(SONY_ROOT)/init.sony.rc:root/init.sony.rc \
    $(SONY_ROOT)/init.sony.usb.rc:root/init.sony.usb.rc \
    $(SONY_ROOT)/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(SONY_ROOT)/system/etc/gps.conf:system/etc/gps.conf \
    $(SONY_ROOT)/system/etc/init.sony.bt.sh:system/etc/init.sony.bt.sh \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(SONY_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(SONY_ROOT)/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(SONY_ROOT)/system/etc/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(SONY_ROOT)/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(SONY_ROOT)/system/etc/vold.fstab:system/etc/vold.fstab \
    $(SONY_ROOT)/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
    $(SONY_ROOT)/system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    $(SONY_ROOT)/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(SONY_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(SONY_ROOT)/system/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(SONY_ROOT)/system/usr/keylayout/mhl-rcp.kl:system/usr/keylayout/mhl-rcp.kl \
    $(SONY_ROOT)/system/usr/keylayout/pmic8xxx_pwrkey.kcm:system/usr/keylayout/pmic8xxx_pwrkey.kcm \
    $(SONY_ROOT)/system/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(SONY_ROOT)/ueventd.sony.rc:root/ueventd.sony.rc \
    $(SONY_ROOT)/init.recovery.qcom.rc:root/init.recovery.qcom.rc 

COMMON_PATH := device/sony/lagan
# Post recovery script
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

