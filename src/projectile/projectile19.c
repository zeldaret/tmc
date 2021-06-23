#include "entity.h"
#include "functions.h"

extern void (*const gUnk_0812A494[])(Entity*);

extern u8 gEntCount;

bool32 sub_080AB12C(Entity* this);

void Projectile19(Entity* this) {
    gUnk_0812A494[this->type](this);
}

void sub_080AB074(Entity* this) {
    Entity* parent;
    const s16* tmp;
    u32 factor;

    parent = this->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        if (sub_080AB12C(this) == FALSE) {
            return;
        }
        this->action = 1;
        this->frameIndex = 0;
        this->spritePriority.b0 = 3;
    }
    sub_0806FA90(this->parent, this, 0, 0xfffffff6 + -(s8)parent->field_0x7c.BYTES.byte3);

    this->x.WORD += gSineTable[parent->field_0x7c.BYTES.byte0] * (parent->field_0x7c.BYTES.byte2 << 8);
    this->y.WORD -= gSineTable[parent->field_0x7c.BYTES.byte0 + 0x40] * (parent->field_0x7c.BYTES.byte2 << 8);

    this->height.HALF.HI += (s8)parent->field_0x7c.BYTES.byte3;
    if (parent->field_0x7a.HALF.HI != 0) {
        parent = sub_080A7EE0(0x19);
        if (parent != NULL) {
            parent->type = 4;
            CopyPositionAndSpriteOffset(this, parent);
        }
    }
}

bool32 sub_080AB12C(Entity* this) {
    Entity* entity;

    if (gEntCount > 0x44) {
        return FALSE;
    }
    entity = sub_080A7EE0(0x19);
    entity->type = 1;
    entity->parent = this;
    entity = sub_080A7EE0(0x19);
    entity->type = 2;
    entity->parent = this;
    entity = sub_080A7EE0(0x19);
    entity->type = 3;
    entity->parent = this;
    return TRUE;
}

ASM_FUNC("asm/non_matching/projectile19/sub_080AB170.inc", void sub_080AB170(Entity* this))

void sub_080AB26C(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->actionDelay = 5;
        this->frameIndex = 0;
#ifndef EU
        this->spritePriority.b1 = 0;
#endif
    }
    if (--this->actionDelay == 0) {
        DeleteThisEntity();
    } else {
        this->frameIndex += 1;
    }
}
