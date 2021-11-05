
CXX = g++
CXXFLAGS = -O3 -Wall -Wextra -std=c++17
#CXXFLAGS += -g # debug
INCLUDES = -I include/
SRCS = src/main.cpp src/asset.cpp src/animation.cpp src/spriteframe.cpp src/reader.cpp src/exitlist.cpp src/frameobjlists.cpp src/midi.cpp src/aif.cpp src/gfx.cpp src/util.cpp src/tileset.cpp src/palette.cpp

all: asset_processor

asset_processor: $(SRCS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o asset_processor $(SRCS)

clean:
	rm asset_processor
