#include <stdio.h>
#include <stdlib.h>

/*
 * Deallocate the memory allocation pointed to by p.
 */
static void
xfree(void *p)
{

        if (p != NULL) {
                free(p);
                p = NULL;
        }
}

/*
 * Allocate memory, and check for error.
 * Return a pointer to the allocated space on success.
 * Do not return on ENOMEM error.
 */
static void *
xmalloc(size_t s)
{
        void *mp;

        if ((mp = malloc(s)) == NULL) {
                err(ESTATUS, FMT1S, ERR_NOMEM);
                /*NOTREACHED*/
        }
        return mp;
}

