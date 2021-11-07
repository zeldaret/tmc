
CXX = g++
CXXFLAGS = -O3 -Wall -Wextra -std=c++17
#CXXFLAGS += -g # debug

SRCS = $(wildcard *.cpp)
HEADERS = $(wildcard *.h)
SRCS += $(wildcard assets/*.cpp)
HEADERS += $(wildcard assets/*.h)

INCLUDES = -I./

.PHONY: all clean

all: asset_processor

asset_processor: $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o asset_processor $(SRCS) -lstdc++fs

clean:
	$(RM) asset_processor asset_processor.exe
