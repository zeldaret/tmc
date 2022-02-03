/**
 * @file ghini.c
 * @ingroup Enemies
 *
 * @brief Ghini enemy
 */

#define NENT_DEPRECATED
#include "global.h"
#include "enemy.h"
#include "functions.h"
#include "area.h"
#include "coord.h"

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
extern const u8 gUnk_080D0978[];
extern const u8 gUnk_080D0980[];
extern const u8 gUnk_080D0984[];

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
    SetChildOffset(super, 0, 1, -0x10);
}

void Ghini_OnTick(GhiniEntity* this) {
    Ghini_Actions[super->action](this);
    sub_0803F694(this);
}

void sub_0803F028(GhiniEntity* this) {
    if (super->action == 8 || super->action == 9) {
        super->animationState = 0xff;
        InitializeAnimation(super, (super->knockbackDirection >> 4 ^ 1) + 1);
        sub_0803F630(this);
        sub_0803F6EC(this);
    }
    if ((super->hitType == 0x25) && (super->bitfield == 0x80)) {
        super->action = 8;
        InitializeAnimation(super, 3);
    } else {
        if (super->bitfield == 0x9d) {
            super->zVelocity = 0x18000;
        }
        if (super->field_0x43 != 0) {
            super->animationState = super->knockbackDirection >> 4;
            InitializeAnimation(super, super->animationState + 7);
            sub_0804A9FC(super, 0x1c);
        }
        if (super->health != this->unk_7a) {
            this->unk_7a = super->health;
            if (super->action == 1 || super->action == 2) {
                sub_0803F51C(this);
            }
            InitializeAnimation(super, (super->knockbackDirection >> 4) + 7);
        }
    }
    sub_0804AA30(super, Ghini_Functions);
}

void sub_0803F0F4(GhiniEntity* this) {
    GetNextFrame(super);
    sub_08001328(super);
    if (((super->knockbackDuration == 0) && (super->health != 0)) && (super->field_0x43 == 0)) {
        super->animationState = 0xff;
        if (super->animIndex == 7 || super->animIndex == 8) {
            InitializeAnimation(super, ((super->animIndex - 7) ^ 1) + 1);
        }
    }
}

void sub_0803F148(GhiniEntity* this) {
    if (super->animIndex != 7 && super->animIndex != 8) {
        InitializeAnimation(super, super->animationState + 7);
    }
    sub_08001242(super);
    if (super->z.HALF.HI == 0) {
        super->z.HALF.HI = 0xffff;
    }
    if (super->field_0x43 == 0) {
        InitializeAnimation(super, (super->animationState ^ 1) + 1);
        super->direction = 0xff;
        super->animationState = 0xff;
        sub_0803F630(this);
    }
}

void sub_0803F1A8(GhiniEntity* this) {
    if (sub_0806F520()) {
        Ghini_SubActions[super->subAction](this);
    } else {
        sub_0803F51C(this);
        InitializeAnimation(super, (super->direction >> 4) + 1);
    }
}

void Ghini_SubAction0(GhiniEntity* this) {
    super->subAction = 1;
    super->field_0x1d = 0x3c;
    InitializeAnimation(super, (gPlayerEntity.animationState >> 2) + 5);
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
        sub_0804A7D4(super);
    }
}

void Ghini_Init(GhiniEntity* this) {
    u32 rand;

    sub_0804A720(super);
    rand = Random();
    super->direction = rand & 0x1e;
    super->animationState = 0xff;
    super->field_0x1c = 1;
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
        super->actionDelay = (Random() & 0x60) + 10;
    }
}

void Ghini_Action2(GhiniEntity* this) {
    if (sub_0803F5A8(this) == 0) {
        sub_0803F50C(this);
    } else {
        if (--super->actionDelay == 0) {
            super->action = 3;
            super->actionDelay = 0x1e;
            if (sub_08049DF4(1) != NULL) {
                super->direction = GetFacingDirection(super, gUnk_020000B0);
            } else {
                super->direction = Random() & 0x1f;
            }
            super->animationState = super->direction >> 4;
            InitializeAnimation(super, super->animationState + 1);
        }
    }
}

void Ghini_Action3(GhiniEntity* this) {
    GetNextFrame(super);
    if (--super->actionDelay == 0) {
        sub_0803F51C(this);
    }
}

void Ghini_Action4(GhiniEntity* this) {
    if (sub_0803F5D4(this) == FALSE) {
        sub_0803F58C(this);
        GetNextFrame(super);
        if (--super->actionDelay == 0) {
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
    } else {
        if (sub_08049DF4(1) != NULL) {
            tmp = super->actionDelay + 1;
            super->actionDelay = tmp;
            if ((tmp & gUnk_080D0970[tmp * 0x1000000 >> 0x1e]) == 0) {
                sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
            }
            sub_0803F66C(this);
            sub_080AEFB4(super);
            GetNextFrame(super);
        } else {
            super->action = 7;
            super->actionDelay = 0x1e;
        }
    }
}

void Ghini_Action7(GhiniEntity* this) {
    GetNextFrame(super);
    if (--super->actionDelay == 0) {
        sub_0803F51C(this);
    }
}

void Ghini_Action8(GhiniEntity* this) {
    sub_0803F738(this);
    GetNextFrame(super);
    if ((super->frame & 0x80) != 0) {
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
    if (gPlayerEntity.health == 0) {
        this->unk_78 = 0xe0;
    }
    if (++this->unk_78 >= 0xe0) {
        this->unk_7c = 0x78;
        super->animationState = 0xff;
        super->iframes = -0xc;
        super->knockbackDuration = 0x14;
        super->field_0x46 = 0x180;
        super->knockbackDirection = gPlayerEntity.animationState << 2 ^ 0x10;
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
    super->actionDelay = (rand & 8) + 8;
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
    sub_080AEFB4(super);
    yAfter = super->y.WORD;
    super->y.WORD = yAfter - (yAfter - yBefore) / 2;
}

bool32 sub_0803F5A8(GhiniEntity* this) {
    u32 result;
    if (sub_08049FDC(super, 1) == 0) {
        result = 0;
    } else if ((s16)gArea.unk_0a < 0x10) {
        result = sub_0806FD54(super);
    } else {
        result = 1;
    }
    return result;
}

bool32 sub_0803F5D4(GhiniEntity* this) {
    if (this->unk_7c != 0) {
        this->unk_7c--;
    } else {
        if ((sub_08049FDC(super, 1)) &&
            ((sub_0806FD54(super) ||
              ((0xf < (s16)gArea.unk_0a && (EntityInRectRadius(super, gUnk_020000B0, 0x70, 0x48))))))) {
            sub_0803F630(this);
            return TRUE;
        }
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
    super->z.HALF.HI = gUnk_080D0984[(((u32)this->unk_7b++ << 0x18) >> 0x1b) & 3] << 0x18 >> 0x18;
}

void sub_0803F6C0(GhiniEntity* this) {
    super->frame &= 0xfe;
    gPlayerEntity.iframes = 0xc;
    ModHealth(-4);
    SoundReqClipped(&gPlayerEntity, SFX_PLY_VO6);
}

void sub_0803F6EC(GhiniEntity* this) {
    if (gPlayerEntity.health != 0) {
        gPlayerEntity.flags |= 0x80;
        gPlayerEntity.zVelocity = 0x18000;
        gPlayerEntity.z.HALF.HI = 0xfffe;
        gPlayerEntity.direction = gPlayerEntity.animationState << 2;
        gPlayerEntity.iframes = -0x3c;
        gPlayerState.jump_status = 0x41;
    }
    gPlayerState.flags &= 0xffffffef;
}

void sub_0803F738(GhiniEntity* this) {
    ResetPlayer();
    gPlayerState.mobility |= 0x80;
    gPlayerState.field_0xa |= 0x80;
    sub_0806FA90(&gPlayerEntity, super, 0, 1);
    super->spriteOffsetY -= 2;
}

void (*const Ghini_Functions[])(GhiniEntity*) = {
    Ghini_OnTick, sub_0803F028, sub_0803F0F4, (void (*)(GhiniEntity*))sub_0804A7D4, sub_0803F148, sub_0803F1A8,
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
const u8 gUnk_080D0978[] = {
    0, 254, 0, 2, 0, 252, 0, 4,
};
const u8 gUnk_080D0980[] = {
    15,
    25,
    34,
    45,
};
const u8 gUnk_080D0984[] = {
    255,
    254,
    253,
    254,
};
