# 0 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/bl602_wifidrv//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
# 57 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 1
# 103 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
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
# 104 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdbool.h" 1 3 4
# 105 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 2
# 116 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"

# 116 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
struct event
{

   int type;







   void *data;
};

struct state;
# 187 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
struct transition
{

   int eventType;
# 199 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void *condition;
# 214 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   bool ( *guard )( void *condition, struct event *event );
# 227 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void ( *action )( void *currentStateData, struct event *event,
         void *newStateData );







   const struct state *nextState;
};
# 320 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
struct state
{



   const struct state *parentState;




   const struct state *entryState;



   struct transition *transitions;



   size_t numTransitions;




   void *data;
# 357 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void ( *entryAction )( void *stateData, struct event *event );
# 368 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void ( *exitAction )( void *stateData, struct event *event );
};






struct stateMachine
{

   const struct state *currentState;






   const struct state *previousState;







   const struct state *errorState;
};
# 418 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
void stateM_init( struct stateMachine *stateMachine,
      const struct state *initialState, const struct state *errorState );




enum stateM_handleEventRetVals
{

   stateM_errArg = -2,
# 440 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   stateM_errorStateReached,

   stateM_stateChanged,







   stateM_stateLoopSelf,






   stateM_noStateChange,

   stateM_finalStateReached,
};
# 481 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
int stateM_handleEvent( struct stateMachine *stateMachine,
      struct event *event );
# 492 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
const struct state *stateM_currentState( struct stateMachine *stateMachine );
# 503 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
const struct state *stateM_previousState( struct stateMachine *stateMachine );
# 514 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
bool stateM_stopped( struct stateMachine *stateMachine );
# 58 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 2

static void goToErrorState( struct stateMachine *stateMachine,
      struct event *const event );
static struct transition *getTransition( struct stateMachine *stateMachine,
      const struct state *state, struct event *const event );

void stateM_init( struct stateMachine *fsm,
      const struct state *initialState, const struct state *errorState )
{
   if ( !fsm )
      return;

   fsm->currentState = initialState;
   fsm->previousState = 
# 71 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
                       ((void *)0)
# 71 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                           ;
   fsm->errorState = errorState;
}

int stateM_handleEvent( struct stateMachine *fsm,
      struct event *event )
{
   if ( !fsm || !event )
      return stateM_errArg;

   if ( !fsm->currentState )
   {
      goToErrorState( fsm, event );
      return stateM_errorStateReached;
   }

   if ( !fsm->currentState->numTransitions )
      return stateM_noStateChange;

   const struct state *nextState = fsm->currentState;
   do {
      struct transition *transition = getTransition( fsm, nextState, event );




      if ( !transition )
      {
         nextState = nextState->parentState;
         continue;
      }



      if ( !transition->nextState )
      {
         goToErrorState( fsm, event );
         return stateM_errorStateReached;
      }

      nextState = transition->nextState;




      while ( nextState->entryState )
         nextState = nextState->entryState;



      if ( nextState != fsm->currentState && fsm->currentState->exitAction )
         fsm->currentState->exitAction( fsm->currentState->data, event );


      if ( transition->action )
         transition->action( fsm->currentState->data, event, nextState->
               data );



      if ( nextState != fsm->currentState && nextState->entryAction )
         nextState->entryAction( nextState->data, event );

      fsm->previousState = fsm->currentState;
      fsm->currentState = nextState;


      if ( fsm->currentState == fsm->previousState )
         return stateM_stateLoopSelf;

      if ( fsm->currentState == fsm->errorState )
         return stateM_errorStateReached;



      if ( !fsm->currentState->numTransitions )
         return stateM_finalStateReached;

      return stateM_stateChanged;
   } while ( nextState );

   return stateM_noStateChange;
}

const struct state *stateM_currentState( struct stateMachine *fsm )
{
   if ( !fsm )
      return 
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
            ((void *)0)
# 158 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                ;

   return fsm->currentState;
}

const struct state *stateM_previousState( struct stateMachine *fsm )
{
   if ( !fsm )
      return 
# 166 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
            ((void *)0)
# 166 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                ;

   return fsm->previousState;
}


static void goToErrorState( struct stateMachine *fsm,
      struct event *const event )
{
   fsm->previousState = fsm->currentState;
   fsm->currentState = fsm->errorState;

   if ( fsm->currentState && fsm->currentState->entryAction )
      fsm->currentState->entryAction( fsm->currentState->data, event );
}

static struct transition *getTransition( struct stateMachine *fsm,
      const struct state *state, struct event *const event )
{
   size_t i;

   for ( i = 0; i < state->numTransitions; ++i )
   {
      struct transition *t = &state->transitions[ i ];


      if ( t->eventType == event->type )
      {
         if ( !t->guard )
            return t;

         else if ( t->guard( t->condition, event ) )
            return t;
      }
   }


   return 
# 203 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
         ((void *)0)
# 203 "/home/chandu/sdk/bl602_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
             ;
}

bool stateM_stopped( struct stateMachine *stateMachine )
{
   if ( !stateMachine )
      return true;

   return stateMachine->currentState->numTransitions == 0;
}
