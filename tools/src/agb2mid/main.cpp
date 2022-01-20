// Copyright(c) 2016 YamaArashi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cctype>
#include <cassert>
#include <string>
#include <set>
#include <vector>
#include "main.h"
#include "error.h"
#include "midi.h"
#include "agb.h"

FILE* g_inputFile = nullptr;
FILE* g_outputFile = nullptr;

int g_fileStartOffset = 0;

std::string g_asmLabel;
int g_masterVolume = 127;
int g_voiceGroup = 0;
int g_priority = 0;
int g_reverb = -1;
int g_clocksPerBeat = 1;
bool g_exactGateTime = false;
bool g_compressionEnabled = true;
int g_nominator = 4;
int g_denominatorExp = 2;
bool g_verbose = false;
std::vector<TimeSignatureChange> timeSignatureChanges;

[[noreturn]] static void PrintUsage() {
    std::printf("Usage: AGB2MID baserom start_offset input_file output_file [options]\n"
                "\n"
                "       baserom  path to the baserom\n"
                "  start_offset  offset to the sound header\n"
                "    input_file  filename(.s) for AGB file\n"
                "   output_file  filename(.mid) of MIDI file (default:input_file)\n"
                "\n"
                "options  -L???  label for assembler (default:output_file)\n"
                "         -V???  master volume (default:127)\n"
                "         -G???  voice group number (default:0)\n"
                "         -P???  priority (default:0)\n"
                "         -R???  reverb (default:off)\n"
                "            -X  48 clocks/beat (default:24 clocks/beat)\n"
                "            -E  exact gate-time\n"
                "            -N  no compression\n"
                "         -n???  midi time nominator\n"
                "         -d???  midi time denominator\n"
                "      -t ? ? ?  time signature change\n"
                "            -v  verbose\n");
    std::exit(1);
}

static std::string StripExtension(std::string s) {
    std::size_t pos = s.find_last_of('.');

    if (pos > 0 && pos != std::string::npos) {
        s = s.substr(0, pos);
    }

    return s;
}

static std::string GetExtension(std::string s) {
    std::size_t pos = s.find_last_of('.');

    if (pos > 0 && pos != std::string::npos) {
        return s.substr(pos + 1);
    }
    return "";
}

static std::string BaseName(std::string s) {
    std::size_t posAfterSlash = s.find_last_of("/\\");

    if (posAfterSlash == std::string::npos)
        posAfterSlash = 0;
    else
        posAfterSlash++;

    std::size_t dotPos = s.find_first_of('.', posAfterSlash);
    if (dotPos > posAfterSlash && dotPos != std::string::npos)
        s = s.substr(posAfterSlash, dotPos - posAfterSlash);

    return s;
}

static const char* GetArgument(int argc, char** argv, int& index) {
    assert(index >= 0 && index < argc);

    const char* option = argv[index];

    assert(option != nullptr);
    assert(option[0] == '-');

    // If there is text following the letter, return that.
    if (std::strlen(option) >= 3)
        return option + 2;

    // Otherwise, try to get the next arg.
    if (index + 1 < argc) {
        index++;
        return argv[index];
    } else {
        return nullptr;
    }
}

int main(int argc, char** argv) {
    std::string baseromPath;
    std::string startOffset;
    std::string inputFilename;
    std::string outputFilename;

    for (int i = 1; i < argc; i++) {
        const char* option = argv[i];

        if (option[0] == '-' && option[1] != '\0') {
            const char* arg;

            switch (option[1]) {
                case 'E':
                    g_exactGateTime = true;
                    break;
                case 'G':
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    g_voiceGroup = std::stoi(arg);
                    break;
                case 'L':
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    g_asmLabel = arg;
                    break;
                case 'N':
                    g_compressionEnabled = false;
                    break;
                case 'P':
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    g_priority = std::stoi(arg);
                    break;
                case 'R':
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    g_reverb = std::stoi(arg);
                    break;
                case 'V':
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    g_masterVolume = std::stoi(arg);
                    break;
                case 'X':
                    g_clocksPerBeat = 2;
                    break;
                case 'n':
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    g_nominator = std::stoi(arg);
                    break;
                case 'd': {
                    arg = GetArgument(argc, argv, i);
                    if (arg == nullptr)
                        PrintUsage();
                    int denominator = std::stoi(arg);
                    if (denominator == 1) {
                        g_denominatorExp = 0;
                    } else if (denominator == 2) {
                        g_denominatorExp = 1;
                    } else if (denominator == 4) {
                        g_denominatorExp = 2;
                    } else if (denominator == 8) {
                        g_denominatorExp = 3;
                    } else if (denominator == 16) {
                        g_denominatorExp = 4;
                    } else if (denominator == 32) {
                        g_denominatorExp = 5;
                    } else {
                        std::printf("ERROR: denominator %d\n", denominator);
                        exit(1);
                    }
                    break;
                }
                case 't': {
                    int nominator = std::stoi(argv[i + 1]);
                    int denominator = std::stoi(argv[i + 2]);
                    if (denominator == 1) {
                        denominator = 0;
                    } else if (denominator == 2) {
                        denominator = 1;
                    } else if (denominator == 4) {
                        denominator = 2;
                    } else if (denominator == 8) {
                        denominator = 3;
                    } else if (denominator == 16) {
                        denominator = 4;
                    } else if (denominator == 32) {
                        denominator = 5;
                    } else {
                        std::printf("ERROR: denominator %d\n", denominator);
                        exit(1);
                    }
                    int time = std::stoi(argv[i + 3]);
                    i += 3;
                    TimeSignatureChange change;
                    change.nominator = nominator;
                    change.denominator = denominator;
                    change.time = time;

                    // TODO sort by time?
                    timeSignatureChanges.push_back(change);
                    break;
                }
                case 'v': {
                    g_verbose = true;
                    break;
                }
                default:
                    PrintUsage();
            }
        } else {
            if (baseromPath.empty())
                baseromPath = argv[i];
            else if (startOffset.empty())
                startOffset = argv[i];
            else if (inputFilename.empty())
                inputFilename = argv[i];
            else if (outputFilename.empty())
                outputFilename = argv[i];
            else
                PrintUsage();
        }
    }

    if (inputFilename.empty())
        PrintUsage();

    if (outputFilename.empty())
        outputFilename = StripExtension(inputFilename) + ".mid";

    if (GetExtension(outputFilename) != "mid")
        RaiseError("output filename extension is not \"mid\"");

    if (g_asmLabel.empty())
        g_asmLabel = BaseName(outputFilename);

    g_inputFile = std::fopen(inputFilename.c_str(), "rb");

    if (g_inputFile == nullptr)
        RaiseError("failed to open \"%s\" for reading", inputFilename.c_str());

    g_outputFile = std::fopen(outputFilename.c_str(), "w");

    if (g_outputFile == nullptr)
        RaiseError("failed to open \"%s\" for writing", outputFilename.c_str());

    g_fileStartOffset = std::stoul(startOffset, nullptr, 16);

    ReadAgbSong();
    ReadAgbTracks();
    WriteMidiFile();

    std::fclose(g_inputFile);
    std::fclose(g_outputFile);

    return 0;
}
