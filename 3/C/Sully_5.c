#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

#define FILENAME "Sully_4.c"
#define STR "#include <unistd.h>%c#include <stdio.h>%c#include <stdlib.h>%c#include <fcntl.h>%c%c#define FILENAME %cSully_%c.c%c%c#define STR %c%s%c%c%cint%cmain() {%c%cint%ci = %c;%c%c%cif (i > 1) {%c%c%cint%cfd = open(FILENAME, O_CREAT | O_WRONLY, 0644);%c%c%ci--;%c%c%cdprintf(fd, STR, 10, 10, 10, 10, 10, 34, i + '0' - 1, 34, 10, 34, STR, 34, 10, 10, 9, 10, 9, 9, i + '0', 10, 10, 9, 10, 9, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 34, 34, 34, i + '0' - 1, 34, 10, 9, 9, 34, i + '0' - 1, 34, 10, 9, 9, 10, 9, 10, 9, 10, 10);%c%c%csystem(%ccc -Wall -Wextra -Werror %c FILENAME %c -o Sully_%c%c);%c%c%csystem(%c./Sully_%c%c);%c%c%cclose(fd);%c%c}%c%creturn 0;%c}%c"

int	main() {
	int	i = 5;

	if (i > 1) {
		int	fd = open(FILENAME, O_CREAT | O_WRONLY, 0644);
		i--;
		dprintf(fd, STR, 10, 10, 10, 10, 10, 34, i + '0' - 1, 34, 10, 34, STR, 34, 10, 10, 9, 10, 9, 9, i + '0', 10, 10, 9, 10, 9, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 34, 34, 34, i + '0' - 1, 34, 10, 9, 9, 34, i + '0' - 1, 34, 10, 9, 9, 10, 9, 10, 9, 10, 10);
		system("cc -Wall -Wextra -Werror " FILENAME " -o Sully_4");
		system("./Sully_4");
		close(fd);
	}
	return 0;
}
