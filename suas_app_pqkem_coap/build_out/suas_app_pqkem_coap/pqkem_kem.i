# 0 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/build_out/suas_app_pqkem_coap//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.h" 1




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
# 6 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
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
# 7 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.h" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdbool.h" 1 3 4
# 8 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.h" 2
# 42 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.h"

# 42 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.h"
bool pqkem_keygen(uint8_t *pk, uint8_t *sk);

bool pqkem_encapsulate(const uint8_t *pk,
                       uint8_t *ct,
                       uint8_t *ss);

bool pqkem_decapsulate(const uint8_t *ct,
                       const uint8_t *sk,
                       uint8_t *ss);


void pqkem_random_bytes(uint8_t *buf, size_t len);
# 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2


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


# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 1 3
# 36 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 3
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 37 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/stdio.h" 2 3



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stdarg.h" 1 3 4
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

# 6 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 14 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c"
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/params.h" 1
# 15 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.h" 1




# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/params.h" 1
# 6 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.h" 2
# 21 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.h"

# 21 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.h"
int pqcrystals_kyber512_ref_keypair_derand(uint8_t *pk, uint8_t *sk, const uint8_t *coins);


int pqcrystals_kyber512_ref_keypair(uint8_t *pk, uint8_t *sk);


int pqcrystals_kyber512_ref_enc_derand(uint8_t *ct, uint8_t *ss, const uint8_t *pk, const uint8_t *coins);


int pqcrystals_kyber512_ref_enc(uint8_t *ct, uint8_t *ss, const uint8_t *pk);


int pqcrystals_kyber512_ref_dec(uint8_t *ss, const uint8_t *ct, const uint8_t *sk);
# 16 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.h" 1





# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.h" 1





# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.h" 1
# 11 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.h"
typedef struct{
  int16_t coeffs[256];
} poly;


void pqcrystals_kyber512_ref_poly_compress(uint8_t r[128], const poly *a);

void pqcrystals_kyber512_ref_poly_decompress(poly *r, const uint8_t a[128]);


void pqcrystals_kyber512_ref_poly_tobytes(uint8_t r[384], const poly *a);

void pqcrystals_kyber512_ref_poly_frombytes(poly *r, const uint8_t a[384]);


void pqcrystals_kyber512_ref_poly_frommsg(poly *r, const uint8_t msg[(32)]);

void pqcrystals_kyber512_ref_poly_tomsg(uint8_t msg[(32)], const poly *r);


void pqcrystals_kyber512_ref_poly_getnoise_eta1(poly *r, const uint8_t seed[32], uint8_t nonce);


void pqcrystals_kyber512_ref_poly_getnoise_eta2(poly *r, const uint8_t seed[32], uint8_t nonce);


void pqcrystals_kyber512_ref_poly_ntt(poly *r);

void pqcrystals_kyber512_ref_poly_invntt_tomont(poly *r);

void pqcrystals_kyber512_ref_poly_basemul_montgomery(poly *r, const poly *a, const poly *b);

void pqcrystals_kyber512_ref_poly_tomont(poly *r);


void pqcrystals_kyber512_ref_poly_reduce(poly *r);


void pqcrystals_kyber512_ref_poly_add(poly *r, const poly *a, const poly *b);

void pqcrystals_kyber512_ref_poly_sub(poly *r, const poly *a, const poly *b);
# 7 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.h" 2

typedef struct{
  poly vec[2];
} polyvec;


void pqcrystals_kyber512_ref_polyvec_compress(uint8_t r[(2 * 320)], const polyvec *a);

void pqcrystals_kyber512_ref_polyvec_decompress(polyvec *r, const uint8_t a[(2 * 320)]);


void pqcrystals_kyber512_ref_polyvec_tobytes(uint8_t r[(2 * 384)], const polyvec *a);

void pqcrystals_kyber512_ref_polyvec_frombytes(polyvec *r, const uint8_t a[(2 * 384)]);


void pqcrystals_kyber512_ref_polyvec_ntt(polyvec *r);

void pqcrystals_kyber512_ref_polyvec_invntt_tomont(polyvec *r);


void pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery(poly *r, const polyvec *a, const polyvec *b);


void pqcrystals_kyber512_ref_polyvec_reduce(polyvec *r);


void pqcrystals_kyber512_ref_polyvec_add(polyvec *r, const polyvec *a, const polyvec *b);
# 7 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.h" 2


void pqcrystals_kyber512_ref_gen_matrix(polyvec *a, const uint8_t seed[32], int transposed);


void pqcrystals_kyber512_ref_indcpa_keypair_derand(uint8_t pk[((2 * 384) + 32)],
                           uint8_t sk[((2 * 384))],
                           const uint8_t coins[32]);


void pqcrystals_kyber512_ref_indcpa_enc(uint8_t c[((2 * 320) + 128)],
                const uint8_t m[(32)],
                const uint8_t pk[((2 * 384) + 32)],
                const uint8_t coins[32]);


void pqcrystals_kyber512_ref_indcpa_dec(uint8_t m[(32)],
                const uint8_t c[((2 * 320) + 128)],
                const uint8_t sk[((2 * 384))]);
# 17 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.h" 1
# 18 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.h" 1
# 19 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.h" 1







extern const int16_t pqcrystals_kyber512_ref_zetas[128];


void pqcrystals_kyber512_ref_ntt(int16_t poly[256]);


void pqcrystals_kyber512_ref_invntt(int16_t poly[256]);


void pqcrystals_kyber512_ref_basemul(int16_t r[2], const int16_t a[2], const int16_t b[2], int16_t zeta);
# 20 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric.h" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric.h" 2



# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.h" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.h" 2
# 14 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.h"
typedef struct {
  uint64_t s[25];
  unsigned int pos;
} keccak_state;


void pqcrystals_kyber_fips202_ref_shake128_init(keccak_state *state);

void pqcrystals_kyber_fips202_ref_shake128_absorb(keccak_state *state, const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_shake128_finalize(keccak_state *state);

void pqcrystals_kyber_fips202_ref_shake128_squeeze(uint8_t *out, size_t outlen, keccak_state *state);

void pqcrystals_kyber_fips202_ref_shake128_absorb_once(keccak_state *state, const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_shake128_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state);


void pqcrystals_kyber_fips202_ref_shake256_init(keccak_state *state);

void pqcrystals_kyber_fips202_ref_shake256_absorb(keccak_state *state, const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_shake256_finalize(keccak_state *state);

void pqcrystals_kyber_fips202_ref_shake256_squeeze(uint8_t *out, size_t outlen, keccak_state *state);

void pqcrystals_kyber_fips202_ref_shake256_absorb_once(keccak_state *state, const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_shake256_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state);


void pqcrystals_kyber_fips202_ref_shake128(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_shake256(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_sha3_256(uint8_t h[32], const uint8_t *in, size_t inlen);

void pqcrystals_kyber_fips202_ref_sha3_512(uint8_t h[64], const uint8_t *in, size_t inlen);
# 9 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric.h" 2

typedef keccak_state xof_state;


void pqcrystals_kyber512_ref_kyber_shake128_absorb(keccak_state *s,
                           const uint8_t seed[32],
                           uint8_t x,
                           uint8_t y);


void pqcrystals_kyber512_ref_kyber_shake256_prf(uint8_t *out, size_t outlen, const uint8_t key[32], uint8_t nonce);


void pqcrystals_kyber512_ref_kyber_shake256_rkprf(uint8_t out[32], const uint8_t key[32], const uint8_t input[(((2 * 320) + 128))]);
# 21 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.h" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.h" 2




int pqcrystals_kyber512_ref_verify(const uint8_t *a, const uint8_t *b, size_t len);


void pqcrystals_kyber512_ref_cmov(uint8_t *r, const uint8_t *x, size_t len, uint8_t b);


void pqcrystals_kyber512_ref_cmov_int16(int16_t *r, int16_t v, uint16_t b);
# 22 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.h" 1
# 23 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/randombytes.h" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/randombytes.h" 2


void randombytes(uint8_t *out, size_t outlen);
# 24 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h" 1
# 31 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/private_access.h" 1
# 32 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 1
# 113 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/mbedtls_config.h" 1
# 114 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2
# 138 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_config.h" 1
# 139 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2
# 176 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 1
# 21 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_legacy.h" 1
# 22 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_adjust_config_synonyms.h" 1
# 24 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_adjust_config_dependencies.h" 1
# 26 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_adjust_psa_superset_legacy.h" 1
# 28 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2







# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_adjust_config_key_pair_types.h" 1
# 36 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2




# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_adjust_legacy_from_psa.h" 1
# 41 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2
# 59 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/psa/crypto_adjust_auto_enabled.h" 1
# 60 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_psa.h" 2
# 177 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_adjust_legacy_crypto.h" 1
# 180 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_adjust_x509.h" 1
# 182 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/config_adjust_ssl.h" 1
# 184 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2
# 192 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/check_config.h" 1
# 33 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/check_config.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/limits.h" 1 3 4
# 34 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/limits.h" 3 4
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/syslimits.h" 1 3 4






#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/limits.h" 1 3 4
# 210 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/limits.h" 3 4
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/limits.h" 1 3 4





# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys/syslimits.h" 1 3 4
# 7 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/limits.h" 2 3 4
# 211 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/limits.h" 2 3 4
# 10 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/syslimits.h" 2 3 4
#pragma GCC diagnostic pop
# 35 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/limits.h" 2 3 4
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/check_config.h" 2
# 1146 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/check_config.h"

# 1146 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 193 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/build_info.h" 2
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h" 2
# 55 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h" 1
# 33 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h" 1
# 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h" 2
# 159 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
void mbedtls_platform_zeroize(void *buf, size_t len);
# 209 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/platform_util.h"
typedef int mbedtls_f_rng_t(void *p_rng,
                            unsigned char *output, size_t output_size);
# 34 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 36 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h" 2
# 63 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
typedef struct mbedtls_aes_context {
    int private_nr;
    size_t private_rk_offset;





    uint32_t private_buf[68];
# 80 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
}
mbedtls_aes_context;
# 107 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
void mbedtls_aes_init(mbedtls_aes_context *ctx);
# 116 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
void mbedtls_aes_free(mbedtls_aes_context *ctx);
# 154 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_setkey_enc(mbedtls_aes_context *ctx, const unsigned char *key,
                           unsigned int keybits);
# 174 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_setkey_dec(mbedtls_aes_context *ctx, const unsigned char *key,
                           unsigned int keybits);
# 246 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_crypt_ecb(mbedtls_aes_context *ctx,
                          int mode,
                          const unsigned char input[16],
                          unsigned char output[16]);
# 294 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_crypt_cbc(mbedtls_aes_context *ctx,
                          int mode,
                          size_t length,
                          unsigned char iv[16],
                          const unsigned char *input,
                          unsigned char *output);
# 388 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_crypt_cfb128(mbedtls_aes_context *ctx,
                             int mode,
                             size_t length,
                             size_t *iv_off,
                             unsigned char iv[16],
                             const unsigned char *input,
                             unsigned char *output);
# 433 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_crypt_cfb8(mbedtls_aes_context *ctx,
                           int mode,
                           size_t length,
                           unsigned char iv[16],
                           const unsigned char *input,
                           unsigned char *output);
# 488 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_crypt_ofb(mbedtls_aes_context *ctx,
                          size_t length,
                          size_t *iv_off,
                          unsigned char iv[16],
                          const unsigned char *input,
                          unsigned char *output);
# 571 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_aes_crypt_ctr(mbedtls_aes_context *ctx,
                          size_t length,
                          size_t *nc_off,
                          unsigned char nonce_counter[16],
                          unsigned char stream_block[16],
                          const unsigned char *input,
                          unsigned char *output);
# 592 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_internal_aes_encrypt(mbedtls_aes_context *ctx,
                                 const unsigned char input[16],
                                 unsigned char output[16]);
# 609 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"

int mbedtls_internal_aes_decrypt(mbedtls_aes_context *ctx,
                                 const unsigned char input[16],
                                 unsigned char output[16]);
# 622 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/aes.h"
__attribute__((__warn_unused_result__))
int mbedtls_aes_self_test(int verbose);
# 56 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h" 1
# 16 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 17 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h" 1
# 18 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h" 2
# 47 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD5=0x03,
    MBEDTLS_MD_RIPEMD160=0x04,
    MBEDTLS_MD_SHA1=0x05,
    MBEDTLS_MD_SHA224=0x08,
    MBEDTLS_MD_SHA256=0x09,
    MBEDTLS_MD_SHA384=0x0a,
    MBEDTLS_MD_SHA512=0x0b,
    MBEDTLS_MD_SHA3_224=0x10,
    MBEDTLS_MD_SHA3_256=0x11,
    MBEDTLS_MD_SHA3_384=0x12,
    MBEDTLS_MD_SHA3_512=0x13,
} mbedtls_md_type_t;
# 107 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
typedef struct mbedtls_md_info_t mbedtls_md_info_t;






typedef enum {
    MBEDTLS_MD_ENGINE_LEGACY = 0,
    MBEDTLS_MD_ENGINE_PSA,
} mbedtls_md_engine_t;




typedef struct mbedtls_md_context_t {

    const mbedtls_md_info_t *private_md_info;







    void *private_md_ctx;



    void *private_hmac_ctx;

} mbedtls_md_context_t;
# 149 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_type(mbedtls_md_type_t md_type);
# 159 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
void mbedtls_md_init(mbedtls_md_context_t *ctx);
# 174 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
void mbedtls_md_free(mbedtls_md_context_t *ctx);
# 196 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_setup(mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac);
# 222 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_clone(mbedtls_md_context_t *dst,
                     const mbedtls_md_context_t *src);
# 235 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
unsigned char mbedtls_md_get_size(const mbedtls_md_info_t *md_info);
# 246 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
static inline unsigned char mbedtls_md_get_size_from_type(mbedtls_md_type_t md_type)
{
    return mbedtls_md_get_size(mbedtls_md_info_from_type(md_type));
}
# 260 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
mbedtls_md_type_t mbedtls_md_get_type(const mbedtls_md_info_t *md_info);
# 275 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_starts(mbedtls_md_context_t *ctx);
# 294 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_update(mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen);
# 315 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_finish(mbedtls_md_context_t *ctx, unsigned char *output);
# 336 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md(const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
               unsigned char *output);
# 351 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
const int *mbedtls_md_list(void);
# 362 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_string(const char *md_name);
# 373 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
const char *mbedtls_md_get_name(const mbedtls_md_info_t *md_info);
# 385 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_ctx(
    const mbedtls_md_context_t *ctx);
# 429 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_hmac_starts(mbedtls_md_context_t *ctx, const unsigned char *key,
                           size_t keylen);
# 452 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_hmac_update(mbedtls_md_context_t *ctx, const unsigned char *input,
                           size_t ilen);
# 474 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_hmac_finish(mbedtls_md_context_t *ctx, unsigned char *output);
# 492 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_hmac_reset(mbedtls_md_context_t *ctx);
# 517 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/md.h"

int mbedtls_md_hmac(const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output);
# 19 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h" 2
# 88 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
typedef int (*mbedtls_entropy_f_source_ptr)(void *data, unsigned char *output, size_t len,
                                            size_t *olen);




typedef struct mbedtls_entropy_source_state {
    mbedtls_entropy_f_source_ptr private_f_source;
    void *private_p_source;
    size_t private_size;
    size_t private_threshold;
    int private_strong;
}
mbedtls_entropy_source_state;




typedef struct mbedtls_entropy_context {
    mbedtls_md_context_t private_accumulator;
    int private_accumulator_started;


    int private_source_count;
    mbedtls_entropy_source_state private_source[20];






}
mbedtls_entropy_context;
# 135 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
void mbedtls_entropy_init(mbedtls_entropy_context *ctx);






void mbedtls_entropy_free(mbedtls_entropy_context *ctx);
# 161 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
int mbedtls_entropy_add_source(mbedtls_entropy_context *ctx,
                               mbedtls_entropy_f_source_ptr f_source, void *p_source,
                               size_t threshold, int strong);
# 173 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
int mbedtls_entropy_gather(mbedtls_entropy_context *ctx);
# 186 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
int mbedtls_entropy_func(void *data, unsigned char *output, size_t len);
# 198 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
int mbedtls_entropy_update_manual(mbedtls_entropy_context *ctx,
                                  const unsigned char *data, size_t len);
# 250 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
int mbedtls_entropy_self_test(int verbose);
# 266 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h"
int mbedtls_entropy_source_self_test(int verbose);
# 59 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h" 2
# 185 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
typedef struct mbedtls_ctr_drbg_context {
    unsigned char private_counter[16];
    int private_reseed_counter;
# 197 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
    int private_prediction_resistance;



    size_t private_entropy_len;

    int private_reseed_interval;






    mbedtls_aes_context private_aes_ctx;





    int(*private_f_entropy)(void *, unsigned char *, size_t);


    void *private_p_entropy;
# 231 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
}
mbedtls_ctr_drbg_context;
# 246 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_init(mbedtls_ctr_drbg_context *ctx);
# 347 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_seed(mbedtls_ctr_drbg_context *ctx,
                          int (*f_entropy)(void *, unsigned char *, size_t),
                          void *p_entropy,
                          const unsigned char *custom,
                          size_t len);







void mbedtls_ctr_drbg_free(mbedtls_ctr_drbg_context *ctx);
# 374 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_prediction_resistance(mbedtls_ctr_drbg_context *ctx,
                                                int resistance);
# 401 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_entropy_len(mbedtls_ctr_drbg_context *ctx,
                                      size_t len);
# 423 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_set_nonce_len(mbedtls_ctr_drbg_context *ctx,
                                   size_t len);
# 438 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_reseed_interval(mbedtls_ctr_drbg_context *ctx,
                                          int interval);
# 461 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_reseed(mbedtls_ctr_drbg_context *ctx,
                            const unsigned char *additional, size_t len);
# 484 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_update(mbedtls_ctr_drbg_context *ctx,
                            const unsigned char *additional,
                            size_t add_len);
# 519 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_random_with_add(void *p_rng,
                                     unsigned char *output, size_t output_len,
                                     const unsigned char *additional, size_t add_len);
# 547 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_random(void *p_rng,
                            unsigned char *output, size_t output_len);
# 589 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_self_test(int verbose);
# 27 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/components/security/mbedtls-bl602/include/mbedtls/entropy.h" 1
# 28 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2


static mbedtls_entropy_context g_entropy;
static mbedtls_ctr_drbg_context g_ctr_drbg;
static int g_drbg_ready = 0;

static void ensure_drbg(void)
{
    if (g_drbg_ready) {
        return;
    }

    mbedtls_entropy_init(&g_entropy);
    mbedtls_ctr_drbg_init(&g_ctr_drbg);

    const char *pers = "pqkem_demo";
    int ret = mbedtls_ctr_drbg_seed(&g_ctr_drbg,
                                    mbedtls_entropy_func,
                                    &g_entropy,
                                    (const unsigned char *)pers,
                                    strlen(pers));
    if (ret == 0) {
        g_drbg_ready = 1;
    } else {
        g_drbg_ready = 0;
        printf("[pqkem] mbedtls_ctr_drbg_seed failed, ret=%d\r\n", ret);
    }
}

void pqkem_random_bytes(uint8_t *buf, size_t len)
{
    if (!buf || len == 0) {
        return;
    }

    ensure_drbg();
    int ret = mbedtls_ctr_drbg_random(&g_ctr_drbg, buf, len);
    if (ret != 0) {
        printf("[pqkem] ctr_drbg_random failed, ret=%d\r\n", ret);
    }
}




void randombytes(uint8_t *out, size_t outlen)
{
    pqkem_random_bytes(out, outlen);
}




# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.c" 1


# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.h" 1
# 9 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.h"
void pqcrystals_kyber512_ref_poly_cbd_eta1(poly *r, const uint8_t buf[3*256/4]);


void pqcrystals_kyber512_ref_poly_cbd_eta2(poly *r, const uint8_t buf[2*256/4]);
# 4 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.c" 2
# 15 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.c"
static uint32_t load32_littleendian(const uint8_t x[4])
{
  uint32_t r;
  r = (uint32_t)x[0];
  r |= (uint32_t)x[1] << 8;
  r |= (uint32_t)x[2] << 16;
  r |= (uint32_t)x[3] << 24;
  return r;
}
# 37 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.c"
static uint32_t load24_littleendian(const uint8_t x[3])
{
  uint32_t r;
  r = (uint32_t)x[0];
  r |= (uint32_t)x[1] << 8;
  r |= (uint32_t)x[2] << 16;
  return r;
}
# 58 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.c"
static void cbd2(poly *r, const uint8_t buf[2*256/4])
{
  unsigned int i,j;
  uint32_t t,d;
  int16_t a,b;

  for(i=0;i<256/8;i++) {
    t = load32_littleendian(buf+4*i);
    d = t & 0x55555555;
    d += (t>>1) & 0x55555555;

    for(j=0;j<8;j++) {
      a = (d >> (4*j+0)) & 0x3;
      b = (d >> (4*j+2)) & 0x3;
      r->coeffs[8*i+j] = a - b;
    }
  }
}
# 89 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/cbd.c"
static void cbd3(poly *r, const uint8_t buf[3*256/4])
{
  unsigned int i,j;
  uint32_t t,d;
  int16_t a,b;

  for(i=0;i<256/4;i++) {
    t = load24_littleendian(buf+3*i);
    d = t & 0x00249249;
    d += (t>>1) & 0x00249249;
    d += (t>>2) & 0x00249249;

    for(j=0;j<4;j++) {
      a = (d >> (6*j+0)) & 0x7;
      b = (d >> (6*j+3)) & 0x7;
      r->coeffs[4*i+j] = a - b;
    }
  }
}


void pqcrystals_kyber512_ref_poly_cbd_eta1(poly *r, const uint8_t buf[3*256/4])
{



  cbd3(r, buf);



}

void pqcrystals_kyber512_ref_poly_cbd_eta2(poly *r, const uint8_t buf[2*256/4])
{

  cbd2(r, buf);



}
# 82 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c" 1





# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 7 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c" 2
# 22 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static uint64_t load64(const uint8_t x[8]) {
  unsigned int i;
  uint64_t r = 0;

  for(i=0;i<8;i++)
    r |= (uint64_t)x[i] << 8*i;

  return r;
}
# 40 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static void store64(uint8_t x[8], uint64_t u) {
  unsigned int i;

  for(i=0;i<8;i++)
    x[i] = u >> 8*i;
}


static const uint64_t KeccakF_RoundConstants[24] = {
  (uint64_t)0x0000000000000001ULL,
  (uint64_t)0x0000000000008082ULL,
  (uint64_t)0x800000000000808aULL,
  (uint64_t)0x8000000080008000ULL,
  (uint64_t)0x000000000000808bULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008009ULL,
  (uint64_t)0x000000000000008aULL,
  (uint64_t)0x0000000000000088ULL,
  (uint64_t)0x0000000080008009ULL,
  (uint64_t)0x000000008000000aULL,
  (uint64_t)0x000000008000808bULL,
  (uint64_t)0x800000000000008bULL,
  (uint64_t)0x8000000000008089ULL,
  (uint64_t)0x8000000000008003ULL,
  (uint64_t)0x8000000000008002ULL,
  (uint64_t)0x8000000000000080ULL,
  (uint64_t)0x000000000000800aULL,
  (uint64_t)0x800000008000000aULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008080ULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008008ULL
};
# 82 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static void KeccakF1600_StatePermute(uint64_t state[25])
{
        int round;

        uint64_t Aba, Abe, Abi, Abo, Abu;
        uint64_t Aga, Age, Agi, Ago, Agu;
        uint64_t Aka, Ake, Aki, Ako, Aku;
        uint64_t Ama, Ame, Ami, Amo, Amu;
        uint64_t Asa, Ase, Asi, Aso, Asu;
        uint64_t BCa, BCe, BCi, BCo, BCu;
        uint64_t Da, De, Di, Do, Du;
        uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
        uint64_t Ega, Ege, Egi, Ego, Egu;
        uint64_t Eka, Eke, Eki, Eko, Eku;
        uint64_t Ema, Eme, Emi, Emo, Emu;
        uint64_t Esa, Ese, Esi, Eso, Esu;


        Aba = state[ 0];
        Abe = state[ 1];
        Abi = state[ 2];
        Abo = state[ 3];
        Abu = state[ 4];
        Aga = state[ 5];
        Age = state[ 6];
        Agi = state[ 7];
        Ago = state[ 8];
        Agu = state[ 9];
        Aka = state[10];
        Ake = state[11];
        Aki = state[12];
        Ako = state[13];
        Aku = state[14];
        Ama = state[15];
        Ame = state[16];
        Ami = state[17];
        Amo = state[18];
        Amu = state[19];
        Asa = state[20];
        Ase = state[21];
        Asi = state[22];
        Aso = state[23];
        Asu = state[24];

        for(round = 0; round < 24; round += 2) {

            BCa = Aba^Aga^Aka^Ama^Asa;
            BCe = Abe^Age^Ake^Ame^Ase;
            BCi = Abi^Agi^Aki^Ami^Asi;
            BCo = Abo^Ago^Ako^Amo^Aso;
            BCu = Abu^Agu^Aku^Amu^Asu;


            Da = BCu^((BCe << 1) ^ (BCe >> (64-1)));
            De = BCa^((BCi << 1) ^ (BCi >> (64-1)));
            Di = BCe^((BCo << 1) ^ (BCo >> (64-1)));
            Do = BCi^((BCu << 1) ^ (BCu >> (64-1)));
            Du = BCo^((BCa << 1) ^ (BCa >> (64-1)));

            Aba ^= Da;
            BCa = Aba;
            Age ^= De;
            BCe = ((Age << 44) ^ (Age >> (64-44)));
            Aki ^= Di;
            BCi = ((Aki << 43) ^ (Aki >> (64-43)));
            Amo ^= Do;
            BCo = ((Amo << 21) ^ (Amo >> (64-21)));
            Asu ^= Du;
            BCu = ((Asu << 14) ^ (Asu >> (64-14)));
            Eba = BCa ^((~BCe)& BCi );
            Eba ^= (uint64_t)KeccakF_RoundConstants[round];
            Ebe = BCe ^((~BCi)& BCo );
            Ebi = BCi ^((~BCo)& BCu );
            Ebo = BCo ^((~BCu)& BCa );
            Ebu = BCu ^((~BCa)& BCe );

            Abo ^= Do;
            BCa = ((Abo << 28) ^ (Abo >> (64-28)));
            Agu ^= Du;
            BCe = ((Agu << 20) ^ (Agu >> (64-20)));
            Aka ^= Da;
            BCi = ((Aka << 3) ^ (Aka >> (64-3)));
            Ame ^= De;
            BCo = ((Ame << 45) ^ (Ame >> (64-45)));
            Asi ^= Di;
            BCu = ((Asi << 61) ^ (Asi >> (64-61)));
            Ega = BCa ^((~BCe)& BCi );
            Ege = BCe ^((~BCi)& BCo );
            Egi = BCi ^((~BCo)& BCu );
            Ego = BCo ^((~BCu)& BCa );
            Egu = BCu ^((~BCa)& BCe );

            Abe ^= De;
            BCa = ((Abe << 1) ^ (Abe >> (64-1)));
            Agi ^= Di;
            BCe = ((Agi << 6) ^ (Agi >> (64-6)));
            Ako ^= Do;
            BCi = ((Ako << 25) ^ (Ako >> (64-25)));
            Amu ^= Du;
            BCo = ((Amu << 8) ^ (Amu >> (64-8)));
            Asa ^= Da;
            BCu = ((Asa << 18) ^ (Asa >> (64-18)));
            Eka = BCa ^((~BCe)& BCi );
            Eke = BCe ^((~BCi)& BCo );
            Eki = BCi ^((~BCo)& BCu );
            Eko = BCo ^((~BCu)& BCa );
            Eku = BCu ^((~BCa)& BCe );

            Abu ^= Du;
            BCa = ((Abu << 27) ^ (Abu >> (64-27)));
            Aga ^= Da;
            BCe = ((Aga << 36) ^ (Aga >> (64-36)));
            Ake ^= De;
            BCi = ((Ake << 10) ^ (Ake >> (64-10)));
            Ami ^= Di;
            BCo = ((Ami << 15) ^ (Ami >> (64-15)));
            Aso ^= Do;
            BCu = ((Aso << 56) ^ (Aso >> (64-56)));
            Ema = BCa ^((~BCe)& BCi );
            Eme = BCe ^((~BCi)& BCo );
            Emi = BCi ^((~BCo)& BCu );
            Emo = BCo ^((~BCu)& BCa );
            Emu = BCu ^((~BCa)& BCe );

            Abi ^= Di;
            BCa = ((Abi << 62) ^ (Abi >> (64-62)));
            Ago ^= Do;
            BCe = ((Ago << 55) ^ (Ago >> (64-55)));
            Aku ^= Du;
            BCi = ((Aku << 39) ^ (Aku >> (64-39)));
            Ama ^= Da;
            BCo = ((Ama << 41) ^ (Ama >> (64-41)));
            Ase ^= De;
            BCu = ((Ase << 2) ^ (Ase >> (64-2)));
            Esa = BCa ^((~BCe)& BCi );
            Ese = BCe ^((~BCi)& BCo );
            Esi = BCi ^((~BCo)& BCu );
            Eso = BCo ^((~BCu)& BCa );
            Esu = BCu ^((~BCa)& BCe );


            BCa = Eba^Ega^Eka^Ema^Esa;
            BCe = Ebe^Ege^Eke^Eme^Ese;
            BCi = Ebi^Egi^Eki^Emi^Esi;
            BCo = Ebo^Ego^Eko^Emo^Eso;
            BCu = Ebu^Egu^Eku^Emu^Esu;


            Da = BCu^((BCe << 1) ^ (BCe >> (64-1)));
            De = BCa^((BCi << 1) ^ (BCi >> (64-1)));
            Di = BCe^((BCo << 1) ^ (BCo >> (64-1)));
            Do = BCi^((BCu << 1) ^ (BCu >> (64-1)));
            Du = BCo^((BCa << 1) ^ (BCa >> (64-1)));

            Eba ^= Da;
            BCa = Eba;
            Ege ^= De;
            BCe = ((Ege << 44) ^ (Ege >> (64-44)));
            Eki ^= Di;
            BCi = ((Eki << 43) ^ (Eki >> (64-43)));
            Emo ^= Do;
            BCo = ((Emo << 21) ^ (Emo >> (64-21)));
            Esu ^= Du;
            BCu = ((Esu << 14) ^ (Esu >> (64-14)));
            Aba = BCa ^((~BCe)& BCi );
            Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
            Abe = BCe ^((~BCi)& BCo );
            Abi = BCi ^((~BCo)& BCu );
            Abo = BCo ^((~BCu)& BCa );
            Abu = BCu ^((~BCa)& BCe );

            Ebo ^= Do;
            BCa = ((Ebo << 28) ^ (Ebo >> (64-28)));
            Egu ^= Du;
            BCe = ((Egu << 20) ^ (Egu >> (64-20)));
            Eka ^= Da;
            BCi = ((Eka << 3) ^ (Eka >> (64-3)));
            Eme ^= De;
            BCo = ((Eme << 45) ^ (Eme >> (64-45)));
            Esi ^= Di;
            BCu = ((Esi << 61) ^ (Esi >> (64-61)));
            Aga = BCa ^((~BCe)& BCi );
            Age = BCe ^((~BCi)& BCo );
            Agi = BCi ^((~BCo)& BCu );
            Ago = BCo ^((~BCu)& BCa );
            Agu = BCu ^((~BCa)& BCe );

            Ebe ^= De;
            BCa = ((Ebe << 1) ^ (Ebe >> (64-1)));
            Egi ^= Di;
            BCe = ((Egi << 6) ^ (Egi >> (64-6)));
            Eko ^= Do;
            BCi = ((Eko << 25) ^ (Eko >> (64-25)));
            Emu ^= Du;
            BCo = ((Emu << 8) ^ (Emu >> (64-8)));
            Esa ^= Da;
            BCu = ((Esa << 18) ^ (Esa >> (64-18)));
            Aka = BCa ^((~BCe)& BCi );
            Ake = BCe ^((~BCi)& BCo );
            Aki = BCi ^((~BCo)& BCu );
            Ako = BCo ^((~BCu)& BCa );
            Aku = BCu ^((~BCa)& BCe );

            Ebu ^= Du;
            BCa = ((Ebu << 27) ^ (Ebu >> (64-27)));
            Ega ^= Da;
            BCe = ((Ega << 36) ^ (Ega >> (64-36)));
            Eke ^= De;
            BCi = ((Eke << 10) ^ (Eke >> (64-10)));
            Emi ^= Di;
            BCo = ((Emi << 15) ^ (Emi >> (64-15)));
            Eso ^= Do;
            BCu = ((Eso << 56) ^ (Eso >> (64-56)));
            Ama = BCa ^((~BCe)& BCi );
            Ame = BCe ^((~BCi)& BCo );
            Ami = BCi ^((~BCo)& BCu );
            Amo = BCo ^((~BCu)& BCa );
            Amu = BCu ^((~BCa)& BCe );

            Ebi ^= Di;
            BCa = ((Ebi << 62) ^ (Ebi >> (64-62)));
            Ego ^= Do;
            BCe = ((Ego << 55) ^ (Ego >> (64-55)));
            Eku ^= Du;
            BCi = ((Eku << 39) ^ (Eku >> (64-39)));
            Ema ^= Da;
            BCo = ((Ema << 41) ^ (Ema >> (64-41)));
            Ese ^= De;
            BCu = ((Ese << 2) ^ (Ese >> (64-2)));
            Asa = BCa ^((~BCe)& BCi );
            Ase = BCe ^((~BCi)& BCo );
            Asi = BCi ^((~BCo)& BCu );
            Aso = BCo ^((~BCu)& BCa );
            Asu = BCu ^((~BCa)& BCe );
        }


        state[ 0] = Aba;
        state[ 1] = Abe;
        state[ 2] = Abi;
        state[ 3] = Abo;
        state[ 4] = Abu;
        state[ 5] = Aga;
        state[ 6] = Age;
        state[ 7] = Agi;
        state[ 8] = Ago;
        state[ 9] = Agu;
        state[10] = Aka;
        state[11] = Ake;
        state[12] = Aki;
        state[13] = Ako;
        state[14] = Aku;
        state[15] = Ama;
        state[16] = Ame;
        state[17] = Ami;
        state[18] = Amo;
        state[19] = Amu;
        state[20] = Asa;
        state[21] = Ase;
        state[22] = Asi;
        state[23] = Aso;
        state[24] = Asu;
}
# 353 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static void keccak_init(uint64_t s[25])
{
  unsigned int i;
  for(i=0;i<25;i++)
    s[i] = 0;
}
# 373 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static unsigned int keccak_absorb(uint64_t s[25],
                                  unsigned int pos,
                                  unsigned int r,
                                  const uint8_t *in,
                                  size_t inlen)
{
  unsigned int i;

  while(pos+inlen >= r) {
    for(i=pos;i<r;i++)
      s[i/8] ^= (uint64_t)*in++ << 8*(i%8);
    inlen -= r-pos;
    KeccakF1600_StatePermute(s);
    pos = 0;
  }

  for(i=pos;i<pos+inlen;i++)
    s[i/8] ^= (uint64_t)*in++ << 8*(i%8);

  return i;
}
# 405 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static void keccak_finalize(uint64_t s[25], unsigned int pos, unsigned int r, uint8_t p)
{
  s[pos/8] ^= (uint64_t)p << 8*(pos%8);
  s[r/8-1] ^= 1ULL << 63;
}
# 426 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static unsigned int keccak_squeeze(uint8_t *out,
                                   size_t outlen,
                                   uint64_t s[25],
                                   unsigned int pos,
                                   unsigned int r)
{
  unsigned int i;

  while(outlen) {
    if(pos == r) {
      KeccakF1600_StatePermute(s);
      pos = 0;
    }
    for(i=pos;i < r && i < pos+outlen; i++)
      *out++ = s[i/8] >> 8*(i%8);
    outlen -= i-pos;
    pos = i;
  }

  return pos;
}
# 461 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static void keccak_absorb_once(uint64_t s[25],
                               unsigned int r,
                               const uint8_t *in,
                               size_t inlen,
                               uint8_t p)
{
  unsigned int i;

  for(i=0;i<25;i++)
    s[i] = 0;

  while(inlen >= r) {
    for(i=0;i<r/8;i++)
      s[i] ^= load64(in+8*i);
    in += r;
    inlen -= r;
    KeccakF1600_StatePermute(s);
  }

  for(i=0;i<inlen;i++)
    s[i/8] ^= (uint64_t)in[i] << 8*(i%8);

  s[i/8] ^= (uint64_t)p << 8*(i%8);
  s[(r-1)/8] ^= 1ULL << 63;
}
# 500 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
static void keccak_squeezeblocks(uint8_t *out,
                                 size_t nblocks,
                                 uint64_t s[25],
                                 unsigned int r)
{
  unsigned int i;

  while(nblocks) {
    KeccakF1600_StatePermute(s);
    for(i=0;i<r/8;i++)
      store64(out+8*i, s[i]);
    out += r;
    nblocks -= 1;
  }
}
# 523 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128_init(keccak_state *state)
{
  keccak_init(state->s);
  state->pos = 0;
}
# 538 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128_absorb(keccak_state *state, const uint8_t *in, size_t inlen)
{
  state->pos = keccak_absorb(state->s, state->pos, 168, in, inlen);
}
# 550 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128_finalize(keccak_state *state)
{
  keccak_finalize(state->s, state->pos, 168, 0x1F);
  state->pos = 168;
}
# 566 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128_squeeze(uint8_t *out, size_t outlen, keccak_state *state)
{
  state->pos = keccak_squeeze(out, outlen, state->s, state->pos, 168);
}
# 580 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128_absorb_once(keccak_state *state, const uint8_t *in, size_t inlen)
{
  keccak_absorb_once(state->s, 168, in, inlen, 0x1F);
  state->pos = 168;
}
# 598 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state)
{
  keccak_squeezeblocks(out, nblocks, state->s, 168);
}
# 610 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256_init(keccak_state *state)
{
  keccak_init(state->s);
  state->pos = 0;
}
# 625 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256_absorb(keccak_state *state, const uint8_t *in, size_t inlen)
{
  state->pos = keccak_absorb(state->s, state->pos, 136, in, inlen);
}
# 637 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256_finalize(keccak_state *state)
{
  keccak_finalize(state->s, state->pos, 136, 0x1F);
  state->pos = 136;
}
# 653 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256_squeeze(uint8_t *out, size_t outlen, keccak_state *state)
{
  state->pos = keccak_squeeze(out, outlen, state->s, state->pos, 136);
}
# 667 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256_absorb_once(keccak_state *state, const uint8_t *in, size_t inlen)
{
  keccak_absorb_once(state->s, 136, in, inlen, 0x1F);
  state->pos = 136;
}
# 685 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state)
{
  keccak_squeezeblocks(out, nblocks, state->s, 136);
}
# 700 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake128(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
  size_t nblocks;
  keccak_state state;

  pqcrystals_kyber_fips202_ref_shake128_absorb_once(&state, in, inlen);
  nblocks = outlen/168;
  pqcrystals_kyber_fips202_ref_shake128_squeezeblocks(out, nblocks, &state);
  outlen -= nblocks*168;
  out += nblocks*168;
  pqcrystals_kyber_fips202_ref_shake128_squeeze(out, outlen, &state);
}
# 723 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_shake256(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
  size_t nblocks;
  keccak_state state;

  pqcrystals_kyber_fips202_ref_shake256_absorb_once(&state, in, inlen);
  nblocks = outlen/136;
  pqcrystals_kyber_fips202_ref_shake256_squeezeblocks(out, nblocks, &state);
  outlen -= nblocks*136;
  out += nblocks*136;
  pqcrystals_kyber_fips202_ref_shake256_squeeze(out, outlen, &state);
}
# 745 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_sha3_256(uint8_t h[32], const uint8_t *in, size_t inlen)
{
  unsigned int i;
  uint64_t s[25];

  keccak_absorb_once(s, 136, in, inlen, 0x06);
  KeccakF1600_StatePermute(s);
  for(i=0;i<4;i++)
    store64(h+8*i,s[i]);
}
# 765 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/fips202.c"
void pqcrystals_kyber_fips202_ref_sha3_512(uint8_t h[64], const uint8_t *in, size_t inlen)
{
  unsigned int i;
  uint64_t s[25];

  keccak_absorb_once(s, 72, in, inlen, 0x06);
  KeccakF1600_StatePermute(s);
  for(i=0;i<8;i++)
    store64(h+8*i,s[i]);
}
# 83 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c" 1
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c" 2



# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.h" 1
# 6 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c" 2


# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.h" 1
# 9 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric.h" 1
# 10 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/randombytes.h" 1
# 11 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c" 2
# 24 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static void pack_pk(uint8_t r[((2 * 384) + 32)],
                    polyvec *pk,
                    const uint8_t seed[32])
{
  pqcrystals_kyber512_ref_polyvec_tobytes(r, pk);
  memcpy(r+(2 * 384), seed, 32);
}
# 42 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static void unpack_pk(polyvec *pk,
                      uint8_t seed[32],
                      const uint8_t packedpk[((2 * 384) + 32)])
{
  pqcrystals_kyber512_ref_polyvec_frombytes(pk, packedpk);
  memcpy(seed, packedpk+(2 * 384), 32);
}
# 58 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static void pack_sk(uint8_t r[((2 * 384))], polyvec *sk)
{
  pqcrystals_kyber512_ref_polyvec_tobytes(r, sk);
}
# 71 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static void unpack_sk(polyvec *sk, const uint8_t packedsk[((2 * 384))])
{
  pqcrystals_kyber512_ref_polyvec_frombytes(sk, packedsk);
}
# 87 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static void pack_ciphertext(uint8_t r[((2 * 320) + 128)], polyvec *b, poly *v)
{
  pqcrystals_kyber512_ref_polyvec_compress(r, b);
  pqcrystals_kyber512_ref_poly_compress(r+(2 * 320), v);
}
# 103 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static void unpack_ciphertext(polyvec *b, poly *v, const uint8_t c[((2 * 320) + 128)])
{
  pqcrystals_kyber512_ref_polyvec_decompress(b, c);
  pqcrystals_kyber512_ref_poly_decompress(v, c+(2 * 320));
}
# 122 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
static unsigned int rej_uniform(int16_t *r,
                                unsigned int len,
                                const uint8_t *buf,
                                unsigned int buflen)
{
  unsigned int ctr, pos;
  uint16_t val0, val1;

  ctr = pos = 0;
  while(ctr < len && pos + 3 <= buflen) {
    val0 = ((buf[pos+0] >> 0) | ((uint16_t)buf[pos+1] << 8)) & 0xFFF;
    val1 = ((buf[pos+1] >> 4) | ((uint16_t)buf[pos+2] << 4)) & 0xFFF;
    pos += 3;

    if(val0 < 3329)
      r[ctr++] = val0;
    if(ctr < len && val1 < 3329)
      r[ctr++] = val1;
  }

  return ctr;
}
# 166 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
void pqcrystals_kyber512_ref_gen_matrix(polyvec *a, const uint8_t seed[32], int transposed)
{
  unsigned int ctr, i, j;
  unsigned int buflen;
  uint8_t buf[((12*256/8*(1 << 12)/3329 + 168)/168)*168];
  xof_state state;

  for(i=0;i<2;i++) {
    for(j=0;j<2;j++) {
      if(transposed)
        pqcrystals_kyber512_ref_kyber_shake128_absorb(&state, seed, i, j);
      else
        pqcrystals_kyber512_ref_kyber_shake128_absorb(&state, seed, j, i);

      pqcrystals_kyber_fips202_ref_shake128_squeezeblocks(buf, ((12*256/8*(1 << 12)/3329 + 168)/168), &state);
      buflen = ((12*256/8*(1 << 12)/3329 + 168)/168)*168;
      ctr = rej_uniform(a[i].vec[j].coeffs, 256, buf, buflen);

      while(ctr < 256) {
        pqcrystals_kyber_fips202_ref_shake128_squeezeblocks(buf, 1, &state);
        buflen = 168;
        ctr += rej_uniform(a[i].vec[j].coeffs + ctr, 256 - ctr, buf, buflen);
      }
    }
  }
}
# 206 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
void pqcrystals_kyber512_ref_indcpa_keypair_derand(uint8_t pk[((2 * 384) + 32)],
                           uint8_t sk[((2 * 384))],
                           const uint8_t coins[32])
{
  unsigned int i;
  uint8_t buf[2*32];
  const uint8_t *publicseed = buf;
  const uint8_t *noiseseed = buf+32;
  uint8_t nonce = 0;
  polyvec a[2], e, pkpv, skpv;

  memcpy(buf, coins, 32);
  buf[32] = 2;
  pqcrystals_kyber_fips202_ref_sha3_512(buf, buf, 32 +1);

  pqcrystals_kyber512_ref_gen_matrix(a,publicseed,0);

  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_getnoise_eta1(&skpv.vec[i], noiseseed, nonce++);
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_getnoise_eta1(&e.vec[i], noiseseed, nonce++);

  pqcrystals_kyber512_ref_polyvec_ntt(&skpv);
  pqcrystals_kyber512_ref_polyvec_ntt(&e);


  for(i=0;i<2;i++) {
    pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery(&pkpv.vec[i], &a[i], &skpv);
    pqcrystals_kyber512_ref_poly_tomont(&pkpv.vec[i]);
  }

  pqcrystals_kyber512_ref_polyvec_add(&pkpv, &pkpv, &e);
  pqcrystals_kyber512_ref_polyvec_reduce(&pkpv);

  pack_sk(sk, &skpv);
  pack_pk(pk, &pkpv, publicseed);
}
# 261 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
void pqcrystals_kyber512_ref_indcpa_enc(uint8_t c[((2 * 320) + 128)],
                const uint8_t m[(32)],
                const uint8_t pk[((2 * 384) + 32)],
                const uint8_t coins[32])
{
  unsigned int i;
  uint8_t seed[32];
  uint8_t nonce = 0;
  polyvec sp, pkpv, ep, at[2], b;
  poly v, k, epp;

  unpack_pk(&pkpv, seed, pk);
  pqcrystals_kyber512_ref_poly_frommsg(&k, m);
  pqcrystals_kyber512_ref_gen_matrix(at,seed,1);

  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_getnoise_eta1(sp.vec+i, coins, nonce++);
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_getnoise_eta2(ep.vec+i, coins, nonce++);
  pqcrystals_kyber512_ref_poly_getnoise_eta2(&epp, coins, nonce++);

  pqcrystals_kyber512_ref_polyvec_ntt(&sp);


  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery(&b.vec[i], &at[i], &sp);

  pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery(&v, &pkpv, &sp);

  pqcrystals_kyber512_ref_polyvec_invntt_tomont(&b);
  pqcrystals_kyber512_ref_poly_invntt_tomont(&v);

  pqcrystals_kyber512_ref_polyvec_add(&b, &b, &ep);
  pqcrystals_kyber512_ref_poly_add(&v, &v, &epp);
  pqcrystals_kyber512_ref_poly_add(&v, &v, &k);
  pqcrystals_kyber512_ref_polyvec_reduce(&b);
  pqcrystals_kyber512_ref_poly_reduce(&v);

  pack_ciphertext(c, &b, &v);
}
# 315 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/indcpa.c"
void pqcrystals_kyber512_ref_indcpa_dec(uint8_t m[(32)],
                const uint8_t c[((2 * 320) + 128)],
                const uint8_t sk[((2 * 384))])
{
  polyvec b, skpv;
  poly v, mp;

  unpack_ciphertext(&b, &v, c);
  unpack_sk(&skpv, sk);

  pqcrystals_kyber512_ref_polyvec_ntt(&b);
  pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery(&mp, &skpv, &b);
  pqcrystals_kyber512_ref_poly_invntt_tomont(&mp);

  pqcrystals_kyber512_ref_poly_sub(&mp, &v, &mp);
  pqcrystals_kyber512_ref_poly_reduce(&mp);

  pqcrystals_kyber512_ref_poly_tomsg(m, &mp);
}
# 84 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c" 1
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c" 2



# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.h" 1
# 6 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c" 2

# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.h" 1
# 8 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c" 2
# 26 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c"
int pqcrystals_kyber512_ref_keypair_derand(uint8_t *pk,
                              uint8_t *sk,
                              const uint8_t *coins)
{
  pqcrystals_kyber512_ref_indcpa_keypair_derand(pk, sk, coins);
  memcpy(sk+((2 * 384)), pk, (((2 * 384) + 32)));
  pqcrystals_kyber_fips202_ref_sha3_256(sk+(((2 * 384)) + ((2 * 384) + 32) + 2*32)-2*32, pk, (((2 * 384) + 32)));

  memcpy(sk+(((2 * 384)) + ((2 * 384) + 32) + 2*32)-32, coins+32, 32);
  return 0;
}
# 51 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c"
int pqcrystals_kyber512_ref_keypair(uint8_t *pk,
                       uint8_t *sk)
{
  uint8_t coins[2*32];
  randombytes(coins, 2*32);
  pqcrystals_kyber512_ref_keypair_derand(pk, sk, coins);
  return 0;
}
# 77 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c"
int pqcrystals_kyber512_ref_enc_derand(uint8_t *ct,
                          uint8_t *ss,
                          const uint8_t *pk,
                          const uint8_t *coins)
{
  uint8_t buf[2*32];

  uint8_t kr[2*32];

  memcpy(buf, coins, 32);


  pqcrystals_kyber_fips202_ref_sha3_256(buf+32, pk, (((2 * 384) + 32)));
  pqcrystals_kyber_fips202_ref_sha3_512(kr, buf, 2*32);


  pqcrystals_kyber512_ref_indcpa_enc(ct, buf, pk, kr+32);

  memcpy(ss,kr,32);
  return 0;
}
# 114 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c"
int pqcrystals_kyber512_ref_enc(uint8_t *ct,
                   uint8_t *ss,
                   const uint8_t *pk)
{
  uint8_t coins[32];
  randombytes(coins, 32);
  pqcrystals_kyber512_ref_enc_derand(ct, ss, pk, coins);
  return 0;
}
# 141 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/kem.c"
int pqcrystals_kyber512_ref_dec(uint8_t *ss,
                   const uint8_t *ct,
                   const uint8_t *sk)
{
  int fail;
  uint8_t buf[2*32];

  uint8_t kr[2*32];

  uint8_t cmp[(((2 * 320) + 128))];
  const uint8_t *pk = sk+((2 * 384));

  pqcrystals_kyber512_ref_indcpa_dec(buf, ct, sk);


  memcpy(buf+32, sk+(((2 * 384)) + ((2 * 384) + 32) + 2*32)-2*32, 32);
  pqcrystals_kyber_fips202_ref_sha3_512(kr, buf, 2*32);


  pqcrystals_kyber512_ref_indcpa_enc(cmp, buf, pk, kr+32);

  fail = pqcrystals_kyber512_ref_verify(ct, cmp, (((2 * 320) + 128)));


  pqcrystals_kyber512_ref_kyber_shake256_rkprf(ss, sk+(((2 * 384)) + ((2 * 384) + 32) + 2*32)-32, ct);


  pqcrystals_kyber512_ref_cmov(ss,kr,32,!fail);

  return 0;
}
# 85 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c" 1



# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/reduce.h" 1
# 11 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/reduce.h"
int16_t pqcrystals_kyber512_ref_montgomery_reduce(int32_t a);


int16_t pqcrystals_kyber512_ref_barrett_reduce(int16_t a);
# 5 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c" 2
# 39 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c"
const int16_t pqcrystals_kyber512_ref_zetas[128] = {
  -1044, -758, -359, -1517, 1493, 1422, 287, 202,
   -171, 622, 1577, 182, 962, -1202, -1474, 1468,
    573, -1325, 264, 383, -829, 1458, -1602, -130,
   -681, 1017, 732, 608, -1542, 411, -205, -1571,
   1223, 652, -552, 1015, -1293, 1491, -282, -1544,
    516, -8, -320, -666, -1618, -1162, 126, 1469,
   -853, -90, -271, 830, 107, -1421, -247, -951,
   -398, 961, -1508, -725, 448, -1065, 677, -1275,
  -1103, 430, 555, 843, -1251, 871, 1550, 105,
    422, 587, 177, -235, -291, -460, 1574, 1653,
   -246, 778, 1159, -147, -777, 1483, -602, 1119,
  -1590, 644, -872, 349, 418, 329, -156, -75,
    817, 1097, 603, 610, 1322, -1285, -1465, 384,
  -1215, -136, 1218, -1335, -874, 220, -1187, -1659,
  -1185, -1530, -1278, 794, -1510, -854, -870, 478,
   -108, -308, 996, 991, 958, -1460, 1522, 1628
};
# 68 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c"
static int16_t fqmul(int16_t a, int16_t b) {
  return pqcrystals_kyber512_ref_montgomery_reduce((int32_t)a*b);
}
# 80 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c"
void pqcrystals_kyber512_ref_ntt(int16_t r[256]) {
  unsigned int len, start, j, k;
  int16_t t, zeta;

  k = 1;
  for(len = 128; len >= 2; len >>= 1) {
    for(start = 0; start < 256; start = j + len) {
      zeta = pqcrystals_kyber512_ref_zetas[k++];
      for(j = start; j < start + len; j++) {
        t = fqmul(zeta, r[j + len]);
        r[j + len] = r[j] - t;
        r[j] = r[j] + t;
      }
    }
  }
}
# 106 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c"
void pqcrystals_kyber512_ref_invntt(int16_t r[256]) {
  unsigned int start, len, j, k;
  int16_t t, zeta;
  const int16_t f = 1441;

  k = 127;
  for(len = 2; len <= 128; len <<= 1) {
    for(start = 0; start < 256; start = j + len) {
      zeta = pqcrystals_kyber512_ref_zetas[k--];
      for(j = start; j < start + len; j++) {
        t = r[j];
        r[j] = pqcrystals_kyber512_ref_barrett_reduce(t + r[j + len]);
        r[j + len] = r[j + len] - t;
        r[j + len] = fqmul(zeta, r[j + len]);
      }
    }
  }

  for(j = 0; j < 256; j++)
    r[j] = fqmul(r[j], f);
}
# 139 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/ntt.c"
void pqcrystals_kyber512_ref_basemul(int16_t r[2], const int16_t a[2], const int16_t b[2], int16_t zeta)
{
  r[0] = fqmul(a[1], b[1]);
  r[0] = fqmul(r[0], zeta);
  r[0] += fqmul(a[0], b[0]);
  r[1] = fqmul(a[0], b[1]);
  r[1] += fqmul(a[1], b[0]);
}
# 86 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c" 1
# 19 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_compress(uint8_t r[128], const poly *a)
{
  unsigned int i,j;
  int16_t u;
  uint32_t d0;
  uint8_t t[8];



  for(i=0;i<256/8;i++) {
    for(j=0;j<8;j++) {

      u = a->coeffs[8*i+j];
      u += (u >> 15) & 3329;

      d0 = u << 4;
      d0 += 1665;
      d0 *= 80635;
      d0 >>= 28;
      t[j] = d0 & 0xf;
    }

    r[0] = t[0] | (t[1] << 4);
    r[1] = t[2] | (t[3] << 4);
    r[2] = t[4] | (t[5] << 4);
    r[3] = t[6] | (t[7] << 4);
    r += 4;
  }
# 71 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
}
# 83 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_decompress(poly *r, const uint8_t a[128])
{
  unsigned int i;


  for(i=0;i<256/2;i++) {
    r->coeffs[2*i+0] = (((uint16_t)(a[0] & 15)*3329) + 8) >> 4;
    r->coeffs[2*i+1] = (((uint16_t)(a[0] >> 4)*3329) + 8) >> 4;
    a += 1;
  }
# 113 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
}
# 124 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_tobytes(uint8_t r[384], const poly *a)
{
  unsigned int i;
  uint16_t t0, t1;

  for(i=0;i<256/2;i++) {

    t0 = a->coeffs[2*i];
    t0 += ((int16_t)t0 >> 15) & 3329;
    t1 = a->coeffs[2*i+1];
    t1 += ((int16_t)t1 >> 15) & 3329;
    r[3*i+0] = (t0 >> 0);
    r[3*i+1] = (t0 >> 8) | (t1 << 4);
    r[3*i+2] = (t1 >> 4);
  }
}
# 151 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_frombytes(poly *r, const uint8_t a[384])
{
  unsigned int i;
  for(i=0;i<256/2;i++) {
    r->coeffs[2*i] = ((a[3*i+0] >> 0) | ((uint16_t)a[3*i+1] << 8)) & 0xFFF;
    r->coeffs[2*i+1] = ((a[3*i+1] >> 4) | ((uint16_t)a[3*i+2] << 4)) & 0xFFF;
  }
}
# 168 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_frommsg(poly *r, const uint8_t msg[(32)])
{
  unsigned int i,j;





  for(i=0;i<256/8;i++) {
    for(j=0;j<8;j++) {
      r->coeffs[8*i+j] = 0;
      pqcrystals_kyber512_ref_cmov_int16(r->coeffs+8*i+j, ((3329 +1)/2), (msg[i] >> j)&1);
    }
  }
}
# 192 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_tomsg(uint8_t msg[(32)], const poly *a)
{
  unsigned int i,j;
  uint32_t t;

  for(i=0;i<256/8;i++) {
    msg[i] = 0;
    for(j=0;j<8;j++) {
      t = a->coeffs[8*i+j];


      t <<= 1;
      t += 1665;
      t *= 80635;
      t >>= 28;
      t &= 1;
      msg[i] |= t << j;
    }
  }
}
# 225 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_getnoise_eta1(poly *r, const uint8_t seed[32], uint8_t nonce)
{
  uint8_t buf[3*256/4];
  pqcrystals_kyber512_ref_kyber_shake256_prf(buf, sizeof(buf), seed, nonce);
  pqcrystals_kyber512_ref_poly_cbd_eta1(r, buf);
}
# 244 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_getnoise_eta2(poly *r, const uint8_t seed[32], uint8_t nonce)
{
  uint8_t buf[2*256/4];
  pqcrystals_kyber512_ref_kyber_shake256_prf(buf, sizeof(buf), seed, nonce);
  pqcrystals_kyber512_ref_poly_cbd_eta2(r, buf);
}
# 261 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_ntt(poly *r)
{
  pqcrystals_kyber512_ref_ntt(r->coeffs);
  pqcrystals_kyber512_ref_poly_reduce(r);
}
# 276 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_invntt_tomont(poly *r)
{
  pqcrystals_kyber512_ref_invntt(r->coeffs);
}
# 290 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_basemul_montgomery(poly *r, const poly *a, const poly *b)
{
  unsigned int i;
  for(i=0;i<256/4;i++) {
    pqcrystals_kyber512_ref_basemul(&r->coeffs[4*i], &a->coeffs[4*i], &b->coeffs[4*i], pqcrystals_kyber512_ref_zetas[64+i]);
    pqcrystals_kyber512_ref_basemul(&r->coeffs[4*i+2], &a->coeffs[4*i+2], &b->coeffs[4*i+2], -pqcrystals_kyber512_ref_zetas[64+i]);
  }
}
# 307 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_tomont(poly *r)
{
  unsigned int i;
  const int16_t f = (1ULL << 32) % 3329;
  for(i=0;i<256;i++)
    r->coeffs[i] = pqcrystals_kyber512_ref_montgomery_reduce((int32_t)r->coeffs[i]*f);
}
# 323 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_reduce(poly *r)
{
  unsigned int i;
  for(i=0;i<256;i++)
    r->coeffs[i] = pqcrystals_kyber512_ref_barrett_reduce(r->coeffs[i]);
}
# 339 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_add(poly *r, const poly *a, const poly *b)
{
  unsigned int i;
  for(i=0;i<256;i++)
    r->coeffs[i] = a->coeffs[i] + b->coeffs[i];
}
# 355 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/poly.c"
void pqcrystals_kyber512_ref_poly_sub(poly *r, const poly *a, const poly *b)
{
  unsigned int i;
  for(i=0;i<256;i++)
    r->coeffs[i] = a->coeffs[i] - b->coeffs[i];
}
# 87 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c" 1
# 15 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_compress(uint8_t r[(2 * 320)], const polyvec *a)
{
  unsigned int i,j,k;
  uint64_t d0;
# 51 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
  uint16_t t[4];
  for(i=0;i<2;i++) {
    for(j=0;j<256/4;j++) {
      for(k=0;k<4;k++) {
        t[k] = a->vec[i].coeffs[4*j+k];
        t[k] += ((int16_t)t[k] >> 15) & 3329;

        d0 = t[k];
        d0 <<= 10;
        d0 += 1665;
        d0 *= 1290167;
        d0 >>= 32;
        t[k] = d0 & 0x3ff;
      }

      r[0] = (t[0] >> 0);
      r[1] = (t[0] >> 8) | (t[1] << 2);
      r[2] = (t[1] >> 6) | (t[2] << 4);
      r[3] = (t[2] >> 4) | (t[3] << 6);
      r[4] = (t[3] >> 2);
      r += 5;
    }
  }



}
# 89 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_decompress(polyvec *r, const uint8_t a[(2 * 320)])
{
  unsigned int i,j,k;
# 112 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
  uint16_t t[4];
  for(i=0;i<2;i++) {
    for(j=0;j<256/4;j++) {
      t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
      t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
      t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
      t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
      a += 5;

      for(k=0;k<4;k++)
        r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*3329 + 512) >> 10;
    }
  }



}
# 139 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_tobytes(uint8_t r[(2 * 384)], const polyvec *a)
{
  unsigned int i;
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_tobytes(r+i*384, &a->vec[i]);
}
# 156 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_frombytes(polyvec *r, const uint8_t a[(2 * 384)])
{
  unsigned int i;
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_frombytes(&r->vec[i], a+i*384);
}
# 170 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_ntt(polyvec *r)
{
  unsigned int i;
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_ntt(&r->vec[i]);
}
# 185 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_invntt_tomont(polyvec *r)
{
  unsigned int i;
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_invntt_tomont(&r->vec[i]);
}
# 202 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_basemul_acc_montgomery(poly *r, const polyvec *a, const polyvec *b)
{
  unsigned int i;
  poly t;

  pqcrystals_kyber512_ref_poly_basemul_montgomery(r, &a->vec[0], &b->vec[0]);
  for(i=1;i<2;i++) {
    pqcrystals_kyber512_ref_poly_basemul_montgomery(&t, &a->vec[i], &b->vec[i]);
    pqcrystals_kyber512_ref_poly_add(r, r, &t);
  }

  pqcrystals_kyber512_ref_poly_reduce(r);
}
# 225 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_reduce(polyvec *r)
{
  unsigned int i;
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_reduce(&r->vec[i]);
}
# 241 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/polyvec.c"
void pqcrystals_kyber512_ref_polyvec_add(polyvec *r, const polyvec *a, const polyvec *b)
{
  unsigned int i;
  for(i=0;i<2;i++)
    pqcrystals_kyber512_ref_poly_add(&r->vec[i], &a->vec[i], &b->vec[i]);
}
# 88 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/reduce.c" 1
# 16 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/reduce.c"
int16_t pqcrystals_kyber512_ref_montgomery_reduce(int32_t a)
{
  int16_t t;

  t = (int16_t)a*-3327;
  t = (a - (int32_t)t*3329) >> 16;
  return t;
}
# 35 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/reduce.c"
int16_t pqcrystals_kyber512_ref_barrett_reduce(int16_t a) {
  int16_t t;
  const int16_t v = ((1<<26) + 3329/2)/3329;

  t = ((int32_t)v*a + (1<<25)) >> 26;
  t *= 3329;
  return a - t;
}
# 89 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric-shake.c" 1
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric-shake.c" 2
# 18 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric-shake.c"
void pqcrystals_kyber512_ref_kyber_shake128_absorb(keccak_state *state,
                           const uint8_t seed[32],
                           uint8_t x,
                           uint8_t y)
{
  uint8_t extseed[32 +2];

  memcpy(extseed, seed, 32);
  extseed[32 +0] = x;
  extseed[32 +1] = y;

  pqcrystals_kyber_fips202_ref_shake128_absorb_once(state, extseed, sizeof(extseed));
}
# 43 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric-shake.c"
void pqcrystals_kyber512_ref_kyber_shake256_prf(uint8_t *out, size_t outlen, const uint8_t key[32], uint8_t nonce)
{
  uint8_t extkey[32 +1];

  memcpy(extkey, key, 32);
  extkey[32] = nonce;

  pqcrystals_kyber_fips202_ref_shake256(out, outlen, extkey, sizeof(extkey));
}
# 64 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/symmetric-shake.c"
void pqcrystals_kyber512_ref_kyber_shake256_rkprf(uint8_t out[32], const uint8_t key[32], const uint8_t input[(((2 * 320) + 128))])
{
  keccak_state s;

  pqcrystals_kyber_fips202_ref_shake256_init(&s);
  pqcrystals_kyber_fips202_ref_shake256_absorb(&s, key, 32);
  pqcrystals_kyber_fips202_ref_shake256_absorb(&s, input, (((2 * 320) + 128)));
  pqcrystals_kyber_fips202_ref_shake256_finalize(&s);
  pqcrystals_kyber_fips202_ref_shake256_squeeze(out, 32, &s);
}
# 90 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2
# 1 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.c" 1
# 1 "/home/chandu/sdk/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include/stddef.h" 1 3 4
# 2 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.c" 2
# 16 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.c"
int pqcrystals_kyber512_ref_verify(const uint8_t *a, const uint8_t *b, size_t len)
{
  size_t i;
  uint8_t r = 0;

  for(i=0;i<len;i++)
    r |= a[i] ^ b[i];

  return (-(uint64_t)r) >> 63;
}
# 40 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.c"
void pqcrystals_kyber512_ref_cmov(uint8_t *r, const uint8_t *x, size_t len, uint8_t b)
{
  size_t i;
# 51 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.c"
  __asm__("" : "+r"(b) : );


  b = -b;
  for(i=0;i<len;i++)
    r[i] ^= b & (r[i] ^ x[i]);
}
# 71 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/kyber/kyber512_ref/verify.c"
void pqcrystals_kyber512_ref_cmov_int16(int16_t *r, int16_t v, uint16_t b)
{
  b = -b;
  *r ^= b & ((*r) ^ v);
}
# 91 "/home/chandu/sdk/bl602_iot_sdk/customer_app/suas_app_pqkem_coap/suas_app_pqkem_coap/pqkem_kem.c" 2



bool pqkem_keygen(uint8_t *pk, uint8_t *sk)
{
    if (!pk || !sk) {
        return false;
    }

    ensure_drbg();

    int ret = pqcrystals_kyber512_ref_keypair(pk, sk);
    if (ret != 0) {
        printf("[pqkem] crypto_kem_keypair ret=%d\r\n", ret);
        return false;
    }
    return true;
}

bool pqkem_encapsulate(const uint8_t *pk,
                       uint8_t *ct,
                       uint8_t *ss)
{
    if (!pk || !ct || !ss) {
        return false;
    }

    ensure_drbg();

    int ret = pqcrystals_kyber512_ref_enc(ct, ss, pk);
    if (ret != 0) {
        printf("[pqkem] crypto_kem_enc ret=%d\r\n", ret);
        return false;
    }
    return true;
}

bool pqkem_decapsulate(const uint8_t *ct,
                       const uint8_t *sk,
                       uint8_t *ss)
{
    if (!ct || !sk || !ss) {
        return false;
    }

    ensure_drbg();

    int ret = pqcrystals_kyber512_ref_dec(ss, ct, sk);
    if (ret != 0) {
        printf("[pqkem] crypto_kem_dec ret=%d\r\n", ret);
        return false;
    }
    return true;
}
