PRODUCT_SOONG_NAMESPACES += \
    vendor/aeonax/ANXCamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/bin,$(TARGET_COPY_OUT_SYSTEM)/bin) \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/priv-app/ANXCamera/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/ANXCamera/lib)

PRODUCT_PACKAGES += \
    ANXCamera

PRODUCT_PROPERTY_OVERRIDES += \
    ro.miui.notch=1
