/**
 * @file npc4F.c
 * @ingroup NPCs
 *
 * @brief NPC 4F
 */
#include "npc.h"

void NPC4F(Entity* this) {
    if (this->action == 0) {
        this->action++;
        InitAnimationForceUpdate(this, this->type);
    }
    UpdateAnimationSingleFrame(this);
    if (this->frameDuration == 0xfe) {
        this->frameDuration = (Random() & 0x1f) + 0x14;
    }
}
