/**
 * @file spinyBeetle.c
 * @ingroup Enemies
 *
 * @brief Spiny Beetle enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 tilePos;
    u16 tileIndex;
    u8 unk_78;
    u8 unk_79;
    u8 unk_7a;
    u8 unk_7b;
    s32 unk_7c;
    s32 unk_80;
    u16 unk_84;
} SpinyBeetleEntity;

void (*const SpinyBeetle_Functions[])(Entity*);
void (*const gUnk_080CEC04[])(SpinyBeetleEntity*);
const s8 gUnk_080CEC1C[];

extern void sub_08033E1C(SpinyBeetleEntity*);
extern void sub_08033D78(SpinyBeetleEntity*);
extern u32 sub_08033DF0(SpinyBeetleEntity*);
extern void SpinyBeetle_SetHitType(SpinyBeetleEntity*);
extern void EnemyFunctionHandlerAfterCollision(Entity*, EntityActionArray);
extern u32 sub_0804A024(Entity*, u32, u32);

void SpinyBeetle(Entity* this) {
    EnemyFunctionHandler(this, SpinyBeetle_Functions);
    EnemySetFXOffset(this, 0, 1, -0x10);
}

void SpinyBeetle_OnTick(SpinyBeetleEntity* this) {
    gUnk_080CEC04[super->action](this);
}

void SpinyBeetle_OnCollision(SpinyBeetleEntity* this) {
    if (super->confusedTime) {
        EnemyCreateFX(super, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(super, SpinyBeetle_Functions);
    if (super->contactFlags & CONTACT_NOW) {
        if (super->iframes > 0 && super->child) {
            sub_08033E1C(this);
        }

        if ((super->contactFlags & 0x3f) == 0x14 && super->action != 5) {
            super->action = 3;
            super->timer = 90;
            super->subtimer = 16;
            super->spritePriority.b1 = 1;
            super->direction = DirectionRoundUp(sub_08049F84(super, 1));
            sub_08033D78(this);
            InitializeAnimation(super, 3);
        }
    }
}

void SpinyBeetle_OnGrabbed(SpinyBeetleEntity* this) {
}

void SpinyBeetle_OnConfused(SpinyBeetleEntity* this) {
    GenericConfused(super);

    if (super->action != 5) {
        if (sub_08033DF0(this)) {
            sub_08033E1C(this);
        }
    }
}

void SpinyBeetle_Init(SpinyBeetleEntity* this) {
    Entity* obj;
    super->action = 1;
    super->timer = 0;
    super->subtimer = 0;
    this->unk_7c = (super->x.WORD & 0xfff00000) | 0x80000;
    this->unk_80 = (super->y.WORD & 0xfff00000) | 0x80000;
    super->x.WORD = this->unk_7c;
    super->y.WORD = this->unk_80;
    this->unk_79 = 0;
    this->unk_7a = 0;
    this->unk_78 = 0;
    this->unk_7b = 0;
    this->tilePos = COORD_TO_TILE(super);
    this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);
    SetTile(SPECIAL_TILE_34, this->tilePos, super->collisionLayer);
    obj = CreateObject(OBJECT_ON_BEETLE, super->type, 0);

    if (obj == NULL) {
        DeleteThisEntity();
    }

    CopyPosition(super, obj);
    super->child = obj;
    obj->parent = super;

    if (super->type == 1) {
        SpinyBeetle_SetHitType(this);
    }

    InitializeAnimation(super, 0);
}

void sub_08033958(SpinyBeetleEntity* this) {
    u32 direction;
    if (sub_08033DF0(this)) {
        sub_08033E1C(this);
        SetTileByIndex(this->tileIndex, this->tilePos, super->collisionLayer);
        return;
    }

    if (this->unk_7b) {
        this->unk_7b--;
        return;
    }

    super->x.WORD = this->unk_7c;
    super->y.WORD = this->unk_80;
    direction = sub_0804A024(super, 1, 0x10);
    switch (direction) {
        case 0xff:
            return;
        case 0:
            if (this->unk_78 == 0)
                return;
            if (super->y.HALF.HI - gPlayerEntity.base.y.HALF.HI > 0x30)
                return;
            break;
        case 0x10:
            if (gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI > 0x30)
                return;
            break;
        case 8:
            if (gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI > 0x30)
                return;
            break;
        case 0x18:
            if (super->x.HALF.HI - gPlayerEntity.base.x.HALF.HI > 0x30)
                return;
            break;
    }

    if (super->child && sub_0806F520(super->child)) {
        return;
    }

    if (this->unk_78 == 0) {
        this->unk_78 = 1;
    }

    super->action = 2;
    super->direction = direction;
    super->spriteSettings.draw = 1;
    COLLISION_ON(super);

    super->y.WORD = (super->y.WORD & 0xfff00000) | 0xC0000;
    SetTileByIndex(this->tileIndex, this->tilePos, super->collisionLayer);
    InitializeAnimation(super, 2);
}

void sub_08033A7C(SpinyBeetleEntity* this) {
    if (sub_08033DF0(this)) {
        sub_08033E1C(this);
        return;
    }

    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) == 0)
        return;

    super->action = 3;
    super->timer = 120;
    super->subtimer = 32;
    super->spritePriority.b1 = 1;
    InitializeAnimation(super, 3);
}

void sub_08033ACC(SpinyBeetleEntity* this) {
    if (sub_08033DF0(this)) {
        sub_08033E1C(this);
        return;
    }

    GetNextFrame(super);
    GetNextFrame(super);

    if (super->subtimer) {
        super->subtimer--;
        return;
    }

    if (--super->timer == 0) {
        super->action = 4;
        super->timer = 120;
        super->x.WORD = (super->x.WORD & 0xfff00000) | 0x80000;
        super->y.WORD = (super->y.WORD & 0xfff00000) | 0xC0000;
        this->unk_7c = super->x.WORD;
        this->unk_80 = super->y.WORD;
        InitializeAnimation(super, 4);
    } else {
        sub_08033D78(this);
    }
}

void sub_08033B44(SpinyBeetleEntity* this) {
    u32 stop;
    if (sub_08033DF0(this)) {
        sub_08033E1C(this);
        return;
    }

    GetNextFrame(super);
    if (--super->timer)
        return;

    super->action = 1;
    super->spriteSettings.draw = 0;
    COLLISION_OFF(super);

    stop = 0;
    while (!stop) {
        super->x.WORD = (super->x.WORD & 0xfff00000) | 0x80000;
        super->y.WORD = (super->y.WORD & 0xfff00000) | 0x80000;
        this->unk_7c = super->x.WORD;
        this->unk_80 = super->y.WORD;
        super->spritePriority.b1 = 0;
        this->unk_7b = 0x78;
        this->tilePos = COORD_TO_TILE(super);
        this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);

        if (this->tileIndex != SPECIAL_TILE_34) {
            stop++;
        } else {
            switch (DirectionRound(super->direction) >> 2) {
                case 0:
                    super->y.HALF.HI += 0x10;
                    break;
                case 2:
                    super->x.HALF.HI -= 0x10;
                    break;
                case 4:
                    super->y.HALF.HI -= 0x10;
                    break;
                case 6:
                    super->x.HALF.HI += 0x10;
                    break;
            }
        }
    }

    SetTile(SPECIAL_TILE_34, this->tilePos, super->collisionLayer);
    InitializeAnimation(super, 0);
}

void sub_08033C94(SpinyBeetleEntity* this) {
    UpdateAnimationVariableFrames(super, 3);
    switch (this->unk_79) {
        case 0:
            this->unk_79 = 1;
            if (super->spriteSettings.draw != 1) {
                super->spriteSettings.draw = 1;
            }
        case 1:
            if (--super->timer)
                return;
            this->unk_79 = 2;
            super->timer = 120;
            super->spriteOffsetY = 0;
            super->direction = sub_08049F84(super, 1) + 0x14;

            switch (Random() & 3) {
                case 0:
                    super->direction += 8;
                    break;
                case 2:
                    super->direction += 0x18;
                    break;
            }

            super->direction &= 0x18;
            break;
        case 2:
            if (super->subtimer != 0) {
                super->subtimer--;
            } else {
                sub_08033D78(this);
            }

            if (--super->timer)
                return;
            super->timer = (Random() & 0x1f) + 32;
            super->direction = sub_08049F84(super, 1) + 0x14;
            switch (Random() & 3) {
                case 1:
                    super->direction += 8;
                    break;
                case 3:
                    super->direction += 0x18;
                    break;
            }

            super->direction &= 0x18;
            break;
    }
}

void sub_08033D78(SpinyBeetleEntity* this) {
    u32 dir = DirectionRound(super->direction) >> 2;
    const s8* ptr = gUnk_080CEC1C + dir;
    s32 tilePos;
    u32 type;
    tilePos = COORD_TO_TILE_OFFSET(super, -ptr[0], -ptr[1]);
    type = GetTileTypeAtTilePos(tilePos, super->collisionLayer);

    switch (type) {
        case 0x1c4:
        case 0x1c5:
            break;
        default:
            if (GetCollisionDataAtTilePos(tilePos, super->collisionLayer) - 1 > 0x3e)
                ProcessMovement0(super);
            break;
    }
}

bool32 sub_08033DF0(SpinyBeetleEntity* this) {
    bool32 rv = 0;
    if (super->child == NULL) {
        rv = 1;
    } else {
        switch (super->child->action) {
            case 4:
                rv = 1;
                break;
            case 3:
                if (super->child->subAction > 1) {
                    rv = 1;
                }
                break;
            case 2:
                rv = 1;
                break;
        }
    }

    return rv;
}

void sub_08033E1C(SpinyBeetleEntity* this) {
    super->action = 5;
    this->unk_79 = 0;
    super->spriteSettings.draw = 1;
    COLLISION_ON(super);
    super->spritePriority.b0 = 5;
    super->y.WORD = (super->y.WORD & 0xfff00000) | 0xC0000;
    super->hitType = 0x19;
    super->spritePriority.b1 = 1;
    super->timer = 48;
    super->subtimer = 0;
    super->speed = 0x100;
    super->child = NULL;
    InitializeAnimation(super, 3);
    CreateSpeechBubbleExclamationMark(super, 0xa, -12);
}

void SpinyBeetle_SetHitType(SpinyBeetleEntity* this) {
    if ((gPlayerState.skills & SKILL_ROCK_BREAKER)) {
        super->hitType = 0x95;
    } else {
        super->hitType = 0x63;
    }
}

const u16 unusedLabel_0CEBDC[] = {
    0x3F, 0x1C, 0x50, 0x2A, 0x55, 0x1D, 0x5C, 0x2B,
};

void (*const SpinyBeetle_Functions[])(Entity*) = {
    (EntityActionPtr)SpinyBeetle_OnTick,     (EntityActionPtr)SpinyBeetle_OnCollision, GenericKnockback, GenericDeath,
    (EntityActionPtr)SpinyBeetle_OnConfused, (EntityActionPtr)SpinyBeetle_OnGrabbed,
};

void (*const gUnk_080CEC04[])(SpinyBeetleEntity*) = {
    SpinyBeetle_Init, sub_08033958, sub_08033A7C, sub_08033ACC, sub_08033B44, sub_08033C94,
};

const s8 gUnk_080CEC1C[] = { 0, -8, 8, 0, 0, 8, -8, 0 };
