/**
 * @file gibdo.c
 * @ingroup Enemies
 *
 * @brief Gibdo enemy
 */

#define NENT_DEPRECATED
#include "global.h"
#include "enemy.h"
#include "object.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 field_0x74;
    u8 field_0x76;
    u8 field_0x77;
    u16 field_0x78;
    u16 field_0x7a;
    u8 field_0x7c;
    u8 field_0x7d;
    u8 filler2[2];
    Entity* field_0x80;
    Entity* field_0x84;
} GibdoEntity;

// Gibudo
void sub_08037794(GibdoEntity*);
void sub_08037B10(GibdoEntity*);
void sub_0803797C(GibdoEntity*);
void sub_080379BC(GibdoEntity*);
void Gibdo_MoveObjectsToStalfos(GibdoEntity*, Entity*);
u32 sub_08037810(GibdoEntity*);
void sub_080377B0(GibdoEntity*);
u32 sub_080378B0(GibdoEntity*);
u32 sub_08037914(GibdoEntity*);
u32 sub_080379EC(GibdoEntity*);
void sub_08037A58(GibdoEntity*);
void sub_08037ACC(GibdoEntity*);
void Gibdo_CreateObjects(GibdoEntity*);
void sub_08037A14(GibdoEntity*);

void (*const Gibdo_Functions[6])(Entity*);
void (*const gUnk_080CF2AC[9])(GibdoEntity*);
extern Entity* gUnk_020000B0;

void Gibdo(Entity* this) {
    EnemyFunctionHandler(this, Gibdo_Functions);
    SetChildOffset(this, 0, 1, -0x15);
}

void Gibdo_OnTick(GibdoEntity* this) {
    gUnk_080CF2AC[super->action](this);
}

void Gibdo_OnCollision(GibdoEntity* this) {
    u8 x;
    if (super->contactFlags == 0x87) {
        if (super->action == 0x6) {
            sub_08037ACC(this);
        }
        super->action = 0x8;
        super->timer = 0x3c;
        COLLISION_OFF(super);
        Gibdo_CreateObjects(this);
    } else {
        if (super->action != 0x6) {
            if (super->hitType == 0x27 && super->contactFlags == 0x80) {
                sub_08037A14(this);
            } else {
                if ((u8)(super->action - 1) < 2) {
                    super->action = 1;
                    x = DirectionRoundUp(DirectionTurnAround(super->knockbackDirection));
                    super->direction = x;
                    super->animationState = x >> 3;
                    InitAnimationForceUpdate(super, super->animationState);
                    if (sub_08037810(this) != 0) {
                        super->timer = 4;
                    }
                }
            }
        } else {
            sub_08037A58(this);
        }
    }
    if (super->confusedTime != 0) {
        Create0x68FX(super, FX_STARS);
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
    if (sub_08037810(this) == 0) {
        if (!(--this->field_0x74)) {
            sub_080377B0(this);
        }
    }
}

void sub_080375A4(GibdoEntity* this) {
    if (sub_080378B0(this) == 0) {
        if (sub_08037810(this) == 0) {
            if (!(--this->field_0x74)) {
                sub_08037794(this);
            } else {
                UpdateAnimationSingleFrame(super);
                if (ProcessMovement0(super) == 0) {
                    if (!(--super->subtimer)) {
                        sub_080379BC(this);
                    }
                }
            }
        }
    }
}

void sub_080375F8(GibdoEntity* this) {
    if (sub_080378B0(this) == 0) {
        if (!(--super->timer)) {
            super->action = 4;
            super->timer = 0x18;
            InitAnimationForceUpdate(super, super->animationState + 4);
        }
    }
}

void sub_08037624(GibdoEntity* this) {
    if (sub_080378B0(this) == 0) {
        if (sub_08037914(this) == 0) {
            if (!(--this->field_0x74)) {
                sub_08037794(this);
            } else {
                UpdateAnimationSingleFrame(super);
                UpdateAnimationSingleFrame(super);
                if (ProcessMovement0(super) == 0) {
                    if (!(--super->subtimer)) {
                        sub_080379BC(this);
                    }
                } else {
                    if (!(--super->timer)) {
                        sub_0803797C(this);
                    }
                }
            }
        }
    }
}

void sub_08037690(GibdoEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        this->field_0x77 = 0x14;
        sub_08037794(this);
    } else {
        if ((super->frame & 1) != 0) {
            super->hitType = 0x27;
            ProcessMovement0(super);
        }
    }
}

void sub_080376D0(GibdoEntity* this) {
    u8* x;
    if (sub_080379EC(this) == 0) {
        ResetPlayerItem();
        gPlayerState.mobility = gPlayerState.mobility | 0x80;
        gPlayerState.field_0xa = gPlayerState.field_0xa | 0x80;
        CopyPositionAndSpriteOffset(&gPlayerEntity, super);
        UpdateAnimationSingleFrame(super);
        if ((super->frame & 0x1) != 0) {
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
    Entity* x;
    if (!(--super->timer)) {
        x = CreateEnemy(STALFOS, 0);
        if (x != 0) {
            sub_0804A4E4(super, x);
            Gibdo_MoveObjectsToStalfos(this, x);
        }
        DeleteEntity(super);
    }
}

void sub_08037794(GibdoEntity* this) {
    super->action = 1;
    this->field_0x74 = 0x1e;
    super->hitType = 0x26;
    InitAnimationForceUpdate(super, super->animationState);
}

void sub_080377B0(GibdoEntity* this) {
    u32 r1;
    u32 r2;
    super->action = 2;
    super->subtimer = 8;
    r1 = Random();
    this->field_0x74 = (r1 & 0x38) + 0x78;
    super->speed = 0x40;
    r2 = Random();
    if (!sub_08049FA0(super) && (r2 & 3)) {
        super->direction = DirectionRoundUp(sub_08049EE4(super));
    } else {
        super->direction = DirectionRound(r2);
    }
    super->animationState = super->direction / 8;
    InitAnimationForceUpdate(super, super->animationState + 4);
}

u32 sub_08037810(GibdoEntity* this) {
    u32 x;
    u32 y;
    if (this->field_0x76 == 0) {
        if (sub_08049FDC(super, 1) != 0) {
            if (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x40) != 0) {
                x = GetFacingDirection(super, gUnk_020000B0);
                if (((x - super->direction + 6) & 0x1f) <= 0xc) {
                    super->action = 3;
                    super->timer = 0x18;
                    super->subtimer = 0x8;
                    super->speed = 0xc0;
                    super->direction = DirectionRoundUp(GetFacingDirection(super, gUnk_020000B0));
                    super->animationState = super->direction >> 3;
                    this->field_0x74 = 300;
                    this->field_0x78 = gUnk_020000B0->x.HALF.HI;
                    this->field_0x7a = gUnk_020000B0->y.HALF.HI;
                    InitAnimationForceUpdate(super, super->animationState);
                    return 1;
                }
            }
        }
    } else {
        this->field_0x76--;
    }
    return 0;
}

u32 sub_080378B0(GibdoEntity* this) {
    if (this->field_0x77 == 0) {
        if (sub_08049DF4(1) != 0) {
            if (sub_0804A044(super, gUnk_020000B0, 0xa) == super->direction)
                if (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x18) != 0) {
                    super->action = 5;
                    super->speed = 0x100;
                    InitAnimationForceUpdate(super, super->animationState + 8);
                    return 1;
                }
        }
    } else {
        this->field_0x77--;
    }
    return 0;
}

u32 sub_08037914(GibdoEntity* this) {
    if (sub_08049FDC(super, 1) != 0) {
        if (EntityWithinDistance(gUnk_020000B0, this->field_0x78, this->field_0x7a, 0x28) == 0) {
            this->field_0x78 = gUnk_020000B0->x.HALF_U.HI;
            this->field_0x7a = gUnk_020000B0->y.HALF_U.HI;
            sub_0803797C(this);
            return 0;
        }
        if (EntityWithinDistance(super, this->field_0x78, this->field_0x7a, 0x8) == 0) {
            return 0;
        }
        this->field_0x76 = 0x3c;
    }
    sub_08037794(this);
    return 1;
}

void sub_0803797C(GibdoEntity* this) {
    u32 m;
    super->timer = 0x18;
    super->subtimer = 8;
    m = super->direction =
        (CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->field_0x78, this->field_0x7a) + 4) & 0x18;
    ;
    m = m / 8;
    if (m != super->animationState) {
        super->animationState = m;
        InitAnimationForceUpdate(super, m + 4);
    }
}

void sub_080379BC(GibdoEntity* this) {
    u32 r;
    super->timer = 0x18;
    super->subtimer = 0x8;
    r = Random();
    super->animationState = ((super->animationState + (r & 2)) - 1) & 3;
    super->direction = DirectionFromAnimationState(super->animationState);
    InitAnimationForceUpdate(super, super->animationState + 4);
}

u32 sub_080379EC(GibdoEntity* this) {
    if (sub_0807953C() != 0) {
        if (!(--super->timer)) {
            sub_08037A58(this);
            return 1;
        }
    }
    return 0;
}

void sub_08037A14(GibdoEntity* this) {
    super->action = 6;
    super->timer = 0x18;
    super->spritePriority.b0 = (super->spritePriority.b0 & (super->timer - 0x20));
    super->spritePriority.b0 |= 3;
    super->flags2 &= 0xfe;
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
    super->flags2 |= 1;
    super->iframes = 0xf4;
    super->knockbackDirection = DirectionFromAnimationState(super->animationState) ^ 0x10;
    super->knockbackDuration = 8;
    super->knockbackSpeed = 0x180;
    this->field_0x76 = 0x3c;
    InitAnimationForceUpdate(super, super->animationState + 0x10);
}

void sub_08037ACC(GibdoEntity* this) {
    gPlayerState.flags &= ~PL_DISABLE_ITEMS;
    COLLISION_ON(&gPlayerEntity);
    gPlayerEntity.iframes = 0x1e;
    gPlayerEntity.knockbackDirection = DirectionFromAnimationState(super->animationState);
    gPlayerEntity.knockbackDuration = 4;
    gPlayerEntity.knockbackSpeed = 0x180;
}

// Damage player maybe?
void sub_08037B10(GibdoEntity* this) {
    u32 h;
    gPlayerEntity.iframes = 0xc;
    h = ModHealth(-8);
    SoundReqClipped(&gPlayerEntity, SFX_PLY_VO6);
    if (h == 0) {
        sub_08037A58(this);
        this->field_0x76 = 0xf0;
    }
}

void Gibdo_CreateObjects(GibdoEntity* this) {
    Entity* E;
    E = CreateObject(OBJECT_2A, 3, 0);
    if (E != 0) {
        E->type2 = super->timer;
        E->spritePriority.b0 = 3;
        E->spriteOffsetX = 0;
        E->spriteOffsetY = 0xfc;
        E->parent = super;
    }
    this->field_0x80 = E;
    E = CreateObject(OBJECT_2A, 3, 0);
    if (E != 0) {
        E->type2 = super->timer;
        E->spritePriority.b0 = 3;
        E->spriteOffsetX = 0xfd;
        E->spriteOffsetY = 0xf8;
        E->parent = super;
    }
    this->field_0x84 = E;
    E = CreateObject(OBJECT_2A, 3, 0);
    if (E != 0) {
        E->type2 = super->timer;
        E->spritePriority.b0 = 3;
        E->spriteOffsetX = 0x5;
        E->spriteOffsetY = 0xf5;
        E->parent = super;
    }
    super->child = E;
}

void Gibdo_MoveObjectsToStalfos(GibdoEntity* this, Entity* that) {
    Entity* ent = this->field_0x80;
    if (ent != NULL) {
        ent->timer = 0xf;
        ent->parent = that;
    }

    ent = this->field_0x84;
    if (ent != NULL) {
        ent->timer = 0xf;
        ent->parent = that;
    }

    ent = super->child;
    if (ent != NULL) {
        ent->timer = 0xf;
        ent->parent = that;
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
