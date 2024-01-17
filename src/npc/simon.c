/**
 * @file simon.c
 * @ingroup NPCs
 *
 * @brief Simon NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "object.h"
#include "room.h"
#include "screen.h"
#include "screenTransitions.h"
#include "script.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    u8 filler[4];
    u32 unk;
} struct_0806C2A0;

void Simon(Entity* this) {
    if (this->action == 0) {
        this->action++;
        InitScriptForNPC(this);
    } else {
        ExecuteScriptAndHandleAnimation(this, NULL);
    }
}

void sub_0806C224(void) {
    DoExitTransition(&gUnk_0813AD60);
    gRoomTransition.type = TRANSITION_FADE_BLACK_FAST;
}

void Simon_CreateChest(Entity* this) {
    CreateObjectWithParent(this, SPECIAL_FX, FX_BIG_EXPLOSION2, 0);
    SetTileType(TILE_TYPE_115, COORD_TO_TILE(this), this->collisionLayer);
    SoundReq(SFX_SECRET_BIG);
}

void sub_0806C280(void) {
    SetGlobalFlag(MAROYA_WAKEUP);
    DoExitTransition(&gUnk_0813AD74);
    gRoomTransition.type = TRANSITION_FADE_BLACK_FAST;
}

void sub_0806C2A0(Entity* this, ScriptExecutionContext* context) {
    switch (context->intVariable) {
        case 0:
            SetFade(FADE_IN_OUT | FADE_INSTANT | FADE_MOSAIC, 4);
            break;
        case 1:
            SetFade(FADE_INSTANT | FADE_MOSAIC, 4);
            break;
    }
}
