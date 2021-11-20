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

#ifndef MIDI_H
#define MIDI_H

#include <cstdint>

enum class MidiFormat { SingleTrack, MultiTrack };

enum class EventType {
    EndOfTie = 0x01,
    Label = 0x11,
    LoopEnd = 0x12,
    LoopEndBegin = 0x13,
    LoopBegin = 0x14,
    OriginalTimeSignature = 0x15,
    WholeNoteMark = 0x16,
    Pattern = 0x17,
    TimeSignature = 0x18,
    Tempo = 0x19,
    InstrumentChange = 0x21,
    Controller = 0x22,
    PitchBend = 0x23,
    KeyShift = 0x31,
    Note = 0x40,
    TimeSplit = 0xFE,
    EndOfTrack = 0xFF,
    Extended,
    Wait,
    NoteOff,
};

struct Event {
    std::int32_t time = 0;
    EventType type;
    std::uint8_t note = 0;
    std::uint8_t param1 = 0;
    std::int32_t param2 = 0;

    bool operator==(const Event& other) {
        return (time == other.time && type == other.type && note == other.note && param1 == other.param1 &&
                param2 == other.param2);
    }

    bool operator!=(const Event& other) {
        return !(*this == other);
    }
};

void WriteMidiFile();

extern int g_midiChan;
extern std::int32_t g_initialWait;

inline bool IsPatternBoundary(EventType type) {
    return type == EventType::EndOfTrack || (int)type <= 0x17;
}
extern std::int16_t g_midiTimeDiv;

#endif // MIDI_H
