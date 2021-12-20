#include "npc.h"

void NPC4F(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        InitAnimationForceUpdate(this, this->type);
    }
    UpdateAnimationSingleFrame(this);
    if (this->frameDuration == 0xfe) {
        this->frameDuration = (Random() & 0x1f) + 0x14;
    }
}
