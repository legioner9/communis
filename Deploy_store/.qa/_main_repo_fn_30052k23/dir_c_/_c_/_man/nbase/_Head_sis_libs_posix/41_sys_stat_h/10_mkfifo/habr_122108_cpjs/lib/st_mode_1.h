/* open/fcntl.  */
// #define O_ACCMODE 0003
// #define O_RDONLY 00
// #define O_WRONLY 01
// #define O_RDWR 02
// #ifndef O_CREAT
// #define O_CREAT 0100 /* Not fcntl.  */
// #endif
// #ifndef O_EXCL
// #define O_EXCL 0200 /* Not fcntl.  */
// #endif
// #ifndef O_NOCTTY
// #define O_NOCTTY 0400 /* Not fcntl.  */
// #endif
// #ifndef O_TRUNC
// #define O_TRUNC 01000 /* Not fcntl.  */
// #endif
// #ifndef O_APPEND
// #define O_APPEND 02000
// #endif
// #ifndef O_NONBLOCK
// #define O_NONBLOCK 04000
// #endif
// #ifndef O_NDELAY
// #define O_NDELAY O_NONBLOCK
// #endif
// #ifndef O_SYNC
// #define O_SYNC 04010000
// #endif
// #define O_FSYNC O_SYNC
// #ifndef O_ASYNC
// #define O_ASYNC 020000
// #endif

// INNER MODES ---------------------

#ifndef STMO_DEB
#define STMO_DEB 001
#endif

#ifndef STMO_PRN
#define STMO_PRN 002
#endif

// STATES IF -----------------------

// a = fn();
// if (-1 == a)
#ifndef STIF_ONE
#define STIF_ONE 001
#endif

// a = fn();
// if (NULL == a)
#ifndef STIF_NUL
#define STIF_NUL 002
#endif

// int e_start = errno;
// a = fn();
// if (NULL == a && e_start != errno)
#ifndef STIF_ENU
#define STIF_ENU 004
#endif

// a = fn();
// if (0 != a)
#ifndef STIF_NEN
#define STIF_NEN 010
#endif

// STATES REURN -------------------

// retun original error
#ifndef STRE_ERR
#define STRE_ERR 001
#endif

// return -1
#ifndef STRE_MNS
#define STRE_MNS 002
#endif

// exit(errno)
#ifndef STRE_EXI
#define STRE_EXI 004
#endif