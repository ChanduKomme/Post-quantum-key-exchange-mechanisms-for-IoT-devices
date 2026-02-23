# 0 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/utils//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c"
# 30 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h" 1
# 32 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint.h" 1 3 4
# 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint.h" 3 4
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h" 3 4

# 34 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint.h" 2 3 4
# 33 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdbool.h" 1 3 4
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h" 2







# 40 "/home/chandu/sdk/bl602_iot_sdk/components/utils/include/utils_tlv_bl.h"
enum CFG_ELEMENT_TYPE {
    CFG_ELEMENT_TYPE_UNKNOWN,
    CFG_ELEMENT_TYPE_BOOLEAN,
    CFG_ELEMENT_TYPE_SINT8,
    CFG_ELEMENT_TYPE_UINT8,
    CFG_ELEMENT_TYPE_SINT16,
    CFG_ELEMENT_TYPE_UINT16,
    CFG_ELEMENT_TYPE_SINT32,
    CFG_ELEMENT_TYPE_UINT32,
    CFG_ELEMENT_TYPE_STRING,
};

enum CFG_ELEMENT_TYPE_OPS
{
    CFG_ELEMENT_TYPE_OPS_SET,
    CFG_ELEMENT_TYPE_OPS_GET,
    CFG_ELEMENT_TYPE_OPS_RESET,
    CFG_ELEMENT_TYPE_OPS_DUMP_DEBUG,
    CFG_ELEMENT_TYPE_OPS_UNKNOWN,
};

int utils_tlv_bl_pack_bool(uint32_t *buf, int buf_sz, bool val);
int utils_tlv_bl_pack_uint8(uint32_t *buf, int buf_sz, uint8_t val);
int utils_tlv_bl_pack_int8(uint32_t *buf, int buf_sz, int8_t val);
int utils_tlv_bl_pack_uint16(uint32_t *buf, int buf_sz, uint16_t val);
int utils_tlv_bl_pack_int16(uint32_t *buf, int buf_sz, int16_t val);
int utils_tlv_bl_pack_uint32(uint32_t *buf, int buf_sz, uint32_t val);
int utils_tlv_bl_pack_int32(uint32_t *buf, int buf_sz, int32_t val);
int utils_tlv_bl_pack_string(uint32_t *buf, int buf_sz, const char *str);
int utils_tlv_bl_pack_auto(uint32_t *buf, int buf_sz, uint16_t type, void *arg1);

int utils_tlv_bl_unpack_bool(uint32_t *buf, int buf_sz, bool *val);
int utils_tlv_bl_unpack_uint8(uint32_t *buf, int buf_sz, uint8_t *val);
int utils_tlv_bl_unpack_int8(uint32_t *buf, int buf_sz, int8_t *val);
int utils_tlv_bl_unpack_uint16(uint32_t *buf, int buf_sz, uint16_t *val);
int utils_tlv_bl_unpack_int16(uint32_t *buf, int buf_sz, int16_t *val);
int utils_tlv_bl_unpack_uint32(uint32_t *buf, int buf_sz, uint32_t *val);
int utils_tlv_bl_unpack_int32(uint32_t *buf, int buf_sz, int32_t *val);
int utils_tlv_bl_unpack_string(uint32_t *buf, int buf_sz, char *str, int size);
int utils_tlv_bl_unpack_auto(uint32_t *buf, int buf_sz, uint16_t type, void *arg1);
# 31 "/home/chandu/sdk/bl602_iot_sdk/components/utils/src/utils_tlv_bl.c" 2

int utils_tlv_bl_pack_bool(uint32_t *buf, int buf_sz, bool val)
{
    if (buf_sz < (4)) {
        return (-1);
    }
    *buf = val;

    return (4);
}

int utils_tlv_bl_pack_uint32(uint32_t *buf, int buf_sz, uint32_t val)
{
    if (buf_sz < (4)) {
        return (-1);
    }
    *buf = val;

    return (4);
}

int utils_tlv_bl_unpack_bool(uint32_t *buf, int buf_sz, bool *val)
{
    if (buf_sz < (4)) {
        return (-1);
    }
    *val = (*buf) ? true : false;

    return (4);
}

int utils_tlv_bl_unpack_uint32(uint32_t *buf, int buf_sz, uint32_t *val)
{
    if (buf_sz < (4)) {
        return (-1);
    }
    *val = (*buf);

    return (4);
}

int utils_tlv_bl_pack_auto(uint32_t *buf, int buf_sz, uint16_t type, void *arg1)
{
    int ret = (-2);

    switch (type) {
        case CFG_ELEMENT_TYPE_BOOLEAN:
        {
            ret = utils_tlv_bl_pack_bool(buf, buf_sz, *(bool*)arg1 ? true : false);
        }
        break;
        case CFG_ELEMENT_TYPE_SINT8:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_UINT8:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_SINT16:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_UINT16:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_SINT32:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_UINT32:
        {
            ret = utils_tlv_bl_pack_uint32(buf, buf_sz, *(uint32_t*)arg1);
        }
        break;
        case CFG_ELEMENT_TYPE_STRING:
        {

        }
        break;
        default:
        {

        }
    }

    return ret;
}

int utils_tlv_bl_unpack_auto(uint32_t *buf, int buf_sz, uint16_t type, void *arg1)
{
    int ret = (-2);

    switch (type) {
        case CFG_ELEMENT_TYPE_BOOLEAN:
        {
            bool val = true;

            ret = utils_tlv_bl_unpack_bool(buf, buf_sz, &val);
            *(bool*)arg1 = val;
        }
        break;
        case CFG_ELEMENT_TYPE_SINT8:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_UINT8:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_SINT16:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_UINT16:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_SINT32:
        {

        }
        break;
        case CFG_ELEMENT_TYPE_UINT32:
        {
            uint32_t val = 0;

            ret = utils_tlv_bl_unpack_uint32(buf, buf_sz, &val);
            *(uint32_t*)arg1 = val;
        }
        break;
        case CFG_ELEMENT_TYPE_STRING:
        {

        }
        break;
        default:
        {

        }
    }

    return ret;
}
