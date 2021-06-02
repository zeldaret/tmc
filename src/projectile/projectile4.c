#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"
#include "flags.h"

extern void (*const gUnk_081296F0[])(Entity*);

extern void (*const gUnk_08129704[])(Entity*);

void sub_080A8680(Entity*);
void sub_080A86A0(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);
extern u32 sub_080177A0(Entity*, Entity*);

void Projectile4(Entity* this) {
    gUnk_081296F0[GetNextFunction(this)](this);
}

void sub_080A8458(Entity* this) {
    gUnk_08129704[this->action](this);
}

void sub_080A8470(Entity* this) {
    if (this->bitfield == 0x80) {
        if (this->damageType == 0x68) {
            EnqueueSFX(SFX_86);
        }
        DeleteEntity(this);
    } else {
        this->direction = (this->field_0x3e + 4) & 0x18;
        if ((u8)(this->bitfield + 0x7e) < 2) {
            sub_080A8680(this);
        } else {
            InitializeAnimation(this, 0x19);
            sub_080A86A0(this);
        }
    }
}

void sub_080A84C8(Entity* this) {
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

void sub_080A8504(Entity* this) {
    Entity* parent;

    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (sub_080A7EB0(this) != 0) {
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
            this->field_0x3e = -this->direction;
            this->bitfield = -0x80;
            this->field_0x42 = 0xc;
            this->field_0x46 = 0;
            parent->iframes = 0x10;
            parent->field_0x3e = this->direction;
            parent->bitfield = -0x3e;
            parent->field_0x42 = 0xc;
            parent->field_0x46 = 0;
        }
    }
}

void sub_080A85B8(Entity* this) {
    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (sub_080A7EB0(this) != 0) {
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

void sub_080A8610(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void sub_080A862C(Entity* this) {
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
