#include <stdio.h>
/* include */

// print
void	print() {
	char	s[] = "#include <stdio.h>%c/* include */%c%c// print%cvoid%cprint() {%c%cchar%cs[] = %c%s%c; // string%c%cprintf(s, 10, 10, 10, 10, 9, 10, 9, 9, 34, s, 34, 10, 9, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 10);%c}%c%c// main%cint%cmain() {%c%cprint(); // print%c%c// end%c%creturn (0);%c}%c"; // string
	printf(s, 10, 10, 10, 10, 9, 10, 9, 9, 34, s, 34, 10, 9, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 10);
}

// main
int	main() {
	print(); // print
	// end
	return (0);
}
