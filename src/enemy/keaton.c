/**
 * @file keaton.c
 * @ingroup Enemies
 *
 * @brief keaton enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unused2[1];
    /*0x7b*/ u8 unk_7b;
} KeatonEntity;

extern Entity* gUnk_020000B0;
void Keaton_OnTick(KeatonEntity*);
void Keaton_OnCollision(KeatonEntity*);
void Keaton_OnGrabbed(KeatonEntity*);
void Keaton_Init(KeatonEntity*);
void Keaton_Action1(KeatonEntity*);
void Keaton_Action2(KeatonEntity*);
void Keaton_Action3(KeatonEntity*);
void Keaton_Action4(KeatonEntity*);
void Keaton_Action5(KeatonEntity*);

static void (*const Keaton_Functions[])(KeatonEntity*) = {
    Keaton_OnTick,
    Keaton_OnCollision,
    (void (*)(KeatonEntity*))GenericKnockback,
    (void (*)(KeatonEntity*))GenericDeath,
    (void (*)(KeatonEntity*))GenericConfused,
    Keaton_OnGrabbed,
};

bool32 sub_080325E8(KeatonEntity* this);
void sub_08032650(KeatonEntity* this);
void sub_0803269C(KeatonEntity* this, u32 direction);
void sub_080326FC(KeatonEntity* this);
bool32 sub_0803271C(KeatonEntity* this);
void sub_08032740(KeatonEntity* this);
void sub_0803275C(KeatonEntity* this);
void sub_08032784(KeatonEntity* this);
void sub_08032794(KeatonEntity* this);
void sub_080327C8(KeatonEntity* this);
void sub_080327E0(KeatonEntity* this);

void Keaton(KeatonEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Keaton_Functions);
    EnemySetFXOffset(super, 0, 1, -18);
}

void Keaton_OnTick(KeatonEntity* this) {
    static void (*const Keaton_Actions[])(KeatonEntity*) = {
        Keaton_Init, Keaton_Action1, Keaton_Action2, Keaton_Action3, Keaton_Action4, Keaton_Action5,
    };
    Keaton_Actions[super->action](this);
}

void Keaton_OnCollision(KeatonEntity* this) {
    u32 var;

    if (super->action != 3 && super->action != 4) {
        super->action = 3;
        super->timer = 12;
        super->direction = DirectionTurnAround(DirectionRoundUp(super->knockbackDirection));
        InitAnimationForceUpdate(super, super->direction >> 3);
    } else if (super->contactFlags == 0xCC) {
        if (super->confusedTime == 0) {
            sub_0803275C(this);
        }
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, Keaton_Functions);
}

void Keaton_OnGrabbed(KeatonEntity* this) {
}

void Keaton_Init(KeatonEntity* this) {
    sub_0804A720(super);
    super->animationState = 0;
    InitAnimationForceUpdate(super, 0);
    sub_080326FC(this);
    sub_08032740(this);
}

void Keaton_Action1(KeatonEntity* this) {
    if (!sub_080325E8(this) && !sub_0803271C(this)) {
        super->timer--;
        if (super->timer == 0) {
            sub_08032650(this);
        }
        if (!ProcessMovement0(super)) {
            super->timer = 1;
        }
        UpdateAnimationSingleFrame(super);
    }
}

void Keaton_Action2(KeatonEntity* this) {
    if (!sub_080325E8(this)) {
        UpdateAnimationSingleFrame(super);
        if (super->frame & ANIM_DONE) {
            sub_080326FC(this);
            sub_08032740(this);
        }
    }
}

void Keaton_Action3(KeatonEntity* this) {
    if (super->timer != 0) {
        super->timer--;
        if (super->timer == 0) {
            super->subtimer = 30;
            super->animationState = super->direction / 8;
            InitAnimationForceUpdate(super, super->animationState + 4);
        } else {
            return;
        }
    }
    UpdateAnimationSingleFrame(super);
    UpdateAnimationSingleFrame(super);
    super->subtimer--;
    if (super->subtimer == 0) {
        super->action = 4;
        super->speed = 0x1E0;
        this->unk_76 = 0x46;
        this->unk_78 = 0;
        this->unk_7b = 0;
        sub_080327C8(this);
    } else {
        if ((super->subtimer & 0x3) == 0) {
            sub_08032794(this);
        }
    }
}

void Keaton_Action4(KeatonEntity* this) {
    if (super->child && (super->child->contactFlags & CONTACT_NOW)) {
        sub_0803275C(this);
        return;
    }

    if (--this->unk_76 == 0 || !ProcessMovement2(super)) {
        sub_0803275C(this);
        return;
    }

    UpdateAnimationSingleFrame(super);
    if ((this->unk_76 & 0x7) == 0) {
        sub_08032794(this);
    }
}

void Keaton_Action5(KeatonEntity* this) {
    super->timer--;
    if ((super->timer == 0) && !sub_080325E8(this)) {
        sub_08032784(this);
    }
}

u32 sub_080325E8(KeatonEntity* this) {
    if ((sub_08049FA0(super) && sub_08049FDC(super, 1)) &&
        (EntityInRectRadius(super, gUnk_020000B0, 0x68, 0x40) != 0)) {
        if (((GetFacingDirection(super, gUnk_020000B0) - (DirectionRound(super->frame)) + 2) & 0x1F) < 5) {
            super->action = 3;
            super->timer = 12;
            super->direction = DirectionRound(super->frame);
            return TRUE;
        }
    }
    return FALSE;
}

void sub_08032650(KeatonEntity* this) {
    static const u8 gUnk_080CE7E0[] = { 60, 60, 90, 90, 90, 90, 120, 120, 120, 120, 120, 120, 120, 120, 150, 150 };
    u32 rand = Random();

    super->timer = gUnk_080CE7E0[rand & 0xF];
    if (!((sub_08049FA0(super) == 0) && ((rand >> 8 & 1) == 0))) {
        super->direction = DirectionRound(rand >> 0x10);
    } else {
        super->direction = DirectionRoundUp(sub_08049EE4(super));
    }
    sub_0803269C(this, super->direction);
}

void sub_0803269C(KeatonEntity* this, u32 direction) {
    u32 uVar1;

    if (((direction - 3) & 7) < 3) {
        uVar1 = DirectionToAnimationState(direction);
        if (((super->animationState - uVar1) & 3) > 1) {
            super->animationState = uVar1;
            InitAnimationForceUpdate(super, (super->animIndex & 0xFC) + uVar1);
        }
    } else {
        uVar1 = DirectionToAnimationState(direction);
        if (uVar1 != super->animationState) {
            super->animationState = uVar1;
            InitAnimationForceUpdate(super, (super->animIndex & 0xFC) + uVar1);
        }
    }
}

void sub_080326FC(KeatonEntity* this) {
    static const u16 gUnk_080CE7F0[] = { 0xd2,  0xd2,  0xf0,  0xf0,  0x10e, 0x10e, 0x10e, 0x10e,
                                         0x12c, 0x12c, 0x12c, 0x12c, 0x12c, 0x12c, 0x12c, 0x12c };
    this->unk_74 = gUnk_080CE7F0[Random() & 0xF];
}

bool32 sub_0803271C(KeatonEntity* this) {
    this->unk_74--;
    if (this->unk_74 == 0) {
        sub_08032784(this);
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08032740(KeatonEntity* this) {
    super->action = 1;
    super->speed = 0x80;
    InitializeAnimation(super, super->animationState);
    sub_08032650(this);
}

void sub_0803275C(KeatonEntity* this) {
    super->action = 5;
    super->timer = 45;
    super->speed = 0x80;
    InitAnimationForceUpdate(super, super->animationState);
    sub_0803269C(this, super->direction);
    sub_080327E0(this);
}

void sub_08032784(KeatonEntity* this) {
    super->action = 2;
    InitAnimationForceUpdate(super, super->animationState + 8);
}

void sub_08032794(KeatonEntity* this) {
    Entity* target;
    const s8* temp;
    static const s8 gUnk_080CE810[] = { 0, 2, -4, 0, 0, -11, 4, 0 };

    target = CreateFx(super, FX_DASH, 0x40);
    if (target != NULL) {
        temp = &gUnk_080CE810[super->animationState * 2];
        PositionRelative(super, target, Q_16_16(temp[0]), Q_16_16(temp[1]));
    }
}

void sub_080327C8(KeatonEntity* this) {
    Entity* child;

    child = EnemyCreateProjectile(super, KEATON_DAGGER, 0);
    if (child != NULL) {
        child->parent = super;
        super->child = child;
    }
}

void sub_080327E0(KeatonEntity* this) {
    if (super->child != NULL) {
        super->child->parent = NULL;
        super->child = NULL;
    }
}
