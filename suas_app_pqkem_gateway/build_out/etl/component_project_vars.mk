# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/3rdparty/etl $(BL60X_SDK_PATH)/components/3rdparty/etl/include $(BL60X_SDK_PATH)/components/3rdparty/etl/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/etl -letl 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += etl
component-etl-build: 
