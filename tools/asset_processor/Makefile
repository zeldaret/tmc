
CXX = g++
CXXFLAGS = -O3 -Wall -Wextra -std=c++17
#CXXFLAGS += -g # debug

BUILD_FOLDER=build

SRCS = $(wildcard *.cpp)
SRCS += $(wildcard assets/*.cpp)

OBJS := $(patsubst %.cpp,$(BUILD_FOLDER)/%.o,$(SRCS))

INCLUDES = -I./

# Create build dirs
$(shell mkdir -p $(dir $(OBJS)) >/dev/null)

.PHONY: all clean

all: asset_processor

asset_processor: $(OBJS)
	$(CXX) -o asset_processor $(OBJS) -lstdc++fs

$(BUILD_FOLDER)/%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c -o $@ $<

clean:
	$(RM) asset_processor asset_processor.exe
	$(RM) -r $(BUILD_FOLDER)

# Automatic dependencies
CXXFLAGS += -MMD
-include $(OBJS:.o=.d)