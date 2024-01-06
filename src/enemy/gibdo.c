/**
 * @file gibdo.c
 * @ingroup Enemies
 *
 * @brief Gibdo enemy
 */
#include "enemy.h"
#include "functions.h"
#include "object.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 field_0x74;
    u8 field_0x76;
    u8 field_0x77;
    u16 field_0x78;
    u16 field_0x7a;
    u8 field_0x7c;
    u8 filler2[3];
    Entity* field_0x80;
    Entity* field_0x84;
} GibdoEntity;

// Gibudo
void sub_08037794(GibdoEntity*);
void sub_08037B10(GibdoEntity*);
void sub_0803797C(GibdoEntity*);
void sub_080379BC(GibdoEntity*);
void Gibdo_MoveObjectsToStalfos(GibdoEntity*, Entity*);
bool32 sub_08037810(GibdoEntity*);
void sub_080377B0(GibdoEntity*);
bool32 sub_080378B0(GibdoEntity*);
bool32 sub_08037914(GibdoEntity*);
bool32 sub_080379EC(GibdoEntity*);
void sub_08037A58(GibdoEntity*);
void sub_08037ACC(GibdoEntity*);
void Gibdo_CreateObjects(GibdoEntity*);
void sub_08037A14(GibdoEntity*);

void (*const Gibdo_Functions[6])(Entity*);
void (*const gUnk_080CF2AC[9])(GibdoEntity*);
extern Entity* gUnk_020000B0;

void Gibdo(Entity* this) {
    EnemyFunctionHandler(this, Gibdo_Functions);
    EnemySetFXOffset(this, 0, 1, -0x15);
}

void Gibdo_OnTick(GibdoEntity* this) {
    gUnk_080CF2AC[super->action](this);
}

void Gibdo_OnCollision(GibdoEntity* this) {
    if (super->contactFlags == (CONTACT_NOW | 0x7)) {
        if (super->action == 0x6) {
            sub_08037ACC(this);
        }
        super->action = 0x8;
        super->timer = 60;
        COLLISION_OFF(super);
        Gibdo_CreateObjects(this);
    } else {
        if (super->action != 0x6) {
            if (super->hitType == 0x27 && super->contactFlags == CONTACT_NOW) {
                sub_08037A14(this);
            } else {
                if ((u8)(super->action - 1) < 2) {
                    u8 dir;

                    super->action = 1;
                    dir = DirectionRoundUp(DirectionTurnAround(super->knockbackDirection));
                    super->direction = dir;
                    super->animationState = dir >> 3;
                    InitAnimationForceUpdate(super, super->animationState);
                    if (sub_08037810(this)) {
                        super->timer = 4;
                    }
                }
            }
        } else {
            sub_08037A58(this);
        }
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, Gibdo_Functions);
}

void Gibdo_OnGrabbed(GibdoEntity* this) {
}

void sub_08037558(GibdoEntity* this) {
    sub_0804A720(super);
    super->animationState = Random() & 0x3;
    this->field_0x76 = 0;
    this->field_0x77 = 0;
    sub_08037794(this);
}

void sub_08037580(GibdoEntity* this) {
    if (!sub_08037810(this)) {
        if (--this->field_0x74 == 0) {
            sub_080377B0(this);
        }
    }
}

void sub_080375A4(GibdoEntity* this) {
    if (!sub_080378B0(this) && !sub_08037810(this)) {
        if (--this->field_0x74 == 0) {
            sub_08037794(this);
        } else {
            UpdateAnimationSingleFrame(super);
            if (!ProcessMovement0(super)) {
                if (--super->subtimer == 0) {
                    sub_080379BC(this);
                }
            }
        }
    }
}

void sub_080375F8(GibdoEntity* this) {
    if (!sub_080378B0(this) && (--super->timer == 0)) {
        super->action = 4;
        super->timer = 24;
        InitAnimationForceUpdate(super, super->animationState + 4);
    }
}

void sub_08037624(GibdoEntity* this) {
    if (!sub_080378B0(this) && !sub_08037914(this)) {
        if (--this->field_0x74 == 0) {
            sub_08037794(this);
        } else {
            UpdateAnimationSingleFrame(super);
            UpdateAnimationSingleFrame(super);
            if (!ProcessMovement0(super)) {
                if (--super->subtimer == 0) {
                    sub_080379BC(this);
                }
            } else if (--super->timer == 0) {
                sub_0803797C(this);
            }
        }
    }
}

void sub_08037690(GibdoEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        this->field_0x77 = 20;
        sub_08037794(this);
    } else {
        if ((super->frame & 1) != 0) {
            super->hitType = 0x27;
            ProcessMovement0(super);
        }
    }
}

void sub_080376D0(GibdoEntity* this) {
    if (!sub_080379EC(this)) {
        ResetActiveItems();
        gPlayerState.mobility |= 0x80;
        gPlayerState.field_0xa |= 0x80;
        CopyPositionAndSpriteOffset(&gPlayerEntity.base, super);
        UpdateAnimationSingleFrame(super);
        if ((super->frame & 1) != 0) {
            if (--this->field_0x7c == 0) {
                sub_08037A58(this);
            } else {
                super->frame ^= 1;
                sub_08037B10(this);
            }
        }
    }
}

void sub_0803773C(GibdoEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        sub_08037794(this);
    }
}

// Turn into Stalfos
void sub_0803775C(GibdoEntity* this) {
    Entity* stalfos;
    if (--super->timer == 0) {
        stalfos = CreateEnemy(STALFOS, 0);
        if (stalfos != NULL) {
            EnemyCopyParams(super, stalfos);
            Gibdo_MoveObjectsToStalfos(this, stalfos);
        }
        DeleteEntity(super);
    }
}

void sub_08037794(GibdoEntity* this) {
    super->action = 1;
    this->field_0x74 = 30;
    super->hitType = 0x26;
    InitAnimationForceUpdate(super, super->animationState);
}

void sub_080377B0(GibdoEntity* this) {
    u32 rand1;
    u32 rand2;

    super->action = 2;
    super->subtimer = 8;
    rand1 = Random();
    this->field_0x74 = (rand1 & 0x38) + 120;
    super->speed = 0x40;
    rand2 = Random();
    if (!sub_08049FA0(super) && ((rand2 & 3) != 0)) {
        super->direction = DirectionRoundUp(sub_08049EE4(super));
    } else {
        super->direction = DirectionRound(rand2);
    }
    super->animationState = super->direction / 8;
    InitAnimationForceUpdate(super, super->animationState + 4);
}

bool32 sub_08037810(GibdoEntity* this) {
    u32 dir;

    if (this->field_0x76 == 0) {
        if (sub_08049FDC(super, 1) &&
            EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x40)) {
            dir = GetFacingDirection(super, gUnk_020000B0);
            if (((dir - super->direction + 6) & 0x1f) <= 0xc) {
                super->action = 3;
                super->timer = 24;
                super->subtimer = 8;
                super->speed = 0xc0;
                super->direction = DirectionRoundUp(GetFacingDirection(super, gUnk_020000B0));
                super->animationState = super->direction >> 3;
                this->field_0x74 = 300;
                this->field_0x78 = gUnk_020000B0->x.HALF.HI;
                this->field_0x7a = gUnk_020000B0->y.HALF.HI;
                InitAnimationForceUpdate(super, super->animationState);
                return TRUE;
            }
        }
    } else {
        this->field_0x76--;
    }
    return FALSE;
}

bool32 sub_080378B0(GibdoEntity* this) {
    if (this->field_0x77 == 0) {
        if (sub_08049DF4(1) != NULL) {
            if (sub_0804A044(super, gUnk_020000B0, 0xa) == super->direction)
                if (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x18)) {
                    super->action = 5;
                    super->speed = 0x100;
                    InitAnimationForceUpdate(super, super->animationState + 8);
                    return TRUE;
                }
        }
    } else {
        this->field_0x77--;
    }
    return FALSE;
}

bool32 sub_08037914(GibdoEntity* this) {
    if (sub_08049FDC(super, 1)) {
        if (!EntityWithinDistance(gUnk_020000B0, this->field_0x78, this->field_0x7a, 0x28)) {
            this->field_0x78 = gUnk_020000B0->x.HALF_U.HI;
            this->field_0x7a = gUnk_020000B0->y.HALF_U.HI;
            sub_0803797C(this);
            return FALSE;
        }
        if (!EntityWithinDistance(super, this->field_0x78, this->field_0x7a, 0x8)) {
            return FALSE;
        }
        this->field_0x76 = 60;
    }
    sub_08037794(this);
    return TRUE;
}

void sub_0803797C(GibdoEntity* this) {
    u32 m;

    super->timer = 24;
    super->subtimer = 8;
    m = super->direction =
        (CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->field_0x78, this->field_0x7a) + 4) & 0x18;
    m >>= 3;
    if (m != super->animationState) {
        super->animationState = m;
        InitAnimationForceUpdate(super, m + 4);
    }
}

void sub_080379BC(GibdoEntity* this) {
    u32 rand;

    super->timer = 24;
    super->subtimer = 8;
    rand = Random();
    super->animationState = ((super->animationState + (rand & 2)) - 1) & 3;
    super->direction = DirectionFromAnimationState(super->animationState);
    InitAnimationForceUpdate(super, super->animationState + 4);
}

bool32 sub_080379EC(GibdoEntity* this) {
    if (sub_0807953C() != 0) {
        if (--super->timer == 0) {
            sub_08037A58(this);
            return TRUE;
        }
    }
    return FALSE;
}

void sub_08037A14(GibdoEntity* this) {
    super->action = 6;
    super->timer = 24;
    super->spritePriority.b0 &= super->timer - 32;
    super->spritePriority.b0 |= 3;
    super->collisionMask &= 0xfe;
    this->field_0x7c = 5;
    CopyPosition(super, super->contactedEntity);
    InitAnimationForceUpdate(super, super->animationState + 0xc);
}

// Take Damage maybe?
void sub_08037A58(GibdoEntity* this) {
    sub_08037ACC(this);
    super->action = 7;
    super->spritePriority.b0 = 4;
    if (super->iframes == 0) {
        super->iframes = 0xec;
    }
    super->hitType = 0x26;
    super->collisionMask |= 1;
    super->iframes = 0xf4;
    super->knockbackDirection = DirectionFromAnimationState(super->animationState) ^ 0x10;
    super->knockbackDuration = 8;
    super->knockbackSpeed = 0x180;
    this->field_0x76 = 60;
    InitAnimationForceUpdate(super, super->animationState + 0x10);
}

void sub_08037ACC(GibdoEntity* this) {
    gPlayerState.flags &= ~PL_DISABLE_ITEMS;
    COLLISION_ON(&gPlayerEntity.base);
    gPlayerEntity.base.iframes = 30;
    gPlayerEntity.base.knockbackDirection = DirectionFromAnimationState(super->animationState);
    gPlayerEntity.base.knockbackDuration = 4;
    gPlayerEntity.base.knockbackSpeed = 0x180;
}

// Damage player maybe?
void sub_08037B10(GibdoEntity* this) {
    u32 health;
    gPlayerEntity.base.iframes = 0xc;
    health = ModHealth(-8);
    SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
    if (health == 0) {
        sub_08037A58(this);
        this->field_0x76 = 240;
    }
}

void Gibdo_CreateObjects(GibdoEntity* this) {
    Entity* object;

    object = CreateObject(FLAME, 3, 0);
    if (object != NULL) {
        object->type2 = super->timer;
        object->spritePriority.b0 = 3;
        object->spriteOffsetX = 0;
        object->spriteOffsetY = 0xfc;
        object->parent = super;
    }
    this->field_0x80 = object;

    object = CreateObject(FLAME, 3, 0);
    if (object != NULL) {
        object->type2 = super->timer;
        object->spritePriority.b0 = 3;
        object->spriteOffsetX = 0xfd;
        object->spriteOffsetY = 0xf8;
        object->parent = super;
    }
    this->field_0x84 = object;

    object = CreateObject(FLAME, 3, 0);
    if (object != NULL) {
        object->type2 = super->timer;
        object->spritePriority.b0 = 3;
        object->spriteOffsetX = 0x5;
        object->spriteOffsetY = 0xf5;
        object->parent = super;
    }
    super->child = object;
}

void Gibdo_MoveObjectsToStalfos(GibdoEntity* this, Entity* that) {
    Entity* entity = this->field_0x80;

    if (entity != NULL) {
        entity->timer = 15;
        entity->parent = that;
    }

    entity = this->field_0x84;
    if (entity != NULL) {
        entity->timer = 15;
        entity->parent = that;
    }

    entity = super->child;
    if (entity != NULL) {
        entity->timer = 15;
        entity->parent = that;
    }
}

void (*const Gibdo_Functions[6])(Entity*) = {
    (EntityActionPtr)Gibdo_OnTick,
    (EntityActionPtr)Gibdo_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    (EntityActionPtr)Gibdo_OnGrabbed,
};

void (*const gUnk_080CF2AC[9])(GibdoEntity*) = {
    sub_08037558, sub_08037580, sub_080375A4, sub_080375F8, sub_08037624,
    sub_08037690, sub_080376D0, sub_0803773C, sub_0803775C,
};
