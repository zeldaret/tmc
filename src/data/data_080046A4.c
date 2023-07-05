#include "asm.h"
#include "player.h"

const KeyValuePair gUnk_080046A4[] = {
    { 63, 1 },     { 80, 2 },   { 69, 8 },   { 70, 9 },   { 71, 10 },  { 72, 11 },  { 73, 12 },  { 74, 13 },
    { 75, 14 },    { 76, 15 },  { 77, 16 },  { 65, 1 },   { 82, 2 },   { 68, 17 },  { 79, 18 },  { 372, 19 },
    { 117, 23 },   { 67, 3 },   { 66, 4 },   { 64, 5 },   { 81, 6 },   { 85, 20 },  { 92, 21 },  { 87, 20 },
    { 94, 21 },    { 86, 28 },  { 93, 29 },  { 88, 30 },  { 89, 31 },  { 90, 32 },  { 91, 22 },  { 9, 36 },
    { 12, 37 },    { 13, 36 },  { 15, 38 },  { 14, 39 },  { 16, 36 },  { 17, 36 },  { 18, 36 },  { 20, 37 },
    { 21, 36 },    { 23, 38 },  { 22, 39 },  { 24, 36 },  { 25, 36 },  { 10, 40 },  { 39, 40 },  { 28, 36 },
    { 42, 36 },    { 29, 36 },  { 43, 36 },  { 97, 44 },  { 101, 45 }, { 353, 47 }, { 355, 48 }, { 16384, 25 },
    { 16480, 26 }, { 374, 49 }, { 843, 33 }, { 844, 34 }, { 375, 50 }, { 871, 51 }, { 872, 52 }, { 16490, 24 },
    { 105, 41 },   { 106, 42 }, { 111, 43 }, { 109, 53 }, { 110, 54 }, { 78, 7 },   { 389, 36 }, { 390, 36 },
    { 391, 36 },   { 392, 36 }, { 393, 36 }, { 394, 36 }, { 398, 36 }, { 399, 36 }, { 403, 36 }, { 404, 36 },
    { 405, 36 },   { 406, 36 }, { 407, 36 }, { 408, 36 },
};
const u16 gUnk_080046A4End = 0;

const u16 gUnk_080047F6[] = {
    0,     255,  65280, 0,     65247, 783,   0,     28,    65247, 783,   0,     42,    65247, 783,   0,     121,
    65247, 783,  0,     119,   65247, 783,   0,     53,    65247, 783,   0,     53,    64735, 783,   0,     39,
    65247, 783,  0,     418,   65247, 783,   0,     419,   65247, 783,   0,     420,   65247, 783,   0,     421,
    65247, 783,  0,     422,   65247, 783,   0,     423,   65247, 783,   0,     424,   65247, 783,   0,     425,
    65247, 783,  0,     426,   65247, 783,   0,     360,   65247, 783,   0,     40,    39563, 15119, 65280, 31,
    59074, 1039, 256,   29,    59074, 1039,  256,   43,    59074, 1039,  256,   789,   34816, 298,   65280, 118,
    34816, 298,  65280, 16491, 33666, 255,   65280, 16389, 33666, 255,   65280, 16499, 33439, 4879,  65280, 53,
    59074, 1039, 256,   53,    59074, 1039,  256,   53,    59074, 1039,  256,   119,   59074, 1039,  256,   121,
    59074, 1039, 256,   360,   49323, 5647,  1024,  38,    49323, 5647,  1024,  52,    32768, 255,   65280, 804,
    40960, 255,  65280, 26,    40960, 255,   65280, 53,    40960, 255,   65280, 119,   40960, 255,   65280, 121,
    40960, 255,  65280, 27,    49192, 801,   768,   38,    49192, 801,   768,   789,   49192, 801,   768,   29,
    49192, 33,   768,   38,    49192, 33,    768,   121,   32832, 783,   0,     113,   43019, 5903,  65280, 29,
    43019, 5903, 65280, 53,    33859, 11535, 512,   30,    32776, 1039,  65280, 29,    32776, 1039,  65280, 38,
    32776, 1039, 65280, 52,    32779, 21263, 65280, 19,    32779, 21263, 65280, 789,   0,     30,    2,     18,
    64,    8,    0,     1,     128,   10,    0,     1,     128,   8,     384,   10,    128,   30,    1,     49152
};

#define PLAYER_MACRO_JUMPTO 0x4000 // Jump
#define PLAYER_MACRO_IGNORE 0x8000 // Do not set playerMacroWaiting and playerMacroHeldKeys?
#define PLAYER_MACRO_END 0xC000    // End // 49152

// Link tries out the shield.
const PlayerMacroEntry gPlayerMacroTryOutShield[] = {
    { 4, DPAD_LEFT }, { 1, DPAD_DOWN },  { 60, A_BUTTON }, { 1, DPAD_LEFT },
    { 60, A_BUTTON }, { 1, DPAD_RIGHT }, { 60, A_BUTTON }, { PLAYER_MACRO_JUMPTO, -4 },
};

// Link holding his shield when the monsters escape or vaati attacks zelda.
const PlayerMacroEntry gPlayerMacroProtectWithShield[] = {
    { 0, A_BUTTON },
    { PLAYER_MACRO_JUMPTO, -4 },
};

const PlayerMacroEntry gPlayerMacroSanctuary[] = {
    { 1, DPAD_UP },
    { 120, B_BUTTON },
    { 60, 0 },
};
const u16 gPlayerMacroSanctuaryEnd = PLAYER_MACRO_END;

const PlayerMacroEntry gPlayerMacroBladeBrothers0[] = {
    { 120, B_BUTTON },
    { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers0End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers1[] = {
    { 60, DPAD_RIGHT },
    { 4, B_BUTTON },
    { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers1End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers2[] = {
    { 4, DPAD_LEFT },
    { 120, A_BUTTON },
    { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers2End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers3[] = {
    { 1, DPAD_DOWN }, { 4, A_BUTTON }, { 10, 0 }, { 10, B_BUTTON }, { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers3End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers4[] = {
    { 4, DPAD_RIGHT }, { 8, R_BUTTON + DPAD_RIGHT }, { 30, 0 }, { 1, DPAD_LEFT }, { 30, 0 },
    { 4, DPAD_LEFT },  { 4, R_BUTTON + DPAD_LEFT },  { 20, 0 }, { 6, B_BUTTON },  { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers4End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers5[] = {
    { 1, DPAD_LEFT }, { 30, 0 }, { 4, B_BUTTON }, { 60, 0 }, { 4, B_BUTTON }, { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers5End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers6[] = {
    { 1, DPAD_LEFT }, { 30, 0 }, { 4, B_BUTTON }, { 60, 0 }, { 4, B_BUTTON }, { 60, 0 },
};
const u16 gPlayerMacroBladeBrothers6End = PLAYER_MACRO_END;
const PlayerMacroEntry gPlayerMacroBladeBrothers7[] = {
    { 1, DPAD_LEFT }, { 120, B_BUTTON }, { 10, 0 }, { 4, B_BUTTON }, { 4, 0 },  { 4, B_BUTTON },
    { 4, 0 },         { 4, B_BUTTON },   { 4, 0 },  { 4, B_BUTTON }, { 4, 0 },  { 4, B_BUTTON },
    { 4, 0 },         { 4, B_BUTTON },   { 4, 0 },  { 4, B_BUTTON }, { 30, 0 },
};
const u16 gPlayerMacroBladeBrothers7End = PLAYER_MACRO_END;
