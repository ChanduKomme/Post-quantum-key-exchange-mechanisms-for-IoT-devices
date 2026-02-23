# 0 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/hal_drv//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
# 30 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h" 1
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 160 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4

# 160 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 229 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 344 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
typedef int wchar_t;
# 440 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 451 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
} max_align_t;
# 465 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
  typedef __typeof__(nullptr) nullptr_t;
# 35 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h" 2
# 49 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint.h" 1 3 4
# 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint.h" 3 4
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdint-gcc.h" 1 3 4
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
# 50 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h" 2






# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h" 1
# 74 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/platform.h" 1
# 127 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/platform.h"

# 127 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h" 2
# 151 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOSConfig.h"
void vAssertCalled( void );
# 57 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h" 1
# 35 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h" 1
# 45 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/deprecated_definitions.h" 1
# 46 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h" 2






# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 92 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
extern BaseType_t TrapNetCounter;
extern void vTaskSwitchContext( void );
# 102 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 179 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h"
inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
    return TrapNetCounter ? 1 : 0;
}
# 53 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h" 2
# 99 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/mpu_wrappers.h" 1
# 100 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h" 2
# 117 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;





typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;


typedef struct xHeapStats
{
 size_t xAvailableHeapSpaceInBytes;
 size_t xSizeOfLargestFreeBlockInBytes;
 size_t xSizeOfSmallestFreeBlockInBytes;
 size_t xNumberOfFreeBlocks;
 size_t xMinimumEverFreeBytesRemaining;
 size_t xNumberOfSuccessfulAllocations;
 size_t xNumberOfSuccessfulFrees;
} HeapStats_t;
# 152 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void vPortGetHeapStats( HeapStats_t *pxHeapStats );




void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void *pvPortRealloc (void *ptr, size_t size ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h" 2
# 1061 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1112 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];




  UBaseType_t uxDummy9;


  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];





  void *pvDummy15[ 1 ];
# 1147 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1160 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
} StaticTask_t;
# 1176 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;







  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1220 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1249 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;

  UBaseType_t uxDummy7;

 uint8_t ucDummy8;

} StaticTimer_t;
# 1277 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;

void vInitializeBL602(void);
# 31 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h" 1
# 36 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h" 1
# 139 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h" 2
# 69 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 847 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 894 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 920 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 976 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1018 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1069 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1118 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1147 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1180 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskStartScheduler( void ) ;
# 1236 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskEndScheduler( void ) ;
# 1287 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskSuspendAll( void ) ;
# 1341 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1356 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1373 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1387 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1400 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1416 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1443 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1470 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1518 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;
# 1534 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1543 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1642 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1689 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1743 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1773 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
uint32_t ulTaskGetIdleRunTimeCounter( void ) ;
# 1854 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1945 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2022 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2123 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2192 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2208 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2226 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
uint32_t ulTaskNotifyValueClear( TaskHandle_t xTask, uint32_t ulBitsToClear ) ;
# 2240 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 2323 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;
# 2344 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2377 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2391 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2417 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2428 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2473 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2494 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2508 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp ) ;
# 2524 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/include/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 32 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.h" 1
# 32 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.h"
int hal_wifi_start_firmware_task(void);
# 33 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c" 2






# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h" 1
# 59 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifi/include/bl60x_fw_api.h"
void bl60x_fw_xtal_capcode_set(uint8_t cap_in, uint8_t cap_out, uint8_t enable, uint8_t cap_in_max, uint8_t cap_out_max);
void bl60x_fw_xtal_capcode_update(uint8_t cap_in, uint8_t cap_out);
void bl60x_fw_xtal_capcode_restore(void);
void bl60x_fw_xtal_capcode_autofit(void);
void bl60x_fw_xtal_capcode_get(uint8_t *cap_in, uint8_t *cap_out);

int bl60x_fw_password_hash(char *password, char *ssid, int ssidlength, char *output);
void bl60x_fw_rf_table_set(uint32_t* channel_div_table_in, uint16_t* channel_cnt_table_in,
                                                uint16_t lo_fcal_div);

void bl60x_fw_dump_data(void);
void bl60x_fw_dump_statistic(int forced);
void bl60x_current_time_us(long long *time_now);

int bl60x_check_mac_status(int *is_ok);

enum {

    API_AC_BK = 0,

    API_AC_BE,

    API_AC_VI,

    API_AC_VO,

    API_AC_MAX
};

int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop);


void wifi_main(void *param);

void bl_tpc_update_power_table(int8_t power_table_config[38]);
void bl_tpc_update_power_table_rate(int8_t power_table[24]);
void bl_tpc_update_power_table_channel_offset(int8_t power_table[14]);
void bl_tpc_update_power_rate_11b(int8_t power_rate_table[4]);
void bl_tpc_update_power_rate_11g(int8_t power_rate_table[8]);
void bl_tpc_update_power_rate_11n(int8_t power_rate_table[8]);
void bl_tpc_power_table_get(int8_t power_table_config[38]);

void phy_cli_register(void);



enum task_mm_cfg {
    TASK_MM_CFG_KEEP_ALIVE_STATUS_ENABLED,
    TASK_MM_CFG_KEEP_ALIVE_TIME_LAST_RECEIVED,
    TASK_MM_CFG_KEEP_ALIVE_PACKET_COUNTER,
};
# 40 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c" 2
int hal_wifi_start_firmware_task(void)
{
    static StackType_t wifi_fw_stack[(1536)];
    static StaticTask_t wifi_fw_task;

    xTaskCreateStatic(wifi_main, (char*)"fw", (1536), 
# 45 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c" 3 4
                                                              ((void *)0)
# 45 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_wifi.c"
                                                                  , (30), wifi_fw_stack, &wifi_fw_task);

    return 0;
}
