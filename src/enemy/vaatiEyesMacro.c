/**
 * @file vaatiEyesMacro.c
 * @ingroup Enemies
 *
 * @brief Vaati Eyes Macro enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
} VaatiEyesMacroEntity;

extern s16 gUnk_080B4488[];

void VaatiEyesMacro_OnTick(VaatiEyesMacroEntity*);
void VaatiEyesMacro_OnCollision(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type0(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type1(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type2(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type3(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type0Action0(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type0Action1(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type1Action0(VaatiEyesMacroEntity*);
void VaatiEyesMacroFunction0Type1Action1(VaatiEyesMacroEntity*);
void sub_0802EF90(VaatiEyesMacroEntity*);
void sub_0802EFB8(VaatiEyesMacroEntity*);
void sub_0802EF58(VaatiEyesMacroEntity*);
void sub_0802F04C(VaatiEyesMacroEntity*);

void (*const VaatiEyesMacro_Functions[])(VaatiEyesMacroEntity*) = {
    VaatiEyesMacro_OnTick,
    VaatiEyesMacro_OnCollision,
    (void (*)(VaatiEyesMacroEntity*))GenericKnockback,
    (void (*)(VaatiEyesMacroEntity*))GenericDeath,
    (void (*)(VaatiEyesMacroEntity*))GenericConfused,
    VaatiEyesMacro_OnTick,
};
void (*const vaatiEyesMacroFunction0Types[])(VaatiEyesMacroEntity*) = {
    VaatiEyesMacroFunction0Type0,
    VaatiEyesMacroFunction0Type1,
    VaatiEyesMacroFunction0Type2,
    VaatiEyesMacroFunction0Type3,
};
void (*const vaatiEyesMacroFunction0Type0Actions[])(VaatiEyesMacroEntity*) = {
    VaatiEyesMacroFunction0Type0Action0,
    VaatiEyesMacroFunction0Type0Action1,
};
void (*const vaatiEyesMacroFunction0Type1Actions[])(VaatiEyesMacroEntity*) = {
    VaatiEyesMacroFunction0Type1Action0,
    VaatiEyesMacroFunction0Type1Action1,
};
const u8 gUnk_080CDE6C[] = { 0, 8, 0x18, 0 };
const u8 gUnk_080CDE70[] = {
    9, 9, 8, 9, 8, 8, 8, 7, 7, 7, 6, 7, 6, 6, 6, 5, 5, 5, 12, 5, 12, 12, 12, 11, 11, 11, 10, 11, 10, 10, 10, 9,
};
const s8 gUnk_080CDE90[] = { -2, -3, -4, -5, -6, -5, -4, -3 };
const u16 gUnk_080CDE98[] = { 0xc0, 0x100, 0x140, 0x180 };

void VaatiEyesMacro(VaatiEyesMacroEntity* this) {
    VaatiEyesMacro_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void VaatiEyesMacro_OnTick(VaatiEyesMacroEntity* this) {
    vaatiEyesMacroFunction0Types[super->type](this);
    if (super->type < 2) {
        sub_0802EF90(this);
    }
}

void VaatiEyesMacro_OnCollision(VaatiEyesMacroEntity* this) {
    if (super->type == 0) {
        if (super->health == 0) {
            gRoomTransition.field_0x39 &= ~(1 << (gRoomTransition.field_0x3c + 2));
        }
        if (gRoomControls.room == 0) {
            gRoomTransition.field_0x3a = super->health;
        } else {
            gRoomTransition.field_0x3b = super->health;
        }
        if (this->unk_79 != super->health) {
            EnqueueSFX(SFX_17A);
        }
        this->unk_79 = super->health;
    } else {
        if (super->type == 1) {
            if (0 < super->iframes) {
                super->iframes *= -1;
            }
            if (super->health != 0xff) {
                EnqueueSFX(SFX_BUTTON_DEPRESS);
            }
            super->health = 0xff;
        }
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, (EntityActionArray)VaatiEyesMacro_Functions);
}

void VaatiEyesMacroFunction0Type0(VaatiEyesMacroEntity* this) {
    vaatiEyesMacroFunction0Type0Actions[super->action](this);
}

void VaatiEyesMacroFunction0Type0Action0(VaatiEyesMacroEntity* this) {
    Manager* manager;
    Entity* enemy;

    if ((gEntCount < 0x47) && (manager = GetEmptyManager(), manager != NULL)) {
        manager->kind = MANAGER;
        manager->id = VAATI3_INSIDE_ARM_MANAGER;
        manager->parent = (Entity*)super;
        AppendEntityToList((Entity*)manager, 8);
        enemy = CreateEnemy(VAATI_EYES_MACRO, 2);
        enemy->parent = super;
        super->action = 1;
        if (gRoomControls.room == 0) {
            this->unk_79 = super->health = gRoomTransition.field_0x3a;
        } else {
            this->unk_79 = super->health = gRoomTransition.field_0x3b;
        }
        this->unk_78 = Random();
        sub_0802EFB8(this);
        InitializeAnimation(super, 0);
        sub_0802EF58(this);
    }
}

void VaatiEyesMacroFunction0Type0Action1(VaatiEyesMacroEntity* this) {
    sub_0802F04C(this);
    GetNextFrame(super);
}

void VaatiEyesMacroFunction0Type1(VaatiEyesMacroEntity* this) {
    vaatiEyesMacroFunction0Type1Actions[super->action](this);
}

void VaatiEyesMacroFunction0Type1Action0(VaatiEyesMacroEntity* this) {
    Entity* entity;
    u32 rand;

    if (gEntCount < 0x47) {
        entity = CreateEnemy(VAATI_EYES_MACRO, 3);
        entity->parent = super;
        super->action = 1;
        rand = Random();
        super->timer = (rand & 3) + 1;
        this->unk_78 = Random() >> 8;
        super->direction = gUnk_080CDE6C[rand >> 0x10 & 3];
        InitializeAnimation(super, 1);
    }
}

void VaatiEyesMacroFunction0Type1Action1(VaatiEyesMacroEntity* this) {
    if (super->parent->next == NULL) {
        COLLISION_OFF(super);
        super->health = 0;
    } else {
        sub_0802F04C(this);
        GetNextFrame(super);
    }
}

typedef struct xy {
    u8 x;
    u8 y;
} xy;

void VaatiEyesMacroFunction0Type2(VaatiEyesMacroEntity* this) {
    u32 uVar2;
    xy* temp;

    if (super->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        super->animationState = 0xff;
    }
    CopyPositionAndSpriteOffset(super->parent, super);
    uVar2 = (GetFacingDirection(super, &gPlayerEntity.base) + 1) & 0x1e;
    temp = (xy*)&gUnk_080CDE70[uVar2];
    if (temp->x != super->frameIndex) {
        if (temp->y != super->frameIndex) {
            super->frameIndex = temp->x;
        }
    }
    super->y.HALF.HI++;
    super->spriteOffsetY--;
}

void VaatiEyesMacroFunction0Type3(VaatiEyesMacroEntity* this) {
    if (super->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        super->frameIndex = 0x11;
        super->spritePriority.b0 = 6;
    }
    CopyPositionAndSpriteOffset(super->parent, super);
    super->z.HALF.HI = 0;
}

void sub_0802EF58(VaatiEyesMacroEntity* this) {
    Entity* entity;
    u32 i;

    for (i = 0; i < 7; i++) {
        entity = CreateEnemy(VAATI_EYES_MACRO, 1);
        if (entity != NULL) {
            entity->type2 = i;
            entity->collisionLayer = 1;
            entity->parent = super;
            UpdateSpriteForCollisionLayer(entity);
            CopyPosition(super, entity);
        }
    }
}

void sub_0802EF90(VaatiEyesMacroEntity* this) {
    super->z.HALF.HI = gUnk_080CDE90[this->unk_78++ >> 3 & 7];
}

void sub_0802EFB8(VaatiEyesMacroEntity* this) {
    u32 uVar1;
    u32 rand;
    u32 uVar3;
    u32 collisionData;

    rand = Random();
    if ((rand >> 0x10 & 3) != 0) {
        uVar1 = rand & 0x18;
    } else {
        uVar3 = GetFacingDirection(&gPlayerEntity.base, super);
        uVar1 = (uVar3 + 4) & 0x18;
    }
    collisionData =
        GetCollisionDataAtTilePos(TILE(super->x.HALF.HI, super->y.HALF.HI) + gUnk_080B4488[((uVar1) >> 3)], 1);
    if (collisionData != 0) {
        super->direction = DIR_NONE;
    } else {
        super->timer = (rand & 3) + 1;
        super->direction = (uVar1 & 0x18);
        super->speed = gUnk_080CDE98[rand >> 0x18 & 3];
    }
}

void sub_0802F04C(VaatiEyesMacroEntity* this) {
    s32 oldX;
    s32 oldY;

    oldX = super->x.HALF.HI;
    oldY = super->y.HALF.HI;
    if (ProcessMovement0(super) == 0) {
        sub_0802EFB8(this);
        return;
    }
    switch (super->direction >> 3) {
        case 0: // UP
            if (((oldY & 0xf) > 8) && ((super->y.HALF.HI & 0xf) < 9)) {
                super->timer--;
                oldY = (super->y.HALF.HI & 0xfff0) + 8;
            }
            if (super->timer == 0) {
                super->x.HALF.HI = oldX;
                super->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        case 1: // RIGHT
            if (((oldX & 0xf) < 8) && ((super->x.HALF.HI & 0xf) >= 8)) {
                super->timer--;
                oldX = (super->x.HALF.HI & 0xfff0) + 8;
            }
            if (super->timer == 0) {
                super->x.HALF.HI = oldX;
                super->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        case 2: // DOWN
            if (((oldY & 0xf) < 8) && ((super->y.HALF.HI & 0xf) >= 8)) {
                super->timer--;
                oldY = (super->y.HALF.HI & 0xfff0) + 8;
            }
            if (super->timer == 0) {
                super->x.HALF.HI = oldX;
                super->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        default: // LEFT
            if (((oldX & 0xf) >= 9) && ((super->x.HALF.HI & 0xf) < 9)) {
                super->timer--;
                oldX = (super->x.HALF.HI & 0xfff0) + 8;
            }
            if (super->timer == 0) {
                super->x.HALF.HI = oldX;
                super->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
    }
    sub_0802EFB8(this);
}
