#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

#define STR "#include <unistd.h>%c#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c#include <fcntl.h>%c%c#define STR %c%s%c%c%cint%cmain() {%c%cint%c%ci = %c;%c%cchar%cfilename[] = %cSully_x.c%c;%c%cchar%cobjname[] = %cSully_x.o%c;%c%cchar%cbuff[1024];%c%c%cif (i > 0) {%c%c%cfilename[6] = i + '0' - 1;%c%c%cobjname[6] = i + '0' - 1;%c%c%cint%cfd = open(filename, O_CREAT | O_WRONLY, 0644);%c%c%ci--;%c%c%cdprintf(fd, STR, 10, 10, 10, 10, 10, 10, 34, STR, 34, 10, 10, 9, 10, 9, 9, 9, i + '0', 10, 9, 9, 34, 34, 10, 9, 9, 34, 34, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 34, 34, 34, 34, 10, 9, 9, 34, 34, 34, 34, 10, 9, 9, 34, 34, 10, 9, 9, 10, 9, 10, 9, 10, 10);%c%c%csystem(strcat(strcat(strcat(strcpy(buff, %ccc -c %c), filename), %c -o %c), objname));%c%c%csystem(strcat(strcat(strcpy(buff, %ccc -Wall -Wextra -Werror %c), objname), %c -o Sully%c));%c%c%csystem(%c./Sully%c);%c%c%cclose(fd);%c%c}%c%creturn 0;%c}%c"

int	main() {
	int		i = 5;
	char	filename[] = "Sully_x.c";
	char	objname[] = "Sully_x.o";
	char	buff[1024];

	if (i > 0) {
		filename[6] = i + '0' - 1;
		objname[6] = i + '0' - 1;
		int	fd = open(filename, O_CREAT | O_WRONLY, 0644);
		i--;
		dprintf(fd, STR, 10, 10, 10, 10, 10, 10, 34, STR, 34, 10, 10, 9, 10, 9, 9, 9, i + '0', 10, 9, 9, 34, 34, 10, 9, 9, 34, 34, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 34, 34, 34, 34, 10, 9, 9, 34, 34, 34, 34, 10, 9, 9, 34, 34, 10, 9, 9, 10, 9, 10, 9, 10, 10);
		system(strcat(strcat(strcat(strcpy(buff, "cc -c "), filename), " -o "), objname));
		system(strcat(strcat(strcpy(buff, "cc -Wall -Wextra -Werror "), objname), " -o Sully"));
		system("./Sully");
		close(fd);
	}
	return 0;
}
