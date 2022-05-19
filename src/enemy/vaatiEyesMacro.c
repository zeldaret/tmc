/**
 * @file vaatiEyesMacro.c
 * @ingroup Enemies
 *
 * @brief Vaati Eyes Macro enemy
 */

#include "enemy.h"
#include "functions.h"

extern s16 gUnk_080B4488[];

void VaatiEyesMacro_OnTick(Entity*);
void VaatiEyesMacro_OnCollision(Entity*);
void VaatiEyesMacroFunction0Type0(Entity*);
void VaatiEyesMacroFunction0Type1(Entity*);
void VaatiEyesMacroFunction0Type2(Entity*);
void VaatiEyesMacroFunction0Type3(Entity*);
void VaatiEyesMacroFunction0Type0Action0(Entity*);
void VaatiEyesMacroFunction0Type0Action1(Entity*);
void VaatiEyesMacroFunction0Type1Action0(Entity*);
void VaatiEyesMacroFunction0Type1Action1(Entity*);
void sub_0802EF90(Entity*);
void sub_0802EFB8(Entity*);
void sub_0802EF58(Entity*);
void sub_0802F04C(Entity*);

void (*const VaatiEyesMacro_Functions[])(Entity*) = {
    VaatiEyesMacro_OnTick, VaatiEyesMacro_OnCollision, GenericKnockback, GenericDeath,
    GenericConfused,       VaatiEyesMacro_OnTick,
};
void (*const vaatiEyesMacroFunction0Types[])(Entity*) = {
    VaatiEyesMacroFunction0Type0,
    VaatiEyesMacroFunction0Type1,
    VaatiEyesMacroFunction0Type2,
    VaatiEyesMacroFunction0Type3,
};
void (*const vaatiEyesMacroFunction0Type0Actions[])(Entity*) = {
    VaatiEyesMacroFunction0Type0Action0,
    VaatiEyesMacroFunction0Type0Action1,
};
void (*const vaatiEyesMacroFunction0Type1Actions[])(Entity*) = {
    VaatiEyesMacroFunction0Type1Action0,
    VaatiEyesMacroFunction0Type1Action1,
};
const u8 gUnk_080CDE6C[] = { 0, 8, 0x18, 0 };
const u8 gUnk_080CDE70[] = {
    9, 9, 8, 9, 8, 8, 8, 7, 7, 7, 6, 7, 6, 6, 6, 5, 5, 5, 12, 5, 12, 12, 12, 11, 11, 11, 10, 11, 10, 10, 10, 9,
};
const s8 gUnk_080CDE90[] = { -2, -3, -4, -5, -6, -5, -4, -3 };
const u16 gUnk_080CDE98[] = { 0xc0, 0x100, 0x140, 0x180 };

void VaatiEyesMacro(Entity* this) {
    VaatiEyesMacro_Functions[GetNextFunction(this)](this);
    SetChildOffset(this, 0, 1, -0x10);
}

void VaatiEyesMacro_OnTick(Entity* this) {
    vaatiEyesMacroFunction0Types[this->type](this);
    if (this->type < 2) {
        sub_0802EF90(this);
    }
}

void VaatiEyesMacro_OnCollision(Entity* this) {
    if (this->type == 0) {
        if (this->health == 0) {
            gRoomTransition.field_0x39 &= ~(1 << (gRoomTransition.field_0x3c + 2));
        }
        if (gRoomControls.room == 0) {
            gRoomTransition.field_0x3a = this->health;
        } else {
            gRoomTransition.field_0x3b = this->health;
        }
        if (this->field_0x78.HALF.HI != this->health) {
            EnqueueSFX(SFX_17A);
        }
        this->field_0x78.HALF.HI = this->health;
    } else {
        if (this->type == 1) {
            if (0 < this->iframes) {
                this->iframes *= -1;
            }
            if (this->health != 0xff) {
                EnqueueSFX(SFX_BUTTON_DEPRESS);
            }
            this->health = 0xff;
        }
    }
    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(this, VaatiEyesMacro_Functions);
}

void VaatiEyesMacroFunction0Type0(Entity* this) {
    vaatiEyesMacroFunction0Type0Actions[this->action](this);
}

void VaatiEyesMacroFunction0Type0Action0(Entity* this) {
    Manager* manager;
    Entity* enemy;

    if ((gEntCount < 0x47) && (manager = GetEmptyManager(), manager != NULL)) {
        manager->kind = MANAGER;
        manager->id = VAATI3_INSIDE_ARM_MANAGER;
        manager->parent = (Entity*)this;
        AppendEntityToList((Entity*)manager, 8);
        enemy = CreateEnemy(VAATI_EYES_MACRO, 2);
        enemy->parent = this;
        this->action = 1;
        if (gRoomControls.room == 0) {
            this->field_0x78.HALF.HI = this->health = gRoomTransition.field_0x3a;
        } else {
            this->field_0x78.HALF.HI = this->health = gRoomTransition.field_0x3b;
        }
        this->field_0x78.HALF.LO = Random();
        sub_0802EFB8(this);
        InitializeAnimation(this, 0);
        sub_0802EF58(this);
    }
}

void VaatiEyesMacroFunction0Type0Action1(Entity* this) {
    sub_0802F04C(this);
    GetNextFrame(this);
}

void VaatiEyesMacroFunction0Type1(Entity* this) {
    vaatiEyesMacroFunction0Type1Actions[this->action](this);
}

void VaatiEyesMacroFunction0Type1Action0(Entity* this) {
    Entity* entity;
    u32 rand;

    if (gEntCount < 0x47) {
        entity = CreateEnemy(VAATI_EYES_MACRO, 3);
        entity->parent = this;
        this->action = 1;
        rand = Random();
        this->timer = (rand & 3) + 1;
        this->field_0x78.HALF.LO = Random() >> 8;
        this->direction = gUnk_080CDE6C[rand >> 0x10 & 3];
        InitializeAnimation(this, 1);
    }
}

void VaatiEyesMacroFunction0Type1Action1(Entity* this) {
    if (this->parent->next == NULL) {
        COLLISION_OFF(this);
        this->health = 0;
    } else {
        sub_0802F04C(this);
        GetNextFrame(this);
    }
}

typedef struct xy {
    u8 x;
    u8 y;
} xy;

void VaatiEyesMacroFunction0Type2(Entity* this) {
    u32 uVar2;
    xy* temp;

    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->animationState = 0xff;
    }
    CopyPositionAndSpriteOffset(this->parent, this);
    uVar2 = (GetFacingDirection(this, &gPlayerEntity) + 1) & 0x1e;
    temp = (xy*)&gUnk_080CDE70[uVar2];
    if (temp->x != this->frameIndex) {
        if (temp->y != this->frameIndex) {
            this->frameIndex = temp->x;
        }
    }
    this->y.HALF.HI++;
    this->spriteOffsetY -= 1;
}

void VaatiEyesMacroFunction0Type3(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = 0x11;
        this->spritePriority.b0 = 6;
    }
    CopyPositionAndSpriteOffset(this->parent, this);
    this->z.HALF.HI = 0;
}

void sub_0802EF58(Entity* this) {
    Entity* entity;
    u32 i;

    for (i = 0; i < 7; i++) {
        entity = CreateEnemy(VAATI_EYES_MACRO, 1);
        if (entity != NULL) {
            entity->type2 = i;
            entity->collisionLayer = 1;
            entity->parent = this;
            UpdateSpriteForCollisionLayer(entity);
            CopyPosition(this, entity);
        }
    }
}

void sub_0802EF90(Entity* this) {
    this->z.HALF.HI = gUnk_080CDE90[this->field_0x78.HALF.LO++ >> 3 & 7];
}

void sub_0802EFB8(Entity* this) {
    u32 uVar1;
    u32 rand;
    u32 uVar3;
    int iVar4;

    rand = Random();
    if ((rand >> 0x10 & 3) != 0) {
        uVar1 = rand & 0x18;
    } else {
        uVar3 = GetFacingDirection(&gPlayerEntity, this);
        uVar1 = (uVar3 + 4) & 0x18;
    }
    iVar4 = sub_080B1B44(TILE(this->x.HALF.HI, this->y.HALF.HI) + gUnk_080B4488[((uVar1) >> 3)], 1);
    if (iVar4 != 0) {
        this->direction = 0xff;
    } else {
        this->timer = (rand & 3) + 1;
        this->direction = (uVar1 & 0x18);
        this->speed = gUnk_080CDE98[rand >> 0x18 & 3];
    }
}

void sub_0802F04C(Entity* this) {
    s32 oldX;
    s32 oldY;

    oldX = this->x.HALF.HI;
    oldY = this->y.HALF.HI;
    if (ProcessMovement0(this) == 0) {
        sub_0802EFB8(this);
        return;
    }
    switch (this->direction >> 3) {
        case 0:
            if (((oldY & 0xf) > 8) && ((this->y.HALF.HI & 0xf) < 9)) {
                this->timer--;
                oldY = (this->y.HALF.HI & 0xfff0) + 8;
            }
            if (this->timer == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        case 1:
            if (((oldX & 0xf) < 8) && ((this->x.HALF.HI & 0xf) >= 8)) {
                this->timer--;
                oldX = (this->x.HALF.HI & 0xfff0) + 8;
            }
            if (this->timer == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        case 2:
            if (((oldY & 0xf) < 8) && ((this->y.HALF.HI & 0xf) >= 8)) {
                this->timer--;
                oldY = (this->y.HALF.HI & 0xfff0) + 8;
            }
            if (this->timer == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        default:
            if (((oldX & 0xf) >= 9) && ((this->x.HALF.HI & 0xf) < 9)) {
                this->timer--;
                oldX = (this->x.HALF.HI & 0xfff0) + 8;
            }
            if (this->timer == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
    }
    sub_0802EFB8(this);
}
