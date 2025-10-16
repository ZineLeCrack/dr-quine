NAME = Sully

CC = cc
CFLAGS = -Wall -Wextra -Werror -g3

OBJDIR = objs

SRCS = Sully_5.c

OBJS = $(SRCS:%.c=$(OBJDIR)/%.o)

all: $(NAME)

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: %.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)
	@echo "\033[32m✔ Compilation completed\033[0m"

clean:
	$(RM) -r $(OBJDIR)
	$(RM) Sully_4 Sully_4.c Sully_3 Sully_3.c Sully_2 Sully_2.c Sully_1 Sully_1.c 
	@echo "\033[33m✔ $(OBJDIR) suppressed\033[0m"

fclean: clean
	$(RM) $(NAME)
	@echo "\033[31m✔ $(NAME) suppressed\033[0m"

re: fclean all
