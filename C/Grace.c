/*
	Grace
*/
#include <stdio.h>
#include <fcntl.h>
#define STR "/*%c%cGrace%c*/%c#include <stdio.h>%c#include <fcntl.h>%c#define STR %c%s%c%c#define PRINT(fd) dprintf(fd, STR, 10, 9, 10, 10, 10, 10, 34, STR, 34, 10, 10, 34, 34, 10, 10)%c#define RUN int main() { int fd = open(%cGrace_kid.c%c, O_CREAT | O_WRONLY, 0644); PRINT(fd); }%cRUN%c"
#define PRINT(fd) dprintf(fd, STR, 10, 9, 10, 10, 10, 10, 34, STR, 34, 10, 10, 34, 34, 10, 10)
#define RUN int main() { int fd = open("Grace_kid.c", O_CREAT | O_WRONLY, 0644); PRINT(fd); }
RUN
