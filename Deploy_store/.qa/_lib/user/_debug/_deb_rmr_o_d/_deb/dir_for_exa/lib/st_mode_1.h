#ifndef st_mode_1_h
#define st_mode_1_h

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

#endif