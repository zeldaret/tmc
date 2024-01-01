/**
 * @file mulldozer.c
 * @ingroup Enemies
 *
 * @brief Mulldozer enemy
 */
#include "collision.h"
#include "enemy.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 filler[0x18];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
} MulldozerEntity;

extern Entity* gUnk_020000B0;

extern void (*const Mulldozer_Functions[])(MulldozerEntity*);
extern void (*const Mulldozer_Actions[])(MulldozerEntity*);
extern const u8 gUnk_080CEA50[];
extern const u8 gUnk_080CEA54[];
extern const s8 gUnk_080CEA56[];

void sub_08033174(MulldozerEntity*);
void sub_08032F24(MulldozerEntity*);
void sub_080331E8(MulldozerEntity*);
void sub_08033058(MulldozerEntity*);
bool32 sub_08033364(MulldozerEntity*);
void sub_080330C0(MulldozerEntity*);
void sub_08033100(MulldozerEntity*);
void sub_08032F64(MulldozerEntity*);
void sub_08032F48(MulldozerEntity*);
void sub_080331B4(MulldozerEntity*);
void sub_08032F90(MulldozerEntity*);
void sub_08033000(MulldozerEntity*);
void sub_08033320(MulldozerEntity*);
void sub_080332A8(MulldozerEntity*);
void sub_08033280(MulldozerEntity*);
void sub_080332E8(MulldozerEntity*, s32);

void Mulldozer(MulldozerEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Mulldozer_Functions);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void Mulldozer_OnInit(MulldozerEntity* this) {
    Mulldozer_Actions[super->action](this);
}

void Mulldozer_OnCollision(MulldozerEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, 0x1c);
    }
    EnemyFunctionHandlerAfterCollision(super, Mulldozer_Functions);
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        switch (super->contactFlags & 0x3f) {
            case 2:
            case 3:
                super->action = 6;
                super->timer = (super->type != 0) ? 90 : 200;
                super->subtimer = 2;
                this->unk_80 = 3;
                super->direction = super->knockbackDirection;
                super->direction += ((Random() & 0x40) != 0) ? 4 : 0x1C;
                super->direction &= 0x1f;
                super->speed = 0;
                break;
            default:
                super->action = 5;
                super->subtimer = 4;
                sub_08033174(this);
                break;
        }
    }
}

void Mulldozer_OnKnockback(MulldozerEntity* this) {
    if (--super->subtimer == 0) {
        super->subtimer = 2;
        super->animationState = (super->animationState + 1) & 7;
        sub_08032F24(this);
        sub_080331E8(this);
    }
    GenericKnockback(super);
}

void Mulldozer_OnGrabbed(MulldozerEntity* this) {
}

void Mulldozer_Init(MulldozerEntity* this) {
    sub_0804A720(super);
    sub_08033058(this);
}

void Mulldozer_Action1(MulldozerEntity* this) {
    if (--super->timer == 0) {
        sub_080330C0(this);
    } else {
        if (sub_08033364(this)) {
            sub_08033100(this);
        }
    }
    sub_08032F64(this);
}

void Mulldozer_Action2(MulldozerEntity* this) {
    if (--super->timer == 0) {
        sub_08033058(this);
    }
    sub_08032F48(this);
}

void Mulldozer_Action3(MulldozerEntity* this) {
    if (--super->timer == 0) {
        super->action = 4;
        super->subtimer = 8;
        super->speed = 0x1e0;
        sub_080331B4(this);
        if ((this->unk_82 & 0x80) != 0) {
            super->direction = (super->direction + 0x1c) & 0x1c;
            this->unk_82 = this->unk_82 & 0x7f;
        } else {
            super->direction = (super->direction + 4) & 0x1c;
            this->unk_82 = this->unk_82 | 0x80;
        }
        super->animationState = super->direction >> 2;
        InitializeAnimation(super, super->animationState + 4);
    } else {
        sub_08032F90(this);
        sub_080331E8(this);
        sub_08032F64(this);
    }
}

void Mulldozer_Action4(MulldozerEntity* this) {
    if (--super->timer == 0) {
        super->action = 5;
        super->subtimer = 4;
        sub_08033174(this);
    } else {
        sub_08033000(this);
        sub_080331E8(this);
        sub_08032F64(this);
    }
}

void Mulldozer_Action5(MulldozerEntity* this) {
    if (--super->timer == 0) {
        sub_08033320(this);
        sub_080330C0(this);
    } else if ((super->type == 0) && (--super->subtimer == 0)) {
        super->subtimer = 4;
        sub_080332A8(this);
    }
    sub_080331E8(this);
    ProcessMovement0(super);
}

void Mulldozer_Action6(MulldozerEntity* this) {
    ProcessMovement0(super);
    sub_08032F48(this);
    if (--super->subtimer == 0) {
        super->subtimer = 2;
        super->animationState = (super->animationState + 1) & 7;
        sub_08032F24(this);
        sub_080331E8(this);
    }
    if (--super->timer == 0) {
        super->action = 5;
        super->subtimer = 4;
        sub_08033174(this);
    }
}

void sub_08032F24(MulldozerEntity* this) {
    u32 tmpA;
    u32 tmpB;

    if (this->unk_80 == 0) {
        tmpA = 0;
        tmpB = super->animationState >> 1;
    } else {
        tmpA = 4;
        tmpB = super->animationState;
    }
    InitializeAnimation(super, tmpA + tmpB);
}

void sub_08032F48(MulldozerEntity* this) {
    if (this->unk_80 == 2) {
        GetNextFrame(super);
    }
    GetNextFrame(super);
}

void sub_08032F64(MulldozerEntity* this) {
    if (super->collisions != COL_NONE) {
        sub_0800417E(super, super->collisions);
        super->animationState = super->direction >> 2;
        sub_08032F24(this);
    }
    sub_08032F48(this);
    ProcessMovement0(super);
}

void sub_08032F90(MulldozerEntity* this) {
    if (super->type == 0) {
        if (super->timer == 16) {
            this->unk_80 = 2;
        }
        if (--super->subtimer == 0) {
            super->subtimer = 8;
            sub_08033280(this);
        }
    } else {
        if (--super->subtimer == 0) {
            super->subtimer = 4;
            if ((this->unk_82 & 0x80) != 0) {
                super->direction = (super->direction + 0x1c) & 0x1c;
            } else {
                super->direction = (super->direction + 4) & 0x1c;
            }
            super->animationState = super->direction >> 2;
            InitializeAnimation(super, super->animationState + 4);
        }
    }
}

void sub_08033000(MulldozerEntity* this) {
    if (--super->subtimer == 0) {
        super->subtimer = 16;
        if ((this->unk_82 & 0x80) != 0) {
            super->direction = (super->direction + 0x18) & 0x1c;
            this->unk_82 &= ~0x80;
        } else {
            super->direction = (super->direction + 8) & 0x1c;
            this->unk_82 |= 0x80;
        }

        super->animationState = super->direction >> 2;
        InitializeAnimation(super, super->animationState + 4);
    }
}

void sub_08033058(MulldozerEntity* this) {
    u32 uVar2;
    u32 uVar3;

    super->action = 1;
    this->unk_80 = 1;
    super->timer = gUnk_080CEA50[Random() & 3];
    if ((sub_08049FA0(super) == 0) && ((Random() & 3) != 0)) {
        uVar2 = sub_08049EE4(super);
        uVar3 = Random();
        super->direction = (gUnk_080CEA54[uVar3 & 1] + uVar2) & 0x18;
    } else {
        super->direction = (Random()) & 0x18;
    }
    super->animationState = super->direction >> 2;
    sub_08032F24(this);
}

void sub_080330C0(MulldozerEntity* this) {
    super->action = 2;
    this->unk_80 = 0;
    if (super->type == 0) {
        super->timer = (Random() & 0x38) + 24;
    } else {
        super->timer = 6;
    }
    super->speed = 0x60;
    super->direction = (super->direction + 4) & 0x18;
    super->animationState = super->direction >> 2;
    sub_08032F24(this);
}

void sub_08033100(MulldozerEntity* this) {
    super->action = 3;
    if (super->type == 0) {
        this->unk_80 = 1;
        super->timer = 48;
        super->subtimer = 8;
        super->speed = 0;
        super->direction = (sub_08049F84(super, 1) + 2) & 0x1c;
    } else {
        this->unk_80 = 2;
        sub_080331B4(this);
        super->timer += 16;
        super->subtimer = 4;
        super->speed = 0x160;
    }
    this->unk_83 = 0;
    this->unk_82 = Random() & 0x80;
    super->animationState = super->direction >> 2;
    sub_08032F24(this);
}

void sub_08033174(MulldozerEntity* this) {
    this->unk_80 = 1;
    this->unk_81 = super->direction;
    this->unk_82 = 0;
    this->unk_83 = 0;
    if (super->type == 0) {
        super->timer = (Random() & 0x18) + 24;
    } else {
        super->timer = 12;
    }
    super->speed = 0xa0;
    sub_08032F24(this);
}

void sub_080331B4(MulldozerEntity* this) {
    u32 rand = Random() & 0xf0;
    u8 timer = 30;

    if ((rand & 0x80) != 0) {
        timer = 60;
    } else {
        if ((rand & 0x40) != 0) {
            timer = 45;
        }
        if ((rand & 0x20) != 0) {
            timer = 75;
        }
    }
    super->timer = timer;
}

void sub_080331E8(MulldozerEntity* this) {
    bool32 createEffect;
    u32 unaff_r6;
    const s8* ptr;

    createEffect = FALSE;
    if (super->action != 5) {
        this->unk_83 = this->unk_83 + 1U;
        if (this->unk_80 != 2) {
            this->unk_83 &= 0xf;
        } else {
            this->unk_83 &= 0x7;
        }
        if (this->unk_83 == 0) {
            createEffect = TRUE;
            unaff_r6 = super->animationState << 1;
        }
    } else {
        this->unk_83 = (this->unk_83 + 1) & 0xf;
        if (this->unk_83 == 0) {
            createEffect = TRUE;
            unaff_r6 = super->direction >> 1;
        }
    }
    if (createEffect) {
        Entity* effect = CreateFx(super, 2, 0x40);
        if (effect != NULL) {
            ptr = &gUnk_080CEA56[unaff_r6];
            super->frame ^= 0x20;
            effect->x.HALF.HI += ptr[0];
            effect->y.HALF.HI += ptr[1];
            EnqueueSFX(SFX_BUTTON_PRESS);
        }
    }
}

void sub_08033280(MulldozerEntity* this) {
    u32 direction;
    super->direction = (sub_08049F84(super, 1) + 2) & 0x1c;
    direction = super->direction >> 2;
    if (direction != super->animationState) {
        super->animationState = direction;
        InitializeAnimation(super, direction + 4);
    }
}

void sub_080332A8(MulldozerEntity* this) {
    s32 oldDirection = super->direction;
    super->direction = this->unk_81;
    sub_08004596(super, sub_08049F84(super, 1));
    this->unk_81 = super->direction;
    super->direction = oldDirection;
    oldDirection = ((this->unk_81 + 2) & 0x1c) >> 2;
    if (oldDirection != super->animationState) {
        sub_080332E8(this, oldDirection);
    }
}

void sub_080332E8(MulldozerEntity* this, s32 param_2) {
    s32 tmp;

    this->unk_82 = 0;
    tmp = param_2 - super->animationState;
    if (tmp >= 1) {
        if (tmp < 5) {
            this->unk_82 = 1;
        } else {
            this->unk_82 = 2;
        }
    } else {
        if (tmp < -4) {
            this->unk_82 = 1;
        } else {
            this->unk_82 = 2;
        }
    }

    super->animationState = param_2;
    InitializeAnimation(super, param_2 + 4);
}

void sub_08033320(MulldozerEntity* this) {
    u32 bVar4;
    int temp;

    bVar4 = super->animationState * 4;
    if ((bVar4 & 4) != 0) {
        switch (this->unk_82 & 3) {
            case 1:
                temp = 4;
                break;
            case 2:
                temp = 0x1c;
                break;
            default:
                temp = ((Random() & 0x10)) ? 4 : 0x1c;
                break;
        }
        super->direction = (temp + bVar4) & 0x18;
    } else {
        super->direction = bVar4;
    }
}

bool32 sub_08033364(MulldozerEntity* this) {
    Entity* entity;
    u32 radius;
    u32 tmp;

    entity = (Entity*)sub_08049DF4(1);
    if (entity != NULL) {
        if (super->type != 0) {
            radius = 0x48;
        } else {
            radius = 0x38;
        }
        if (EntityInRectRadius(super, entity, radius, radius) != 0) {
            if (super->type != 0) {
                return TRUE;
            }
            tmp = GetFacingDirection(super, gUnk_020000B0);
            tmp = Direction8RoundUp(tmp);
            tmp = Direction8ToAnimationState(tmp);
            if (super->animationState == tmp) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

void (*const Mulldozer_Functions[])(MulldozerEntity*) = {
    Mulldozer_OnInit,
    Mulldozer_OnCollision,
    Mulldozer_OnKnockback,
    (void (*)(MulldozerEntity*))GenericDeath,
    (void (*)(MulldozerEntity*))GenericConfused,
    Mulldozer_OnGrabbed,
};
void (*const Mulldozer_Actions[])(MulldozerEntity*) = {
    Mulldozer_Init,    Mulldozer_Action1, Mulldozer_Action2, Mulldozer_Action3,
    Mulldozer_Action4, Mulldozer_Action5, Mulldozer_Action6,
};
const u8 gUnk_080CEA50[] = {
    30,
    45,
    60,
    90,
};
const u8 gUnk_080CEA54[] = {
    252,
    4,
};
const s8 gUnk_080CEA56[] = { 0, 6, -3, 3, -6, 0, -3, -3, 0, -6, 3, -3, 6, 0, 3, 3 };
