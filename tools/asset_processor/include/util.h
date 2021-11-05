#ifndef UTIL_H
#define UTIL_H

#include <stdint.h>
#include <stdlib.h>
#include <string>
#include <vector>
#include <json.hpp>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

void check_call(const std::vector<std::string>& cmd);

std::string to_string(const nlohmann::json& j);

#endif