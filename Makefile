NAME	=	libft.a
SRC		=	ft_main.c \
			ft_toupper.c \
			ft_strrchr.c \
			ft_strchr.c \
			ft_tolower.c \
			ft_strlen.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_strncmp.c \
			ft_isdigit.c \
			ft_isalpha.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_memchr.c \
			ft_memset.c \
			ft_memmove.c \
			ft_bzero.c 
OBJ		= $(SRC:%.c=%.o)
CFLAGS	= -Wall -Wextra -Werror
CC		= gcc

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)

.PHONY : clean
clean:
	rm -f *.o 
.PHONY : fclean
fclean: clean
	rm -f $(NAME)
	