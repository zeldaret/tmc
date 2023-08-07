#include "common.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "structures.h"

const u8 gUnk_08109202[] = {
    255, 8, 24, 255, 0, 4, 28, 255, 16, 12, 20, 255, 255, 255, 255, 255, 0, 0,
};

u32 ConvInputToState(u32 keys);

bool32 sub_0805EC04(Entity* this) {
    u32 i = 1;
    OAMControls* temp = &gOAMControls;
    u32 j = 1;
    for (; i < 0x20; i++) {
        if (temp->unk[i].unk6 == 0) {
            temp->unk[i].unk6 = j;
            this->spriteOrientation.b1 = i;
            this->spriteRendering.b0 |= j;
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0805EC60(Entity* this) {
    u8 temp;
    OAMControls* temp2;

    if (this->spriteRendering.b0 != 0) {
        this->spriteRendering.b0 = 0;
        temp = this->spriteOrientation.b1;
        this->spriteOrientation.b1 = 0;
        temp2 = &gOAMControls;
        temp2->unk[temp].unk6 = 0;
    }
}

bool32 SetAffineInfo(Entity* ent, u32 param_2, u32 param_3, u32 param_4) {
    u16* temp;

    if (ent->spriteOrientation.b1 == 0 && !sub_0805EC04(ent)) {
        return 0;
    } else {
        gOAMControls.unk[0].unk7 = 1;
        temp = (u16*)&gOAMControls.unk[ent->spriteOrientation.b1].unk0;
        temp[0] = param_2;
        temp[1] = param_3;
        temp[2] = param_4;
        return 1;
    }
}

void sub_0805ECEC(int param_1, u32 param_2, u32 param_3, u32 param_4) {
    u16* temp;

    gOAMControls.unk[0].unk7 = 1;

    temp = (u16*)&gOAMControls.unk[param_1].unk0;
    temp[0] = param_2;
    temp[1] = param_3;
    temp[2] = param_4;
}

void InitPlayerMacro(PlayerMacroEntry* playerMacro) {
    gPlayerState.playerInput.playerMacro = playerMacro;
    gPlayerState.playerInput.playerMacroWaiting = 0;
    gPlayerState.playerInput.playerMacroHeldKeys = 0;
}

void UpdatePlayerInput(void) {
    u32 flags;
    u32 state;
    u32 keys;
    u32 prevState;
    PlayerInput* playerInput;
    PlayerMacroEntry* playerMacro;
    u32 zero;

    if (gPlayerState.playerInput.playerMacro != NULL) {
        // Player is controlled by macro.
        playerInput = &gPlayerState.playerInput;
        playerMacro = playerInput->playerMacro;
        if (playerInput->playerMacroWaiting == 0) { // Execute next macro entry.
            zero = 0;
            goto code_2;
        code_0:
            if (flags != 2) {
                playerInput->playerMacroWaiting = playerMacro->flags;
                playerInput->playerMacroHeldKeys = playerMacro->keys;
            }
            playerMacro++;
            playerInput->playerMacro = playerMacro;
            goto code_4;
        code_2:
            do {
                flags = playerMacro->flags >> 0xe;
                if (flags != 1) {
                    break;
                }
                (u8*)playerMacro += ((s16)playerMacro->keys);
            } while (TRUE);

            if (flags == 3) {
                playerInput->playerMacroWaiting = zero;
                playerInput->playerMacroHeldKeys = zero;
                playerMacro = NULL;
                playerInput->playerMacro = playerMacro;
            } else {
                goto code_0;
            }
        }
    code_4:
        playerInput->playerMacroWaiting--;
        keys = playerInput->playerMacroHeldKeys;
    } else {
        // Player has control.
        switch (gPlayerState.controlMode) {
            case CONTROL_DISABLED:
            case CONTROL_1:
            case CONTROL_2:
            case CONTROL_ENABLED:
                keys = 0;
                break;
        }
        switch (gPlayerState.controlMode) {
            case CONTROL_DISABLED:
            case CONTROL_2:
                keys = 0;
                break;
            case CONTROL_1:
                gPlayerState.controlMode = CONTROL_ENABLED;
                gPlayerState.playerInput.heldInput = ConvInputToState(gInput.heldKeys);
                // fallthrough
            case CONTROL_ENABLED:
                keys = gInput.heldKeys;
                break;
        }
    }
    state = ConvInputToState(keys);
    prevState = ~gPlayerState.playerInput.heldInput;
    gPlayerState.playerInput.heldInput = state;
    gPlayerState.playerInput.newInput = state & prevState;
    // Calculate the direction from the currently held input.
    gPlayerState.direction = gUnk_08109202[(state & PLAYER_INPUT_ANY_DIRECTION) >> 8];
}

u32 ConvInputToState(u32 keys) {
    u32 result;
    if (keys & L_BUTTON) {
        result = 0x1000;
    } else {
        result = 0;
    }
    if (keys & R_BUTTON) {
        result |= PLAYER_INPUT_20;
        result |= PLAYER_INPUT_8000;
        result |= PLAYER_INPUT_80;
    }
    if (keys & A_BUTTON) {
        result |= PLAYER_INPUT_8;
        result |= PLAYER_INPUT_40 | PLAYER_INPUT_1;
    }
    if (keys & B_BUTTON) {
        result |= PLAYER_INPUT_10;
        result |= PLAYER_INPUT_2;
    }
    if (keys & DPAD_RIGHT) {
        result |= PLAYER_INPUT_RIGHT;
    }
    if (keys & DPAD_LEFT) {
        result |= PLAYER_INPUT_LEFT;
    }
    if (keys & DPAD_UP) {
        result |= PLAYER_INPUT_UP;
    }
    if (keys & DPAD_DOWN) {
        result |= PLAYER_INPUT_DOWN;
    }
    return result;
}

void sub_0805EE88(void) {
    if ((gRoomTransition.field2f != 0) && ((gRoomTransition.frameCount & 3) == 0)) {
        LoadPaletteGroup((((u32)gRoomTransition.frameCount & 0xc) >> 2) + 0x2f);
    }
}
