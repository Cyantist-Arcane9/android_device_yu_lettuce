# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 720x1280

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/yu/lettuce/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lettuce
PRODUCT_NAME := omni_lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU
BOARD_VENDOR := yu

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:5.1.1/LMY48B/YOG4PAS47N:user/release-keys \
    PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY48B YOG4PAS47N release-keys"
					
# Inline kernel
TARGET_KERNEL_SOURCE := kernel/cyanogen/msm8916

# Inherit from proprietary blobs
$(call inherit-product, vendor/yu/lettuce/lettuce-vendor.mk)					