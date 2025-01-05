# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hfilipe- <hfilipe-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/23 10:42:35 by hfilipe-          #+#    #+#              #
#    Updated: 2025/01/05 13:37:59 by hfilipe-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
GDB = -ggdb
FLAGS = -Wall -Werror -Wextra -fPIE
SRC = pipex.c pipex_utils.c
LIBFT_ARC= libft/libft.a
LIBFT_DIR= libft
OBJ = $(SRC:.c=.o)
NAME = pipex
RM = rm -f

all : $(LIBFT) $(NAME)

$(LIBFT_ARC):
	$(MAKE) -C $(LIBFT_DIR)

$(NAME): $(OBJ) $(LIBFT_ARC) 
	$(CC) $(CFLAGS) $(SRC) $(LIBFT_ARC) -o $(NAME) $(GDB)

clean:
	$(RM) $(OBJ)
	$(MAKE) -C $(LIBFT_DIR) clean

fclean: clean
	$(RM) $(NAME)
	$(MAKE) -C $(LIBFT_DIR) fclean

re: fclean all
