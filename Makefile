NAME	= libft.a

CC		= gcc
CFLAGS	= -Wall	-Wextra	-Werror

INCDIR	=	./
HNAME	=	libft.h
SRCDIR	=	./
SRCNAME	=	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c\
			ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c\
			ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c\
			ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
			ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c\
			ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c\
			ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
			
BONUSNAME =	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c\
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

SRCS	=	$(addprefix $(SRCDIR),$(SRCNAME))
HEADERS	=	$(addprefix $(INCDIR),$(HNAME))
OBJS	=	$(SRCS:.c=.o)
BONUSOBJ =	$(BONUSNAME:.c=.o)

.c.o:
			$(CC) $(CFLAGS) -I $(INCDIR) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJS) $(HEADERS)
			ar rc $(NAME) $(OBJS)

all:		$(NAME)

bonus:		$(OBJS) $(BONUSOBJ) $(HEADERS)
			ar rc $(NAME) $(OBJS) $(BONUSOBJ)

clean:
			rm -f $(OBJS) $(BONUSOBJ)

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all bonus clean fclean re
