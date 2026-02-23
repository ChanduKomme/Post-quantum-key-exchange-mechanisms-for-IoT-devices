# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/freertos $(BL60X_SDK_PATH)/components/freertos/include $(BL60X_SDK_PATH)/components/freertos/include $(BL60X_SDK_PATH)/components/freertos/portable/GCC/RISC-V $(BL60X_SDK_PATH)/components/freertos/portable/GCC/RISC-V/chip_specific_extensions/RV32F_float_abi_single $(BL60X_SDK_PATH)/components/freertos/panic
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/freertos -lfreertos 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += freertos
component-freertos-build: 
