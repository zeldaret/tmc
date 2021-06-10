#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"
#include "createObject.h"

extern void (*const gUnk_081299D0[])(Entity*);

extern void (*const gUnk_081299E4[])(Entity*);

void sub_080A9488(Entity*);

void sub_080A94C0(Entity*, u32);

extern s32 sub_080AF090(Entity*);

typedef struct {
    u8 flipX;
    u8 flipY;
    u8 animIndex;
    u8 unk;
    Hitbox* hitbox;
} struct_081299F8;
extern struct_081299F8 gUnk_081299F8[];

void ProjectileD(Entity* this) {
    gUnk_081299D0[GetNextFunction(this)](this);
}

void sub_080A931C(Entity* this) {
    gUnk_081299E4[this->action](this);
}

void sub_080A9334(Entity* this) {
    if ((this->bitfield & 0x80) != 0) {
        if ((this->bitfield & 0x3f) != 0) {
            ModHealth(-2);
            sub_080A9488(this);
            this->field_0x42 = 0;
            this->iframes = 0;
        } else {
            DeleteThisEntity();
        }
    }
}

void sub_080A9370(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->flags &= 0x7f;
    this->actionDelay = 0x6a;
    this->field_0xf = 0;
    this->field_0x20 = 0xa00;
    sub_080A94C0(this, this->type);
}

void sub_080A93A0(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if ((parent == NULL) || (parent->next == NULL)) {
        DeleteThisEntity();
    }
    if (this->field_0xf != 0) {
        DeleteThisEntity();
    }
    if (parent->field_0xf != 0) {
        this->action = 2;
        this->flags = this->flags | 0x80;
        parent->attachedEntity = NULL;
        SoundReq(SFX_FC);
    }
}

void sub_080A93DC(Entity* this) {
    if (this->collisions != 0) {
        this->action = 3;
        this->flags &= 0x7f;
        this->actionDelay = 0x20;
        InitializeAnimation(this, this->animIndex + 2);
        EnqueueSFX(0x18a);
        sub_0806F69C(this);
    } else if (--this->actionDelay == 0) {
        DeleteThisEntity();
    }
    sub_080AF090(this);
}

void sub_080A942C(Entity* this) {
    if (--this->actionDelay == 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
}

void sub_080A9448(Entity* this) {
    if (sub_08003FC4(this, 0x2800) == 0) {
        CreateDust(this);
        DeleteThisEntity();
    } else {
        if (--this->actionDelay == 0) {
            this->actionDelay = 2;
            this->animationState = (this->animationState + 1) & 3;
            sub_080A94C0(this, this->animationState);
        }
    }
}

void sub_080A9488(Entity* this) {
    this->action = 4;
    this->flags &= 0x7f;
    this->actionDelay = 2;
    this->field_0x20 = 0x18000;
    this->animationState = (this->field_0x3e & 0x18) >> 3;
    EnqueueSFX(SFX_METAL_CLINK);
    sub_080A94C0(this, this->animationState);
}

void sub_080A94C0(Entity* this, u32 param) {
    struct_081299F8* entry = &gUnk_081299F8[param];
    this->spriteSettings.b.flipX = entry->flipX;
    this->spriteSettings.b.flipY = entry->flipY;
    this->animIndex = entry->animIndex;
    this->hitbox = entry->hitbox;
    InitializeAnimation(this, this->animIndex);
}
