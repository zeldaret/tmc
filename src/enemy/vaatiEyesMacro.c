#include "global.h"
#include "enemy.h"
#include "audio.h"
#include "random.h"
#include "functions.h"

extern u32 sub_080002E0(u32, u32);
extern s16 gUnk_080B4488[];

void sub_0802EC98(Entity*);
void sub_0802ECC0(Entity*);
void sub_0802ED74(Entity*);
void sub_0802EE20(Entity*);
void sub_0802EEB8(Entity*);
void sub_0802EF1C(Entity*);
void sub_0802ED8C(Entity*);
void sub_0802EE10(Entity*);
void sub_0802EE38(Entity*);
void sub_0802EE8C(Entity*);
void sub_0802EF90(Entity*);
void sub_0802EFB8(Entity*);
void sub_0802EF58(Entity*);
void sub_0802F04C(Entity*);

void (*const gUnk_080CDE34[])(Entity*) = {
    sub_0802EC98, sub_0802ECC0, sub_08001324, sub_0804A7D4, sub_08001242, sub_0802EC98,
};
void (*const gUnk_080CDE4C[])(Entity*) = {
    sub_0802ED74,
    sub_0802EE20,
    sub_0802EEB8,
    sub_0802EF1C,
};
void (*const gUnk_080CDE5C[])(Entity*) = {
    sub_0802ED8C,
    sub_0802EE10,
};
void (*const gUnk_080CDE64[])(Entity*) = {
    sub_0802EE38,
    sub_0802EE8C,
};
const u8 gUnk_080CDE6C[] = { 0, 8, 0x18, 0 };
const u8 gUnk_080CDE70[] = {
    9, 9, 8, 9, 8, 8, 8, 7, 7, 7, 6, 7, 6, 6, 6, 5, 5, 5, 12, 5, 12, 12, 12, 11, 11, 11, 10, 11, 10, 10, 10, 9,
};
const s8 gUnk_080CDE90[] = { -2, -3, -4, -5, -6, -5, -4, -3 };
const u16 gUnk_080CDE98[] = { 0xc0, 0x100, 0x140, 0x180 };

extern u8 gEntCount;

void VaatiEyesMacro(Entity* this) {
    gUnk_080CDE34[GetNextFunction(this)](this);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_0802EC98(Entity* this) {
    gUnk_080CDE4C[this->type](this);
    if (this->type < 2) {
        sub_0802EF90(this);
    }
}

void sub_0802ECC0(Entity* this) {
    if (this->type == 0) {
        if (this->currentHealth == 0) {
            gScreenTransition.field_0x39 &= ~(1 << (gScreenTransition.field_0x3c + 2));
        }
        if (gRoomControls.roomID == 0) {
            gScreenTransition.field_0x3a = this->currentHealth;
        } else {
            gScreenTransition.field_0x3b = this->currentHealth;
        }
        if (this->field_0x78.HALF.HI != this->currentHealth) {
            EnqueueSFX(SFX_17A);
        }
        this->field_0x78.HALF.HI = this->currentHealth;
    } else {
        if (this->type == 1) {
            if (0 < this->iframes) {
                this->iframes *= -1;
            }
            if (this->currentHealth != 0xff) {
                EnqueueSFX(SFX_BUTTON_DEPRESS);
            }
            this->currentHealth = 0xff;
        }
    }
    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, gUnk_080CDE34);
}

void sub_0802ED74(Entity* this) {
    gUnk_080CDE5C[this->action](this);
}

void sub_0802ED8C(Entity* this) {
    Manager* manager;
    Entity* enemy;

    if ((gEntCount < 0x47) && (manager = GetEmptyManager(), manager != NULL)) {
        manager->type = 9;
        manager->subtype = 0x34;
        manager->parent = (Manager*)this;
        AppendEntityToList((Entity*)manager, 8);
        enemy = CreateEnemy(VAATI_EYES_MACRO, 2);
        enemy->parent = this;
        this->action = 1;
        if (gRoomControls.roomID == 0) {
            this->field_0x78.HALF.HI = this->currentHealth = gScreenTransition.field_0x3a;
        } else {
            this->field_0x78.HALF.HI = this->currentHealth = gScreenTransition.field_0x3b;
        }
        this->field_0x78.HALF.LO = Random();
        sub_0802EFB8(this);
        InitializeAnimation(this, 0);
        sub_0802EF58(this);
    }
}

void sub_0802EE10(Entity* this) {
    sub_0802F04C(this);
    GetNextFrame(this);
}

void sub_0802EE20(Entity* this) {
    gUnk_080CDE64[this->action](this);
}

void sub_0802EE38(Entity* this) {
    Entity* entity;
    u32 rand;

    if (gEntCount < 0x47) {
        entity = CreateEnemy(VAATI_EYES_MACRO, 3);
        entity->parent = this;
        this->action = 1;
        rand = Random();
        this->actionDelay = (rand & 3) + 1;
        this->field_0x78.HALF.LO = Random() >> 8;
        this->direction = gUnk_080CDE6C[rand >> 0x10 & 3];
        InitializeAnimation(this, 1);
    }
}

void sub_0802EE8C(Entity* this) {
    if (this->parent->next == NULL) {
        this->flags &= 0x7f;
        this->currentHealth = 0;
    } else {
        sub_0802F04C(this);
        GetNextFrame(this);
    }
}

typedef struct xy {
    u8 x;
    u8 y;
} xy;

void sub_0802EEB8(Entity* this) {
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

void sub_0802EF1C(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = 0x11;
        this->spritePriority.b0 = 6;
    }
    CopyPositionAndSpriteOffset(this->parent, this);
    this->height.HALF.HI = 0;
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
    this->height.HALF.HI = gUnk_080CDE90[this->field_0x78.HALF.LO++ >> 3 & 7];
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
    iVar4 = sub_080002E0(TILE(this->x.HALF.HI, this->y.HALF.HI) + gUnk_080B4488[((uVar1) >> 3)], 1);
    if (iVar4 != 0) {
        this->direction = 0xff;
    } else {
        this->actionDelay = (rand & 3) + 1;
        this->direction = (uVar1 & 0x18);
        this->speed = gUnk_080CDE98[rand >> 0x18 & 3];
    }
}

void sub_0802F04C(Entity* this) {
    s32 oldX;
    s32 oldY;

    oldX = this->x.HALF.HI;
    oldY = this->y.HALF.HI;
    if (ProcessMovement(this) == 0) {
        sub_0802EFB8(this);
        return;
    }
    switch (this->direction >> 3) {
        case 0:
            if (((oldY & 0xf) > 8) && ((this->y.HALF.HI & 0xf) < 9)) {
                this->actionDelay--;
                oldY = (this->y.HALF.HI & 0xfff0) + 8;
            }
            if (this->actionDelay == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        case 1:
            if (((oldX & 0xf) < 8) && ((this->x.HALF.HI & 0xf) >= 8)) {
                this->actionDelay--;
                oldX = (this->x.HALF.HI & 0xfff0) + 8;
            }
            if (this->actionDelay == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        case 2:
            if (((oldY & 0xf) < 8) && ((this->y.HALF.HI & 0xf) >= 8)) {
                this->actionDelay--;
                oldY = (this->y.HALF.HI & 0xfff0) + 8;
            }
            if (this->actionDelay == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
        default:
            if (((oldX & 0xf) >= 9) && ((this->x.HALF.HI & 0xf) < 9)) {
                this->actionDelay--;
                oldX = (this->x.HALF.HI & 0xfff0) + 8;
            }
            if (this->actionDelay == 0) {
                this->x.HALF.HI = oldX;
                this->y.HALF.HI = oldY;
            } else {
                return;
            }
            break;
    }
    sub_0802EFB8(this);
}
