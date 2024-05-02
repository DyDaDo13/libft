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

FUNC			= src/ft_atoi.c     src/ft_isascii.c      src/ft_lstadd_front.c  src/ft_lstnew.c   src/ft_memmove.c     src/ft_putstr_fd.c  src/ft_strdup.c    src/ft_strlen.c   src/ft_strtrim.c \
src/ft_bzero.c    src/ft_isdigit.c      src/ft_lstclear.c      src/ft_lstsize.c  src/ft_memset.c      src/ft_split.c      src/ft_striteri.c  src/ft_strmapi.c  src/ft_substr.c \
src/ft_calloc.c   src/ft_isprint.c      src/ft_lstdelone.c     src/ft_memchr.c   src/ft_putchar_fd.c  src/ft_strchr.c     src/ft_strjoin.c   src/ft_strncmp.c  src/ft_tolower.c \
src/ft_isalnum.c  src/ft_itoa.c         src/ft_lstiter.c       src/ft_memcmp.c   src/ft_putendl_fd.c  src/ft_strcmp.c     src/ft_strlcat.c   src/ft_strnstr.c  src/ft_toupper.c \
src/ft_isalpha.c  src/ft_lstadd_back.c  src/ft_lstlast.c       src/ft_memcpy.c   src/ft_putnbr_fd.c   src/ft_strcpy.c     src/ft_strlcpy.c   src/ft_strrchr.c
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
