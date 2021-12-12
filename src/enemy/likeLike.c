#include "enemy.h"
#include "entity.h"
#include "textbox.h"
#include "save.h"
#include "random.h"
#include "createObject.h"
#include "functions.h"

extern bool32 ItemIsShield(u32);

void sub_0802810C(Entity*);
void sub_080281A0(Entity*);
bool32 sub_080281E0(u32);
void sub_08028224(u32);

extern void (*const gUnk_080CC6FC[])(Entity*);
extern void (*const gUnk_080CC714[])(Entity*);

void LikeLike(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CC6FC);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_08027D8C(Entity* this) {
    gUnk_080CC714[this->action](this);
}

void sub_08027DA4(Entity* this) {
    if (this->hitType == 1) {
        this->action = 3;
        COLLISION_OFF(this);
        this->hitType = 0x8c;
    } else {
        if (this->action == 7) {
            sub_0802810C(this);
        } else if (this->bitfield & 0x80) {
            u8 tmp = this->bitfield & ~0x80;
            if (!tmp) {
                this->action = 7;
                this->actionDelay = 0x5f;
                this->field_0xf = tmp;
                this->flags2 &= 0xfc;
                this->field_0x82.HALF.HI = gPlayerEntity.spritePriority.b1;
            }
        }
    }

    if (this->health == 0) {
        this->actionDelay = 0x20;
    }

    if (this->field_0x43) {
        sub_0804A9FC(this, 0x1c);
    }

    sub_0804AA30(this, gUnk_080CC6FC);
}

void sub_08027E40(Entity* this) {
    if (this->actionDelay == 2 && this->field_0x80.HALF.LO != 0xff) {
        SetDefaultPriority(this, 3);
        sub_08028224(this->field_0x80.HALF.LO);
    }
    sub_0804A7D4(this);
}

void nullsub_139(Entity* this) {
    /* ... */
}

void sub_08027E70(Entity* this) {
    sub_0804A720(this);

    switch (this->type) {
        case 0:
            this->action = 3;
            this->spriteSettings.draw = 0;
            COLLISION_OFF(this);
            this->actionDelay = 0;
            break;
        case 1:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->actionDelay = 8;
            InitializeAnimation(this, 1);
            break;
        case 2:
            this->action = 1;
            this->spriteSettings.draw = 0;
            this->actionDelay = 0;
            this->hitType = 1;
            InitializeAnimation(this, 0);
            break;
    }

    this->direction = 0;
    this->field_0x82.HALF.LO = 0;
    this->animationState = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.LO = 0xff;
}

void sub_08027EFC(Entity* this) {
    if (this->hitType == 1)
        return;

    if (sub_08049FDC(this, 1)) {
        if (!sub_08049FA0(this) && (Random() & 0x30)) {
            this->direction = sub_08049EE4(this);
        } else {
            this->direction = this->field_0x82.HALF.LO;
        }

        if (--this->actionDelay == 0) {
            this->direction = sub_08049F84(this, 1);
            this->field_0x82.HALF.LO = this->direction;
            this->actionDelay = 8;
        }
        ProcessMovement(this);
        GetNextFrame(this);
    } else {
        this->action = 6;
        COLLISION_OFF(this);
        InitializeAnimation(this, 2);
    }
}

void nullsub_12(Entity* this) {
    /* ... */
}

void sub_08027F84(Entity* this) {
    if (sub_08049FDC(this, 1)) {
        this->action = 5;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 0);
        CreateDust(this);
    }
}

void sub_08027FB4(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->actionDelay = 1;
        this->flags2 |= 1;
    }
    GetNextFrame(this);
}

void sub_08027FE0(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->action = 1;
        COLLISION_ON(this);
        this->direction = sub_08049F84(this, 1);
        this->actionDelay = 8;
        this->spritePriority.b1 = 1;
        InitializeAnimation(this, 1);
    }
}

void sub_0802802C(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->action = 3;
        this->spriteSettings.draw = 0;
        this->direction = 0;
        this->actionDelay = 0;
        CreateDust(this);
    }
}

void sub_0802805C(Entity* this) {
    u8* tmp;

    UpdateAnimationVariableFrames(this, 2);

    if (sub_0807953C()) {
        u32 tmp2 = Random();
        u32 tmp3 = this->field_0xf + 1;
        tmp3 += (tmp2 & 1);
        this->field_0xf = tmp3;
    }

    if (this->field_0xf >= 0x19 || gSave.stats.health == 0) {
        sub_0802810C(this);
    } else {
        ResetPlayer();
        gPlayerState.field_0x1a[0] |= 0x80;
        PositionRelative(this, &gPlayerEntity, 0, 0x10000);

        tmp = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        gPlayerEntity.spriteOffsetX = tmp[0];
        gPlayerEntity.spriteOffsetY = tmp[1];
        gPlayerEntity.spritePriority.b1 = 0;

        if (--this->actionDelay == 0) {
            sub_080281A0(this);
        }

        if ((this->actionDelay & 3) == 0) {
            EnqueueSFX(0x104);
        }
    }
}

NONMATCH("asm/non_matching/likeLike/sub_0802810C.inc", void sub_0802810C(Entity* this)) {
    gPlayerState.jumpStatus = 0x41;
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &= 0xffffffef;
    gPlayerEntity.flags |= 0x80;
    gPlayerEntity.zVelocity = 0x18000;
    gPlayerEntity.iframes = -60;
    gPlayerEntity.direction = gPlayerEntity.animationState << 2;
    gPlayerEntity.spritePriority.b1 = this->field_0x82.HALF.HI;
    gPlayerEntity.z.HALF.HI = gPlayerEntity.spriteOffsetY;
    gPlayerEntity.spriteOffsetY = 0;
    this->action = 4;
    this->actionDelay = 0x50;
    this->field_0xf = 0;
    this->flags2 |= 2;
    if (this->iframes == 0) {
        this->iframes = -18;
    }
}
END_NONMATCH

void sub_080281A0(Entity* this) {
    this->field_0xf = 0x19;
    if (sub_080281E0(0xe)) {
        this->field_0x80.HALF.LO = 0xe;
        MessageFromTarget(0x578);
    } else if (sub_080281E0(0xd)) {
        this->field_0x80.HALF.LO = 0xd;
        MessageFromTarget(0x578);
    } else {
        ModHealth(-1);
    }
}

bool32 sub_080281E0(u32 param_1) {
    bool32 ret = FALSE;
    if (GetInventoryValue(param_1) == 1) {
        if (ItemIsShield(gSave.stats.itemOnA)) {
            gSave.stats.itemOnA = 0;
        }

        if (ItemIsShield(gSave.stats.itemOnB)) {
            gSave.stats.itemOnB = 0;
        }

        sub_0807CAA0(param_1, 0);
        ret = TRUE;
    }

    return ret;
}

void sub_08028224(u32 param_1) {
#ifdef EU
    CreateItemEntity(param_1, 0, 1);
#else
    sub_080A7C18(param_1, 0, 1);
#endif
    MessageFromTarget(0x579);
}

void (*const gUnk_080CC6FC[])(Entity*) = {
    sub_08027D8C, sub_08027DA4, sub_08001324, sub_08027E40, sub_08001242, nullsub_139,
};

void (*const gUnk_080CC714[])(Entity*) = {
    sub_08027E70, sub_08027EFC, nullsub_12, sub_08027F84, sub_08027FB4, sub_08027FE0, sub_0802802C, sub_0802805C,
};
