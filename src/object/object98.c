#define NENT_DEPRECATED
#include "entity.h"
#include "projectile.h"
#include "room.h"
#include "functions.h"
#include "object.h"

typedef struct {
    Entity base;
    u8 filler[0xC];
    u16 unk74;
    u16 unk76;
    u8 filler2[0x6];
    u8 unk7e;
} Object98Entity;

void sub_0809E360(Object98Entity*);
void sub_0809E3E4(Object98Entity*);

void Object98(Entity* this) {
    static void (*const actionFuncs[])(Object98Entity*) = {
        sub_0809E360,
        sub_0809E3E4,
    };

    actionFuncs[this->action]((Object98Entity*)this);
}

void sub_0809E360(Object98Entity* this) {
    u32 bVar1;
    Entity* projEnt;
    u32 index;

    if (8 < super->timer) {
        super->timer = 8;
    }

    if (0x48 - super->timer > gEntCount) {
        for (index = 0; index < super->timer; index++) {
            projEnt = CreateProjectile(GURUGURU_BAR_PROJECTILE);
            projEnt->timer = 14 + 12 * index;
            projEnt->parent = super;
        }

        super->action = 1;
        bVar1 = this->unk7e;
        this->unk76 = bVar1 << 8;
        super->animationState = bVar1 << 6;
        SetDefaultPriority(super, 0);
        if (super->type != 0) {
            super->child = (Entity*)GetCurrentRoomProperty(super->type);
            UpdateRailMovement(super, (u16**)&super->child, &this->unk74);
        }
    }
}

void sub_0809E3E4(Object98Entity* this) {
    this->unk76 += super->type2;
    super->animationState = this->unk76 >> 2;
    if (super->type != 0) {
        if ((super->direction & 0x80) == 0) {
            LinearMoveUpdate(super);
        }

        if (--this->unk74 == 0) {
            UpdateRailMovement(super, (u16**)&super->child, &this->unk74);
        }
    }
}
