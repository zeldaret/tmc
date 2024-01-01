/**
 * @file ghini.c
 * @ingroup Enemies
 *
 * @brief Ghini enemy
 */
#include "area.h"
#include "enemy.h"
#include "functions.h"
#include "physics.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x10];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u16 unk_7c;
} GhiniEntity;

extern Entity* gUnk_020000B0;

extern void (*const Ghini_Functions[])(GhiniEntity*);
extern void (*const Ghini_Actions[])(GhiniEntity*);
extern void (*const Ghini_SubActions[])(GhiniEntity*);
extern const u8 gUnk_080D0970[];
extern const u8 gUnk_080D0974[];
extern const s8 gUnk_080D0978[];
extern const u8 gUnk_080D0980[];
extern const s8 gUnk_080D0984[];

void sub_0803F694(GhiniEntity*);
void sub_0803F630(GhiniEntity*);
void sub_0803F6EC(GhiniEntity*);
void sub_0803F51C(GhiniEntity*);
void sub_0803F50C(GhiniEntity*);
bool32 sub_0803F5A8(GhiniEntity*);
bool32 sub_0803F5D4(GhiniEntity*);
void sub_0803F58C(GhiniEntity*);
void sub_0803F66C(GhiniEntity*);
void sub_0803F738(GhiniEntity*);
void sub_0803F6C0(GhiniEntity*);
void sub_0803F528(GhiniEntity*);

void Ghini(GhiniEntity* this) {
    Ghini_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void Ghini_OnTick(GhiniEntity* this) {
    Ghini_Actions[super->action](this);
    sub_0803F694(this);
}

void Ghini_OnCollision(GhiniEntity* this) {
    if (super->action == 8 || super->action == 9) {
        super->animationState = 0xff;
        InitializeAnimation(super, (super->knockbackDirection >> 4 ^ 1) + 1);
        sub_0803F630(this);
        sub_0803F6EC(this);
    }
    if ((super->hitType == 0x25) && (super->contactFlags == CONTACT_NOW)) {
        super->action = 8;
        InitializeAnimation(super, 3);
    } else {
        if (super->contactFlags == (CONTACT_NOW | 0x1d)) {
            super->zVelocity = 0x18000;
        }
        if (super->confusedTime != 0) {
            super->animationState = super->knockbackDirection >> 4;
            InitializeAnimation(super, super->animationState + 7);
            EnemyCreateFX(super, FX_STARS);
        }
        if (super->health != this->unk_7a) {
            this->unk_7a = super->health;
            if (super->action == 1 || super->action == 2) {
                sub_0803F51C(this);
            }
            InitializeAnimation(super, (super->knockbackDirection >> 4) + 7);
        }
    }
    EnemyFunctionHandlerAfterCollision(super, Ghini_Functions);
}

void Ghini_OnKnockback(GhiniEntity* this) {
    GetNextFrame(super);
    GenericKnockback2(super);
    if (((super->knockbackDuration == 0) && (super->health != 0)) && (super->confusedTime == 0)) {
        super->animationState = 0xff;
        if (super->animIndex == 7 || super->animIndex == 8) {
            InitializeAnimation(super, ((super->animIndex - 7) ^ 1) + 1);
        }
    }
}

void Ghini_OnConfused(GhiniEntity* this) {
    if (super->animIndex != 7 && super->animIndex != 8) {
        InitializeAnimation(super, super->animationState + 7);
    }
    GenericConfused(super);
    if (super->z.HALF.HI == 0) {
        super->z.HALF.HI = -1;
    }
    if (super->confusedTime == 0) {
        InitializeAnimation(super, (super->animationState ^ 1) + 1);
        super->direction = 0xff;
        super->animationState = 0xff;
        sub_0803F630(this);
    }
}

void Ghini_OnGrabbed(GhiniEntity* this) {
    if (sub_0806F520(super)) {
        Ghini_SubActions[super->subAction](this);
    } else {
        sub_0803F51C(this);
        InitializeAnimation(super, (super->direction >> 4) + 1);
    }
}

void Ghini_SubAction0(GhiniEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
    InitializeAnimation(super, (gPlayerEntity.base.animationState >> 2) + 5);
}

void Ghini_SubAction1(GhiniEntity* this) {
    GetNextFrame(super);
    sub_0806F4E8(super);
}

void Ghini_SubAction2(GhiniEntity* this) {
    GetNextFrame(super);
    if (sub_0806F3E4(super)) {
        Entity* effect = CreateFx(super, FX_DEATH, 0);
        if (effect != NULL) {
            effect->spritePriority.b0 = 3;
        }
        GenericDeath(super);
    }
}

void Ghini_Init(GhiniEntity* this) {
    u32 rand;

    sub_0804A720(super);
    rand = Random();
    super->direction = rand & 0x1e;
    super->animationState = 0xff;
    super->gustJarFlags = 1;
    this->unk_7a = super->health;
    this->unk_7b = (rand >> 4);
    this->unk_7c = 0;
    if (super->type != 0) {
        sub_0803F50C(this);
    } else {
        sub_0803F51C(this);
        InitializeAnimation(super, (super->direction >> 4) + 1);
    }
}

void Ghini_Action1(GhiniEntity* this) {
    if (sub_0803F5A8(this)) {
        super->action = 2;
        super->timer = (Random() & 0x60) + 10;
    }
}

void Ghini_Action2(GhiniEntity* this) {
    if (sub_0803F5A8(this) == 0) {
        sub_0803F50C(this);
    } else if (--super->timer == 0) {
        super->action = 3;
        super->timer = 30;
        if (sub_08049DF4(1) != NULL) {
            super->direction = GetFacingDirection(super, gUnk_020000B0);
        } else {
            super->direction = Random() & 0x1f;
        }
        super->animationState = super->direction >> 4;
        InitializeAnimation(super, super->animationState + 1);
    }
}

void Ghini_Action3(GhiniEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        sub_0803F51C(this);
    }
}

void Ghini_Action4(GhiniEntity* this) {
    if (sub_0803F5D4(this) == FALSE) {
        sub_0803F58C(this);
        GetNextFrame(super);
        if (--super->timer == 0) {
            sub_0803F51C(this);
        }
    }
}

void Ghini_Action5(GhiniEntity* this) {
    GetNextFrame(super);
    super->direction = sub_08049F84(super, 1);
    if ((super->direction) != 0xff) {
        sub_0803F66C(this);
        if (--this->unk_78 == 0) {
            super->action = 6;
            super->speed = 0x100;
        }
    } else {
        sub_0803F51C(this);
    }
}

void Ghini_Action6(GhiniEntity* this) {
    u32 tmp;

    if (sub_0803F5A8(this) == 0) {
        sub_0803F51C(this);
    } else if (sub_08049DF4(1) != NULL) {
        tmp = super->timer + 1;
        super->timer = tmp;
        if ((tmp & gUnk_080D0970[tmp * 0x1000000 >> 0x1e]) == 0) {
            sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
        }
        sub_0803F66C(this);
        ProcessMovement1(super);
        GetNextFrame(super);
    } else {
        super->action = 7;
        super->timer = 30;
    }
}

void Ghini_Action7(GhiniEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        sub_0803F51C(this);
    }
}

void Ghini_Action8(GhiniEntity* this) {
    sub_0803F738(this);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 9;
        super->flags |= 0x80;
        this->unk_78 = 0;
        InitializeAnimation(super, 4);
    }
}

void Ghini_Action9(GhiniEntity* this) {
    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        sub_0803F6C0(this);
    }
    if (sub_0807953C() != 0) {
        this->unk_78 += 0xc;
    }
    if (gPlayerEntity.base.health == 0) {
        this->unk_78 = 0xe0;
    }
    if (++this->unk_78 >= 0xe0) {
        this->unk_7c = 0x78;
        super->animationState = 0xff;
        super->iframes = -0xc;
        super->knockbackDuration = 0x14;
        super->knockbackSpeed = 0x180;
        super->knockbackDirection = gPlayerEntity.base.animationState << 2 ^ 0x10;
        sub_0803F51C(this);
        sub_0803F6EC(this);
    } else {
        sub_0803F738(this);
    }
}

void sub_0803F50C(GhiniEntity* this) {
    super->action = 1;
    InitializeAnimation(super, 9);
}

void sub_0803F51C(GhiniEntity* this) {
    super->action = 4;
    sub_0803F528(this);
}

void sub_0803F528(GhiniEntity* this) {
    u32 rand = Random();
    super->timer = (rand & 8) + 8;
    if (sub_08049FA0(super)) {
        super->direction = (super->direction + gUnk_080D0978[rand & 7]) & 0x1e;
    } else {
        super->direction = sub_08049EE4(super) & 0x1e;
    }
    super->speed = gUnk_080D0974[rand >> 4 & 3];
    super->hitType = 0x24;
    sub_0803F66C(this);
}

void sub_0803F58C(GhiniEntity* this) {
    s32 yAfter;
    s32 yBefore;

    yBefore = super->y.WORD;
    ProcessMovement1(super);
    yAfter = super->y.WORD;
    super->y.WORD = yAfter - (yAfter - yBefore) / 2;
}

bool32 sub_0803F5A8(GhiniEntity* this) {
    u32 result;
    if (sub_08049FDC(super, 1) == 0) {
        result = 0;
    } else if ((s16)gArea.lightLevel < 0x10) {
        result = sub_0806FD54(super);
    } else {
        result = 1;
    }
    return result;
}

bool32 sub_0803F5D4(GhiniEntity* this) {
    if (this->unk_7c != 0) {
        this->unk_7c--;
    } else if ((sub_08049FDC(super, 1)) &&
               ((sub_0806FD54(super) ||
                 ((0xf < (s16)gArea.lightLevel && (EntityInRectRadius(super, gUnk_020000B0, 0x70, 0x48))))))) {
        sub_0803F630(this);
        return TRUE;
    }
    return FALSE;
}

void sub_0803F630(GhiniEntity* this) {
    s16 tmp;

    super->action = 5;
    super->hitType = 0x25;
    tmp = 0;
    if (gPlayerClones[0] != NULL) {
        tmp = 0x3c;
    }
    this->unk_78 = gUnk_080D0980[Random() & 3] + tmp;
}

void sub_0803F66C(GhiniEntity* this) {
    u8 tmp;

    if (((super->direction & 0xf) != 0) || (super->animationState == 0xff)) {
        if (super->direction >> 4 != super->animationState) {
            tmp = super->direction >> 4;
            super->animationState = tmp;
            InitializeAnimation(super, tmp + 1);
        }
    }
}

void sub_0803F694(GhiniEntity* this) {
    super->z.HALF.HI = gUnk_080D0984[(this->unk_7b++ >> 3) & 3];
}

void sub_0803F6C0(GhiniEntity* this) {
    super->frame &= ~1;
    gPlayerEntity.base.iframes = 0xc;
    ModHealth(-4);
    SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
}

void sub_0803F6EC(GhiniEntity* this) {
    if (gPlayerEntity.base.health != 0) {
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        gPlayerEntity.base.zVelocity = Q_16_16(1.5);
        gPlayerEntity.base.z.HALF.HI = -2;
        gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2;
        gPlayerEntity.base.iframes = -0x3c;
        gPlayerState.jump_status = 0x41;
    }
    gPlayerState.flags &= ~PL_CAPTURED;
}

void sub_0803F738(GhiniEntity* this) {
    ResetActiveItems();
    gPlayerState.mobility |= 0x80;
    gPlayerState.field_0xa |= 0x80;
    sub_0806FA90(&gPlayerEntity.base, super, 0, 1);
    super->spriteOffsetY -= 2;
}

void (*const Ghini_Functions[])(GhiniEntity*) = {
    Ghini_OnTick,     Ghini_OnCollision, Ghini_OnKnockback, (void (*)(GhiniEntity*))GenericDeath,
    Ghini_OnConfused, Ghini_OnGrabbed,
};
void (*const Ghini_Actions[])(GhiniEntity*) = {
    Ghini_Init,    Ghini_Action1, Ghini_Action2, Ghini_Action3, Ghini_Action4,
    Ghini_Action5, Ghini_Action6, Ghini_Action7, Ghini_Action8, Ghini_Action9,
};
void (*const Ghini_SubActions[])(GhiniEntity*) = {
    Ghini_SubAction0,
    Ghini_SubAction1,
    Ghini_SubAction2,
};
const u8 gUnk_080D0970[] = {
    15,
    7,
    3,
    1,
};
const u8 gUnk_080D0974[] = {
    224,
    192,
    160,
    128,
};
const s8 gUnk_080D0978[] = {
    0, -2, 0, 2, 0, -4, 0, 4,
};
const u8 gUnk_080D0980[] = {
    15,
    25,
    34,
    45,
};
const s8 gUnk_080D0984[] = {
    -1,
    -2,
    -3,
    -2,
};
