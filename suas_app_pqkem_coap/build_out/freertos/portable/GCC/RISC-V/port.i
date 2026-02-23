# 0 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/freertos//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
# 33 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
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
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 2
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
# 35 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/portmacro.h" 1
# 36 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 1 3
# 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/_ansi.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/newlib.h" 1 3
# 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/newlib.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/_newlib_version.h" 1 3
# 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/newlib.h" 2 3
# 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/_ansi.h" 2 3
# 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 2 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 1 3
# 13 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/_ansi.h" 1 3
# 14 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3

# 41 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 48 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/cdefs.h" 2 3
# 16 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 374 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine/_types.h" 1 3
# 28 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef long __daddr_t;



typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 17 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 35 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 36 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 99 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 116 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 153 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 270 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



extern __FILE __sf[3];

struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};

extern struct _glue __sglue;
# 306 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 568 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];




  struct __locale_t *_locale;





  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {



          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
# 634 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
        } _reent;







    } _new;







  void (**_sig_func)(int);
};
# 782 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;





extern struct _reent _impure_data ;
# 900 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/reent.h" 3
extern struct _atexit *__atexit;
extern struct _atexit __atexit0;

extern void (*__stdio_exit_handler) (void);

void _reclaim_reent (struct _reent *);

extern int _fwalk_sglue (struct _reent *, int (*)(struct _reent *, __FILE *),
    struct _glue *);
# 12 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 2 3





# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 18 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 2 3


# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 2 3



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/strings.h" 1 3
# 44 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/string.h" 2 3


# 39 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 2
# 77 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
 
# 77 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
extern const uint32_t __freertos_irq_stack_top[];
 const StackType_t xISRStackTop = ( StackType_t ) __freertos_irq_stack_top;







void vPortSetupTimerInterrupt( void ) __attribute__(( weak ));




uint64_t ullNextTime = 0ULL;
const uint64_t *pullNextTime = &ullNextTime;
const size_t uxTimerIncrementsForOneTick = ( size_t ) ( ( ( 10 * 1000 * 1000 ) ) / ( ( ( TickType_t ) 1000 ) ) );
uint32_t const ullMachineTimerCompareRegisterBase = ( ( (0x02000000UL) ) + 0x4000UL );
volatile uint64_t * pullMachineTimerCompareRegister = 
# 95 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c" 3 4
                                                     ((void *)0)
# 95 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
                                                         ;
BaseType_t TrapNetCounter = 0;
const BaseType_t *pTrapNetCounter = &TrapNetCounter;
# 123 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
 void vPortSetupTimerInterrupt( void )
 {
 uint32_t ulCurrentTimeHigh, ulCurrentTimeLow;
 volatile uint32_t * const pulTimeHigh = ( volatile uint32_t * const ) ( ( ( ( (0x02000000UL) ) + 0xBFF8UL ) ) + 4UL );
 volatile uint32_t * const pulTimeLow = ( volatile uint32_t * const ) ( ( ( (0x02000000UL) ) + 0xBFF8UL ) );
 volatile uint32_t ulHartId;

  __asm volatile( "csrr %0, mhartid" : "=r"( ulHartId ) );
  pullMachineTimerCompareRegister = ( volatile uint64_t * ) ( ullMachineTimerCompareRegisterBase + ( ulHartId * sizeof( uint64_t ) ) );

  do
  {
   ulCurrentTimeHigh = *pulTimeHigh;
   ulCurrentTimeLow = *pulTimeLow;
  } while( ulCurrentTimeHigh != *pulTimeHigh );

  ullNextTime = ( uint64_t ) ulCurrentTimeHigh;
  ullNextTime <<= 32ULL;
  ullNextTime |= ( uint64_t ) ulCurrentTimeLow;
  ullNextTime += ( uint64_t ) uxTimerIncrementsForOneTick;
  *pullMachineTimerCompareRegister = ullNextTime;


  ullNextTime += ( uint64_t ) uxTimerIncrementsForOneTick;
 }




BaseType_t xPortStartScheduler( void )
{
extern void xPortStartFirstTask( void );


 {
  volatile uint32_t mtvec = 0;



  __asm volatile( "csrr %0, mtvec" : "=r"( mtvec ) );




  if( ( ( xISRStackTop & ( 0x000f ) ) == 0 ) == 0 ) vAssertCalled();






 }





 vPortSetupTimerInterrupt();


 {



  __asm volatile( "csrs mie, %0" :: "r"(0x880) );
 }
# 197 "/home/chandu/sdk/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V/port.c"
    *(volatile uint8_t*)(0x02800407) = 1;

 xPortStartFirstTask();



 return ( ( ( BaseType_t ) 0 ) );
}


void vPortEndScheduler( void )
{

 for( ;; );
}
