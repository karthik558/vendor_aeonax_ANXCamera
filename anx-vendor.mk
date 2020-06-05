PRODUCT_SOONG_NAMESPACES += \
    vendor/aeonax/ANXCamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/product/bin,$(TARGET_COPY_OUT_PRODUCT)/bin) \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/product/etc,$(TARGET_COPY_OUT_PRODUCT)/etc) \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/product/priv-app/ANXCamera/lib,$(TARGET_COPY_OUT_PRODUCT)/priv-app/ANXCamera/lib) \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/product/priv-app/ANXExtraPhoto/lib,$(TARGET_COPY_OUT_PRODUCT)/priv-app/ANXExtraPhoto/lib) \
    $(call find-copy-subdir-files,*,vendor/aeonax/ANXCamera/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc)

PRODUCT_PACKAGES += \
    ANXCamera \
    ANXExtraPhoto

PRODUCT_PROPERTY_OVERRIDES += \
    ro.miui.notch=1
