# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/3rdparty/libcoap $(BL60X_SDK_PATH)/components/3rdparty/libcoap/include $(BL60X_SDK_PATH)/components/3rdparty/libcoap/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/libcoap -llibcoap 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += libcoap
component-libcoap-build: 
