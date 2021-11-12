#include "global.h"
#include "entity.h"
#include "room.h"
#include "npc.h"
#include "script.h"
#include "functions.h"

void Carlov(Entity* this) {
    if (this->action == 0) {
        this->action++;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
    if ((this->frame & 0x10) != 0) {
        this->frame = this->frame & 0xef;
        EnqueueSFX(0x104);
        sub_08080964(0x10, 0);
    }
    if ((this->frame & 0x20) != 0) {
        this->frame = this->frame & 0xdf;
        EnqueueSFX(0x7c);
    }
}
