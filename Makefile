NAME	=	diamondtrap
SRCS	=	ScavTrap.cpp ClapTrap.cpp FragTrap.cpp DiamondTrap.cpp main.cpp
INCLUDE	=	ScavTrap.hpp ClapTrap.hpp FragTrap.hpp DiamondTrap.hpp
OBJS	=	$(SRCS:.cpp=.o)
CC		= 	g++
RM		=	rm -rf
FLAGS	=	-Wall -Wextra -Werror
STD	=	-std=c++98

all:		$(NAME)

${NAME} : ${OBJS} ${INCLUDE}
	${CC} ${OBJS} -o ${NAME} 

%.o : %.cpp
	${CC} ${STD} ${FLAGS} -c $< -o $@

clean:
			$(RM) $(OBJS) 

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean re
