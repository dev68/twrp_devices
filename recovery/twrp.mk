LOCAL_PATH := device/lge/vs985/recovery

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.g3:recovery/root/fstab.g3 \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

# G3
PRODUCT_PACKAGES += \
    init.recovery.g3.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Touch To Wake
PRODUCT_PACKAGES += \
    init.recovery.touchtowake.rc

# Keymaster
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/firmware/image/keymaster)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/lib)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/vendor/lib/hw)
    $(shell mkdir -p out/target/product/$(PRODUCT_DEVICE)/recovery/root/sbin)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/sbin/libdiag.so:recovery/root/sbin/libdiag.so \
    $(LOCAL_PATH)/root/sbin/libdrmfs.so:recovery/root/sbin/libdrmfs.so \
    $(LOCAL_PATH)/root/sbin/libdrmtime.so:recovery/root/sbin/libdrmtime.so \
    $(LOCAL_PATH)/root/sbin/librpmb.so:recovery/root/sbin/librpmb.so \
    $(LOCAL_PATH)/root/sbin/libssd.so:recovery/root/sbin/libssd.so \
    $(LOCAL_PATH)/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    $(LOCAL_PATH)/root/firmware/image/cmnlib.b00:recovery/root/firmware/image/keymaster/cmnlib.b00 \
    $(LOCAL_PATH)/root/firmware/image/cmnlib.b01:recovery/root/firmware/image/keymaster/cmnlib.b01 \
    $(LOCAL_PATH)/root/firmware/image/cmnlib.b02:recovery/root/firmware/image/keymaster/cmnlib.b02 \
    $(LOCAL_PATH)/root/firmware/image/cmnlib.b03:recovery/root/firmware/image/keymaster/cmnlib.b03 \
    $(LOCAL_PATH)/root/firmware/image/cmnlib.mdt:recovery/root/firmware/image/keymaster/cmnlib.mdt \
    $(LOCAL_PATH)/root/firmware/image/keymaste.b00:recovery/root/firmware/image/keymaster/keymaste.b00 \
    $(LOCAL_PATH)/root/firmware/image/keymaste.b01:recovery/root/firmware/image/keymaster/keymaste.b01 \
    $(LOCAL_PATH)/root/firmware/image/keymaste.b02:recovery/root/firmware/image/keymaster/keymaste.b02 \
    $(LOCAL_PATH)/root/firmware/image/keymaste.b03:recovery/root/firmware/image/keymaster/keymaste.b03 \
    $(LOCAL_PATH)/root/firmware/image/keymaste.mdt:recovery/root/firmware/image/keymaster/keymaste.mdt \
    $(LOCAL_PATH)/root/vendor/lib/libQSEEComAPI.so:recovery/root/vendor/lib/libQSEEComAPI.so \
    $(LOCAL_PATH)/root/vendor/lib/hw/keystore.msm8974.so:recovery/root/vendor/lib/hw/keystore.msm8974.so
