#ifndef __NETBSD_DUMMY__
#define __NETBSD_DUMMY__

#include <unistd.h>

#define _XOPEN_SOURCE       /* See feature_test_macros(7) */
#include <wchar.h> /* for wcwidth() */


#define __RCSID(x) struct _foobar
#define __COPYRIGHT(x) struct _foobar
#define __dead

#include <bsd/stdlib.h>
#include <bsd/string.h>

#define __UNCONST(x) (void*)(x)

/* fake fpurge(3) which always succeeds and does nothing */
#ifndef fpurge
#define fpurge(...) 0
#endif

#endif
