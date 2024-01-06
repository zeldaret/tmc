/**
 * @file cloudPiranha.c
 * @ingroup Enemies
 *
 * @brief Cloud Piranha enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "physics.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x18];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
} CloudPiranhaEntity;

void sub_08038754(CloudPiranhaEntity*);
void sub_080387F0(CloudPiranhaEntity*);
bool32 sub_0803872C(CloudPiranhaEntity*, u32);
void CloudPiranha_OnTick(CloudPiranhaEntity*);
void CloudPiranha_OnCollision(CloudPiranhaEntity*);
void CloudPiranha_OnGrabbed(CloudPiranhaEntity*);
void CloudPiranha_Init(CloudPiranhaEntity*);
void CloudPiranha_Action1(CloudPiranhaEntity*);
void sub_080385CC(CloudPiranhaEntity*);
void CloudPiranha_Action3(CloudPiranhaEntity*);
void CloudPiranha_Action4(CloudPiranhaEntity*);
void CloudPiranha_Action5(CloudPiranhaEntity*);

void (*const gUnk_080CF4F0[])(CloudPiranhaEntity*) = {
    CloudPiranha_OnTick,
    CloudPiranha_OnCollision,
    (void (*)(CloudPiranhaEntity*))GenericKnockback,
    (void (*)(CloudPiranhaEntity*))GenericDeath,
    (void (*)(CloudPiranhaEntity*))GenericConfused,
    CloudPiranha_OnGrabbed,
};

void CloudPiranha(CloudPiranhaEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)&gUnk_080CF4F0);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void CloudPiranha_OnTick(CloudPiranhaEntity* this) {
    static void (*const CloudPiranha_Actions[])(CloudPiranhaEntity*) = {
        CloudPiranha_Init,    CloudPiranha_Action1, sub_080385CC,
        CloudPiranha_Action3, CloudPiranha_Action4, CloudPiranha_Action5,
    };

    CloudPiranha_Actions[super->action](this);
}

void CloudPiranha_OnCollision(CloudPiranhaEntity* this) {
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, gUnk_080CF4F0);
    if (super->contactFlags & CONTACT_NOW) {
        if (super->hitType == 0x5a) {
            switch (super->contactFlags & 0x3f) {
                case 0x14:
                    super->action = 5;
                    break;
                case 0x15:
                case 0xe:
                    super->health = 0;
                    break;
            }
#ifndef EU
        } else if ((super->contactFlags & 0x3f) == 0x1d) {
            sub_08038754(this);
#endif
        }
    }
}

void CloudPiranha_OnGrabbed(CloudPiranhaEntity* this) {
}

void CloudPiranha_Init(CloudPiranhaEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->direction = (Random() & 0x1c);
    super->animationState = super->direction >> 2;
    super->flags |= ENT_COLLIDE;
    super->timer = 0;
    super->subtimer = 32;
    this->unk_82 = 0;
    this->unk_80 = Random() & 1;
    this->unk_81 = 0;
    super->hitType = 0x72;
    InitializeAnimation(super, super->animationState);
}

void CloudPiranha_Action1(CloudPiranhaEntity* this) {
    u32 tmp;
    sub_080387F0(this);
    if (--super->subtimer == 0) {
        super->timer = 0;
        super->subtimer = 32;
        if (sub_08049FA0(super)) {
            u32 tmp = super->animationState;
            if (this->unk_80 != 0) {
                tmp += 7;
            } else {
                tmp++;
            }
            super->animationState = tmp & 7;
            super->direction = super->animationState << 2;
        } else {
            super->direction = (sub_08049EE4(super) + 2) & 0x1c;
            super->animationState = super->direction >> 2;
        }
        InitializeAnimation(super, (u32)super->animationState);
    } else if ((super->timer == 0) && sub_0803872C(this, 0x80)) {
        super->action = 2;
        super->subtimer = 16;
        super->speed = 0x40;
        super->animationState = sub_0806FCAC(super, super->child);
        super->direction = super->animationState << 2;
        InitializeAnimation(super, super->animationState);
    }
}

void sub_080385CC(CloudPiranhaEntity* this) {
    u32 tmp;
    sub_080387F0(this);
    if (sub_0803872C(this, 0x60)) {
        super->action = 3;
        super->subtimer = 12;
        super->speed = 0x80;
        super->animationState = sub_0806FCAC(super, super->child);
        super->direction = super->animationState << 2;
        InitializeAnimation(super, super->animationState);
    } else {
        if (--super->subtimer == 0) {
            super->subtimer = 16;
            if (super->child != NULL) {
                super->animationState = sub_0806FCAC(super, super->child);
            } else {
                tmp = super->animationState;
                super->animationState = (Random() & 0x10) ? ((tmp + 2) & 7) : ((tmp + 6) & 7);
            }
            super->direction = super->animationState << 2;
            InitializeAnimation(super, super->animationState);
        }
    }
}

void CloudPiranha_Action3(CloudPiranhaEntity* this) {
    s32 tmp;
    sub_080387F0(this);
    if (sub_0803872C(this, 0x14)) {
        sub_08038754(this);
    } else {
        if (--super->subtimer == 0) {
            super->subtimer = 10;
            if (this->unk_81 == 0) {
                tmp = super->speed += 0x40;
                if (0x2000000 < (tmp * 0x10000)) {
                    this->unk_81 = 1;
                }
            } else if (super->speed > 0x100) {
                super->speed -= 0x50;
            } else {
                sub_08038754(this);
            }
        }
    }
}

void CloudPiranha_Action4(CloudPiranhaEntity* this) {
    Entity* effect;
    sub_080387F0(this);
    if (BounceUpdate(super, Q_8_8(24.0)) == BOUNCE_INIT_NEXT) {
        super->action = 1;
        super->hitType = 0x72;
        super->timer = 1;
        super->subtimer = 128;
        super->speed = 0x80;
        super->spritePriority.b1 = 2;
        EnqueueSFX(SFX_124);
        ChangeObjPalette(super, 0x70);
        InitializeAnimation(super, super->direction >> 2);
        effect = CreateFx(super, FX_DEATH, 0);
        if (effect != NULL) {
            SortEntityAbove(super, effect);
        }
    }
}

void CloudPiranha_Action5(CloudPiranhaEntity* this) {
    sub_08038754(this);
}

bool32 sub_0803872C(CloudPiranhaEntity* this, u32 param_2) {
    super->child = sub_08049DF4(1);
    if ((super->child != NULL) && sub_0806FC80(super, super->child, param_2)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08038754(CloudPiranhaEntity* this) {
    Entity* effect;
    super->action = 4;
    super->flags |= ENT_COLLIDE;
    super->hitType = 0x5a;
#ifdef EU
    super->speed = 0x100;
#else
    super->speed = 0xc0;
#endif
    super->zVelocity = Q_16_16(2);
    this->unk_81 = 0;
    super->spritePriority.b1 = 3;
    EnqueueSFX(SFX_12B);
    ChangeObjPalette(super, 0x71);
    if ((super->direction & 0xf) != 0) {
        InitializeAnimation(super, ((super->direction & 0x10) >> 0x3) + 9);
    } else {
        InitializeAnimation(super, ((super->direction & 0x10) >> 0x3) + 8);
    }
    effect = CreateFx(super, FX_DEATH, 0);
    if (effect != NULL) {
        SortEntityAbove(super, effect);
    }
}

void sub_080387F0(CloudPiranhaEntity* this) {

    static const u8 gUnk_080CF520[] = {
        0, 244, 8, 248, 12, 0, 8, 8, 0, 12, 248, 8, 244, 0, 248, 248,
    };
    u8 bVar1;
    u8 bVar2;
    s32 collisionData;
    const s8* ptr;

    if ((super->action != 4) && (this->unk_82 == 0)) {
        collisionData = GetCollisionDataAtTilePos(COORD_TO_TILE(super), super->collisionLayer);
        if ((collisionData == COLLISION_DATA_15) || (collisionData == COLLISION_DATA_42)) {
            this->unk_82 = 0x20;
        }
        ptr = &gUnk_080CF520[super->direction >> 1];
        bVar1 = super->direction;
        collisionData = GetCollisionDataRelativeTo(super, ptr[0], ptr[1]);
        if ((collisionData == COLLISION_DATA_15) || (collisionData == COLLISION_DATA_42)) {
            super->direction = (super->direction + 0x10) & 0x1f;
        } else {
            if (super->collisions != COL_NONE) {
                sub_0800417E(super, super->collisions);
            }
        }
        bVar2 = super->direction;
        if (bVar1 != bVar2) {
            super->animationState = bVar2 >> 2;
            InitializeAnimation(super, super->animationState);
        }
    }
    GetNextFrame(super);
    if (this->unk_82 == 0) {
        ProcessMovement0(super);
    } else {
        this->unk_82--;
        LinearMoveUpdate(super);
    }
}
