NASM = nasm
CC = gcc
ASMFLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror

COLLEEN_SRC = Colleen.s
GRACE_SRC = Grace.s
SULLY_SRC = Sully.s

COLLEEN_OBJ = $(COLLEEN_SRC:.s=.o)
GRACE_OBJ = $(GRACE_SRC:.s=.o)
SULLY_OBJ = $(SULLY_SRC:.s=.o)
TO_DEL = Grace_kid.s Sully_*.o Sully_*.s

NAME_COLLEEN = Colleen
NAME_GRACE = Grace
NAME_SULLY = Sully

all: $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)

$(NAME_COLLEEN): $(COLLEEN_OBJ)
	$(CC) $(CFLAGS) $(COLLEEN_OBJ) -o $@
	@echo "\033[32m✔ $@ compilation completed\033[0m"

$(NAME_GRACE): $(GRACE_OBJ)
	$(CC) $(CFLAGS) -no-pie $(GRACE_OBJ) -o $@
	@echo "\033[32m✔ $@ compilation completed\033[0m"

$(NAME_SULLY): $(SULLY_OBJ)
	$(CC) $(CFLAGS) -no-pie $(SULLY_OBJ) -o $@
	@echo "\033[32m✔ $@ compilation completed\033[0m"

%.o: %.s
	$(NASM) $(ASMFLAGS) $< -o $@

clean:
	$(RM) $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ) $(TO_DEL)
	@echo "\033[33m✔ Object files removed\033[0m"

fclean: clean
	$(RM) $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)
	@echo "\033[31m✔ Executables removed\033[0m"

re: fclean all

.PHONY: all clean fclean re
