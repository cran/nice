
/* Author: Charles J. Geyer (charlie@stat.umn.edu)
*  released into the public domain (no rights reserved)
*/

#ifndef Win32
#include <sys/resource.h>
#include <errno.h>
#include <string.h>
#endif
#include <R.h>

void
get_my_priority(int *result)
{
#ifndef Win32
    errno = 0;
    result[0] = getpriority(PRIO_PROCESS, 0);
    if (errno != 0)
        warning(strerror(errno));
#endif
}

void
set_my_priority(int *priority)
{
#ifndef Win32
    if (setpriority(PRIO_PROCESS, 0, priority[0]) != 0)
        warning(strerror(errno));
#endif
}

