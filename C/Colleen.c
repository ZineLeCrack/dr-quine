#include <stdio.h>
/*
	include
*/

void	print() {
	char	s[] = "#include <stdio.h>%c/*%c%cinclude%c*/%c%cvoid%cprint() {%c%cchar%cs[] = %c%s%c;%c%cprintf(s, 10, 10, 9, 10, 10, 10, 9, 10, 9, 9, 34, s, 34, 10, 9, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 10);%c}%c%cint%cmain() {%c%cprint();%c%c/*%c%c%cmain%c%c*/%c%creturn (0);%c}%c";
	printf(s, 10, 10, 9, 10, 10, 10, 9, 10, 9, 9, 34, s, 34, 10, 9, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 10, 10);
}

int	main() {
	print();
	/*
		main
	*/
	return (0);
}
