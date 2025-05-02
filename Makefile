# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hfilipe- <hfilipe-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/23 10:42:35 by hfilipe-          #+#    #+#              #
#    Updated: 2025/05/02 10:29:26 by hfilipe-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
GDB = -ggdb
CFLAGS = -Wall -Werror -Wextra -fPIE
SRC_FILES = pipex.c pipex_utils.c
SRC_DIR = src
OBJ_DIR = obj
INC_DIR = includes
LIBFT_ARC = libft/libft.a
LIBFT_DIR = libft
SRC = $(addprefix $(SRC_DIR)/, $(SRC_FILES))
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))
NAME = pipex
RM = rm -f
DEPS = $(OBJ:.o=.d)

all: $(LIBFT_ARC) $(NAME)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(LIBFT_ARC):
	$(MAKE) -C $(LIBFT_DIR)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LIBFT_ARC) -o $(NAME) $(GDB)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR) $(LIBFT_ARC)
	$(CC) $(CFLAGS) -c $< -o $@

-include $(DEPS)

clean:
	$(RM) $(OBJ)
	$(RM) -r $(OBJ_DIR)
	$(MAKE) -C $(LIBFT_DIR) clean

fclean: clean
	$(RM) $(NAME)
	$(MAKE) -C $(LIBFT_DIR) fclean

re: fclean all
