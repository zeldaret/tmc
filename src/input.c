#include "global.h"
#include "entity.h"
#include "readKeyInput.h"

static void StoreKeyInput(Input*, u32);

void ReadKeyInput(void) {
    u32 keyInput = ~REG_KEYINPUT & KEYS_MASK;
    StoreKeyInput(&gUnk_03000FF0, keyInput);
}

static void StoreKeyInput(Input* input, u32 keyInput) {
    u32 heldKeys = input->heldKeys;
    u32 difference = keyInput & ~heldKeys;
    input->newKeys = difference;
    if (keyInput == heldKeys) {
        if (--input->unk7 == 0) {
            input->unk7 = 4;
            input->unk4 = keyInput;
        } else {
            input->unk4 = 0;
        }
    } else {
        input->unk7 = 0x14;
        input->unk4 = difference;
    }
    input->heldKeys = keyInput;
}
