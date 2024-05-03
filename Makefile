# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/11 10:48:37 by dylmarti          #+#    #+#              #
#    Updated: 2024/05/03 13:06:46 by dydado13         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libft.a    

FUNC			= ft_atoi.c     ft_isalpha.c  ft_itoa.c          ft_lstdelone.c  ft_lstsize.c  ft_memmove.c     ft_putnbr_fd.c  ft_strcmp.c    ft_strjoin.c  ft_strmapi.c  ft_strtrim.c \
ft_bzero.c    ft_isascii.c  ft_lstadd_back.c   ft_lstiter.c    ft_memchr.c   ft_memset.c      ft_putstr_fd.c  ft_strcpy.c    ft_strlcat.c  ft_strncmp.c  ft_substr.c \
ft_calloc.c   ft_isdigit.c  ft_lstadd_front.c  ft_lstlast.c    ft_memcmp.c   ft_putchar_fd.c  ft_split.c      ft_strdup.c    ft_strlcpy.c  ft_strnstr.c  ft_tolower.c \
ft_isalnum.c  ft_isprint.c  ft_lstclear.c      ft_lstnew.c     ft_memcpy.c   ft_putendl_fd.c  ft_strchr.c     ft_striteri.c  ft_strlen.c   ft_strrchr.c  ft_toupper.c
OBJS			= $(FUNC:.c=.o)

CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror -I.

all:	$(NAME) message

$(NAME):		$(OBJS)
	@ar rcs $(NAME) $(OBJS)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJS)

fclean:		clean
	@$(RM) $(NAME)

re:			fclean all

.PHONY:			all clean fclean re bonus

message:
	@echo "    ___________________________\0"
	@echo "   |\__________________________\ \0"
	@echo "   | |_|_|_|_|_|_|_|_|_|_|_|_|_|\0"
	@echo "   | |_|L|I|B|F|T|_|_|_|_|_|_|_|\0"
	@echo "   | |_|_|_|_|_|_|_|_|_|_|_|_|_|\0"
	@echo "   | |_|B|Y|_|D|Y|D|A|D|O|1|3|_|\0"
	@echo "   | |_|_|_|_|_|_|_|_|_|_|_|_|_|\0"
	@echo "   | |_|4|2|_|P|R|O|J|E|C|T|_|_|\0"
	@echo "    \|_|_|_|_|_|_|_|_|_|_|_|_|_|\0"


#============ Colours ============

COLOUR_BLUE		= \033[34m
COLOUR_GREEN	= \033[90m
COLOUR_BLACK	= \033[30m
COLOUR_RED		= \033[31m
COLOUR_OK		= \033[32m
COLOUR_BAD		= \033[31m
COLOUR_CYAN		= \033[36m
NO_COLOUR		= \033[0m