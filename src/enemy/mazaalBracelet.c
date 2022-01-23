/**
 * @file mazaalBracelet.c
 * @ingroup Enemies
 *
 * @brief Mazaal Bracelet enemy
 */

#include "enemy.h"
#include "object.h"
#include "functions.h"

void sub_0803B538(Entity*);
u32 sub_0803B4E4(Entity*);
void sub_0803B55C(Entity*);
void sub_0803B4D4(Entity*);
void sub_0803B59C(Entity*);
void sub_0803B5C0(Entity*);
u32 sub_0803B610(Entity*);
void sub_0803B63C(Entity*);
void sub_0803B6A4(Entity*);
u32 sub_0803B6F4(Entity*);
void sub_0803B8E8(Entity*, u32);
u32 sub_0803B870(Entity*);
void sub_0803B824(Entity*);
void sub_0803B804(Entity*);
void sub_0803B798(void);
void sub_0803BA8C(Entity*, u32);

void sub_0803B724(Entity*);
extern void SoundReqClipped(Entity*, u32);

void sub_0803A170(Entity*);
void sub_0803A188(Entity*);
void nullsub_167(Entity*);
void sub_0803A254(Entity*);
void sub_0803B8F8(Entity*);

void sub_0803A274(Entity*);
void sub_0803A364(Entity*);
void sub_0803A548(Entity*);
void sub_0803A58C(Entity*);
void sub_0803A5D0(Entity*);
void sub_0803A60C(Entity*);
void sub_0803A660(Entity*);
void sub_0803A6E8(Entity*);
void sub_0803A720(Entity*);
void sub_0803A740(Entity*);
void sub_0803A780(Entity*);
void sub_0803A7AC(Entity*);
void sub_0803A7CC(Entity*);
void sub_0803A814(Entity*);
void sub_0803A86C(Entity*);
void sub_0803A8B8(Entity*);
void sub_0803A90C(Entity*);
void sub_0803A978(Entity*);
void sub_0803AA00(Entity*);
void sub_0803AA98(Entity*);
void sub_0803AB10(Entity*);
void sub_0803AB5C(Entity*);
void sub_0803ABB4(Entity*);
void sub_0803AC1C(Entity*);
void sub_0803AC60(Entity*);
void sub_0803ACC0(Entity*);
void sub_0803ADAC(Entity*);
void sub_0803ADF4(Entity*);
void sub_0803AE48(Entity*);
void sub_0803AEC4(Entity*);
void sub_0803AF18(Entity*);
void sub_0803AF50(Entity*);
void sub_0803AF7C(Entity*);
void sub_0803AF9C(Entity*);
void sub_0803AFC8(Entity*);
void sub_0803AFE0(Entity*);
void sub_0803B01C(Entity*);
void sub_0803B04C(Entity*);
void sub_0803B074(Entity*);
void sub_0803B0D4(Entity*);
void sub_0803B100(Entity*);
void sub_0803B144(Entity*);
void sub_0803B17C(Entity*);
void sub_0803B1B8(Entity*);
void sub_0803B2D0(Entity*);
void sub_0803B30C(Entity*);
void sub_0803B338(Entity*);
void sub_0803B35C(Entity*);
void sub_0803B398(Entity*);
void sub_0803B3F4(Entity*);
void sub_0803B480(Entity*);

void sub_0803B910(Entity*);
void sub_0803B978(Entity*);
void sub_0803BA6C(Entity*);
void sub_0803BA80(Entity*);

// these are not with the rest of this files constant data
extern Hitbox gUnk_080FD35C;
extern Hitbox gUnk_080FD364;
extern Hitbox gUnk_080FD36C;
extern Hitbox gUnk_080FD374;

void (*const gUnk_080CFC14[])(Entity*) = { sub_0803A170, sub_0803A188, sub_08001324,
                                           sub_0804A7D4, sub_08001242, nullsub_167 };

void (*const gUnk_080CFC2C[])(Entity*) = { sub_0803A254, sub_0803A254, sub_0803B8F8, sub_0803B8F8 };

void (*const gUnk_080CFC3C[])(Entity*) = {
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

void (*const gUnk_080CFD20[])(Entity*) = { sub_0803B910, sub_0803B978, sub_0803BA6C, sub_0803BA80 };

const u16 gUnk_080CFD30[] = { 0xdb, 0xdd, 0xdf, 0xe1, 0xdf, 0xdd, 0xdb, 0xe3, 0xe5, 0xe3 };
const u16 gUnk_080CFD44[] = { 0xdc, 0xde, 0xe0, 0xe2, 0xe0, 0xde, 0xdc, 0xe4, 0xe6, 0xe4 };
const u16 gUnk_080CFD58[] = { 0xe5, 0xe6 };
const u16 gUnk_080CFD5C[] = { 0xe7, 0xe8 };

extern s8 gUnk_080CED6C[8];

void MazaalBracelet(Entity* this) {
    gUnk_080CFC14[GetNextFunction(this)](this);
}

void sub_0803A170(Entity* this) {
    gUnk_080CFC2C[this->type](this);
}

void sub_0803A188(Entity* this) {
    Entity* ent;

    if (this->type < 2) {
        if (this->action != 0x2b) {
            if ((0 < this->iframes) && ((this->bitfield == 0x95 || (this->bitfield == 0x8e)))) {
                this->action = 0x28;
                COLLISION_OFF(this);
                ent = this->parent;
                ent->field_0x7c.BYTES.byte1 = ent->field_0x7c.BYTES.byte1 | (this->type == 0 ? 1 : 2);
                ent->field_0x80.HALF.LO = (this->type == 0 ? 1 : 2) | ent->field_0x80.HALF.LO;
                ent = this->child;
                ent->iframes = this->iframes;
                ent = (*(Entity**)&this->field_0x74);
                ent->iframes = this->iframes;
                SoundReq(SFX_BOSS_HIT);
            }
        } else {
            ent = this->child;
            ent->iframes = this->iframes;
            ent = (*(Entity**)&this->field_0x74);
            ent->iframes = this->iframes;
            InitializeAnimation(this, 0x18);
            InitAnimationForceUpdate(this->child, 9);
            SoundReq(SFX_BOSS_HIT);
        }
    }
    sub_0804AA30(this, gUnk_080CFC14);
}

void nullsub_167(Entity* this) {
}

void sub_0803A254(Entity* this) {
    gUnk_080CFC3C[this->action](this);
    sub_0803B538(this);
}

void sub_0803A274(Entity* this) {
    Entity* pEVar1;

    if (gEntCount < 0x45) {
        if (this->type == 0) {
            pEVar1 = CreateEnemy(MAZAAL_HAND, 0);
            pEVar1->parent = this;
            this->child = pEVar1;
            pEVar1 = CreateEnemy(MAZAAL_BRACELET, 2);
            pEVar1->parent = this;
            *(Entity**)&this->field_0x74 = pEVar1;
            pEVar1 = CreateObject(OBJECT_7E, 1, 0);
            pEVar1->parent = this;
            pEVar1->child = this->child;
            PositionRelative(this->parent, this, 0x100000, 0x200000);
        } else {
            pEVar1 = CreateEnemy(MAZAAL_HAND, 1);
            pEVar1->parent = this;
            this->child = pEVar1;
            pEVar1 = CreateEnemy(MAZAAL_BRACELET, 3);
            pEVar1->parent = this;
            *(Entity**)&this->field_0x74 = pEVar1;
            pEVar1 = CreateObject(OBJECT_7E, 2, 0);
            pEVar1->parent = this;
            pEVar1->child = this->child;
            this->spriteSettings.flipX = 1;
            PositionRelative(this->parent, this, -0x100000, 0x200000);
        }
        if (gRoomTransition.field_0x38 != 0) {
            this->action = 3;
            COLLISION_ON(this);
            this->spriteSettings.draw = 1;
            this->child->spriteSettings.draw = 1;
            InitializeAnimation(this, 0x10);
        } else {
            this->action = 1;
            InitializeAnimation(this, 4);
        }
    }
}

void sub_0803A364(Entity* this) {
    u8 uVar1;
    Entity* pEVar3;
    u32 index;
    s8* ptr;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    switch (this->subAction & 0x7f) {
        case 0:
        case 2:
            break;
        case 1:
            this->subAction = 2;
            pEVar3 = this->child;
            pEVar3->spriteSettings.draw = 1;
            pEVar3->spriteRendering.alphaBlend = 1;
            break;
        case 3:
            this->subAction = 4;
            this->spriteSettings.draw = 1;
            this->child->spriteRendering.alphaBlend = 0;
            break;
        case 4:
            GetNextFrame(this);
            if ((this->frame & 0x80) != 0) {
                this->subAction = 5;
            }
            break;
        case 5:
            if (sub_0803B4E4(this) == 0) {
                LinearMoveUpdate(this);
                return;
            }
            this->type2 = 0;
            uVar1 = 6;
            this->subAction = uVar1;
            this->actionDelay = 0x1e;
            break;
        case 6:
            this->actionDelay--;
            if (this->actionDelay == 0) {
                this->subAction = 7;
                InitializeAnimation(this, 5);
            }
            break;
        case 7:
            GetNextFrame(this);
            if ((this->frame & 0x80) != 0) {
                this->subAction = 8;
                this->spriteSettings.draw = 0;
                InitAnimationForceUpdate(this->child, 8);
                SoundReq(SFX_16E);
            }
            break;
        case 8:
            sub_0803B55C(this);
            if ((this->child->frame & 0x80) == 0) {
                return;
            }
            uVar1 = 9;
            this->subAction = uVar1;
            this->actionDelay = 0x1e;
            break;
        case 9:
            this->actionDelay--;
            if (this->actionDelay == 0) {
                this->subAction = 10;
                InitAnimationForceUpdate(this->child, 6);
            }
            break;
        case 10:
            sub_0803B55C(this);
            if ((this->child->frame & 0x80) != 0) {
                this->subAction = 0xb;
                this->spriteSettings.draw = 1;
                InitializeAnimation(this, 4);
            }
            break;
        case 0xb:
            GetNextFrame(this);
            if ((this->frame & 0x80) == 0) {
                return;
            }
            if (this->type2 != 0) {
                uVar1 = 0xc;
                this->subAction = uVar1;
                this->actionDelay = 0x1e;
            } else {
                this->type2 = 1;
                this->subAction = 6;
                this->actionDelay = 10;
            }
            break;
        default:
            this->actionDelay--;
            if (this->actionDelay == 0) {
                COLLISION_ON(this);
                sub_0803B4D4(this);
            }
            break;
    }
}

void sub_0803A548(Entity* this) {
    u32 index;
    s8* ptr;

    sub_0803B5C0(this);
    UpdateAnimationSingleFrame(this);
    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B4E4(this) == 0) {
        LinearMoveUpdate(this);
    }
}

void sub_0803A58C(Entity* this) {
    u32 index;
    s8* ptr;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B4E4(this) != 0) {
        sub_0803B59C(this);
    } else {
        LinearMoveUpdate(this);
    }
}

void sub_0803A5D0(Entity* this) {
    u32 index;
    s8* ptr;

    this->action = 5;
    COLLISION_OFF(this);
    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    InitializeAnimation(this, 5);
}

void sub_0803A60C(Entity* this) {
    u32 index;
    s8* ptr;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 6;
        this->spriteSettings.draw = 0;
        InitAnimationForceUpdate(this->child, 8);
    }
}

void sub_0803A660(Entity* this) {
    u32 uVar2;
    u8* pbVar3;

    s8* ptr;
    u32 index;

    pbVar3 = &this->child->frame;
    if ((*pbVar3 & 0x80) != 0) {
        if (this->z.HALF.HI > -0x50) {
            this->z.HALF.HI = this->z.HALF.HI - 2;
        } else {
            this->action = 7;
            this->actionDelay = 0;
            uVar2 = GetFacingDirection(this, &gPlayerEntity);
            this->direction = (u8)uVar2;
            this->speed = 0x280;
            return;
        }
    } else {
        sub_0803B55C(this);
        if ((*pbVar3 & 0x80) != 0) {
            SoundReq(SFX_157);
        }
        ptr = gUnk_080CED6C;
        index = ((this->parent->field_0xf >> 4) + 3);
        this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    }
}

void sub_0803A6E8(Entity* this) {
    s32 y;

    if (sub_0803B610(this)) {
        this->action = 8;
        this->actionDelay = 10;
    } else {
        sub_0803B63C(this);
        LinearMoveUpdate(this);
        y = this->parent->y.HALF.HI + 8;
        if (y > this->y.HALF.HI) {
            this->y.HALF.HI = y;
        }
    }
}

void sub_0803A720(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 9;
        sub_0803B8E8(this, 0x16);
    }
}

void sub_0803A740(Entity* this) {
    u16 height;

    height = this->z.HALF.HI + 4;
    this->z.HALF.HI += 4;
    if (-1 < height * 0x10000) {
        this->z.HALF.HI = 0;
        this->action = 10;
        this->actionDelay = 10;
        this->parent->field_0x7c.BYTES.byte1 |= 0x40;
        sub_0803B8E8(this, 0x13);
        InitScreenShake(10, 0);
        SoundReq(SFX_158);
    }
}

void sub_0803A780(Entity* this) {
    if (--this->actionDelay == 0) {
        if (--this->field_0x7c.BYTES.byte0) {
            this->action = 6;
        } else {
            this->action = 0xb;
        }
    }
}

void sub_0803A7AC(Entity* this) {
    if (this->z.HALF.HI > -6) {
        this->z.HALF.HI--;
    } else {
        this->action = 0xc;
    }
}

void sub_0803A7CC(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B4E4(this)) {
        this->action = 0xd;
        InitAnimationForceUpdate(this->child, 6);
    } else {
        LinearMoveUpdate(this);
    }
}

void sub_0803A814(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    sub_0803B55C(this);
    if ((this->child->frame & 0x80) != 0) {
        this->action = 0xe;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 4);
    }
}

void sub_0803A86C(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        COLLISION_ON(this);
        sub_0803B59C(this);
    }
}

void sub_0803A8B8(Entity* this) {
    s8* ptr;
    u32 index;

    this->action = 0x10;
    this->actionDelay = 0x1e;
    this->direction = 0;
    this->speed = 0x80;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    InitializeAnimation(this, 6);
    InitAnimationForceUpdate(this->child, 1);
    SoundReq(SFX_153);
}

void sub_0803A90C(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    sub_0803B55C(this);
    LinearMoveUpdate(this);
    this->actionDelay--;
    if (this->actionDelay == 0) {
        this->action = 0x11;
        this->direction = this->type * 0x10 + 8;
        this->speed = 0x200;
        InitializeAnimation(this, 7);
        InitAnimationForceUpdate(this->child, 2);
    }
}

void sub_0803A978(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    sub_0803B55C(this);
    if ((++this->actionDelay & 3) == 0) {
        sub_08004596(this, 0x10);
    }
    LinearMoveUpdate(this);
    if (this->direction == 0x10) {
        this->action = 0x12;
        this->actionDelay = 3;
        COLLISION_OFF(this);
        *(u8*)(*(int*)&this->field_0x74 + 0x10) &= 0x7f;
        InitializeAnimation(this, 8);
        InitAnimationForceUpdate(this->child, 3);
    }
}

void sub_0803AA00(Entity* this) {
    u32 direction;
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B870(this) == 0) {
        direction = (this->type ^ 1) * 0x10 + 8;
        if ((++this->actionDelay & 3) == 0) {
            sub_08004596(this, direction);
        }
        LinearMoveUpdate(this);
        if ((this->direction == direction) || (this->y.HALF.HI >= gPlayerEntity.y.HALF.HI)) {
            this->action = 0x13;
            this->spriteSettings.draw = 0;
            this->direction = direction;
            this->field_0x80.HWORD = gPlayerEntity.x.HALF.HI;
            InitAnimationForceUpdate(this->child, 4);
        }
    }
}
void sub_0803AA98(Entity* this) {
    Entity* temp;
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B870(this) == 0) {
        LinearMoveUpdate(this);
        if (sub_0803B6F4(this) != 0) {
            this->action = 0x14;
            this->speed = 0x40;
            InitializeAnimation(this, 10);
            temp = (*(Entity**)&this->field_0x74);
            temp->flags |= 0x80;
            temp = this->child;
            temp->hitType = 0x13;
            InitAnimationForceUpdate(temp, 5);
            SoundReq(SFX_16E);
        }
    }
}

void sub_0803AB10(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    LinearMoveUpdate(this);
    sub_0803B55C(this);
    if ((this->child->frame & 0x80) != 0) {
        this->action = 0x15;
        this->actionDelay = 0xf;
    }
}

void sub_0803AB5C(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (--this->actionDelay == 0) {
        this->action = 0x16;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 0xb);
        InitAnimationForceUpdate(this->child, 6);
    }
}

void sub_0803ABB4(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    sub_0803B55C(this);
    if ((this->child->frame & 0x80) != 0) {
        this->action = 0x17;
        COLLISION_ON(this);
        this->speed = 0x180;
        InitializeAnimation(this, 0x10);
        InitAnimationForceUpdate(this->child, 0);
    }
}

void sub_0803AC1C(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B4E4(this)) {
        sub_0803B59C(this);
    } else {
        LinearMoveUpdate(this);
    }
}

void sub_0803AC60(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    if (!this->actionDelay) {
        if (sub_0803B4E4(this) != 0) {
            this->action = 0x19;
            this->subAction = 0;
            this->actionDelay = 0x1e;
        } else {
            LinearMoveUpdate(this);
        }
    } else {
        this->actionDelay = this->actionDelay - 1;
    }
    sub_0803B824(this);
}

void sub_0803ACC0(Entity* this) {
    u16 uVar2;

    switch (this->subAction) {
        default:
            if (--this->actionDelay == 0) {
                this->subAction = 1;
            }
            break;
        case 1:
            if (--this->z.HALF.HI * 0x10000 >> 0x10 < -0x20) {
                this->subAction = 2;
            }
            break;
        case 2:
            uVar2 = this->z.HALF.HI += 4;
            if (-1 < (uVar2 * 0x10000)) {
                this->z.HALF.HI = 0;
                this->actionDelay = 0xc;
                this->subAction = 3;
                InitScreenShake(8, 0);
                SoundReq(SFX_158);
                sub_0803B804(this);
            }
            break;
        case 3:
            if (--this->actionDelay == 0) {
                this->subAction = 4;
            }
            break;
        case 4:
            uVar2 = this->z.HALF.HI -= 2;
            if (uVar2 * 0x10000 >> 0x10 < -0x28) {
                this->subAction = 5;
            }
            break;
        case 5:
            uVar2 = this->z.HALF.HI += 4;
            if (-1 < (uVar2 * 0x10000)) {
                this->z.HALF.HI = 0;
                this->action = 0x1a;
                this->actionDelay = 0x3c;
                InitScreenShake(0x1e, 0);
                SoundReq(SFX_158);
                sub_0803B804(this);
                return;
            }
            break;
    }
    sub_0803B824(this);
}

void sub_0803ADAC(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 0x16;
        this->spriteSettings.draw = 1;
        (*(Entity**)&this->field_0x74)->flags |= 0x80;
        InitializeAnimation(this, 0xb);
        InitAnimationForceUpdate(this->child, 6);
        sub_0803B798();
    } else {
        sub_0803B824(this);
    }
}

void sub_0803ADF4(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    UpdateAnimationSingleFrame(this);
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 0x1c;
        this->actionDelay = 0x1e;
        this->spriteSettings.draw = 0;
    }
}

void sub_0803AE48(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    UpdateAnimationSingleFrame(this);
    if (((this->actionDelay == 0) || (--this->actionDelay == 0)) && ((this->parent->field_0x7c.BYTES.byte1 & 3) != 0)) {
        this->action = 0x1d;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 4);
    } else {
        if (sub_0803B4E4(this) == 0) {
            LinearMoveUpdate(this);
        }
    }
}

void sub_0803AEC4(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    UpdateAnimationSingleFrame(this);
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        COLLISION_ON(this);
        sub_0803B59C(this);
    }
}

void sub_0803AF18(Entity* this) {
    this->action = 0x1f;
    COLLISION_OFF(this);
    InitializeAnimation(this, 5);
    this->z.HALF.HI = gUnk_080CED6C[(this->parent->field_0xf >> 4) & 7] + 4;
}

void sub_0803AF50(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 0x20;
        this->spriteSettings.draw = 0;
        InitAnimationForceUpdate(this->child, 8);
    }
}

void sub_0803AF7C(Entity* this) {
    sub_0803B55C(this);
    if ((this->child->frame & 0x80) != 0) {
        this->action = 0x21;
        this->actionDelay = 0xf;
    }
}

void sub_0803AF9C(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        if (-0x20 < this->z.HALF.HI) {
            this->z.HALF.HI -= 2;
        } else {
            this->action = 0x22;
            this->actionDelay = 10;
        }
    }
}

void sub_0803AFC8(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 0x23;
    }
}

void sub_0803AFE0(Entity* this) {
    if (this->z.HALF.HI < 0) {
        this->z.HALF.HI += 4;
    } else {
        this->action = 0x24;
        this->actionDelay = 0xf0;
        *(u8*)&this->cutsceneBeh = 3;
        this->z.HALF.HI = 0;
        InitScreenShake(0xa0, 0);
        SoundReq(SFX_158);
    }
}

void sub_0803B01C(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 0x25;
    } else {
        if ((0x46 < this->actionDelay) && ((this->actionDelay & 0xf) == 0)) {
            sub_0803B724(this);
        }
    }
}

void sub_0803B04C(Entity* this) {
    if (this->z.HALF.HI > -6) {
        this->z.HALF.HI--;
    } else {
        this->action = 0x26;
        InitAnimationForceUpdate(this->child, 6);
    }
}

void sub_0803B074(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    sub_0803B55C(this);
    if ((this->child->frame & 0x80) != 0) {
        this->action = 0x27;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 4);
        InitAnimationForceUpdate(this->child, 0);
    }
}

void sub_0803B0D4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        COLLISION_ON(this);
        sub_0803B59C(this);
    }
}

void sub_0803B100(Entity* this) {
    Entity* temp;

    this->action = 0x29;
    this->zVelocity = 0x14000;
    if (this->type == 0) {
        this->hitbox = &gUnk_080FD364;
    } else {
        this->hitbox = &gUnk_080FD374;
    }
    temp = *(Entity**)&this->field_0x74;
    temp->action = 3;
    temp->field_0x74.HALF.LO = 0x20;
    InitAnimationForceUpdate(this->child, 9);
    SoundReq(SFX_14F);
}

void sub_0803B144(Entity* this) {
    UpdateAnimationSingleFrame(this->child);
    if (GravityUpdate(this, 0x2000) == 0) {
        this->action = 0x2a;
        InitializeAnimation(this, 0x16);
        sub_0803B8E8(this, 0x14);
        InitScreenShake(8, 0);
    }
}

void sub_0803B17C(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 0x2b;
        COLLISION_ON(this);
        this->hitType = 0x18;
        this->health = 0xff;
        this->field_0x7c.HALF.HI = 600;
    }
}

void sub_0803B1B8(Entity* this) {
    Entity* temp;
    u16 val;

    if ((this->frame & 0x80) == 0) {
        GetNextFrame(this);
        UpdateAnimationSingleFrame(this->child);
    }
    if (this->health < 0xf5) {
        this->action = 0x32;
        this->field_0x7c.HALF.HI = 0x5dc;
        this->spriteSettings.draw = 0;
        this->hitType = 0x14;
        temp = CreateFx(this, FX_GIANT_EXPLOSION4, 0);
        if (temp != (Entity*)0x0) {
            temp->x.HALF.HI += this->hitbox->offset_x;
            temp->y.HALF.HI += this->hitbox->offset_y;
            temp->spritePriority.b0 = 3;
        }
        temp = CreateObject(GROUND_ITEM, 0x5e, 0);
        if (temp != (Entity*)0x0) {
            temp->actionDelay = 0;
            temp->direction = 0x90;
            PositionRelative(this, temp, this->hitbox->offset_x << 0x10, this->hitbox->offset_y << 0x10);
        }
        temp = *(Entity**)&this->field_0x74;
        temp->field_0x74.HALF.LO = 0x40;
        temp = this->parent;
        temp->field_0x80.HALF.LO |= (this->type == 0) ? 4 : 8;
        if ((temp->field_0x80.HALF.LO & 0xc) == 0xc) {
            temp->action = 0xb;
            temp->actionDelay = 0x78;
            temp->zVelocity = 0;
            (*(Entity**)&temp->field_0x74)->field_0x7c.HALF_U.HI = 0x708;
            (*(Entity**)&temp->field_0x78)->field_0x7c.HALF_U.HI = 0x708;
        }
    } else {
        if (--this->field_0x7c.HALF.HI == 0) {
            sub_0803B6A4(this);
        }
    }
}

void sub_0803B2D0(Entity* this) {
    Entity* entity;

    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 0x2d;
        this->spriteSettings.draw = 0;
        entity = *(Entity**)&this->field_0x74;
        entity->action = 2;
        entity->field_0x74.HALF.LO = 0;
        entity->field_0x78.HWORD = 0;
        InitializeAnimation(entity, 3);
    }
}

void sub_0803B30C(Entity* this) {
    Entity* entity;

    entity = *(Entity**)&this->field_0x74;
    if ((entity->frame & 0x80) != 0) {
        this->action = 0x2e;
        sub_0803B8E8(this, 0x13);
        InitializeAnimation(entity, 0);
    }
}

void sub_0803B338(Entity* this) {
    if (this->z.HALF.HI > -10) {
        this->z.HALF.HI--;
    } else {
        this->action = 0x2f;
        this->actionDelay = 0xf;
    }
}

void sub_0803B35C(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (--this->actionDelay == 0) {
        this->action = 0x30;
    }
}

void sub_0803B398(Entity* this) {
    s8* ptr;
    u32 index;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    if (sub_0803B4E4(this) != 0) {
        this->action = 0x31;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 4);
        InitAnimationForceUpdate(this->child, 0);
    } else {
        LinearMoveUpdate(this);
    }
}

void sub_0803B3F4(Entity* this) {
    u8 value;
    s8* ptr;
    u32 index;
    Entity* temp;

    ptr = gUnk_080CED6C;
    index = ((this->parent->field_0xf >> 4) + 3);
    this->z.HALF.HI = ptr[(index + (u32)this->type * 2) & 7] + 4;
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        this->hitType = 0x17;
        if (this->type == 0) {
            this->hitbox = (Hitbox*)&gUnk_080FD35C;
        } else {
            this->hitbox = &gUnk_080FD36C;
        }
        temp = this->parent;
        value = (this->type == 0) ? 1 : 2;
        temp->field_0x80.HALF.LO &= ~(((this->type == 0) ? 0x10 : 0x20) | value);
        sub_0803B59C(this);
    }
}

void sub_0803B480(Entity* this) {
    Entity* target;

    if (((this->field_0x7c.HALF.HI & 0x1f) == 0) && (target = CreateObject(SMOKE, 1, 0), target != (Entity*)0x0)) {
        PositionRelative(this, target, gUnk_080CFD08[this->type] << 0x10, 0);
    }
    if (--this->field_0x7c.HALF.HI == 0) {
        sub_0803B6A4(this);
    }
}

void sub_0803B4D4(Entity* this) {
    this->action = 3;
    InitializeAnimation(this, 0x10);
}

u32 sub_0803B4E4(Entity* this) {
    u32 xoff;
    u32 yoff;

    xoff = this->parent->x.HALF.HI + gUnk_080CFD0A[this->type];
    yoff = this->parent->y.HALF.HI + 0x10;
    if (isEntityWithinDistance(this, xoff, yoff, 2)) {
        this->x.HALF.HI = xoff;
        this->y.HALF.HI = yoff;
        return 1;
    } else {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, xoff, yoff);
        return 0;
    }
}

void sub_0803B538(Entity* this) {
    PositionRelative(this, this->child, 0, -0x10000);
    PositionRelative(this, *(Entity**)&this->field_0x74, 0, -0x20000);
}

void sub_0803B55C(Entity* this) {
    Entity* entity;
    Entity* pEVar1;

    pEVar1 = *(Entity**)&this->field_0x74;
    entity = this->child;
    UpdateAnimationSingleFrame(entity);
    if ((entity->frame & 0x10) != 0) {
        if (pEVar1->animIndex != 1) {
            InitializeAnimation(pEVar1, 1);
        }
    } else {
        if (pEVar1->animIndex != 0) {
            InitializeAnimation(pEVar1, 0);
        }
    }
}

void sub_0803B59C(Entity* this) {
    this->action = 2;
    this->parent->field_0x7c.BYTES.byte1 |= (this->type == 0) ? 1 : 2;
}

void sub_0803B5C0(Entity* this) {
    u32 direction;
    u32 temp;

    direction = GetFacingDirection(this, &gPlayerEntity);
    if (direction < 10) {
        direction = 10;
    }
    if (direction > 0x16) {
        direction = 0x16;
    }
    if (this->type == 0) {
        temp = gUnk_080CFD0C[direction - 10];
    } else {
        temp = gUnk_080CFD0C[0x16 - direction];
    }
    if (this->frame != temp) {
        InitializeAnimation(this, temp);
    }
}

u32 sub_0803B610(Entity* this) {
    return isEntityWithinDistance(this, gPlayerEntity.x.HALF.HI + gUnk_080CFD19[this->type],
                                  gPlayerEntity.y.HALF.HI - 0xc, 8);
}

// sub_0803B698 was the tail of this function
void sub_0803B63C(Entity* this) {
    int y;
    int x;

    x = gPlayerEntity.x.HALF.HI;
    x += gUnk_080CFD19[this->type];
    y = gPlayerEntity.y.HALF.HI - 0xc;
    if (this->actionDelay++ >= 0xb5) {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, x, y);
    } else {
        sub_08004596(this, sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, x, y));
    }
}

void sub_0803B6A4(Entity* this) {
    Entity* temp;

    this->action = 0x2c;
    this->hitType = 0x14;
    temp = this->parent;
    temp->field_0x80.HALF.LO |= (this->type == 0) ? 0x10 : 0x20;
    temp->field_0x80.HALF.LO &= (this->type == 0) ? -5 : -9;
    InitializeAnimation(this, 0x17);
}

u32 sub_0803B6F4(Entity* this) {
    if (this->type == 0) {
        if (this->field_0x80.HWORD > this->x.HALF.HI) {
            return 1;
        }
    } else {
        if (this->field_0x80.HWORD < this->x.HALF.HI) {
            return 1;
        }
    }
    return 0;
}

void sub_0803B724(Entity* param_1) {
    Entity* pEVar1;
    u32 random_value;
    u8 temp;

    if (((param_1->field_0xf < 3) && (param_1->cutsceneBeh.HALF.LO != 0)) &&
        (pEVar1 = CreateEnemy(BEETLE, 1), pEVar1 != (Entity*)0x0)) {
        pEVar1->type2 = 1;
        random_value = Random();
        temp = gUnk_080CFD1B[param_1->type];
        pEVar1->x.HALF.HI = (random_value & 0x70) + temp + gRoomControls.origin_x;
        pEVar1->y.HALF.HI = ((random_value >> 0x10) & 7) * 10 + 0x5c + gRoomControls.origin_y;
        pEVar1->parent = param_1;
        ResolveCollisionLayer(pEVar1);
        param_1->field_0xf++;
        param_1->cutsceneBeh.HALF.LO--;
    }
}

void sub_0803B798(void) {
    gPlayerState.jump_status = 0x41;
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &= ~(0xffff0000 | PL_CAPTURED);
    gPlayerEntity.flags |= 0x80;
    gPlayerEntity.zVelocity = 0x18000;
    gPlayerEntity.z.HALF.HI = -10;
    gPlayerEntity.direction = 0x10;
    gPlayerEntity.animationState = 4;
    gPlayerEntity.spritePriority.b1 = 1;
    gPlayerEntity.spriteOffsetY = 0;
    gPlayerEntity.speed = 0x140;
    gPlayerEntity.iframes = -0x1e;
}

void sub_0803B804(Entity* this) {
    gPlayerEntity.iframes = 30;
    ModHealth(-4);
    SoundReqClipped(&gPlayerEntity, 0x7a);
}

void sub_0803B824(Entity* this) {
    ResetPlayer();
    gPlayerState.mobility = gPlayerState.mobility | 0x80;
    sub_0806FA90(this, &gPlayerEntity, gUnk_080CFD1D[this->type], 1);
    gPlayerEntity.spriteOffsetY = -6;
    gPlayerEntity.spritePriority.b1 = 0;
}

u32 sub_0803B870(Entity* this) {
    Entity* entity;

    entity = this->child;
    if ((entity->bitfield & 0x80) != 0 && (gPlayerState.flags & PL_CAPTURED)) {
        this->action = 0x18;
        this->actionDelay = 0x44;
        this->spriteSettings.draw = 0;
        gPlayerEntity.flags = gPlayerEntity.flags & 0x7f;
        gPlayerEntity.iframes = -0x10;
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

void sub_0803B8E8(Entity* this, u32 unk) {
    Entity* entity;
    entity = this->child;
    entity->hitType = unk;
    entity = (*(Entity**)&this->field_0x74);
    entity->hitType = unk;
}

void sub_0803B8F8(Entity* this) {
    gUnk_080CFD20[this->action](this);
}

void sub_0803B910(Entity* this) {
    if (gRoomTransition.field_0x38 != 0) {
        this->action = 2;
        this->spriteSettings.draw = 1;
        *(u8*)&this->field_0x74 = 0;
        sub_0803BA8C(this, 10);
    } else {
        this->action = 1;
        *(u8*)&this->field_0x74 = 0x80;
    }
    this->spriteSettings.flipX = (this->type - 2);
    InitializeAnimation(this, 0);
    CopyPositionAndSpriteOffset(this->parent, this);
}

void sub_0803B978(Entity* this) {
    switch (this->subAction) {
        case 0:
            return;
        case 1:
            this->subAction = 2;
            this->actionDelay = 2;
            this->field_0xf = 0x1e;
            this->field_0x74.HALF.LO = 0;
            SoundReq(SFX_1A9);
        case 2:
            sub_0803BA8C(this, this->field_0xf);
            if ((this->field_0x74.HALF.HI | this->field_0x74.HALF.LO) == 0) {
                SoundReq(SFX_1A9);
            }
            if (this->field_0x74.HALF.LO != 0) {
                return;
            }
            if (--this->actionDelay != 0) {
                return;
            }
            this->actionDelay = 2;
            this->field_0xf -= 4;
            if (this->field_0xf != 10) {
                return;
            }
            this->parent->parent->subAction = 3;
            this->subAction = 3;
            return;
        case 3:
            break;
        case 4:
            this->subAction = 5;
            this->spriteSettings.draw = 1;
            this->spriteRendering.alphaBlend = 1;
            break;
        default:
            this->action = 2;
            this->spriteRendering.alphaBlend = 0;
        case 5:
            GetNextFrame(this);
    }
    sub_0803BA8C(this, 0x10);
    if ((this->field_0x74.HALF.HI | this->field_0x74.HALF.LO) == 0) {
        SoundReq(SFX_1A9);
    }
}

void sub_0803BA6C(Entity* this) {
    sub_0803BA8C(this, 10);
    GetNextFrame(this);
}

void sub_0803BA80(Entity* this) {
    sub_0803BA8C(this, 10);
}

void sub_0803BA8C(Entity* this, u32 unk) {
    u32 sVar2;
    u32 tmp;

    sVar2 = 0;
    tmp = this->field_0x74.HALF.LO & 0xe0;
    if ((this->field_0x74.HALF.LO & 0xe0) == 0) {
        if (this->field_0x74.HALF.LO == 0) {
            if (9 < ++this->field_0x74.HALF.HI) {
                this->field_0x74.HALF.HI = 0;
            }
            if (this->type == 2) {
                sVar2 = gUnk_080CFD30[this->field_0x74.HALF.HI];
            } else {
                sVar2 = gUnk_080CFD44[this->field_0x74.HALF.HI];
            }
        }
        this->field_0x74.HALF.LO++;
        if (unk <= this->field_0x74.HALF.LO) {
            this->field_0x74.HALF.LO = 0;
        }
    } else {
        if ((tmp & 0x80) == 0) {
            this->field_0x74.HALF.LO |= 0x80;
            if ((tmp & 0x20) != 0) {
                sVar2 = gUnk_080CFD58[this->type - 2];
            } else {
                sVar2 = gUnk_080CFD5C[this->type - 2];
            }
        }
    }
    if (sVar2 != 0) {
        ChangeObjPalette(this, sVar2);
        (*(Entity**)&this->parent->field_0x78)->palette.b.b0 = this->palette.raw << 0x1c >> 0x1c;
        (*(Entity**)&this->parent->field_0x78)->palette.b.b4 = this->palette.b.b0;
        this->parent->child->palette.b.b0 = this->palette.raw << 0x1c >> 0x1c;
        this->parent->child->palette.b.b4 = this->palette.b.b0;
    }
}
