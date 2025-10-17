NAME = Sully

NASM = nasm
NASMFLAGS = -f elf64

CC = gcc -no-pie
CFLAGS = -Wall -Wextra -Werror -g3

OBJDIR = objs

SRCS = Sully.s
OBJS = $(SRCS:%.s=$(OBJDIR)/%.o)

all: $(NAME)

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: %.s | $(OBJDIR)
	$(NASM) $(NASMFLAGS) $< -o $@

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo "\033[32m✔ Compilation completed\033[0m"

clean:
	$(RM) -r $(OBJDIR)
	$(RM) Sully_4.s Sully_3.s Sully_2.s Sully_1.s Sully_0.s
	@echo "\033[33m✔ $(OBJDIR) suppressed\033[0m"

fclean: clean
	$(RM) $(NAME)
	@echo "\033[31m✔ $(NAME) suppressed\033[0m"

re: fclean all
