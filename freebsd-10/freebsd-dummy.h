#ifndef __FREEBSD_DUMMY__
#define __FREEBSD_DUMMY__

#ifndef _GNU_SOURCE
#error: you must define _GNU_SOURCE, try adding  -D_GNU_SOURCE to gcc command
#endif

#include <unistd.h>

#include <bsd/stdlib.h>
#include <bsd/string.h>
#include <bsd/unistd.h> /* for getmode/setmode */

#ifndef _XOPEN_SOURCE
#define _XOPEN_SOURCE       /* See feature_test_macros(7) */
#endif
#include <wchar.h> /* for wcwidth() */

#define __FBSDID(x) struct _foobar

#define __printflike(...)
#define __printf0like(...)

#define __dead2

#define __unused

#define ALIGN(x) (x)

#define NO_HISTORY

#define NSIG 32
#define sys_nsig (32)
static const char *const sys_signame[NSIG] = {
"Signal 0",
"HUP",				/* SIGHUP 1 */
"INT",				/* SIGINT 2 */
"QUIT",				/* SIGQUIT 3  */
"ILL",				/* SIGILL 4 */
"TRAP",				/* SIGTRAP 5 */
"ABRT",				/* SIGABRT 6 */
/* "IOT",			SIGIOT =6 */
/* "EMT",			SIGEMT in FreeBSD */
"BUS",				/* SIGBUS 7 */
"FPE",				/* SIGFPE 8 */
"KILL",				/* SIGKILL 9 */
"USR1",				/* SIGUSR1 10 */
"SEGV",				/* SIGSEGV 11 */
"USR2"				/* SIGUSR2 12 */
"PIPE",				/* SIGPIPE 13 */
"ALRM",				/* SIGALRM 14 */
"TERM",				/* SIGTERM 15 */
"STKFLT",			/* SIGSTKFLT 16  */
"CHLD",				/* SIGCHLD 17*/
"CONT",				/* SIGCONT 18 */
"STOP",				/* SIGSTOP 19 */
"TSTP",				/* SIGTSTP 20 */
"TTIN",				/* SIGTTIN 21 */
"TTOU",				/* SIGTTOU 22 */
"URG",				/* SIGURG 23 */
"XCPU",				/* SIGXCPU 24 */
"XFSZ",				/* SIGXFSZ 25 */
"VTALRM",			/* SIGVTALRM 26 */
"PROF",				/* SIGPROF 27 */
"WINCH",			/* SIGWINCH 28 */
"IO",				/* SIGIO 29 */
"PWR",				/* SIGPWR  30 */
"SYS"				/* SIGSYS  31 */
/* "INFO",		         SIGINFO */
};

#endif
