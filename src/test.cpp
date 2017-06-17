#include <sys/stat.h>

int selectMode(struct stat dirinfo)
{
    return dirinfo.st_mode;
}