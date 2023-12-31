/**
 * @file carlov.c
 * @ingroup NPCs
 *
 * @brief Carlov NPC
 */
#include "entity.h"
#include "npc.h"
#include "room.h"
#include "sound.h"

void Carlov(Entity* this) {
    if (this->action == 0) {
        this->action++;
        InitScriptForNPC(this);
    } else {
        ExecuteScriptAndHandleAnimation(this, NULL);
    }
    if ((this->frame & 0x10) != 0) {
        this->frame &= ~0x10;
        EnqueueSFX(SFX_PLACE_OBJ);
        InitScreenShake(16, 0);
    }
    if ((this->frame & 0x20) != 0) {
        this->frame &= ~0x20;
        EnqueueSFX(SFX_PLY_JUMP);
    }
}
