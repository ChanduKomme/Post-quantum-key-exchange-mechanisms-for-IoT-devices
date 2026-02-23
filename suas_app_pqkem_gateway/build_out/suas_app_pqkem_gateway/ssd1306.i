# 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/build_out/suas_app_pqkem_gateway//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c"

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
# 3 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2
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
# 4 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2


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


# 7 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h" 1
# 33 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h" 1
# 39 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h"

# 39 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h"
typedef struct i2c_msg {
    uint16_t addr;
    uint8_t direct;
    uint8_t subflag;
    uint32_t subaddr;
    uint8_t sublen;
    uint32_t len;
    uint8_t *buf;
    int event;
    int idex;
    int block;
    int stop;
    int ins_num;
    int i2cx;
} i2c_msg_t;

void i2c_set_freq(int freq, int i2cx);
void i2c_gpio_init(int i2cx);
void i2c_clear_status(int i2cx);
void do_write_data(i2c_msg_t *pstmsg);
void do_read_data(i2c_msg_t *pstmsg);
void i2c_transfer_start(i2c_msg_t *pstmsg);
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h" 2
# 43 "/home/chandu/sdk/bl602_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h"
int hal_i2c_init(int i2cx, int freq);
int hal_i2c_read_block(int address, char *data, int length, int subaddr_len, int subaddr);
int hal_i2c_write_block(int address, const char *data, int length, int subaddr_len, int subaddr);
int hal_i2c_write_no_block(int address, const char *data, int length, int subaddr_len, int subaddr);
int hal_i2c_read_no_block(int address, const char *data, int length, int subaddr_len, int subaddr);

int i2c_transfer_msgs_block(i2c_msg_t *pstmsg, int num, int support_ins);
void i2c_msgs_process(i2c_msg_t *pstmsg);
void i2c_insert_msgs_process(i2c_msg_t *pstmsg);
# 10 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/suas_i2c.h" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h" 1
# 39 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h" 1
# 39 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 64 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum
{
# 79 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
  MSOFT_IRQn =3,
  MTIME_IRQn =7,
  MEXT_IRQn =11,
  CLIC_SOFT_PEND_IRQn =12,


  BMX_ERR_IRQn = 16 +0,
  BMX_TO_IRQn = 16 +1,
  L1C_BMX_ERR_IRQn = 16 +2,
  L1C_BMX_TO_IRQn = 16 +3,
  SEC_BMX_ERR_IRQn = 16 +4,
  RF_TOP_INT0_IRQn = 16 +5,
  RF_TOP_INT1_IRQn = 16 +6,
  SDIO_IRQn = 16 +7,
  DMA_BMX_ERR_IRQn = 16 +8,
  SEC_GMAC_IRQn = 16 +9,
  SEC_CDET_IRQn = 16 +10,
  SEC_PKA_IRQn = 16 +11,
  SEC_TRNG_IRQn = 16 +12,
  SEC_AES_IRQn = 16 +13,
  SEC_SHA_IRQn = 16 +14,
  DMA_ALL_IRQn = 16 +15,
  RESERVED0 = 16 +16,
  RESERVED1 = 16 +17,
  RESERVED2 = 16 +18,
  IRTX_IRQn = 16 +19,
  IRRX_IRQn = 16 +20,
  RESERVED3 = 16 +21,
  RESERVED4 = 16 +22,
  SF_CTRL_IRQn = 16 +23,
  RESERVED5 = 16 +24,
  GPADC_DMA_IRQn = 16 +25,
  EFUSE_IRQn = 16 +26,
  SPI_IRQn = 16 +27,
  RESERVED6 = 16 +28,
  UART0_IRQn = 16 +29,
  UART1_IRQn = 16 +30,
  RESERVED7 = 16 +31,
  I2C_IRQn = 16 +32,
  RESERVED8 = 16 +33,
  PWM_IRQn = 16 +34,
  RESERVED9 = 16 +35,
  TIMER_CH0_IRQn = 16 +36,
  TIMER_CH1_IRQn = 16 +37,
  TIMER_WDT_IRQn = 16 +38,
  RESERVED10 = 16 +39,
  RESERVED11 = 16 +40,
  RESERVED12 = 16 +41,
  RESERVED13 = 16 +42,
  RESERVED14 = 16 +43,
  GPIO_INT0_IRQn = 16 +44,
  RESERVED16 = 16 +45,
  RESERVED17 = 16 +46,
  RESERVED18 = 16 +47,
  RESERVED19 = 16 +48,
  RESERVED20 = 16 +49,
  PDS_WAKEUP_IRQn = 16 +50,
  HBN_OUT0_IRQn = 16 +51,
  HBN_OUT1_IRQn = 16 +52,
  BOR_IRQn = 16 +53,
  WIFI_IRQn = 16 +54,
  BZ_PHY_IRQn = 16 +55,
  BLE_IRQn = 16 +56,
  MAC_TXRX_TIMER_IRQn = 16 +57,
  MAC_TXRX_MISC_IRQn = 16 +58,
  MAC_RX_TRG_IRQn = 16 +59,
  MAC_TX_TRG_IRQn = 16 +60,
  MAC_GEN_IRQn = 16 +61,
  MAC_PORT_TRG_IRQn = 16 +62,
  WIFI_IPC_PUBLIC_IRQn = 16 +63,
  IRQn_LAST,
} IRQn_Type;
# 211 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum
{
  BL_AHB_MASTER_CPU = 0,
  BL_AHB_MASTER_AP2NP,
  BL_AHB_MASTER_EMAC,
  BL_AHB_MASTER_SEC0,
  BL_AHB_MASTER_DMA,
  BL_AHB_MASTER_606,
  BL_AHB_MASTER_SEC1,
  BL_AHB_MASTER_154,
  BL_AHB_MASTER_CCI,
}BL_AHB_Master_Type;

typedef enum
{
  BL_AHB_SLAVE0_S2F = 0,
  BL_AHB_SLAVE0_MAX,
}BL_AHB_Slave0_Type;

typedef enum
{
  BL_AHB_SLAVE1_GLB = 0x00,
  BL_AHB_SLAVE1_RF = 0x01,
  BL_AHB_SLAVE1_GPIP = 0x02,
  BL_AHB_SLAVE1_DBG = 0x03,
  BL_AHB_SLAVE1_SEC = 0x04,
  BL_AHB_SLAVE1_TZ1 = 0x05,
  BL_AHB_SLAVE1_TZ2 = 0x06,
  BL_AHB_SLAVE1_EFUSE = 0x07,
  BL_AHB_SLAVE1_CCI = 0x08,
  BL_AHB_SLAVE1_L1C = 0x09,

  BL_AHB_SLAVE1_SFC = 0x0B,
  BL_AHB_SLAVE1_DMA = 0x0C,
  BL_AHB_SLAVE1_SDU = 0x0D,
  BL_AHB_SLAVE1_PDSHBN = 0x0E,
  BL_AHB_SLAVE1_WRAM = 0x0F,

  BL_AHB_SLAVE1_UART0 = 0x10,
  BL_AHB_SLAVE1_UART1 = 0x11,
  BL_AHB_SLAVE1_SPI = 0x12,
  BL_AHB_SLAVE1_I2C = 0x13,
  BL_AHB_SLAVE1_PWM = 0x14,
  BL_AHB_SLAVE1_TMR = 0x15,
  BL_AHB_SLAVE1_IRR = 0x16,
  BL_AHB_SLAVE1_CKS =0x17,

  BL_AHB_SLAVE1_MAX =0x18,

}BL_AHB_Slave1_Type;

typedef enum
{
  BL_AHB_SEC_ENG_AES0 = 0,
  BL_AHB_SEC_ENG_AES1,
  BL_AHB_SEC_ENG_SHA0,
  BL_AHB_SEC_ENG_SHA1,
}BL_AHB_Sec_Eng_Type;

typedef enum
{
  BL_AHB_DMA0_CH0 = 0,
  BL_AHB_DMA0_CH1,
  BL_AHB_DMA0_CH2,
  BL_AHB_DMA0_CH3,
  BL_AHB_DMA0_CH4,
}BL_AHB_DMA0_CHNL_Type;

typedef enum
{
  BL_AHB_SLAVE2_WIFI_CFG = 0,
  BL_AHB_SLAVE2_MAX,
}BL_AHB_Slave2_Type;

typedef enum
{
  BL_AHB_SLAVE3_BLE = 0,
  BL_AHB_SLAVE3_MAX,
}BL_AHB_Slave3_Type;

typedef enum
{
  BL_CORE_MASTER_IBUS_CPU = 0,
  BL_CORE_MASTER_DBUS_CPU,
  BL_CORE_MASTER_BUS_S2F,
  BL_CORE_MASTER_MAX,
}BL_Core_Master_Type;

typedef enum
{
  BL_CORE_SLAVE0_DTCM_CPU = 0,
  BL_CORE_SLAVE0_MAX,
}BL_Core_Slave0_Type;

typedef enum
{
  BL_CORE_SLAVE1_XIP_CPU = 0,
  BL_CORE_SLAVE1_ITCM_CPU,
  BL_CORE_SLAVE1_ROM,
  BL_CORE_SLAVE1_MAX,
}BL_Core_Slave1_Type;

typedef enum
{
  BL_CORE_SLAVE2_F2S = 0,
  BL_CORE_SLAVE2_MAX,
}BL_Core_Slave2_Type;





# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h" 1







extern uint32_t SystemCoreClock;

extern void SystemCoreClockUpdate (void);
extern void SystemInit (void);
extern void Systick_Stop(void);
extern void Systick_Start(void);
# 324 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 336 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("csrsi mstatus, 8");
}

__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("csrci mstatus, 8");
}

__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

    uint32_t res = 0;

    res = (value << 24) | (value >> 24);
    res &= 0xFF0000FF;
    res |= ((value >> 8) & 0x0000FF00) | ((value << 8) & 0x00FF0000);

    return res;
}

__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  return __builtin_bswap16(value);
}

extern void clic_enable_interrupt (uint32_t source);
extern void clic_disable_interrupt ( uint32_t source);
extern void clic_set_pending(uint32_t source);
extern void clic_clear_pending(uint32_t source);
# 337 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 338 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/riscv_encoding.h" 1
# 339 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 40 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h" 2
# 385 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h"
struct i2c_reg {

    union {
        struct {
            uint32_t cr_i2c_m_en : 1;
            uint32_t cr_i2c_pkt_dir : 1;
            uint32_t cr_i2c_deg_en : 1;
            uint32_t cr_i2c_scl_sync_en : 1;
            uint32_t cr_i2c_sub_addr_en : 1;
            uint32_t cr_i2c_sub_addr_bc : 2;
            uint32_t reserved_7 : 1;
            uint32_t cr_i2c_slv_addr : 7;
            uint32_t reserved_15 : 1;
            uint32_t cr_i2c_pkt_len : 8;
            uint32_t reserved_24_27 : 4;
            uint32_t cr_i2c_deg_cnt : 4;
        }BF;
        uint32_t WORD;
    } i2c_config;


    union {
        struct {
            uint32_t i2c_end_int : 1;
            uint32_t i2c_txf_int : 1;
            uint32_t i2c_rxf_int : 1;
            uint32_t i2c_nak_int : 1;
            uint32_t i2c_arb_int : 1;
            uint32_t i2c_fer_int : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t cr_i2c_end_mask : 1;
            uint32_t cr_i2c_txf_mask : 1;
            uint32_t cr_i2c_rxf_mask : 1;
            uint32_t cr_i2c_nak_mask : 1;
            uint32_t cr_i2c_arb_mask : 1;
            uint32_t cr_i2c_fer_mask : 1;
            uint32_t reserved_14_15 : 2;
            uint32_t cr_i2c_end_clr : 1;
            uint32_t rsvd_17 : 1;
            uint32_t rsvd_18 : 1;
            uint32_t cr_i2c_nak_clr : 1;
            uint32_t cr_i2c_arb_clr : 1;
            uint32_t rsvd_21 : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t cr_i2c_end_en : 1;
            uint32_t cr_i2c_txf_en : 1;
            uint32_t cr_i2c_rxf_en : 1;
            uint32_t cr_i2c_nak_en : 1;
            uint32_t cr_i2c_arb_en : 1;
            uint32_t cr_i2c_fer_en : 1;
            uint32_t reserved_30_31 : 2;
        }BF;
        uint32_t WORD;
    } i2c_int_sts;


    union {
        struct {
            uint32_t cr_i2c_sub_addr_b0 : 8;
            uint32_t cr_i2c_sub_addr_b1 : 8;
            uint32_t cr_i2c_sub_addr_b2 : 8;
            uint32_t cr_i2c_sub_addr_b3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_sub_addr;


    union {
        struct {
            uint32_t sts_i2c_bus_busy : 1;
            uint32_t cr_i2c_bus_busy_clr : 1;
            uint32_t reserved_2_31 : 30;
        }BF;
        uint32_t WORD;
    } i2c_bus_busy;


    union {
        struct {
            uint32_t cr_i2c_prd_s_ph_0 : 8;
            uint32_t cr_i2c_prd_s_ph_1 : 8;
            uint32_t cr_i2c_prd_s_ph_2 : 8;
            uint32_t cr_i2c_prd_s_ph_3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_prd_start;


    union {
        struct {
            uint32_t cr_i2c_prd_p_ph_0 : 8;
            uint32_t cr_i2c_prd_p_ph_1 : 8;
            uint32_t cr_i2c_prd_p_ph_2 : 8;
            uint32_t cr_i2c_prd_p_ph_3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_prd_stop;


    union {
        struct {
            uint32_t cr_i2c_prd_d_ph_0 : 8;
            uint32_t cr_i2c_prd_d_ph_1 : 8;
            uint32_t cr_i2c_prd_d_ph_2 : 8;
            uint32_t cr_i2c_prd_d_ph_3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_prd_data;


    uint8_t RESERVED0x1c[100];


    union {
        struct {
            uint32_t i2c_dma_tx_en : 1;
            uint32_t i2c_dma_rx_en : 1;
            uint32_t tx_fifo_clr : 1;
            uint32_t rx_fifo_clr : 1;
            uint32_t tx_fifo_overflow : 1;
            uint32_t tx_fifo_underflow : 1;
            uint32_t rx_fifo_overflow : 1;
            uint32_t rx_fifo_underflow : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } i2c_fifo_config_0;


    union {
        struct {
            uint32_t tx_fifo_cnt : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t rx_fifo_cnt : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t tx_fifo_th : 1;
            uint32_t reserved_17_23 : 7;
            uint32_t rx_fifo_th : 1;
            uint32_t reserved_25_31 : 7;
        }BF;
        uint32_t WORD;
    } i2c_fifo_config_1;


    union {
        struct {
            uint32_t i2c_fifo_wdata : 32;
        }BF;
        uint32_t WORD;
    } i2c_fifo_wdata;


    union {
        struct {
            uint32_t i2c_fifo_rdata : 32;
        }BF;
        uint32_t WORD;
    } i2c_fifo_rdata;

};

typedef volatile struct i2c_reg i2c_reg_t;
# 40 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 5 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 1




# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 1 3
# 36 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 37 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 2 3



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h" 1 3 4
# 40 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h" 3 4

# 40 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 63 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3



typedef __FILE FILE;



typedef _fpos_t fpos_t;





typedef __off_t off_t;




typedef _ssize_t ssize_t;



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/stdio.h" 1 3
# 86 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 2 3
# 187 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 263 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 290 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 345 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 380 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 402 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);
# 583 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 607 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 691 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 745 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 801 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3

# 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2







# 12 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
void * pvPortMalloc( size_t xWantedSize );
void* pvPortRealloc(void* ptr, size_t newsize);
void* pvPortCalloc(size_t numElements, size_t sizeOfElement);
void vPortFree( void *pv );






void bflb_platform_init(uint32_t baudrate);
void bflb_platform_deinit(void);
void bflb_platform_printf(char *fmt,...);
void bflb_platform_dump(const void *data,uint32_t len);
void bflb_platform_prints(char *data);
void bflb_platform_printx(uint32_t val);
void bflb_platform_printc(char c);
void bflb_platform_print_set(uint8_t logDisable);
int bflb_platform_get_random(uint8_t *data,uint32_t len);
int bflb_platform_get_input(uint8_t *data,uint32_t maxLen);

void bflb_platform_clear_time(void);
uint32_t bflb_platform_get_systick_int_cnt(void);
uint64_t bflb_platform_get_time_ms();
void bflb_platform_start_time(void);
void bflb_platform_stop_time(void);
void bflb_platform_set_alarm_time(uint64_t time);
void bflb_platform_init_time(void);
void bflb_platform_deinit_time(void);
void bflb_platform_delay_ms(uint32_t time);
uint32_t bflb_platform_get_log(uint8_t *data,uint32_t maxlen);
# 6 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 22 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  SUCCESS = 0,
  ERROR = 1,
  TIMEOUT = 2,
}BL_Err_Type;




typedef enum
{
  DISABLE = 0,
  ENABLE = 1,
}BL_Fun_Type;




typedef enum
{
  RESET = 0,
  SET = 1,
}BL_Sts_Type;




typedef enum
{
  UNMASK = 0,
  MASK = 1
}BL_Mask_Type;
# 106 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  LOGIC_LO = 0,
  LOGIC_HI = !LOGIC_LO
}LogicalStatus;




typedef enum
{
  DEACTIVE = 0,
  ACTIVE = !DEACTIVE
}ActiveStatus;




typedef void (intCallback_Type)(void);







extern intCallback_Type ** intCbfArra[];
void Install_Int_Callback(IRQn_Type intPeriph, uint32_t intType, intCallback_Type * cbFun);

void ASM_Delay_Us(uint32_t core,uint32_t cnt);
void BL602_Delay_US(uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
void *BL602_MemCpy(void *dst, const void *src, uint32_t n);
uint32_t *BL602_MemCpy4(uint32_t *dst, const uint32_t *src, uint32_t n);
void *BL602_MemCpy_Fast(void *pdst, const void *psrc, uint32_t n);
void* BL602_MemSet(void *s, uint8_t c, uint32_t n);
uint32_t *BL602_MemSet4(uint32_t *dst, const uint32_t val, uint32_t n);
int BL602_MemCmp(const void *s1, const void *s2, uint32_t n);
# 41 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h" 2
# 57 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
typedef enum {
    I2C0_ID = 0,
    I2C_ID_MAX,
}I2C_ID_Type;




typedef enum {
    I2C_WRITE = 0,
    I2C_READ,
}I2C_Direction_Type;




typedef enum {
    I2C_TRANS_END_INT,
    I2C_TX_FIFO_READY_INT,
    I2C_RX_FIFO_READY_INT,
    I2C_NACK_RECV_INT,
    I2C_ARB_LOST_INT,
    I2C_FIFO_ERR_INT,
    I2C_INT_ALL,
}I2C_INT_Type;




typedef struct {
    uint8_t len0;
    uint8_t len1;
    uint8_t len2;
    uint8_t len3;
}I2C_Start_Condition_Phase_Type;




typedef struct {
    uint8_t len0;
    uint8_t len1;
    uint8_t len2;
    uint8_t len3;
}I2C_Stop_Condition_Phase_Type;




typedef struct {
    uint8_t len0;
    uint8_t len1;
    uint8_t len2;
    uint8_t len3;
}I2C_Data_Phase_Type;




typedef struct {
    uint8_t slaveAddr;
    BL_Fun_Type stopEveryByte;
    uint8_t subAddrSize;
    uint32_t subAddr;
    uint16_t dataSize;
    uint8_t* data;
}I2C_Transfer_Cfg;
# 170 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
void I2C_IRQHandler(void);
void I2C_Int_Callback_Install(I2C_ID_Type i2cNo, I2C_INT_Type intType, intCallback_Type* cbFun);

void I2C_SendWord(I2C_ID_Type i2cNo, uint32_t data);
uint32_t I2C_RecieveWord(I2C_ID_Type i2cNo);
void I2C_Enable(I2C_ID_Type i2cNo);
void I2C_Disable(I2C_ID_Type i2cNo);
BL_Err_Type I2C_Reset(I2C_ID_Type i2cNo);
void I2C_SetPrd(I2C_ID_Type i2cNo, uint8_t phase);
void I2C_ClockSet(I2C_ID_Type i2cNo, uint32_t clk);
void I2C_SetSclSync(I2C_ID_Type i2cNo, uint8_t enable);
void I2C_Init(I2C_ID_Type i2cNo,I2C_Direction_Type direct,I2C_Transfer_Cfg *cfg);
BL_Sts_Type I2C_IsBusy(I2C_ID_Type i2cNo);
BL_Sts_Type I2C_TransferEndStatus(I2C_ID_Type i2cNo);
BL_Err_Type I2C_MasterSendBlocking(I2C_ID_Type i2cNo, I2C_Transfer_Cfg *cfg);
BL_Err_Type I2C_MasterReceiveBlocking(I2C_ID_Type i2cNo, I2C_Transfer_Cfg *cfg);
void I2C_IntMask(I2C_ID_Type i2cNo,I2C_INT_Type intType, BL_Mask_Type intMask);
# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/suas_i2c.h" 2
# 18 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/suas_i2c.h"
void suas_i2c_init();
# 11 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/suas_ssd1306.h" 1
# 9 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/suas_ssd1306.h"
void suas_ssd1306_set_cursor(uint8_t page, uint8_t column);
void suas_ssd1306_clear();
void suas_ssd1306_print_char(char c);
void suas_ssd1306_print_text(char *text);
void suas_ssd1306_init();
# 12 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/include/suas_ssd1306_font.h" 1





const char font[256][5] = {
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x1E, 0x35, 0x31, 0x35, 0x1E},
    {0x1E, 0x35, 0x37, 0x35, 0x1E},
    {0x0E, 0x1F, 0x3E, 0x1F, 0x0E},
    {0x08, 0x1C, 0x7F, 0x1C, 0x08},
    {0x18, 0x4A, 0x7F, 0x4A, 0x18},
    {0x1C, 0x4E, 0x7F, 0x4E, 0x1C},
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x38, 0x44, 0x44, 0x47, 0x3B},
    {0x0E, 0x51, 0xF1, 0x51, 0x0E},
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x60, 0x7E, 0x02, 0x33, 0x3F},
    {0x2A, 0x1C, 0x36, 0x1C, 0x2A},
    {0x3E, 0x1C, 0x1C, 0x08, 0x08},
    {0x08, 0x08, 0x1C, 0x1C, 0x3E},
    {0x00, 0x22, 0x7F, 0x22, 0x00},
    {0x00, 0x2E, 0x00, 0x2E, 0x00},
    {0x06, 0x7F, 0x01, 0x7F, 0x00},
    {0x00, 0x4A, 0x55, 0x29, 0x00},
    {0x00, 0x18, 0x18, 0x18, 0x18},
    {0x00, 0x4A, 0x5F, 0x4A, 0x00},
    {0x00, 0x02, 0x7F, 0x02, 0x00},
    {0x00, 0x20, 0x7F, 0x20, 0x00},
    {0x00, 0x08, 0x08, 0x1C, 0x08},
    {0x00, 0x08, 0x1C, 0x08, 0x08},
    {0x00, 0x3C, 0x20, 0x20, 0x20},
    {0x08, 0x1C, 0x08, 0x1C, 0x08},
    {0x20, 0x38, 0x3E, 0x38, 0x20},
    {0x02, 0x0E, 0x3E, 0x0E, 0x02},
    {0x00, 0x00, 0x00, 0x00, 0x00},
    {0x00, 0x00, 0x2F, 0x00, 0x00},
    {0x00, 0x03, 0x00, 0x03, 0x00},
    {0x34, 0x1C, 0x36, 0x1C, 0x16},
    {0x00, 0x26, 0x7F, 0x32, 0x00},
    {0x32, 0x0D, 0x1E, 0x2C, 0x13},
    {0x18, 0x26, 0x2D, 0x12, 0x28},
    {0x00, 0x00, 0x03, 0x00, 0x00},
    {0x00, 0x1C, 0x22, 0x41, 0x41},
    {0x41, 0x41, 0x22, 0x1C, 0x00},
    {0x00, 0x0A, 0x05, 0x0A, 0x00},
    {0x00, 0x10, 0x38, 0x10, 0x00},
    {0x00, 0x80, 0x60, 0x00, 0x00},
    {0x00, 0x08, 0x08, 0x08, 0x00},
    {0x00, 0x00, 0x20, 0x00, 0x00},
    {0x00, 0x60, 0x18, 0x06, 0x01},
    {0x00, 0x1E, 0x21, 0x21, 0x1E},
    {0x00, 0x22, 0x3F, 0x20, 0x00},
    {0x00, 0x31, 0x29, 0x26, 0x00},
    {0x00, 0x25, 0x25, 0x1A, 0x00},
    {0x00, 0x0C, 0x0A, 0x3F, 0x08},
    {0x00, 0x27, 0x25, 0x19, 0x00},
    {0x00, 0x1E, 0x25, 0x25, 0x18},
    {0x00, 0x01, 0x39, 0x05, 0x03},
    {0x00, 0x1A, 0x25, 0x25, 0x1A},
    {0x00, 0x06, 0x29, 0x29, 0x1E},
    {0x00, 0x00, 0x24, 0x00, 0x00},
    {0x00, 0x80, 0x64, 0x00, 0x00},
    {0x00, 0x08, 0x08, 0x14, 0x22},
    {0x00, 0x14, 0x14, 0x14, 0x14},
    {0x00, 0x22, 0x14, 0x08, 0x08},
    {0x00, 0x01, 0x29, 0x05, 0x02},
    {0x3C, 0x42, 0x59, 0x55, 0x5E},
    {0x30, 0x1C, 0x12, 0x1C, 0x30},
    {0x00, 0x3E, 0x2A, 0x36, 0x00},
    {0x00, 0x1C, 0x22, 0x22, 0x22},
    {0x00, 0x3E, 0x22, 0x22, 0x1C},
    {0x00, 0x3E, 0x2A, 0x2A, 0x00},
    {0x00, 0x3E, 0x0A, 0x0A, 0x00},
    {0x00, 0x1C, 0x22, 0x2A, 0x3A},
    {0x00, 0x3E, 0x08, 0x08, 0x3E},
    {0x00, 0x22, 0x3E, 0x22, 0x00},
    {0x00, 0x22, 0x22, 0x1E, 0x00},
    {0x00, 0x3E, 0x08, 0x14, 0x22},
    {0x00, 0x3E, 0x20, 0x20, 0x20},
    {0x3E, 0x04, 0x18, 0x04, 0x3E},
    {0x00, 0x3E, 0x04, 0x08, 0x3E},
    {0x1C, 0x22, 0x22, 0x22, 0x1C},
    {0x00, 0x3E, 0x0A, 0x0A, 0x04},
    {0x1C, 0x22, 0x22, 0x62, 0x9C},
    {0x00, 0x3E, 0x0A, 0x14, 0x20},
    {0x00, 0x24, 0x2A, 0x12, 0x00},
    {0x02, 0x02, 0x3E, 0x02, 0x02},
    {0x00, 0x1E, 0x20, 0x20, 0x1E},
    {0x00, 0x0E, 0x30, 0x30, 0x0E},
    {0x0E, 0x30, 0x0C, 0x30, 0x0E},
    {0x22, 0x14, 0x08, 0x14, 0x22},
    {0x02, 0x04, 0x38, 0x04, 0x02},
    {0x00, 0x32, 0x2A, 0x2A, 0x26},
    {0x00, 0x00, 0x7F, 0x41, 0x00},
    {0x01, 0x06, 0x18, 0x60, 0x00},
    {0x00, 0x41, 0x7F, 0x00, 0x00},
    {0x18, 0x06, 0x01, 0x06, 0x18},
    {0x40, 0x40, 0x40, 0x40, 0x40},
    {0x00, 0x01, 0x02, 0x00, 0x00},
    {0x00, 0x34, 0x34, 0x38, 0x20},
    {0x00, 0x3F, 0x24, 0x24, 0x18},
    {0x00, 0x18, 0x24, 0x24, 0x00},
    {0x18, 0x24, 0x24, 0x3F, 0x00},
    {0x00, 0x18, 0x2C, 0x28, 0x00},
    {0x00, 0x04, 0x3E, 0x05, 0x05},
    {0x00, 0x58, 0x54, 0x54, 0x3C},
    {0x00, 0x3F, 0x08, 0x04, 0x38},
    {0x00, 0x04, 0x3D, 0x00, 0x00},
    {0x00, 0x44, 0x44, 0x3D, 0x00},
    {0x00, 0x3F, 0x08, 0x14, 0x20},
    {0x00, 0x01, 0x3F, 0x00, 0x00},
    {0x3C, 0x08, 0x3C, 0x08, 0x3C},
    {0x00, 0x3C, 0x08, 0x04, 0x38},
    {0x00, 0x18, 0x24, 0x24, 0x18},
    {0x00, 0x7C, 0x24, 0x24, 0x18},
    {0x18, 0x24, 0x24, 0x7C, 0x00},
    {0x00, 0x3C, 0x08, 0x04, 0x00},
    {0x00, 0x28, 0x2C, 0x14, 0x00},
    {0x00, 0x04, 0x1E, 0x24, 0x04},
    {0x00, 0x1C, 0x20, 0x10, 0x3C},
    {0x00, 0x0C, 0x30, 0x30, 0x0C},
    {0x0C, 0x30, 0x1C, 0x30, 0x0C},
    {0x00, 0x24, 0x18, 0x18, 0x24},
    {0x40, 0x4C, 0x70, 0x30, 0x0C},
    {0x00, 0x34, 0x2C, 0x2C, 0x00},
    {0x00, 0x08, 0x36, 0x41, 0x00},
    {0x00, 0x00, 0x7F, 0x00, 0x00},
    {0x00, 0x41, 0x36, 0x08, 0x00},
    {0x10, 0x08, 0x08, 0x10, 0x08},
    {0x00, 0x3C, 0x22, 0x3C, 0x00},
    {0x00, 0x1C, 0xA2, 0x62, 0x22},
    {0x00, 0x1D, 0x20, 0x10, 0x3D},
    {0x00, 0x18, 0x2C, 0x2A, 0x01},
    {0x00, 0x36, 0x35, 0x39, 0x22},
    {0x00, 0x35, 0x34, 0x39, 0x20},
    {0x01, 0x36, 0x34, 0x38, 0x20},
    {0x00, 0x36, 0x35, 0x3A, 0x20},
    {0x00, 0x18, 0xA4, 0x64, 0x00},
    {0x00, 0x1A, 0x2D, 0x29, 0x02},
    {0x00, 0x19, 0x2C, 0x29, 0x00},
    {0x01, 0x1A, 0x2C, 0x28, 0x00},
    {0x00, 0x05, 0x3C, 0x01, 0x00},
    {0x00, 0x06, 0x3D, 0x01, 0x02},
    {0x01, 0x06, 0x3C, 0x00, 0x00},
    {0x30, 0x1D, 0x12, 0x1D, 0x30},
    {0x30, 0x1A, 0x15, 0x1A, 0x30},
    {0x00, 0x3E, 0x2A, 0x2A, 0x01},
    {0x34, 0x14, 0x18, 0x2C, 0x28},
    {0x30, 0x1C, 0x12, 0x3E, 0x2A},
    {0x02, 0x19, 0x25, 0x26, 0x18},
    {0x00, 0x19, 0x24, 0x24, 0x19},
    {0x01, 0x1A, 0x24, 0x24, 0x18},
    {0x02, 0x1D, 0x21, 0x12, 0x3C},
    {0x00, 0x1D, 0x22, 0x10, 0x3C},
    {0x40, 0x4D, 0x70, 0x30, 0x0D},
    {0x1D, 0x22, 0x22, 0x22, 0x1D},
    {0x01, 0x1E, 0x20, 0x21, 0x1E},
    {0x00, 0x58, 0x34, 0x2C, 0x1A},
    {0x10, 0x3C, 0x2A, 0x20, 0x00},
    {0x5C, 0x32, 0x2A, 0x26, 0x1D},
    {0x00, 0x24, 0x18, 0x18, 0x24},
    {0x00, 0x48, 0x3E, 0x09, 0x00},
    {0x00, 0x34, 0x34, 0x3A, 0x21},
    {0x00, 0x04, 0x3C, 0x02, 0x01},
    {0x00, 0x18, 0x24, 0x26, 0x19},
    {0x00, 0x1C, 0x20, 0x12, 0x3D},
    {0x00, 0x3D, 0x09, 0x05, 0x39},
    {0x01, 0x3F, 0x05, 0x09, 0x3F},
    {0x00, 0x1D, 0x15, 0x1E, 0x00},
    {0x00, 0x0E, 0x11, 0x0E, 0x00},
    {0x00, 0x40, 0x5A, 0x20, 0x00},
    {0x1E, 0x21, 0x3F, 0x37, 0x1E},
    {0x00, 0x08, 0x08, 0x38, 0x00},
    {0x21, 0x17, 0x0C, 0x36, 0x2D},
    {0x21, 0x17, 0x08, 0x16, 0x39},
    {0x00, 0x00, 0x74, 0x00, 0x00},
    {0x08, 0x14, 0x2A, 0x14, 0x22},
    {0x22, 0x14, 0x2A, 0x14, 0x08},
    {0x55, 0x00, 0x55, 0x00, 0x55},
    {0x55, 0xAA, 0x55, 0xAA, 0x55},
    {0xFF, 0x55, 0xFF, 0x55, 0xFF},
    {0x00, 0x00, 0xFF, 0x00, 0x00},
    {0x08, 0x08, 0xFF, 0x00, 0x00},
    {0x30, 0x1C, 0x12, 0x1D, 0x30},
    {0x30, 0x1A, 0x15, 0x19, 0x32},
    {0x30, 0x1D, 0x12, 0x1C, 0x30},
    {0x3E, 0x41, 0x5D, 0x55, 0x3E},
    {0x14, 0xF7, 0x00, 0xFF, 0x00},
    {0x00, 0xFF, 0x00, 0xFF, 0x00},
    {0x14, 0xF4, 0x04, 0xFC, 0x00},
    {0x14, 0x17, 0x10, 0x1F, 0x00},
    {0x00, 0x1C, 0x36, 0x14, 0x00},
    {0x02, 0x14, 0x38, 0x14, 0x02},
    {0x08, 0x08, 0xF8, 0x00, 0x00},
    {0x00, 0x00, 0x0F, 0x08, 0x08},
    {0x08, 0x08, 0x0F, 0x08, 0x08},
    {0x08, 0x08, 0xF8, 0x08, 0x08},
    {0x00, 0x00, 0xFF, 0x08, 0x08},
    {0x08, 0x08, 0x08, 0x08, 0x08},
    {0x08, 0x08, 0xFF, 0x08, 0x08},
    {0x02, 0x35, 0x35, 0x3A, 0x21},
    {0x32, 0x19, 0x15, 0x1A, 0x31},
    {0x00, 0x1F, 0x10, 0x17, 0x14},
    {0x00, 0xFC, 0x04, 0xF4, 0x14},
    {0x14, 0x17, 0x10, 0x17, 0x14},
    {0x14, 0xF4, 0x04, 0xF4, 0x14},
    {0x00, 0xFF, 0x00, 0xF7, 0x14},
    {0x14, 0x14, 0x14, 0x14, 0x14},
    {0x14, 0xF7, 0x00, 0xF7, 0x14},
    {0x22, 0x1C, 0x14, 0x1C, 0x22},
    {0x19, 0x25, 0x27, 0x1D, 0x00},
    {0x08, 0x3E, 0x2A, 0x22, 0x1C},
    {0x00, 0x3F, 0x2B, 0x2B, 0x00},
    {0x01, 0x3E, 0x2A, 0x2A, 0x01},
    {0x01, 0x3E, 0x2A, 0x2A, 0x00},
    {0x00, 0x04, 0x3C, 0x00, 0x00},
    {0x00, 0x22, 0x3E, 0x22, 0x01},
    {0x00, 0x23, 0x3F, 0x23, 0x00},
    {0x01, 0x22, 0x3E, 0x22, 0x01},
    {0x08, 0x08, 0x0F, 0x00, 0x00},
    {0x00, 0x00, 0xF8, 0x08, 0x08},
    {0xFF, 0xFF, 0xFF, 0xFF, 0xFF},
    {0xF0, 0xF0, 0xF0, 0xF0, 0xF0},
    {0x00, 0x00, 0xE7, 0x00, 0x00},
    {0x01, 0x22, 0x3E, 0x22, 0x00},
    {0x0F, 0x0F, 0x0F, 0x0F, 0x0F},
    {0x1C, 0x22, 0x22, 0x22, 0x1D},
    {0x00, 0x3E, 0x01, 0x2E, 0x10},
    {0x1C, 0x23, 0x23, 0x23, 0x1C},
    {0x1D, 0x22, 0x22, 0x22, 0x1C},
    {0x02, 0x19, 0x25, 0x26, 0x19},
    {0x1D, 0x23, 0x23, 0x23, 0x1C},
    {0x00, 0x7C, 0x20, 0x10, 0x3C},
    {0x00, 0x7F, 0x24, 0x24, 0x18},
    {0x00, 0x3E, 0x14, 0x14, 0x08},
    {0x1E, 0x20, 0x20, 0x1E, 0x01},
    {0x00, 0x1F, 0x21, 0x21, 0x1F},
    {0x01, 0x1E, 0x20, 0x20, 0x1E},
    {0x40, 0x4C, 0x30, 0x32, 0x0D},
    {0x02, 0x04, 0x3A, 0x05, 0x02},
    {0x01, 0x01, 0x01, 0x01, 0x01},
    {0x00, 0x00, 0x02, 0x01, 0x00},
    {0x00, 0x08, 0x08, 0x08, 0x00},
    {0x00, 0x28, 0x3C, 0x28, 0x00},
    {0xA0, 0xA0, 0xA0, 0xA0, 0xA0},
    {0x2B, 0x1F, 0x08, 0x16, 0x39},
    {0x06, 0x7F, 0x01, 0x7F, 0x00},
    {0x00, 0x4A, 0x55, 0x29, 0x00},
    {0x00, 0x08, 0x2A, 0x08, 0x00},
    {0x00, 0x80, 0x40, 0x00, 0x00},
    {0x00, 0x06, 0x09, 0x09, 0x06},
    {0x00, 0x01, 0x00, 0x01, 0x00},
    {0x00, 0x00, 0x08, 0x00, 0x00},
    {0x00, 0x11, 0x1F, 0x10, 0x00},
    {0x00, 0x15, 0x15, 0x0A, 0x00},
    {0x00, 0x19, 0x15, 0x12, 0x00},
    {0x00, 0x3C, 0x3C, 0x3C, 0x3C},
    {0x00, 0x00, 0x00, 0x00, 0x00}
};
# 13 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_gateway/suas_app_pqkem_gateway/ssd1306.c" 2






void suas_ssd1306_set_cursor(uint8_t page, uint8_t column) {
  const char set_cursor_commands[] = {
      0x00,
      0xB0 + page,
      0x00 + (column & 0x0F),
      0x10 + ((column >> 4) & 0x0F)
  };


  hal_i2c_write_block(0x3C, set_cursor_commands, sizeof(set_cursor_commands) / sizeof(set_cursor_commands[0]), 0, 0)
                                                                             ;
}


void suas_ssd1306_clear() {
  for (uint8_t page = 0; page < 8; page++) {

    suas_ssd1306_set_cursor(page, 0);


    char empty_data[9] = {0};
    empty_data[0] = 0x40;


    for (uint8_t i = 0; i < 16; i++) {
      hal_i2c_write_block(0x3C, empty_data, sizeof(empty_data) / sizeof(empty_data[0]), 0, 0)
                                                                    ;
    }
  }
}


void suas_ssd1306_print_char(char c) {

  extern const char font[256][5];


  const char *bitmap = font[(uint8_t)c];


  char data[6] = {0};
  data[0] = 0x40;
  memcpy(data + 1, bitmap,
         5);


  hal_i2c_write_block(0x3C, data, sizeof(data) / sizeof(data[0]), 0, 0);
}


void suas_ssd1306_print_text(char *text) {

  for (uint8_t i = 0; i < strlen(text); i++) {
    suas_ssd1306_print_char(text[i]);
  }
}


void suas_ssd1306_init() {
  suas_i2c_init();


  vTaskDelay(100);



  const char initialization_commands[] = {
      0x00,
      0xAE,
      0xA8,
      0x3F,
      0xD3,
      0x00,
      0x40,
      0xA1,
      0xC8,
      0xDA,
      0x12,
      0x81,
      0x7F,
      0xA4,
      0xA6,

      0xD5,
      0x80,
      0x8D,
      0x14,
      0x20,
      0x00,
      0x2E,
      0xAF
  };


  hal_i2c_write_block(0x3C, initialization_commands, sizeof(initialization_commands) / sizeof(initialization_commands[0]), 0, 0)

                                                                           ;


  suas_ssd1306_clear();
}
