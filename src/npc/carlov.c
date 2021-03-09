#include "global.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "flags.h"
#include "sprite.h"
#include "textbox.h"
#include "npc.h"
#include "structures.h"
#include "functions.h"

extern void sub_0807DD94(Entity*, u32);

void Carlov(Entity* this) {
    if (this->action == 0) {
        this->action++;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
    if ((this->frames.all & 0x10) != 0) {
        this->frames.all = this->frames.all & 0xef;
        EnqueueSFX(0x104);
        sub_08080964(0x10, 0);
    }
    if ((this->frames.all & 0x20) != 0) {
        this->frames.all = this->frames.all & 0xdf;
        EnqueueSFX(0x7c);
    }
}
