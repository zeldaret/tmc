/**
 * @file mazaalBracelet.c
 * @ingroup Enemies
 *
 * @brief Mazaal Bracelet enemy
 */
#include "enemy.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"

typedef struct MazaalBraceletEntity_ {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    union {
        /*0x74*/ struct MazaalBraceletEntity_* entity;
        /*0x74*/ u16 u16;
        struct {
            /*0x74*/ u8 unk_74;
            /*0x75*/ u8 unk_75;
        } split;
    } unk_74;
    union {
        /*0x78*/ struct MazaalBraceletEntity_* entity;
        struct {
            /*0x78*/ u16 unk_78;
        } split;
    } unk_78;
    /*0x7c*/ union SplitHWord unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ union SplitHWord unk_80;
    /*0x82*/ u8 unused4[2];
    /*0x84*/ u8 unk_84;
} MazaalBraceletEntity;

extern void SoundReqClipped(Entity*, u32);

void sub_0803B538(MazaalBraceletEntity*);
bool32 sub_0803B4E4(MazaalBraceletEntity*);
void sub_0803B55C(MazaalBraceletEntity*);
void sub_0803B4D4(MazaalBraceletEntity*);
void sub_0803B59C(MazaalBraceletEntity*);
void sub_0803B5C0(MazaalBraceletEntity*);
u32 sub_0803B610(MazaalBraceletEntity*);
void sub_0803B63C(MazaalBraceletEntity*);
void sub_0803B6A4(MazaalBraceletEntity*);
bool32 sub_0803B6F4(MazaalBraceletEntity*);
void sub_0803B8E8(MazaalBraceletEntity*, u32);
u32 sub_0803B870(MazaalBraceletEntity*);
void sub_0803B824(MazaalBraceletEntity*);
void sub_0803B804(MazaalBraceletEntity*);
void sub_0803B798(void);
void sub_0803BA8C(MazaalBraceletEntity*, u32);

void sub_0803B724(MazaalBraceletEntity*);

void MazaalBracelet_OnTick(MazaalBraceletEntity*);
void MazaalBracelet_OnCollision(MazaalBraceletEntity*);
void MazaalBracelet_OnGrabbed(MazaalBraceletEntity*);
void sub_0803A254(MazaalBraceletEntity*);
void sub_0803B8F8(MazaalBraceletEntity*);

void sub_0803A274(MazaalBraceletEntity*);
void sub_0803A364(MazaalBraceletEntity*);
void sub_0803A548(MazaalBraceletEntity*);
void sub_0803A58C(MazaalBraceletEntity*);
void sub_0803A5D0(MazaalBraceletEntity*);
void sub_0803A60C(MazaalBraceletEntity*);
void sub_0803A660(MazaalBraceletEntity*);
void sub_0803A6E8(MazaalBraceletEntity*);
void sub_0803A720(MazaalBraceletEntity*);
void sub_0803A740(MazaalBraceletEntity*);
void sub_0803A780(MazaalBraceletEntity*);
void sub_0803A7AC(MazaalBraceletEntity*);
void sub_0803A7CC(MazaalBraceletEntity*);
void sub_0803A814(MazaalBraceletEntity*);
void sub_0803A86C(MazaalBraceletEntity*);
void sub_0803A8B8(MazaalBraceletEntity*);
void sub_0803A90C(MazaalBraceletEntity*);
void sub_0803A978(MazaalBraceletEntity*);
void sub_0803AA00(MazaalBraceletEntity*);
void sub_0803AA98(MazaalBraceletEntity*);
void sub_0803AB10(MazaalBraceletEntity*);
void sub_0803AB5C(MazaalBraceletEntity*);
void sub_0803ABB4(MazaalBraceletEntity*);
void sub_0803AC1C(MazaalBraceletEntity*);
void sub_0803AC60(MazaalBraceletEntity*);
void sub_0803ACC0(MazaalBraceletEntity*);
void sub_0803ADAC(MazaalBraceletEntity*);
void sub_0803ADF4(MazaalBraceletEntity*);
void sub_0803AE48(MazaalBraceletEntity*);
void sub_0803AEC4(MazaalBraceletEntity*);
void sub_0803AF18(MazaalBraceletEntity*);
void sub_0803AF50(MazaalBraceletEntity*);
void sub_0803AF7C(MazaalBraceletEntity*);
void sub_0803AF9C(MazaalBraceletEntity*);
void sub_0803AFC8(MazaalBraceletEntity*);
void sub_0803AFE0(MazaalBraceletEntity*);
void sub_0803B01C(MazaalBraceletEntity*);
void sub_0803B04C(MazaalBraceletEntity*);
void sub_0803B074(MazaalBraceletEntity*);
void sub_0803B0D4(MazaalBraceletEntity*);
void sub_0803B100(MazaalBraceletEntity*);
void sub_0803B144(MazaalBraceletEntity*);
void sub_0803B17C(MazaalBraceletEntity*);
void sub_0803B1B8(MazaalBraceletEntity*);
void sub_0803B2D0(MazaalBraceletEntity*);
void sub_0803B30C(MazaalBraceletEntity*);
void sub_0803B338(MazaalBraceletEntity*);
void sub_0803B35C(MazaalBraceletEntity*);
void sub_0803B398(MazaalBraceletEntity*);
void sub_0803B3F4(MazaalBraceletEntity*);
void sub_0803B480(MazaalBraceletEntity*);

void sub_0803B910(MazaalBraceletEntity*);
void sub_0803B978(MazaalBraceletEntity*);
void sub_0803BA6C(MazaalBraceletEntity*);
void sub_0803BA80(MazaalBraceletEntity*);

void (*const MazaalBracelet_Functions[])(MazaalBraceletEntity*) = {
    MazaalBracelet_OnTick,
    MazaalBracelet_OnCollision,
    (void (*)(MazaalBraceletEntity*))GenericKnockback,
    (void (*)(MazaalBraceletEntity*))GenericDeath,
    (void (*)(MazaalBraceletEntity*))GenericConfused,
    MazaalBracelet_OnGrabbed,
};

void (*const gUnk_080CFC2C[])(MazaalBraceletEntity*) = { sub_0803A254, sub_0803A254, sub_0803B8F8, sub_0803B8F8 };

void (*const gUnk_080CFC3C[])(MazaalBraceletEntity*) = {
    sub_0803A274, sub_0803A364, sub_0803A548, sub_0803A58C, sub_0803A5D0, sub_0803A60C, sub_0803A660, sub_0803A6E8,
    sub_0803A720, sub_0803A740, sub_0803A780, sub_0803A7AC, sub_0803A7CC, sub_0803A814, sub_0803A86C, sub_0803A8B8,
    sub_0803A90C, sub_0803A978, sub_0803AA00, sub_0803AA98, sub_0803AB10, sub_0803AB5C, sub_0803ABB4, sub_0803AC1C,
    sub_0803AC60, sub_0803ACC0, sub_0803ADAC, sub_0803ADF4, sub_0803AE48, sub_0803AEC4, sub_0803AF18, sub_0803AF50,
    sub_0803AF7C, sub_0803AF9C, sub_0803AFC8, sub_0803AFE0, sub_0803B01C, sub_0803B04C, sub_0803B074, sub_0803B0D4,
    sub_0803B100, sub_0803B144, sub_0803B17C, sub_0803B1B8, sub_0803B2D0, sub_0803B30C, sub_0803B338, sub_0803B35C,
    sub_0803B398, sub_0803B3F4, sub_0803B480
};

const s8 gUnk_080CFD08[] = { 10, -10 };
const s8 gUnk_080CFD0A[] = { 0x30, -0x30 };
const u8 gUnk_080CFD0C[] = { 0x14, 0x13, 0x13, 0x12, 0x12, 0x11, 0x10, 0x0f, 0x0f, 0x0e, 0x0e, 0x0d, 0x0c };
const s8 gUnk_080CFD19[] = { 0x10, -0x10 };
const s8 gUnk_080CFD1B[] = { -0x38, 0x38 };
const s8 gUnk_080CFD1D[] = { -0x11, 0x11 };

void (*const gUnk_080CFD20[])(MazaalBraceletEntity*) = { sub_0803B910, sub_0803B978, sub_0803BA6C, sub_0803BA80 };

const u16 gUnk_080CFD30[] = { 0xdb, 0xdd, 0xdf, 0xe1, 0xdf, 0xdd, 0xdb, 0xe3, 0xe5, 0xe3 };
const u16 gUnk_080CFD44[] = { 0xdc, 0xde, 0xe0, 0xe2, 0xe0, 0xde, 0xdc, 0xe4, 0xe6, 0xe4 };
const u16 gUnk_080CFD58[] = { 0xe5, 0xe6 };
const u16 gUnk_080CFD5C[] = { 0xe7, 0xe8 };

extern s8 gUnk_080CED6C[8];

void MazaalBracelet(MazaalBraceletEntity* this) {
    MazaalBracelet_Functions[GetNextFunction(super)](this);
}

void MazaalBracelet_OnTick(MazaalBraceletEntity* this) {
    gUnk_080CFC2C[super->type](this);
}

void MazaalBracelet_OnCollision(MazaalBraceletEntity* this) {
    MazaalBraceletEntity* entity;

    if (super->type < 2) {
        if (super->action != 0x2b) {
            if ((0 < super->iframes) &&
                ((super->contactFlags == (CONTACT_NOW | 0x15) || (super->contactFlags == (CONTACT_NOW | 0xe))))) {
                super->action = 0x28;
                COLLISION_OFF(super);
                entity = (MazaalBraceletEntity*)super->parent;
                entity->unk_7c.HALF.HI = entity->unk_7c.HALF.HI | (super->type == 0 ? 1 : 2);
                entity->unk_80.HALF.LO = (super->type == 0 ? 1 : 2) | entity->unk_80.HALF.LO;

                entity = (MazaalBraceletEntity*)super->child;
                entity->base.iframes = super->iframes;

                entity = this->unk_74.entity;
                entity->base.iframes = super->iframes;
                SoundReq(SFX_BOSS_HIT);
            }
        } else {
            entity = (MazaalBraceletEntity*)super->child;
            entity->base.iframes = super->iframes;

            entity = this->unk_74.entity;
            entity->base.iframes = super->iframes;
            InitializeAnimation(super, 0x18);
            InitAnimationForceUpdate(super->child, 9);
            SoundReq(SFX_BOSS_HIT);
        }
    }
    EnemyFunctionHandlerAfterCollision(super, MazaalBracelet_Functions);
}

void MazaalBracelet_OnGrabbed(MazaalBraceletEntity* this) {
}

void sub_0803A254(MazaalBraceletEntity* this) {
    gUnk_080CFC3C[super->action](this);
    sub_0803B538(this);
}

void sub_0803A274(MazaalBraceletEntity* this) {
    Entity* entity;

    if (gEntCount < 0x45) {
        if (super->type == 0) {
            entity = CreateEnemy(MAZAAL_HAND, 0);
            entity->parent = super;
            super->child = entity;

            entity = CreateEnemy(MAZAAL_BRACELET, 2);
            entity->parent = super;
            this->unk_74.entity = (MazaalBraceletEntity*)entity;

            entity = CreateObject(MAZAAL_OBJECT, 1, 0);
            entity->parent = super;
            entity->child = super->child;

            PositionRelative(super->parent, super, Q_16_16(16.0), Q_16_16(32.0));
        } else {
            entity = CreateEnemy(MAZAAL_HAND, 1);
            entity->parent = super;
            super->child = entity;

            entity = CreateEnemy(MAZAAL_BRACELET, 3);
            entity->parent = super;
            this->unk_74.entity = (MazaalBraceletEntity*)entity;

            entity = CreateObject(MAZAAL_OBJECT, 2, 0);
            entity->parent = super;
            entity->child = super->child;

            super->spriteSettings.flipX = 1;
            PositionRelative(super->parent, super, Q_16_16(-16.0), Q_16_16(32.0));
        }
        if (gRoomTransition.field_0x38 != 0) {
            super->action = 3;
            COLLISION_ON(super);
            super->spriteSettings.draw = 1;
            super->child->spriteSettings.draw = 1;
            InitializeAnimation(super, 0x10);
        } else {
            super->action = 1;
            InitializeAnimation(super, 4);
        }
    }
}

void sub_0803A364(MazaalBraceletEntity* this) {
    u8 uVar1;
    Entity* entity;
    u32 index;
    s8* ptr;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    switch (super->subAction & 0x7f) {
        case 0:
        case 2:
            break;
        case 1:
            super->subAction = 2;
            entity = super->child;
            entity->spriteSettings.draw = 1;
            entity->spriteRendering.alphaBlend = 1;
            break;
        case 3:
            super->subAction = 4;
            super->spriteSettings.draw = 1;
            super->child->spriteRendering.alphaBlend = 0;
            break;
        case 4:
            GetNextFrame(super);
            if ((super->frame & ANIM_DONE) != 0) {
                super->subAction = 5;
            }
            break;
        case 5:
            if (!sub_0803B4E4(this)) {
                LinearMoveUpdate(super);
                return;
            }
            super->type2 = 0;
            uVar1 = 6;
            super->subAction = uVar1;
            super->timer = 30;
            break;
        case 6:
            super->timer--;
            if (super->timer == 0) {
                super->subAction = 7;
                InitializeAnimation(super, 5);
            }
            break;
        case 7:
            GetNextFrame(super);
            if ((super->frame & ANIM_DONE) != 0) {
                super->subAction = 8;
                super->spriteSettings.draw = 0;
                InitAnimationForceUpdate(super->child, 8);
                SoundReq(SFX_16E);
            }
            break;
        case 8:
            sub_0803B55C(this);
            if ((super->child->frame & ANIM_DONE) == 0) {
                return;
            }
            uVar1 = 9;
            super->subAction = uVar1;
            super->timer = 30;
            break;
        case 9:
            super->timer--;
            if (super->timer == 0) {
                super->subAction = 10;
                InitAnimationForceUpdate(super->child, 6);
            }
            break;
        case 10:
            sub_0803B55C(this);
            if ((super->child->frame & ANIM_DONE) != 0) {
                super->subAction = 0xb;
                super->spriteSettings.draw = 1;
                InitializeAnimation(super, 4);
            }
            break;
        case 0xb:
            GetNextFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            if (super->type2 != 0) {
                uVar1 = 0xc;
                super->subAction = uVar1;
                super->timer = 30;
            } else {
                super->type2 = 1;
                super->subAction = 6;
                super->timer = 10;
            }
            break;
        default:
            super->timer--;
            if (super->timer == 0) {
                COLLISION_ON(super);
                sub_0803B4D4(this);
            }
            break;
    }
}

void sub_0803A548(MazaalBraceletEntity* this) {
    u32 index;
    s8* ptr;

    sub_0803B5C0(this);
    UpdateAnimationSingleFrame(super);
    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (!sub_0803B4E4(this)) {
        LinearMoveUpdate(super);
    }
}

void sub_0803A58C(MazaalBraceletEntity* this) {
    u32 index;
    s8* ptr;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (sub_0803B4E4(this)) {
        sub_0803B59C(this);
    } else {
        LinearMoveUpdate(super);
    }
}

void sub_0803A5D0(MazaalBraceletEntity* this) {
    u32 index;
    s8* ptr;

    super->action = 5;
    COLLISION_OFF(super);
    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    InitializeAnimation(super, 5);
}

void sub_0803A60C(MazaalBraceletEntity* this) {
    u32 index;
    s8* ptr;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 6;
        super->spriteSettings.draw = 0;
        InitAnimationForceUpdate(super->child, 8);
    }
}

void sub_0803A660(MazaalBraceletEntity* this) {
    u32 uVar2;
    u8* pbVar3;

    s8* ptr;
    u32 index;

    pbVar3 = &super->child->frame;
    if ((*pbVar3 & 0x80) != 0) {
        if (super->z.HALF.HI > -0x50) {
            super->z.HALF.HI = super->z.HALF.HI - 2;
        } else {
            super->action = 7;
            super->timer = 0;
            uVar2 = GetFacingDirection(super, &gPlayerEntity.base);
            super->direction = (u8)uVar2;
            super->speed = 0x280;
            return;
        }
    } else {
        sub_0803B55C(this);
        if ((*pbVar3 & 0x80) != 0) {
            SoundReq(SFX_157);
        }
        ptr = gUnk_080CED6C;
        index = ((super->parent->subtimer >> 4) + 3);
        super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    }
}

void sub_0803A6E8(MazaalBraceletEntity* this) {
    s32 y;

    if (sub_0803B610(this)) {
        super->action = 8;
        super->timer = 10;
    } else {
        sub_0803B63C(this);
        LinearMoveUpdate(super);
        y = super->parent->y.HALF.HI + 8;
        if (y > super->y.HALF.HI) {
            super->y.HALF.HI = y;
        }
    }
}

void sub_0803A720(MazaalBraceletEntity* this) {
    if (--super->timer == 0) {
        super->action = 9;
        sub_0803B8E8(this, 0x16);
    }
}

void sub_0803A740(MazaalBraceletEntity* this) {
    u16 height;

    height = super->z.HALF.HI + 4;
    super->z.HALF.HI += 4;
    if (-1 < height * 0x10000) {
        super->z.HALF.HI = 0;
        super->action = 10;
        super->timer = 10;
        ((MazaalBraceletEntity*)super->parent)->unk_7c.HALF.HI |= 0x40;
        sub_0803B8E8(this, 0x13);
        InitScreenShake(10, 0);
        SoundReq(SFX_158);
    }
}

void sub_0803A780(MazaalBraceletEntity* this) {
    if (--super->timer == 0) {
        if (--this->unk_7c.HALF.LO) {
            super->action = 6;
        } else {
            super->action = 0xb;
        }
    }
}

void sub_0803A7AC(MazaalBraceletEntity* this) {
    if (super->z.HALF.HI > -6) {
        super->z.HALF.HI--;
    } else {
        super->action = 0xc;
    }
}

void sub_0803A7CC(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (sub_0803B4E4(this)) {
        super->action = 0xd;
        InitAnimationForceUpdate(super->child, 6);
    } else {
        LinearMoveUpdate(super);
    }
}

void sub_0803A814(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    sub_0803B55C(this);
    if ((super->child->frame & ANIM_DONE) != 0) {
        super->action = 0xe;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 4);
    }
}

void sub_0803A86C(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        COLLISION_ON(super);
        sub_0803B59C(this);
    }
}

void sub_0803A8B8(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    super->action = 0x10;
    super->timer = 30;
    super->direction = DirectionNorth;
    super->speed = 0x80;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    InitializeAnimation(super, 6);
    InitAnimationForceUpdate(super->child, 1);
    SoundReq(SFX_153);
}

void sub_0803A90C(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    sub_0803B55C(this);
    LinearMoveUpdate(super);
    super->timer--;
    if (super->timer == 0) {
        super->action = 0x11;
        super->direction = super->type * 0x10 + 8;
        super->speed = 0x200;
        InitializeAnimation(super, 7);
        InitAnimationForceUpdate(super->child, 2);
    }
}

void sub_0803A978(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    sub_0803B55C(this);
    if ((++super->timer & 3) == 0) {
        sub_08004596(super, 0x10);
    }
    LinearMoveUpdate(super);
    if (super->direction == DirectionSouth) {
        super->action = 0x12;
        super->timer = 3;
        COLLISION_OFF(super);
        COLLISION_OFF(&this->unk_74.entity->base);
        InitializeAnimation(super, 8);
        InitAnimationForceUpdate(super->child, 3);
    }
}

void sub_0803AA00(MazaalBraceletEntity* this) {
    u32 direction;
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (sub_0803B870(this) == 0) {
        direction = (super->type ^ 1) * 0x10 + 8;
        if ((++super->timer & 3) == 0) {
            sub_08004596(super, direction);
        }
        LinearMoveUpdate(super);
        if ((super->direction == direction) || (super->y.HALF.HI >= gPlayerEntity.base.y.HALF.HI)) {
            super->action = 0x13;
            super->spriteSettings.draw = 0;
            super->direction = direction;
            this->unk_80.HWORD = gPlayerEntity.base.x.HALF.HI;
            InitAnimationForceUpdate(super->child, 4);
        }
    }
}
void sub_0803AA98(MazaalBraceletEntity* this) {
    MazaalBraceletEntity* entity;
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (sub_0803B870(this) == 0) {
        LinearMoveUpdate(super);
        if (sub_0803B6F4(this)) {
            super->action = 0x14;
            super->speed = 0x40;
            InitializeAnimation(super, 10);
            entity = this->unk_74.entity;
            entity->base.flags |= ENT_COLLIDE;
            entity = (MazaalBraceletEntity*)super->child;
            entity->base.hitType = 0x13;
            InitAnimationForceUpdate(&entity->base, 5);
            SoundReq(SFX_16E);
        }
    }
}

void sub_0803AB10(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    LinearMoveUpdate(super);
    sub_0803B55C(this);
    if ((super->child->frame & ANIM_DONE) != 0) {
        super->action = 0x15;
        super->timer = 15;
    }
}

void sub_0803AB5C(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (--super->timer == 0) {
        super->action = 0x16;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 0xb);
        InitAnimationForceUpdate(super->child, 6);
    }
}

void sub_0803ABB4(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    sub_0803B55C(this);
    if ((super->child->frame & ANIM_DONE) != 0) {
        super->action = 0x17;
        COLLISION_ON(super);
        super->speed = 0x180;
        InitializeAnimation(super, 0x10);
        InitAnimationForceUpdate(super->child, 0);
    }
}

void sub_0803AC1C(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (sub_0803B4E4(this)) {
        sub_0803B59C(this);
    } else {
        LinearMoveUpdate(super);
    }
}

void sub_0803AC60(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    if (!super->timer) {
        if (sub_0803B4E4(this)) {
            super->action = 0x19;
            super->subAction = 0;
            super->timer = 30;
        } else {
            LinearMoveUpdate(super);
        }
    } else {
        super->timer--;
    }
    sub_0803B824(this);
}

void sub_0803ACC0(MazaalBraceletEntity* this) {
    u16 uVar2;

    switch (super->subAction) {
        default:
            if (--super->timer == 0) {
                super->subAction = 1;
            }
            break;
        case 1:
            if (--super->z.HALF.HI * 0x10000 >> 0x10 < -0x20) {
                super->subAction = 2;
            }
            break;
        case 2:
            uVar2 = super->z.HALF.HI += 4;
            if (-1 < (uVar2 * 0x10000)) {
                super->z.HALF.HI = 0;
                super->timer = 12;
                super->subAction = 3;
                InitScreenShake(8, 0);
                SoundReq(SFX_158);
                sub_0803B804(this);
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->subAction = 4;
            }
            break;
        case 4:
            uVar2 = super->z.HALF.HI -= 2;
            if (uVar2 * 0x10000 >> 0x10 < -0x28) {
                super->subAction = 5;
            }
            break;
        case 5:
            uVar2 = super->z.HALF.HI += 4;
            if (-1 < (uVar2 * 0x10000)) {
                super->z.HALF.HI = 0;
                super->action = 0x1a;
                super->timer = 60;
                InitScreenShake(30, 0);
                SoundReq(SFX_158);
                sub_0803B804(this);
                return;
            }
            break;
    }
    sub_0803B824(this);
}

void sub_0803ADAC(MazaalBraceletEntity* this) {
    if (--super->timer == 0) {
        super->action = 0x16;
        super->spriteSettings.draw = 1;
        COLLISION_ON(&this->unk_74.entity->base);
        InitializeAnimation(super, 0xb);
        InitAnimationForceUpdate(super->child, 6);
        sub_0803B798();
    } else {
        sub_0803B824(this);
    }
}

void sub_0803ADF4(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    UpdateAnimationSingleFrame(super);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 0x1c;
        super->timer = 30;
        super->spriteSettings.draw = 0;
    }
}

void sub_0803AE48(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    UpdateAnimationSingleFrame(super);
    if (((super->timer == 0) || (--super->timer == 0)) &&
        ((((MazaalBraceletEntity*)super->parent)->unk_7c.HALF.HI & 3) != 0)) {
        super->action = 0x1d;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 4);
    } else {
        if (!sub_0803B4E4(this)) {
            LinearMoveUpdate(super);
        }
    }
}

void sub_0803AEC4(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    UpdateAnimationSingleFrame(super);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        COLLISION_ON(super);
        sub_0803B59C(this);
    }
}

void sub_0803AF18(MazaalBraceletEntity* this) {
    super->action = 0x1f;
    COLLISION_OFF(super);
    InitializeAnimation(super, 5);
    super->z.HALF.HI = gUnk_080CED6C[(super->parent->subtimer >> 4) & 7] + 4;
}

void sub_0803AF50(MazaalBraceletEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 0x20;
        super->spriteSettings.draw = 0;
        InitAnimationForceUpdate(super->child, 8);
    }
}

void sub_0803AF7C(MazaalBraceletEntity* this) {
    sub_0803B55C(this);
    if ((super->child->frame & ANIM_DONE) != 0) {
        super->action = 0x21;
        super->timer = 15;
    }
}

void sub_0803AF9C(MazaalBraceletEntity* this) {
    if (super->timer != 0) {
        super->timer--;
    } else {
        if (-0x20 < super->z.HALF.HI) {
            super->z.HALF.HI -= 2;
        } else {
            super->action = 0x22;
            super->timer = 10;
        }
    }
}

void sub_0803AFC8(MazaalBraceletEntity* this) {
    if (--super->timer == 0) {
        super->action = 0x23;
    }
}

void sub_0803AFE0(MazaalBraceletEntity* this) {
    if (super->z.HALF.HI < 0) {
        super->z.HALF.HI += 4;
    } else {
        super->action = 0x24;
        super->timer = 240;
        this->unk_84 = 3;
        super->z.HALF.HI = 0;
        InitScreenShake(160, 0);
        SoundReq(SFX_158);
    }
}

void sub_0803B01C(MazaalBraceletEntity* this) {
    if (--super->timer == 0) {
        super->action = 0x25;
    } else {
        if ((super->timer > 70) && ((super->timer & 0xF) == 0)) {
            sub_0803B724(this);
        }
    }
}

void sub_0803B04C(MazaalBraceletEntity* this) {
    if (super->z.HALF.HI > -6) {
        super->z.HALF.HI--;
    } else {
        super->action = 0x26;
        InitAnimationForceUpdate(super->child, 6);
    }
}

void sub_0803B074(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    sub_0803B55C(this);
    if ((super->child->frame & ANIM_DONE) != 0) {
        super->action = 0x27;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 4);
        InitAnimationForceUpdate(super->child, 0);
    }
}

void sub_0803B0D4(MazaalBraceletEntity* this) {
    UpdateAnimationSingleFrame(super);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        COLLISION_ON(super);
        sub_0803B59C(this);
    }
}

void sub_0803B100(MazaalBraceletEntity* this) {
    MazaalBraceletEntity* entity;

    super->action = 0x29;
    super->zVelocity = Q_16_16(1.25);
    if (super->type == 0) {
        super->hitbox = (Hitbox*)&gUnk_080FD364;
    } else {
        super->hitbox = (Hitbox*)&gUnk_080FD374;
    }
    entity = this->unk_74.entity;
    entity->base.action = 3;
    entity->unk_74.split.unk_74 = 0x20;
    InitAnimationForceUpdate(super->child, 9);
    SoundReq(SFX_14F);
}

void sub_0803B144(MazaalBraceletEntity* this) {
    UpdateAnimationSingleFrame(super->child);
    if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
        super->action = 0x2a;
        InitializeAnimation(super, 0x16);
        sub_0803B8E8(this, 0x14);
        InitScreenShake(8, 0);
    }
}

void sub_0803B17C(MazaalBraceletEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 0x2b;
        COLLISION_ON(super);
        super->hitType = 0x18;
        super->health = 0xff;
        this->unk_7e = 600;
    }
}

void sub_0803B1B8(MazaalBraceletEntity* this) {
    Entity* entity;
    u16 val;

    if ((super->frame & ANIM_DONE) == 0) {
        GetNextFrame(super);
        UpdateAnimationSingleFrame(super->child);
    }
    if (super->health < 0xf5) {
        super->action = 0x32;
        this->unk_7e = 0x5dc;
        super->spriteSettings.draw = 0;
        super->hitType = 0x14;
        entity = CreateFx(super, FX_GIANT_EXPLOSION4, 0);
        if (entity != NULL) {
            entity->x.HALF.HI += super->hitbox->offset_x;
            entity->y.HALF.HI += super->hitbox->offset_y;
            entity->spritePriority.b0 = 3;
        }

        entity = CreateObject(GROUND_ITEM, 0x5e, 0);
        if (entity != NULL) {
            entity->timer = 0;
            entity->direction = 0x90;
            PositionRelative(super, entity, Q_16_16(super->hitbox->offset_x), Q_16_16(super->hitbox->offset_y));
        }

        entity = &this->unk_74.entity->base;
        ((MazaalBraceletEntity*)entity)->unk_74.split.unk_74 = 0x40;

        entity = super->parent;
        ((MazaalBraceletEntity*)entity)->unk_80.HALF.LO |= (super->type == 0) ? 4 : 8;
        if ((((MazaalBraceletEntity*)entity)->unk_80.HALF.LO & 0xc) == 0xc) {
            entity->action = 0xb;
            entity->timer = 120;
            entity->zVelocity = 0;
            ((MazaalBraceletEntity*)entity)->unk_74.entity->unk_7e = 0x708;
            ((MazaalBraceletEntity*)entity)->unk_78.entity->unk_7e = 0x708;
        }
    } else {
        if (--this->unk_7e == 0) {
            sub_0803B6A4(this);
        }
    }
}

void sub_0803B2D0(MazaalBraceletEntity* this) {
    MazaalBraceletEntity* entity;

    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 0x2d;
        super->spriteSettings.draw = 0;
        entity = this->unk_74.entity;
        entity->base.action = 2;
        entity->unk_74.split.unk_74 = 0;
        entity->unk_78.split.unk_78 = 0;
        InitializeAnimation(&entity->base, 3);
    }
}

void sub_0803B30C(MazaalBraceletEntity* this) {
    Entity* entity;

    entity = &this->unk_74.entity->base;
    if ((entity->frame & ANIM_DONE) != 0) {
        super->action = 0x2e;
        sub_0803B8E8(this, 0x13);
        InitializeAnimation(entity, 0);
    }
}

void sub_0803B338(MazaalBraceletEntity* this) {
    if (super->z.HALF.HI > -10) {
        super->z.HALF.HI--;
    } else {
        super->action = 0x2f;
        super->timer = 15;
    }
}

void sub_0803B35C(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (--super->timer == 0) {
        super->action = 0x30;
    }
}

void sub_0803B398(MazaalBraceletEntity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    if (sub_0803B4E4(this)) {
        super->action = 0x31;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 4);
        InitAnimationForceUpdate(super->child, 0);
    } else {
        LinearMoveUpdate(super);
    }
}

void sub_0803B3F4(MazaalBraceletEntity* this) {
    u8 value;
    s8* ptr;
    u32 index;
    MazaalBraceletEntity* entity;

    ptr = gUnk_080CED6C;
    index = ((super->parent->subtimer >> 4) + 3);
    super->z.HALF.HI = ptr[(index + (u32)super->type * 2) & 7] + 4;
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->hitType = 0x17;
        if (super->type == 0) {
            super->hitbox = (Hitbox*)&gUnk_080FD35C;
        } else {
            super->hitbox = (Hitbox*)&gUnk_080FD36C;
        }
        entity = (MazaalBraceletEntity*)super->parent;
        value = (super->type == 0) ? 1 : 2;
        entity->unk_80.HALF.LO &= ~(((super->type == 0) ? 0x10 : 0x20) | value);
        sub_0803B59C(this);
    }
}

void sub_0803B480(MazaalBraceletEntity* this) {
    Entity* target;

    if (((this->unk_7e & 0x1f) == 0) && (target = CreateObject(SMOKE, 1, 0), target != NULL)) {
        PositionRelative(super, target, Q_16_16(gUnk_080CFD08[super->type]), 0);
    }
    if (--this->unk_7e == 0) {
        sub_0803B6A4(this);
    }
}

void sub_0803B4D4(MazaalBraceletEntity* this) {
    super->action = 3;
    InitializeAnimation(super, 0x10);
}

bool32 sub_0803B4E4(MazaalBraceletEntity* this) {
    u32 xoff;
    u32 yoff;

    xoff = super->parent->x.HALF.HI + gUnk_080CFD0A[super->type];
    yoff = super->parent->y.HALF.HI + 0x10;
    if (EntityWithinDistance(super, xoff, yoff, 2)) {
        super->x.HALF.HI = xoff;
        super->y.HALF.HI = yoff;
        return TRUE;
    } else {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, xoff, yoff);
        return FALSE;
    }
}

void sub_0803B538(MazaalBraceletEntity* this) {
    PositionRelative(super, super->child, 0, Q_16_16(-1.0));
    PositionRelative(super, &this->unk_74.entity->base, 0, Q_16_16(-2.0));
}

void sub_0803B55C(MazaalBraceletEntity* this) {
    Entity* entity1;
    Entity* entity2;

    entity2 = &this->unk_74.entity->base;
    entity1 = super->child;
    UpdateAnimationSingleFrame(entity1);
    if ((entity1->frame & 0x10) != 0) {
        if (entity2->animIndex != 1) {
            InitializeAnimation(entity2, 1);
        }
    } else {
        if (entity2->animIndex != 0) {
            InitializeAnimation(entity2, 0);
        }
    }
}

void sub_0803B59C(MazaalBraceletEntity* this) {
    super->action = 2;
    ((MazaalBraceletEntity*)super->parent)->unk_7c.HALF.HI |= (super->type == 0) ? 1 : 2;
}

void sub_0803B5C0(MazaalBraceletEntity* this) {
    u32 direction;
    u32 temp;

    direction = GetFacingDirection(super, &gPlayerEntity.base);
    if (direction < 10) {
        direction = 10;
    }
    if (direction > 0x16) {
        direction = 0x16;
    }
    if (super->type == 0) {
        temp = gUnk_080CFD0C[direction - 10];
    } else {
        temp = gUnk_080CFD0C[0x16 - direction];
    }
    if (super->frame != temp) {
        InitializeAnimation(super, temp);
    }
}

u32 sub_0803B610(MazaalBraceletEntity* this) {
    return EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI + gUnk_080CFD19[super->type],
                                gPlayerEntity.base.y.HALF.HI - 0xc, 8);
}

// sub_0803B698 was the tail of super function
void sub_0803B63C(MazaalBraceletEntity* this) {
    int y;
    int x;

    x = gPlayerEntity.base.x.HALF.HI;
    x += gUnk_080CFD19[super->type];
    y = gPlayerEntity.base.y.HALF.HI - 0xc;
    if (super->timer++ > 180) {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, x, y);
    } else {
        sub_08004596(super, CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, x, y));
    }
}

void sub_0803B6A4(MazaalBraceletEntity* this) {
    MazaalBraceletEntity* entity;

    super->action = 0x2c;
    super->hitType = 0x14;
    entity = (MazaalBraceletEntity*)super->parent;
    entity->unk_80.HALF.LO |= (super->type == 0) ? 0x10 : 0x20;
    entity->unk_80.HALF.LO &= (super->type == 0) ? -5 : -9;
    InitializeAnimation(super, 0x17);
}

bool32 sub_0803B6F4(MazaalBraceletEntity* this) {
    if (super->type == 0) {
        if (this->unk_80.HWORD > super->x.HALF.HI) {
            return TRUE;
        }
    } else {
        if (this->unk_80.HWORD < super->x.HALF.HI) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0803B724(MazaalBraceletEntity* this) {
    Entity* beetle;
    u32 random_value;
    u8 temp;

    if (((super->subtimer < 3) && (this->unk_84 != 0)) && (beetle = CreateEnemy(BEETLE, 1), beetle != NULL)) {
        beetle->type2 = 1;
        random_value = Random();
        temp = gUnk_080CFD1B[super->type];
        beetle->x.HALF.HI = (random_value & 0x70) + temp + gRoomControls.origin_x;
        beetle->y.HALF.HI = ((random_value >> 0x10) & 7) * 10 + 0x5c + gRoomControls.origin_y;
        beetle->parent = super;
        ResolveCollisionLayer(beetle);
        super->subtimer++;
        this->unk_84--;
    }
}

void sub_0803B798(void) {
    gPlayerState.jump_status = 0x41;
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &=
        ~(PL_CAPTURED | PL_FLAGS10000 | PL_GYORG_FIGHT | PL_ROLLING | PL_MOLDWORM_CAPTURED | PL_IN_HOLE |
          PL_MOLDWORM_RELEASED | PL_CLONING | PL_USE_LANTERN | PL_PARACHUTE | PL_CONVEYOR_PUSHED | PL_ENTER_MINECART |
          PL_SWORD_THRUST | PL_USE_OCARINA | PL_CLIMBING | PL_FLAGS40000000 | PL_FLAGS80000000);
    gPlayerEntity.base.flags |= ENT_COLLIDE;
    gPlayerEntity.base.zVelocity = Q_16_16(1.5);
    gPlayerEntity.base.z.HALF.HI = -10;
    gPlayerEntity.base.direction = 0x10;
    gPlayerEntity.base.animationState = 4;
    gPlayerEntity.base.spritePriority.b1 = 1;
    gPlayerEntity.base.spriteOffsetY = 0;
    gPlayerEntity.base.speed = 0x140;
    gPlayerEntity.base.iframes = -0x1e;
}

void sub_0803B804(MazaalBraceletEntity* this) {
    gPlayerEntity.base.iframes = 30;
    ModHealth(-4);
    SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
}

void sub_0803B824(MazaalBraceletEntity* this) {
    ResetActiveItems();
    gPlayerState.mobility |= 0x80;
    sub_0806FA90(super, &gPlayerEntity.base, gUnk_080CFD1D[super->type], 1);
    gPlayerEntity.base.spriteOffsetY = -6;
    gPlayerEntity.base.spritePriority.b1 = 0;
}

u32 sub_0803B870(MazaalBraceletEntity* this) {
    Entity* entity;

    entity = super->child;
    if ((entity->contactFlags & CONTACT_NOW) != 0 && (gPlayerState.flags & PL_CAPTURED)) {
        super->action = 0x18;
        super->timer = 68;
        super->spriteSettings.draw = 0;
        gPlayerEntity.base.flags &= ~ENT_COLLIDE;
        gPlayerEntity.base.iframes = -0x10;
        sub_0803B824(this);
        entity->hitType = 0x13;
        InitAnimationForceUpdate(entity, 7);
        SoundReq(SFX_16E);
        return 1;
    } else {
        entity->hitType = 0x15;
        return 0;
    }
}

void sub_0803B8E8(MazaalBraceletEntity* this, u32 unk) {
    Entity* entity;
    entity = super->child;
    entity->hitType = unk;
    entity = &this->unk_74.entity->base;
    entity->hitType = unk;
}

void sub_0803B8F8(MazaalBraceletEntity* this) {
    gUnk_080CFD20[super->action](this);
}

void sub_0803B910(MazaalBraceletEntity* this) {
    if (gRoomTransition.field_0x38 != 0) {
        super->action = 2;
        super->spriteSettings.draw = 1;
        this->unk_74.split.unk_74 = 0;
        sub_0803BA8C(this, 10);
    } else {
        super->action = 1;
        this->unk_74.split.unk_74 = 0x80;
    }
    super->spriteSettings.flipX = (super->type - 2);
    InitializeAnimation(super, 0);
    CopyPositionAndSpriteOffset(super->parent, super);
}

void sub_0803B978(MazaalBraceletEntity* this) {
    switch (super->subAction) {
        case 0:
            return;
        case 1:
            super->subAction = 2;
            super->timer = 2;
            super->subtimer = 30;
            this->unk_74.split.unk_74 = 0;
            SoundReq(SFX_1A9);
        case 2:
            sub_0803BA8C(this, super->subtimer);
            if ((this->unk_74.split.unk_75 | this->unk_74.split.unk_74) == 0) {
                SoundReq(SFX_1A9);
            }
            if (this->unk_74.split.unk_74 != 0) {
                return;
            }
            if (--super->timer != 0) {
                return;
            }
            super->timer = 2;
            super->subtimer -= 4;
            if (super->subtimer != 10) {
                return;
            }
            super->parent->parent->subAction = 3;
            super->subAction = 3;
            return;
        case 3:
            break;
        case 4:
            super->subAction = 5;
            super->spriteSettings.draw = 1;
            super->spriteRendering.alphaBlend = 1;
            break;
        default:
            super->action = 2;
            super->spriteRendering.alphaBlend = 0;
        case 5:
            GetNextFrame(super);
    }
    sub_0803BA8C(this, 0x10);
    if ((this->unk_74.split.unk_75 | this->unk_74.split.unk_74) == 0) {
        SoundReq(SFX_1A9);
    }
}

void sub_0803BA6C(MazaalBraceletEntity* this) {
    sub_0803BA8C(this, 10);
    GetNextFrame(super);
}

void sub_0803BA80(MazaalBraceletEntity* this) {
    sub_0803BA8C(this, 10);
}

void sub_0803BA8C(MazaalBraceletEntity* this, u32 unk) {
    u32 palette;
    u32 tmp;

    palette = 0;
    tmp = this->unk_74.split.unk_74 & 0xe0;
    if ((this->unk_74.split.unk_74 & 0xe0) == 0) {
        if (this->unk_74.split.unk_74 == 0) {
            if (9 < ++this->unk_74.split.unk_75) {
                this->unk_74.split.unk_75 = 0;
            }
            if (super->type == 2) {
                palette = gUnk_080CFD30[this->unk_74.split.unk_75];
            } else {
                palette = gUnk_080CFD44[this->unk_74.split.unk_75];
            }
        }
        this->unk_74.split.unk_74++;
        if (unk <= this->unk_74.split.unk_74) {
            this->unk_74.split.unk_74 = 0;
        }
    } else {
        if ((tmp & 0x80) == 0) {
            this->unk_74.split.unk_74 |= 0x80;
            if ((tmp & 0x20) != 0) {
                palette = gUnk_080CFD58[super->type - 2];
            } else {
                palette = gUnk_080CFD5C[super->type - 2];
            }
        }
    }
    if (palette != 0) {
        ChangeObjPalette(super, palette);
        ((MazaalBraceletEntity*)super->parent)->unk_78.entity->base.palette.b.b0 = super->palette.raw << 0x1c >> 0x1c;
        ((MazaalBraceletEntity*)super->parent)->unk_78.entity->base.palette.b.b4 = super->palette.b.b0;
        super->parent->child->palette.b.b0 = super->palette.raw << 0x1c >> 0x1c;
        super->parent->child->palette.b.b4 = super->palette.b.b0;
    }
}
