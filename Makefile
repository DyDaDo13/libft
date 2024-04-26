# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/11 10:48:37 by dylmarti          #+#    #+#              #
#    Updated: 2024/04/26 08:26:28 by dydado13         ###   ########.fr        #
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

all:	$(NAME)

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
