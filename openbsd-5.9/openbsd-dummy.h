#ifndef __OPENBSD_DUMMY__

#include <stdlib.h>
#include <bsd/bsd.h>

#define srandom_deterministic srandom

static inline int
pledge(const char * promises, const char * paths [])
{
  (void)promises;
  (void)paths;
  return 0;
}

/*
static inline void*
reallocarray(void *ptr, size_t nmemb, size_t size)
{
  // unsafe, without checking for integer overflow
  return realloc(ptr, size*nmemb);
}
*/

#endif
