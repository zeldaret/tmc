export CC		:=	g++

export CFLAGS	:=	-O2 -Wall -Werror -Wextra -DFMT_HEADER_ONLY
export CXXFLAGS	:=	$(CFLAGS) -std=c++17

export INCLUDES	:=	-I./

.PHONY: all clean

all: tmc_strings

tmc_strings: main.cpp
	$(CC) -o tmc_strings main.cpp $(CXXFLAGS) $(INCLUDES)

clean:
	@rm tmc_strings
