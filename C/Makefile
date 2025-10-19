CC = cc
CFLAGS = -Wall -Wextra -Werror -g3

COLLEEN_SRC = Colleen.c
GRACE_SRC = Grace.c
SULLY_SRC = Sully.c

COLLEEN_OBJ = $(COLLEEN_SRC:.c=.o)
GRACE_OBJ = $(GRACE_SRC:.c=.o)
SULLY_OBJ = $(SULLY_SRC:.c=.o)
TO_DEL = Grace_kid.c Sully_*.o Sully_*.c

NAME_COLLEEN = Colleen
NAME_GRACE = Grace
NAME_SULLY = Sully

all: $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)

$(NAME_COLLEEN): $(COLLEEN_OBJ)
	$(CC) $(CFLAGS) $(COLLEEN_OBJ) -o $@
	@echo "\033[32m✔ $@ compilation completed\033[0m"

$(NAME_GRACE): $(GRACE_OBJ)
	$(CC) $(CFLAGS) $(GRACE_OBJ) -o $@
	@echo "\033[32m✔ $@ compilation completed\033[0m"

$(NAME_SULLY): $(SULLY_OBJ)
	$(CC) $(CFLAGS) $(SULLY_OBJ) -o $@
	@echo "\033[32m✔ $@ compilation completed\033[0m"

clean:
	$(RM) $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ) $(TO_DEL)
	@echo "\033[33m✔ Objects files removed\033[0m"

fclean: clean
	$(RM) $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)
	@echo "\033[31m✔ Executables removed\033[0m"

re: fclean all

.PHONY: all clean fclean re
