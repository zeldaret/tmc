#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"
#include "flags.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);
extern void sub_08016AD2(Entity*);
extern u32 sub_080177A0(Entity*, Entity*);

extern void (*const DekuSeedProjectile_Functions[])(Entity*);
extern void (*const DekuSeedProjectile_Actions[])(Entity*);

void sub_080A8680(Entity*);
void sub_080A86A0(Entity*);

void DekuSeedProjectile(Entity* this) {
    DekuSeedProjectile_Functions[GetNextFunction(this)](this);
}

void DekuSeedProjectile_OnTick(Entity* this) {
    DekuSeedProjectile_Actions[this->action](this);
}

void sub_080A8470(Entity* this) {
    if (this->bitfield == 0x80) {
        if (this->damageType == 0x68) {
            EnqueueSFX(SFX_86);
        }
        DeleteEntity(this);
    } else {
        this->direction = DirectionRoundUp(this->knockbackDirection);
        if ((u8)(this->bitfield + 0x7e) < 2) {
            sub_080A8680(this);
        } else {
            InitializeAnimation(this, 0x19);
            sub_080A86A0(this);
        }
    }
}

void DekuSeedProjectile_Init(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x30;
    this->field_0xf = 0;
    this->height.HALF.HI -= 4;
    if (CheckGlobalFlag(TABIDACHI) == 0) {
        this->damageType = 0x68;
    }
    EnqueueSFX(SFX_18D);
    InitializeAnimation(this, 0x18);
}

void DekuSeedProjectile_Action1(Entity* this) {
    Entity* parent;

    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (IsProjectileOffScreen(this) != 0) {
            DeleteThisEntity();
        }
        sub_08016AD2(this);
        if (--this->actionDelay == 0) {
            this->action = 4;
        }
    } else {
        sub_0800417E(this, this->collisions);
        sub_08016AD2(this);
        InitializeAnimation(this, 0x19);
        sub_080A86A0(this);
    }
    if (this->field_0xf != 0) {
        parent = this->parent;
        if ((parent->next != NULL) && (sub_080177A0(this, parent) != 0)) {
            this->iframes = 0x10;
            this->knockbackDirection = -this->direction;
            this->bitfield = -0x80;
            this->knockbackDuration = 0xc;
            this->field_0x46 = 0;
            parent->iframes = 0x10;
            parent->knockbackDirection = this->direction;
            parent->bitfield = -0x3e;
            parent->knockbackDuration = 0xc;
            parent->field_0x46 = 0;
        }
    }
}

void DekuSeedProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (IsProjectileOffScreen(this) != 0) {
            DeleteThisEntity();
        }
        if (--this->actionDelay == 0) {
            this->action = 1;
            this->flags |= 0x80;
        }
    } else {
        sub_0800417E(this, (u32)this->collisions);
        sub_08016AD2(this);
        InitializeAnimation(this, 0x19);
        sub_080A86A0(this);
    }
}

void DekuSeedProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void DekuSeedProjectile_Action4(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    switch (sub_080044EC(this, 0x2800)) {
        case 0:
            DeleteThisEntity();
            return;
        case 1:
            this->flags &= 0x7f;
            this->speed = 0x120;

            break;
    }
    if ((this->flags & 0x80) == 0) {
        this->spriteSettings.b.draw ^= 1;
    }
}

void sub_080A8680(Entity* this) {
    this->action = 2;
    this->flags &= 0x7f;
    this->actionDelay = 3;
    this->field_0xf = 1;
    EnqueueSFX(SFX_ITEM_SHIELD_BOUNCE);
}

void sub_080A86A0(Entity* this) {
    this->action = 3;
    this->flags &= 0x7f;
    this->speed = 0;
    EnqueueSFX(SFX_18E);
}

void (*const DekuSeedProjectile_Functions[])(Entity*) = {
    DekuSeedProjectile_OnTick, sub_080A8470, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const DekuSeedProjectile_Actions[])(Entity*) = {
    DekuSeedProjectile_Init,    DekuSeedProjectile_Action1, DekuSeedProjectile_Action2,
    DekuSeedProjectile_Action3, DekuSeedProjectile_Action4,
};
