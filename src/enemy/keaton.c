/**
 * @file keaton.c
 * @ingroup Enemies
 *
 * @brief keaton enemy
 */

#include "enemy.h"
#include "functions.h"

extern Entity* gUnk_020000B0;

extern void (*const Keaton_Functions[])(Entity*);
extern void (*const gUnk_080CE7C8[])(Entity*);
extern u8 gUnk_080CE7E0[];
extern u16 gUnk_080CE7F0[];
extern s8 gUnk_080CE810[];

u32 sub_080325E8(Entity* this);
void sub_08032650(Entity* this);
void sub_0803269C(Entity* this, u32 direction);
void sub_080326FC(Entity* this);
u32 sub_0803271C(Entity* this);
void sub_08032740(Entity* this);
void sub_0803275C(Entity* this);
void sub_08032784(Entity* this);
void sub_08032794(Entity* this);
void sub_080327C8(Entity* this);
void sub_080327E0(Entity* this);

void Keaton(Entity* this) {
    EnemyFunctionHandler(this, Keaton_Functions);
    SetChildOffset(this, 0, 1, -18);
}

void Keaton_OnTick(Entity* this) {
    gUnk_080CE7C8[this->action](this);
}

void Keaton_OnCollision(Entity* this) {
    u32 var;

    if (this->action != 3 && this->action != 4) {
        this->action = 3;
        this->actionDelay = 0xC;
        this->direction = DirectionTurnAround(DirectionRoundUp(this->knockbackDirection));
        InitAnimationForceUpdate(this, this->direction >> 3);
    } else if (this->bitfield == 0xCC) {
        if (this->confusedTime == 0) {
            sub_0803275C(this);
        }
    }
    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, Keaton_Functions);
}

void Keaton_OnGrabbed(Entity* this) {
}

void sub_08032468(Entity* this) {
    sub_0804A720(this);
    this->animationState = 0;
    InitAnimationForceUpdate(this, 0);
    sub_080326FC(this);
    sub_08032740(this);
}

void sub_0803248C(Entity* this) {
    if (sub_080325E8(this) == 0) {
        if (sub_0803271C(this) == 0) {
            this->actionDelay--;
            if (this->actionDelay == 0) {
                sub_08032650(this);
            }
            if (ProcessMovement(this) == 0) {
                this->actionDelay = 1;
            }
            UpdateAnimationSingleFrame(this);
        }
    }
}

void sub_080324CC(Entity* this) {
    if (sub_080325E8(this) == 0) {
        UpdateAnimationSingleFrame(this);
        if (this->frame & 0x80) {
            sub_080326FC(this);
            sub_08032740(this);
        }
    }
}

void sub_080324FC(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay--;
        if (this->actionDelay == 0) {
            this->field_0xf = 0x1E;
            this->animationState = this->direction / 8;
            InitAnimationForceUpdate(this, this->animationState + 4);
        } else {
            return;
        }
    }
    UpdateAnimationSingleFrame(this);
    UpdateAnimationSingleFrame(this);
    this->field_0xf--;
    if (this->field_0xf == 0) {
        this->action = 4;
        this->speed = 0x1E0;
        this->field_0x76.HWORD = 0x46;
        this->field_0x78.HWORD = 0;
        *(((u8*)&this->field_0x7a) + 1) = 0;
        sub_080327C8(this);
    } else {
        if ((this->field_0xf & 0x3) == 0) {
            sub_08032794(this);
        }
    }
}

void sub_08032574(Entity* this) {
    if (this->child && (this->child->bitfield & 0x80)) {
        sub_0803275C(this);
        return;
    }

    if (--this->field_0x76.HWORD == 0 || !sub_080AEFE0(this)) {
        sub_0803275C(this);
        return;
    }

    UpdateAnimationSingleFrame(this);
    if ((this->field_0x76.HWORD & 0x7) == 0) {
        sub_08032794(this);
    }
}

void sub_080325C4(Entity* this) {
    this->actionDelay--;
    if ((this->actionDelay == 0) && (sub_080325E8(this) == 0)) {
        sub_08032784(this);
    }
}

u32 sub_080325E8(Entity* this) {
    if (((sub_08049FA0(this) != 0) && (sub_08049FDC(this, 1) != 0)) &&
        (EntityInRectRadius(this, gUnk_020000B0, 0x68, 0x40) != 0)) {
        if (((GetFacingDirection(this, gUnk_020000B0) - (DirectionRound(this->frame)) + 2) & 0x1F) < 5) {
            this->action = 3;
            this->actionDelay = 0xC;
            this->direction = DirectionRound(this->frame);
            return 1;
        }
    }
    return 0;
}

void sub_08032650(Entity* this) {
    u32 uVar3;

    uVar3 = Random();
    this->actionDelay = gUnk_080CE7E0[uVar3 & 0xf];
    if (!((sub_08049FA0(this) == 0) && ((uVar3 >> 8 & 1) == 0))) {
        this->direction = DirectionRound(uVar3 >> 0x10);
    } else {
        this->direction = DirectionRoundUp(sub_08049EE4(this));
    }
    sub_0803269C(this, this->direction);
}

void sub_0803269C(Entity* this, u32 direction) {
    u32 uVar1;

    if (((direction - 3) & 7) < 3) {
        uVar1 = DirectionToAnimationState(direction);
        if (((this->animationState - uVar1) & 3) > 1) {
            this->animationState = uVar1;
            InitAnimationForceUpdate(this, (this->animIndex & 0xFC) + uVar1);
        }
    } else {
        uVar1 = DirectionToAnimationState(direction);
        if (uVar1 != this->animationState) {
            this->animationState = uVar1;
            InitAnimationForceUpdate(this, (this->animIndex & 0xFC) + uVar1);
        }
    }
}

void sub_080326FC(Entity* this) {
    this->field_0x74.HWORD = gUnk_080CE7F0[Random() & 0xF];
}

u32 sub_0803271C(Entity* this) {
    this->field_0x74.HWORD--;
    if (this->field_0x74.HWORD == 0) {
        sub_08032784(this);
        return 1;
    }
    return 0;
}

void sub_08032740(Entity* this) {
    this->action = 1;
    this->speed = 0x80;
    InitializeAnimation(this, this->animationState);
    sub_08032650(this);
}

void sub_0803275C(Entity* this) {
    this->action = 5;
    this->actionDelay = 0x2D;
    this->speed = 0x80;
    InitAnimationForceUpdate(this, this->animationState);
    sub_0803269C(this, this->direction);
    sub_080327E0(this);
}

void sub_08032784(Entity* this) {
    this->action = 2;
    InitAnimationForceUpdate(this, this->animationState + 8);
}

void sub_08032794(Entity* this) {
    Entity* target;
    s8* temp;

    target = CreateFx(this, FX_DASH, 0x40);
    if (target != NULL) {
        temp = &gUnk_080CE810[this->animationState * 2];
        PositionRelative(this, target, Q_16_16(temp[0]), Q_16_16(temp[1]));
    }
}

void sub_080327C8(Entity* this) {
    Entity* child;

    child = CreateProjectileWithParent(this, KEATON_DAGGER, 0);
    if (child != NULL) {
        child->parent = this;
        this->child = child;
    }
}

void sub_080327E0(Entity* this) {
    if (this->child != NULL) {
        this->child->parent = NULL;
        this->child = NULL;
    }
}
