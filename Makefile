##
## EPITECH PROJECT, 2020
## Untitled (Workspace)
## File description:
## Makefile
##

AS		= nasm
ASFLAGS		= 	-f elf64

CC		=		ld
CFLAGS		=		-fPIC -shared

RM		=	 rm -f

NAME	= libasm.so

SRCS	=	src/my_strlen.asm\
			src/memset.asm\
			src/memcpy.asm\
			src/strchr.asm\
			src/strcmp.asm\
			src/strncmp.asm\

OBJS	=	 $(SRCS:.asm=.o)

all: $(NAME)

$(NAME): $(OBJS)
	 $(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re