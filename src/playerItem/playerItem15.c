#include "entity.h"
#include "sound.h"
#include "coord.h"
#include "functions.h"

extern void (*const gUnk_08127270[])(Entity*);

extern Hitbox gUnk_08127278;
void sub_080A310C(Entity*);

void PlayerItem15(Entity* this) {
    gUnk_08127270[this->action](this);
}

void sub_080A3084(Entity* this) {
    this->spriteSettings.draw = 1;
    this->action = 0x01;
    CopyPosition(this->parent, this);
    if (this->type == 0) {
        this->field_0x3c = gPlayerEntity.field_0x3c + 0x01;
        this->hitbox = &gUnk_08127278;
        this->speed = 0x400;
        if (this->collisionLayer == 0x02) {
            this->type2 = 0x01;
        }
        this->direction = this->animationState << 2;
        *(u32*)&this->field_0x6c = 0x3c;
        sub_0801766C(this);
        LinearMoveUpdate(this);
        SoundReq(SFX_ITEM_SWORD_BEAM);
    } else {
        this->actionDelay = 0x06;
    }
    InitializeAnimation(this, 0x18);
    sub_080A310C(this);
}

ASM_FUNC("asm/non_matching/playerItem15/sub_080A310C.inc", void sub_080A310C(Entity* this))
