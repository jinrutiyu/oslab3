#include "common.h"
#include "tools.h"
void memcpy(char *dst,char *src,int size)
{
	assert(size>0);
	for(int i=0;i<size;i++)
	{
		*(dst++)=*(src++);
	}
}