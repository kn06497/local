$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/jagnm/full_jagnm.mk)


# Setup device specific product configuration
PRODUCT_NAME := aicp_jagnm
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := jagnm
PRODUCT_MODEL := LG-D722P
PRODUCT_MANUFACTURER := LGE


# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Kevin Nuñez (kn06497)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/aicp/configs/bootanimation.mk
