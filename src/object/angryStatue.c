/**
 * @file angryStatue.c
 * @ingroup Objects
 *
 * @brief Angry Statue object
 */
#include "asm.h"
#include "entity.h"
#include "hitbox.h"
#include "physics.h"
#include "projectile.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

void AngryStatue_Init(Entity*);
void AngryStatue_Action1(Entity*);
void AngryStatue_Action2(Entity*);
void AngryStatue_Action3(Entity*);
void AngryStatue_Action4(Entity*);

void AngryStatue(Entity* this) {
    static void (*const AngryStatue_Actions[])(Entity*) = {
        AngryStatue_Init, AngryStatue_Action1, AngryStatue_Action2, AngryStatue_Action3, AngryStatue_Action4,
    };

    AngryStatue_Actions[this->action](this);
}

void AngryStatue_Init(Entity* this) {
    this->action = 1;
    this->hitbox = (Hitbox*)&gUnk_080FD178;
    SetTile(SPECIAL_TILE_34, COORD_TO_TILE(this), this->collisionLayer);
    InitializeAnimation(this, this->type);
}

void AngryStatue_Action1(Entity* this) {
    if (this->parent->subtimer == 1) {
        this->action = 2;
        InitializeAnimation(this, this->type + 4);
    }
}

void AngryStatue_Action2(Entity* this) {
    static const s8 gUnk_08124684[] = {
        0, 12, 12, 2, 0, 12, -12, 2,
    };

    Entity* pEVar2;
    const s8* ptr;

    GetNextFrame(this);
    if (this->frame & 1) {
        this->frame &= 0xfe;
        pEVar2 = CreateProjectile(CANNONBALL_PROJECTILE);
        if (pEVar2 != NULL) {
            pEVar2->type = this->type;
            pEVar2->parent = this->parent;
            ptr = &gUnk_08124684[this->type * 2];
            PositionRelative(this, pEVar2, ptr[0] << 0x10, ptr[1] << 0x10);
            EnqueueSFX(SFX_EC);
        }

    } else if ((this->frame & ANIM_DONE) != 0) {
        this->action = 1;
        InitializeAnimation(this, this->type);
    }
}

void AngryStatue_Action3(Entity* this) {
    if (--this->timer == 0) {
        this->action = 4;
        this->timer = 15;
        InitializeAnimation(this, this->type);
    } else {
        this->parent->z.BYTES.byte2 |= 1 << this->type2;
    }
}

void AngryStatue_Action4(Entity* this) {
    this->spriteSettings.draw ^= 1;
    if (--this->timer == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
    }
}
