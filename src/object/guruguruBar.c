/**
 * @file guruguruBar.c
 * @ingroup Objects
 *
 * @brief Guruguru Bar object
 */
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "projectile.h"
#include "room.h"

typedef struct {
    Entity base;
    u8 filler[0xC];
    u16 unk74;
    u16 unk76;
    u8 filler2[0x6];
    u8 unk7e;
} GuruguruBarEntity;

void GuruguruBar_Init(GuruguruBarEntity*);
void GuruguruBar_Action1(GuruguruBarEntity*);

void GuruguruBar(Entity* this) {
    static void (*const GuruguruBar_Actions[])(GuruguruBarEntity*) = {
        GuruguruBar_Init,
        GuruguruBar_Action1,
    };

    GuruguruBar_Actions[this->action]((GuruguruBarEntity*)this);
}

void GuruguruBar_Init(GuruguruBarEntity* this) {
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
        SetEntityPriority(super, 0);
        if (super->type != 0) {
            super->child = (Entity*)GetCurrentRoomProperty(super->type);
            UpdateRailMovement(super, (u16**)&super->child, &this->unk74);
        }
    }
}

void GuruguruBar_Action1(GuruguruBarEntity* this) {
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
