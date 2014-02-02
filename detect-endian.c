#include <stdio.h>
#include <string.h>
#include <endian.h>

int main()
{
	char str[0xff]="";

	switch(__BYTE_ORDER){
		case __LITTLE_ENDIAN:
			strcpy(str, "Little endian");
			break;
		case __BIG_ENDIAN:
			strcpy(str, "Big endian");
			break;
		case __PDP_ENDIAN:
			strcpy(str, "PDP endian");
			break;
		default:
			strcpy(str, "Unknown endian");
			break;
	}

	printf("%s\n", str);

	return 0;
}
