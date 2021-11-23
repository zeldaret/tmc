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

// https://github.com/jpmac26/gba-mus-ripper

#include <cstdio>
#include <cassert>
#include <string>
#include <vector>
#include <algorithm>
#include <memory>
#include "midi.h"
#include "main.h"
#include "error.h"
#include "agb.h"
#include "tables.h"

enum class MidiEventCategory {
    Control,
    SysEx,
    Meta,
    Invalid,
};

MidiFormat g_midiFormat;
std::int_fast32_t g_midiTrackCount;
std::int16_t g_midiTimeDiv;

int g_midiChan;
std::int32_t g_initialWait;

void Seek(long offset) {
    if (std::fseek(g_inputFile, offset, SEEK_SET) != 0)
        RaiseError("failed to seek to %x", offset);
}

void Skip(long offset) {
    if (std::fseek(g_inputFile, offset, SEEK_CUR) != 0)
        RaiseError("failed to skip %l bytes", offset);
}

std::string ReadSignature() {
    char signature[4];

    if (std::fread(signature, 4, 1, g_inputFile) != 1)
        RaiseError("failed to read signature");

    return std::string(signature, 4);
}

std::uint32_t ReadInt8() {
    int c = std::fgetc(g_inputFile);

    if (c < 0)
        RaiseError("unexpected EOF");

    return c;
}

std::uint32_t ReadInt16() {
    std::uint32_t val = 0;
    val |= ReadInt8() << 8;
    val |= ReadInt8();
    return val;
}

std::uint32_t ReadInt24() {
    std::uint32_t val = 0;
    val |= ReadInt8() << 16;
    val |= ReadInt8() << 8;
    val |= ReadInt8();
    return val;
}

std::uint32_t ReadInt32() {
    std::uint32_t val = 0;
    val |= ReadInt8() << 24;
    val |= ReadInt8() << 16;
    val |= ReadInt8() << 8;
    val |= ReadInt8();
    return val;
}

std::uint32_t ReadVLQ() {
    std::uint32_t val = 0;
    std::uint32_t c;

    do {
        c = ReadInt8();
        val <<= 7;
        val |= (c & 0x7F);
    } while (c & 0x80);

    return val;
}

size_t lendian_fwrite(const void* ptr, size_t size, size_t nmemb, FILE* stream) {
    if (size != 4) {
        /* Warn and exit */
    }

    int x = 1;

    if (*((char*)&x) == 1) {
        /* Little endian machine, use fwrite directly */
        return fwrite(ptr, size, nmemb, stream);
    } else {
        /* Big endian machine, pre-process first */

        unsigned char* buffer = (unsigned char*)ptr;

        for (size_t i = 0; i < nmemb; i++) {
            unsigned char a = buffer[4 * i];
            unsigned char b = buffer[4 * i + 1];

            buffer[4 * i] = buffer[4 * i + 3];
            buffer[4 * i + 1] = buffer[4 * i + 2];
            buffer[4 * i + 2] = b;
            buffer[4 * i + 3] = a;
        }

        return fwrite(ptr, size, nmemb, stream);
    }
}
void WriteInt32(int value) {
    union {
        char bytes[4];
        long ul;
    } data;
    data.ul = value;
    fwrite(&data.bytes[3], 1, 1, g_outputFile);
    fwrite(&data.bytes[2], 1, 1, g_outputFile);
    fwrite(&data.bytes[1], 1, 1, g_outputFile);
    fwrite(&data.bytes[0], 1, 1, g_outputFile);
}
void WriteInt16(short value) {
    union {
        char bytes[2];
        short us;
    } data;
    data.us = value;
    fwrite(&data.bytes[1], 1, 1, g_outputFile);
    fwrite(&data.bytes[0], 1, 1, g_outputFile);
}
void WriteInt8(char value) {
    fwrite(&value, 1, 1, g_outputFile);
}

void writeDeltaTime(std::vector<char>& data, long value) {
    char bytes[4] = { 0 };

    if ((unsigned long)value >= (1 << 28)) {
        // TODO error number too large
        value = 0x0FFFffff;
    }

    bytes[0] = (char)(((long)value >> 21) & 0x7f); // most significant 7 bits
    bytes[1] = (char)(((long)value >> 14) & 0x7f);
    bytes[2] = (char)(((long)value >> 7) & 0x7f);
    bytes[3] = (char)(((long)value) & 0x7f); // least significant 7 bits

    int start = 0;
    while ((start < 4) && (bytes[start] == 0))
        start++;

    for (int i = start; i < 3; i++) {
        bytes[i] = bytes[i] | 0x80;
        data.push_back(bytes[i]);
    }
    data.push_back(bytes[3]);
}

void writeInt32(std::vector<char>& data, int value) {
    union {
        char bytes[4];
        int ul;
    } onion;
    onion.ul = value;
    data.push_back(onion.bytes[3]);
    data.push_back(onion.bytes[2]);
    data.push_back(onion.bytes[1]);
    data.push_back(onion.bytes[0]);
}

void writeInt24(std::vector<char>& data, int value) {
    union {
        char bytes[4];
        int ul;
    } onion;
    onion.ul = value;
    data.push_back(onion.bytes[2]);
    data.push_back(onion.bytes[1]);
    data.push_back(onion.bytes[0]);
}

void WriteTrack(int channelId, const std::vector<Event>& events) {
    std::vector<char> data; // TODO reuse same data vector
    data.reserve(0x1000);
    data.clear();

    // int previousTime = 0;

    int currentTime = 0;

    bool DEBUG = g_verbose && false;

    for (const auto& event : events) {
        if (DEBUG) {
            std::printf("TIME: %d\n", event.time);
        }
        writeDeltaTime(data, event.time - currentTime);
        currentTime = event.time;
        switch (event.type) {
            case EventType::InstrumentChange:
                if (DEBUG) {
                    std::printf("InstrumentChange\n");
                }
                data.push_back(0xC0 + channelId); // type
                data.push_back(event.param1);     // instrument
                break;
            case EventType::Controller:
                if (DEBUG) {
                    std::printf("Controller\n");
                }
                data.push_back(0xB0 + channelId); // type
                data.push_back(event.param1);     // controller index
                data.push_back(event.param2);     // value
                break;
            case EventType::Note:
                if (DEBUG) {
                    std::printf("Note\n");
                }
                data.push_back(0x90 + channelId); // type
                data.push_back(event.note);       // note
                data.push_back(event.param1);     // velocity
                break;
            case EventType::NoteOff:
                if (DEBUG) {
                    std::printf("NoteOff\n");
                }
                // Wait and note_end
                data.push_back(0x80 + channelId); // type
                data.push_back(event.note);       // note
                data.push_back(0);                // Ignored velocity
                break;
            case EventType::TimeSignature: {
                if (DEBUG) {
                    std::printf("TimeSignature\n");
                }
                // One time meta event at the beginning of the meta track.
                data.push_back(0xff);                 // meta
                data.push_back(88);                   // TIME_SIGNATURE
                writeDeltaTime(data, 4);              // m_length
                data.push_back(event.param1);         // numerator
                data.push_back(event.param2);         // denominator
                data.push_back(24 * g_clocksPerBeat); // clocksPerClick
                data.push_back(8);                    // 32ndPer4th
                break;
            }
            case EventType::Tempo:
                if (DEBUG) {
                    std::printf("Tempo\n");
                }
                data.push_back(0xff);           // meta
                data.push_back(81);             // META_TEMPO
                writeDeltaTime(data, 3);        // only valid tempo size is 3
                writeInt24(data, event.param2); // usecPerQuarterNote
                break;
            case EventType::Extended:
                if (DEBUG) {
                    std::printf("Extended\n");
                }
                if (event.note == 0x1d) {
                    // for some reason the first one is in a meta change?
                    data.push_back(0xb0);
                }
                data.push_back(0x1e); // extended param change
                data.push_back(event.param1);

                writeDeltaTime(data, 0); // Next midi event
                data.push_back(0x1d);    // TODO why twice 0x1d? event.note);
                data.push_back(event.param2);
                break;
            case EventType::PitchBend:
                if (DEBUG) {
                    std::printf("PitchBend\n");
                }
                data.push_back(0xe0 + channelId); // petch bend
                data.push_back(0);                // lsb
                data.push_back(event.param2);
                break;
            case EventType::EndOfTrack:
                if (DEBUG) {
                    std::printf("EndOfTrack\n");
                }
                // End of track
                data.push_back(0xff);    // meta
                data.push_back(47);      // META_END_OF_TRACK
                writeDeltaTime(data, 0); // length
                break;
            case EventType::LoopBegin:
                if (DEBUG) {
                    std::printf("LoopBegin\n");
                }
                data.push_back(0xff); // meta
                data.push_back(0x6);  // META_MARKER
                data.push_back(0x1);  // length
                data.push_back(0x5B); // [
                break;
            case EventType::LoopEnd:
                if (DEBUG) {
                    std::printf("LoopEnd\n");
                }
                data.push_back(0xff); // meta
                data.push_back(0x6);  // META_MARKER
                data.push_back(0x1);  // length
                data.push_back(0x5D); // ]
                break;
        }
    }

    // MidiTrack header
    std::fprintf(g_outputFile, "MTrk");
    // length of track data
    WriteInt32(data.size());

    fwrite(data.data(), data.size(), 1, g_outputFile);
}

void WriteMidiFile() {
    // MidiHeader
    std::fprintf(g_outputFile, "MThd");
    // u32 length of header data = 6
    WriteInt32(6);
    // u16 format = 1
    WriteInt16(1);
    // u16 numberTracks
    WriteInt16(trackEvents.size() + 1);
    // u16 midiTimeDiv (24 in example)
    WriteInt16(g_midiTimeDiv);

    // Add end of track to meta events
    Event event;
    event.type = EventType::EndOfTrack;
    // EndOfTrack event needs to be at the last meta event (can be earlier than the end of other tracks) for
    // bgmVaatiMotif to work
    event.time = metaEvents.back().time;
    metaEvents.push_back(event);

    // Track for meta events
    WriteTrack(-1, metaEvents);

    int i = 0;
    for (const auto& events : trackEvents) {
        WriteTrack(i, events);
        i++;
    }
}