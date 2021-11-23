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
#include <cstdarg>
#include <cstring>
#include <vector>
#include <cmath>
#include <iostream>
#include "agb.h"
#include "main.h"
#include "midi.h"
#include "tables.h"
//////// ------

// TODO move functions to correct files
std::uint32_t ReadInt8();
std::uint32_t lReadInt32() {
    std::uint32_t val = 0;
    val |= ReadInt8();
    val |= ReadInt8() << 8;
    val |= ReadInt8() << 16;
    val |= ReadInt8() << 24;
    return val;
}
void Seek(long offset);

std::vector<std::uint32_t> trackPointers;

const unsigned int REDUCE_POINTERS = 0x8000000;

extern int g_fileStartOffset; // TODO move to header

void ReadAgbSong() {
    Seek(g_fileStartOffset);

    int numTracks = ReadInt8();
    int numBlocks = ReadInt8();
    int priority = ReadInt8();
    int reverb = ReadInt8();
    int sound = lReadInt32();
    for (int i = 0; i < numTracks; i++) {
        trackPointers.push_back(lReadInt32());
        if (g_verbose)
            std::printf("Track: %X\n", trackPointers.back());
    }
    if (g_verbose) {
        std::printf("numTracks %d\n", numTracks);
        std::printf("numBlocks %d\n", numBlocks);
        std::printf("priority %d\n", priority);
        std::printf("reverb %d\n", reverb);
        std::printf("sound %X\n", sound);
    }
}
const int FINE = 0xb1;
const int GOTO = 0xb2;
const int PATT = 0xb3;
const int PEND = 0xb4;
const int TEMPO = 0xbb;
const int KEYSH = 0xBC;
const int VOICE = 0xbd;
const int VOL = 0xbe;
const int PAN = 0xbf;
const int BEND = 0xc0;
const int BENDR = 0xc1;
const int LFOS = 0xc2;
const int MOD = 0xc4;
const int TUNE = 0xc8;
const int XCMD = 0xcd;
const int EOT = 0xce;
const int TIE = 0xcf;
const int MODT = 0xc5;
const int LFODL = 0xc3;

std::vector<std::vector<Event>> trackEvents;
std::vector<Event> metaEvents;

int convertTime(int time) {
    return ((float)time * g_midiTimeDiv) / (24 * g_clocksPerBeat);
}

extern void Skip(long offset);

std::uint32_t GetCurrentPtr() {
    return std::ftell(g_inputFile);
}

std::uint32_t PtrToFileAddr(std::uint32_t ptr) {
    return ptr - REDUCE_POINTERS;
}

void insertAtCorrectTimeFromEnd(std::vector<Event>& events, const Event& event) {
    for (auto it = events.rbegin(); it != events.rend(); it++) {
        if ((*it).time <= event.time) {
            events.insert(it.base(), event);
            return;
        }
    }
    events.insert(events.begin(), event);
}

void insertAtCorrectTimeFromStart(std::vector<Event>& events, const Event& event) {
    for (auto it = events.begin(); it != events.end(); it++) {
        if ((*it).time >= event.time) {
            events.insert(it, event);
            return;
        }
    }
    events.push_back(event);
}

void ReadAgbTracks() {
    size_t count = 0;
    int addedPadding = 8;

    // TODO configurable???
    g_midiTimeDiv = 24;

    // Add initial time signature (only one irrespective of how many tracks there are)
    // TODO TimeSignature events in original midi were converted by changing waits? (InsertTimingEvents?)
    Event event;
    event.type = EventType::TimeSignature;
    event.param1 = g_nominator;
    event.param2 = g_denominatorExp;
    metaEvents.push_back(event);

    for (uint32_t trackPointer : trackPointers) {

        std::vector<Event> events;
        count++;
        if (g_verbose)
            std::printf("\n\ntrackPointer: %X -> %X %ld\n", trackPointer, trackPointer - REDUCE_POINTERS, count);

        // Search for loop in this trac
        bool hasLoop = false;
        std::uint32_t loopAddress = 0;
        bool foundLoop = false;
        int loopStartTime = 0;

        unsigned int trackEnd =
            (trackPointers.size() > count
                 ? trackPointers[count]
                 : (g_fileStartOffset + REDUCE_POINTERS)); // Use offset to header as end for last track
        if (g_verbose)
            std::printf("End of track: %X\n", trackEnd);
        Seek(trackEnd - REDUCE_POINTERS);

        // search for a few bytes whether there is a loop end
        for (int i = 5; i < 10 + addedPadding; i++) {
            if (trackEnd - i < trackPointer) {
                // Ignore GOTOs from the previous track.
                continue;
            }
            Seek(trackEnd - REDUCE_POINTERS - i);
            if (ReadInt8() == GOTO) {
                if (g_verbose)
                    std::printf("Has loop: %d\n", i);
                loopAddress = lReadInt32() - REDUCE_POINTERS;
                if (loopAddress > 0x1000000) {
                    // The 0xB1 was probably part of the pointer or something.
                    continue;
                }
                hasLoop = true;
                if (g_verbose) {
                    std::printf("Addr: %X\n", GetCurrentPtr());
                    std::printf("Addr: %X\n", loopAddress);
                }
                break;
            }
        }
        if (g_verbose)
            std::printf("Has loop: %d, %X\n", hasLoop, loopAddress);

        // Read all track events
        Seek(trackPointer - REDUCE_POINTERS);

        int type = ReadInt8();

        // VOL?
        if (type == VOL) {
            int val = ReadInt8();

            if (g_verbose)
                std::printf("ignore vol: %X\n", val);
            type = ReadInt8();
        }

        int keyShift = 0;

        // WAIT?
        // KEYSH
        if (type == KEYSH) {
            keyShift = ReadInt8();
            if (g_verbose)
                std::printf("KEYSH: %d\n", keyShift);
            // TODO initial shift is always 0? Or is this set as the whole key shift?
        } else {
            std::printf("Error: initial type %X not implemented\n", type);
            return;
        }

        std::vector<Event> currentlyPlayingNotes;

        bool endOfTrack = false;
        int lastCommand = -1;
        int lastNote = -1;
        int lastVelocity = -1;
        int currentTime = 0;
        int loopEndTime = -1;

        int patternDuration = 0;

        type = ReadInt8();

        // Did we jump into a pattern
        bool inPattern = false;
        int returnPtr = 0;

        while (!endOfTrack) {
            if (hasLoop && !foundLoop && GetCurrentPtr() - 1 == loopAddress) {
                if (g_verbose)
                    std::printf("<<<< inserted loop start\n");
                // foundLoop = true;
                loopStartTime = currentTime;
                Event event;
                event.time = loopStartTime;
                event.type = EventType::LoopBegin;
                events.push_back(event);
            }

            if (g_verbose)
                std::printf("%X|@%d\t ", GetCurrentPtr() - 1, currentTime);
            if (type < 0x80) {
                // Repeat last command
                Skip(-1);
                type = lastCommand;
                if (g_verbose)
                    std::printf("(repeat cmd) ");
            } else {
                if (type > 0xb4 && type != 0xbb) { // type is no repeatable command (not WAIT, GOTO, TEMPO etc.)
                    lastCommand = type;
                }
            }

            switch (type) {
                case TEMPO: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("TEMPO: %d\n", val * 2);

                    Event event;
                    event.time = currentTime;
                    event.type = EventType::Tempo;
                    event.param2 = 60000000 / (val * 2);
                    metaEvents.push_back(event);

                    break;
                }
                case VOICE: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("VOICE: %d\n", val);
                    Event event;
                    event.time = currentTime;
                    event.type = EventType::InstrumentChange;
                    event.param1 = val;
                    events.push_back(event);
                    break;
                }
                case VOL: {
                    const int MVL = 128;
                    const int MXV = 0x7F;

                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("VOL: %d\n", val);
                    Event event;
                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x7;
                    event.param2 = std::ceil((float)val * MXV / MVL);
                    events.push_back(event);
                    break;
                }
                case PAN: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("PAN: %X\n", val);

                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0xa;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case LFOS: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("LFOS: %X\n", val);
                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x15;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case MOD: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("MOD: %X\n", val);

                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x1;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case PEND: {
                    if (inPattern) {
                        if (g_verbose) {
                            std::printf("P--END\n");
                            std::printf(">>>>>> Returning to %X (duration: %d)\n", returnPtr, patternDuration);
                        }
                        inPattern = false;
                        Seek(returnPtr);
                    } else {
                        if (g_verbose)
                            std::printf("PEND\n");
                    }
                    break;
                }
                case PATT: {
                    std::uint32_t val = lReadInt32();
                    if (g_verbose) {
                        std::printf("PATT\n");
                        std::printf(">>>>>> Jumping to: %X\n", val);
                    }
                    patternDuration = 0;
                    returnPtr = GetCurrentPtr();
                    inPattern = true;

                    Seek(PtrToFileAddr(val));
                    break;
                }
                case GOTO: {
                    int val = lReadInt32();
                    if (g_verbose)
                        std::printf("GOTO: %X\n", val);

                    // Already handled
                    loopEndTime = currentTime;
                    break;
                }
                case EOT: {
                    bool lastNoteUsed = false;
                    int note = ReadInt8();
                    if (note < 0x80) { // a valid note
                        type = ReadInt8();
                    } else {
                        type = note;
                        note = lastNote;
                        lastNoteUsed = true;
                    }

                    char noteBuf[16];
                    if (note >= 24)
                        std::snprintf(noteBuf, sizeof(noteBuf), g_noteTable[note % 12], note / 12 - 2);
                    else
                        std::snprintf(noteBuf, sizeof(noteBuf), g_minusNoteTable[note % 12], note / -12 + 2);

                    if (lastNoteUsed) {
                        if (g_verbose)
                            std::printf("END Tie: (%s) \n", noteBuf);
                    } else {
                        if (g_verbose)
                            std::printf("END Tie: %s\n", noteBuf);
                    }

                    Event event;
                    event.time = currentTime;
                    event.type = EventType::NoteOff;
                    event.note = note + keyShift;
                    events.push_back(event);
                    continue; // Next type was already read
                }
                case TIE: {
                    int note = ReadInt8();
                    int velocity = 0;
                    bool lastNoteUsed = false;
                    bool lastVelocityUsed = false;
                    if (note < 0x80) { // a valid note
                        lastNote = note;
                        velocity = ReadInt8();
                        if (velocity < 0x80) { // a valid velocity
                            lastVelocity = velocity;
                            type = ReadInt8();
                        } else {
                            type = velocity;
                            velocity = lastVelocity;
                            lastVelocityUsed = true;
                        }
                    } else {
                        type = note;
                        note = lastNote;
                        velocity = lastVelocity;
                        lastNoteUsed = true;
                        lastVelocityUsed = true;
                    }

                    char noteBuf[16];
                    if (note >= 24)
                        std::snprintf(noteBuf, sizeof(noteBuf), g_noteTable[note % 12], note / 12 - 2);
                    else
                        std::snprintf(noteBuf, sizeof(noteBuf), g_minusNoteTable[note % 12], note / -12 + 2);

                    if (lastNoteUsed) {
                        if (lastVelocityUsed) {
                            if (g_verbose)
                                std::printf("TIE: (%s) (v%d)\n", noteBuf, velocity);
                        } else {
                            if (g_verbose)
                                std::printf("TIE: (%s) v%d\n", noteBuf, velocity);
                        }
                    } else {
                        if (lastVelocityUsed) {
                            if (g_verbose)
                                std::printf("TIE: %s(v%d)\n", noteBuf, velocity);
                        } else {
                            if (g_verbose)
                                std::printf("TIE: %sv%d\n", noteBuf, velocity);
                        }
                    }

                    Event event;
                    event.time = currentTime;
                    event.type = EventType::Note;
                    event.note = note + keyShift;
                    event.param1 = velocity;
                    events.push_back(event);
                    continue; // Next type was already read
                }
                case BEND: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("BEND %X\n", val);
                    Event event;
                    event.time = currentTime;
                    event.type = EventType::PitchBend;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case BENDR: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("BENDR %X\n", val);

                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x14;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case TUNE: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("TUNE %X\n", val);

                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x18;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case MODT: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("MODT %X\n", val);

                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x16;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case LFODL: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("LFODL %X\n", val);

                    event.time = currentTime;
                    event.type = EventType::Controller;
                    event.param1 = 0x1A;
                    event.param2 = val;
                    events.push_back(event);
                    break;
                }
                case XCMD: {
                    // TODO does XCMD always have four params or can xIECV or xIECL stand alone?
                    int c1 = ReadInt8();
                    int v1 = ReadInt8();
                    int c2 = ReadInt8();
                    int v2 = ReadInt8();
                    if (g_verbose)
                        std::printf("XCMD %X %X %X %X\n", c1, v1, c2, v2);

                    Event event;
                    event.time = currentTime;
                    event.type = EventType::Extended;
                    event.note = 0x1d;
                    event.param1 = c1;
                    event.param2 = v1;
                    events.push_back(event);
                    event.note = 0x1f;
                    event.param1 = c2;
                    event.param2 = v2;
                    events.push_back(event);
                    break;
                }
                case KEYSH: {
                    int val = ReadInt8();
                    if (g_verbose)
                        std::printf("KEYSH: %d\n", val);
                    keyShift = val;
                    break;
                }
                case FINE: {
                    if (g_verbose)
                        std::printf("--- FINE ---\n");
                    endOfTrack = true;
                    break;
                }
                default:
                    if (type >= 0x80 && type <= 0x80 + 48) {
                        const int lenTbl[] = { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11, 12, 13, 14, 15, 16,
                                               17, 18, 19, 20, 21, 22, 23, 24, 28, 30, 32, 36, 40, 42, 44, 48, 52,
                                               54, 56, 60, 64, 66, 68, 72, 76, 78, 80, 84, 88, 90, 92, 96 };

                        int wait = lenTbl[type - 0x80];
                        if (g_verbose)
                            std::printf("WAIT: %d\n", wait);

                        patternDuration += wait;

                        if (!currentlyPlayingNotes.empty()) {
                            for (auto it = currentlyPlayingNotes.begin(); it != currentlyPlayingNotes.end();) {
                                Event& note = *it; // Modify the note in the list if we don't remove it now.
                                note.time -= wait;
                                if (note.time <= 0) {
                                    note.time += currentTime + wait;
                                    insertAtCorrectTimeFromEnd(events, note);
                                    it = currentlyPlayingNotes.erase(it);
                                } else {
                                    ++it;
                                }
                            }
                        }
                        currentTime += wait;
                    } else if (type >= 0xD0 && type <= 0xD0 + 47) {
                        // Handle note with a fixed length
                        int noteType = type;
                        int note = ReadInt8();
                        int velocity = 0;
                        int length = 0;
                        bool usedLastNote = false;
                        bool usedLastVelocity = false;
                        if (note < 0x80) { // a valid note
                            lastNote = note;
                            velocity = ReadInt8();
                            if (velocity < 0x80) { // a valid velocity
                                lastVelocity = velocity;
                                length = ReadInt8();
                                if (length < 0x80) { // a valid length
                                    type = ReadInt8();
                                } else {
                                    type = length;
                                    length = 0;
                                }
                            } else {
                                type = velocity;
                                velocity = lastVelocity;
                                usedLastVelocity = true;
                            }
                        } else {
                            type = note;
                            note = lastNote;
                            velocity = lastVelocity;
                            usedLastNote = true;
                            usedLastVelocity = true;
                        }

                        Event event;
                        event.time = currentTime;
                        event.type = EventType::Note;
                        event.note = note + keyShift;
                        event.param1 = velocity;
                        // Length table for notes and rests // TODO move to tables.cpp
                        const int lenTbl[] = { 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11, 12, 13, 14, 15, 16,
                                               17, 18, 19, 20, 21, 22, 23, 24, 28, 30, 32, 36, 40, 42, 44, 48, 52,
                                               54, 56, 60, 64, 66, 68, 72, 76, 78, 80, 84, 88, 90, 92, 96 };

                        int wait = lenTbl[noteType - 0xd0 + 1] + length;

                        // DEBUG
                        if (g_verbose) {
                            char noteBuf[16];

                            if (note >= 24)
                                std::snprintf(noteBuf, sizeof(noteBuf), g_noteTable[note % 12], note / 12 - 2);
                            else
                                std::snprintf(noteBuf, sizeof(noteBuf), g_minusNoteTable[note % 12], note / -12 + 2);

                            std::printf("NOTE: %d ", wait - length);
                            if (usedLastNote) {
                                std::printf("(%s) ", noteBuf);
                            } else {
                                std::printf("%s", noteBuf);
                            }
                            if (usedLastVelocity) {
                                std::printf("(v%03u)", velocity);
                            } else {
                                std::printf("v%03u", velocity);
                            }

                            if (length != 0) {
                                std::printf(" +l:%d", length);
                            }
                            std::printf("\n");
                        }
                        events.push_back(event);

                        event.type = EventType::NoteOff;
                        event.time = wait;
                        currentlyPlayingNotes.push_back(event);
                        continue; // Next type was already read
                    } else {
                        std::printf("ERROR: Unhandled type %X\n", type);
                        return;
                    }
                    break;
            }

            // TODO notes, waits,
            type = ReadInt8();
        }

        if (currentlyPlayingNotes.size() > 0) {
            if (g_verbose) {
                std::printf("Need to finish %lu notes.\n", currentlyPlayingNotes.size());
                std::cin.ignore();
            }

            int latestTime = currentTime;
            for (auto& note : currentlyPlayingNotes) {
                note.time += currentTime;
                if (note.time > latestTime) {
                    latestTime = note.time;
                }
                insertAtCorrectTimeFromEnd(events, note);
            }
            if (g_verbose)
                std::printf("Found notes from %d up to %d.\n", currentTime, latestTime);
            currentTime = latestTime;
            if (g_verbose)
                std::cin.ignore();
        }

        if (hasLoop) {
            Event event;
            event.type = EventType::LoopEnd;
            event.time = loopEndTime;
            insertAtCorrectTimeFromEnd(events, event);
        }

        Event event;
        event.type = EventType::EndOfTrack;
        event.time = currentTime;
        events.push_back(event);
        if (g_verbose)
            std::printf("END OF TRACK: %d\n", currentTime);

        trackEvents.push_back(events);
    }

    // Insert manual time signature change event
    for (const auto& change : timeSignatureChanges) {
        bool inserted = false;
        event.type = EventType::TimeSignature;
        event.time = change.time;
        event.param1 = change.nominator;
        event.param2 = change.denominator;

        for (size_t i = 0; i < metaEvents.size() - 1; i++) {
            int prevTime = metaEvents[i].time;
            int nextTime = metaEvents[i + 1].time;
            if (event.time > prevTime && event.time <= nextTime) {
                metaEvents.insert(metaEvents.begin() + i + 1, event);
                inserted = true;
                break;
            }
        }
        if (!inserted) {
            metaEvents.push_back(event);
        }
    }
}
