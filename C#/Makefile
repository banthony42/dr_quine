#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: banthony <banthony@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/08 12:54:17 by banthony          #+#    #+#              #
#    Updated: 2019/11/05 17:13:06 by banthony         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.PHONY: all clean fclean re

CC = mcs

FLAGS =

NAME = Colleen Grace Sully

all: $(NAME)

Colleen:
	@$(CC) $(FLAGS) ./src/src/Colleen.cs -out:./Colleen.exe
	@echo "\033[1;34mDr_Quine\t\033[1;33mCompilation - Colleen\t\033[0;32m[OK]\033[0m"

Grace:
	@$(CC) $(FLAGS) ./src/src/Grace.cs -out:./Grace.exe
	@echo "\033[1;34mDr_Quine\t\033[1;33mCompilation - Grace\t\033[0;32m[OK]\033[0m"

Sully:
	@$(CC) $(FLAGS) ./src/src/Sully.cs -out:./Sully.exe
	@echo "\033[1;34mDr_Quine\t\033[1;33mCompilation - Sully\t\033[0;32m[OK]\033[0m"

clean:
	@rm -rf ./*~
	@echo "\033[1;34mDr_Quine\t\033[1;33mCleaning obj\t\t\033[0;32m[OK]\033[0m"

fclean: clean
	@rm -rf Colleen
	@rm -rf Grace
	@rm -rf Grace_kid.cs
	@rm -rf Sully
	@rm -rf Sully_*
	@rm -rf *.exe
	@rm -rf a.out
	@rm -rf tmp
	@echo "\033[1;34mDr_Quine\t\033[1;33mCleaning all\t\t\033[0;32m[OK]\033[0m"

re: fclean all