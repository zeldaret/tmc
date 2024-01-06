/**
 * @file stalfosProjectile.c
 * @ingroup Projectiles
 *
 * @brief Stalfos Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const StalfosProjectile_Functions[])(Entity*);
extern void (*const StalfosProjectile_Actions[])(Entity*);
extern void (*const StalfosProjectile_SubActions[])(Entity*);

typedef struct {
    s8 unk_0;
    s8 unk_1;
    s8 unk_2;
} PACKED struct_08129B20;
extern const struct_08129B20 gUnk_08129B20[];

extern const u8 gUnk_08129B50[];

void sub_080A9BA8(Entity*);
void sub_080A9BD0(Entity*);
void sub_080A9C34(Entity*);
void sub_080A9C50(Entity*);

void StalfosProjectile(Entity* this) {
    StalfosProjectile_Functions[GetNextFunction(this)](this);
}

void StalfosProjectile_OnTick(Entity* this) {
    StalfosProjectile_Actions[this->action](this);
}

void StalfosProjectile_OnCollision(Entity* this) {
    if (this->contactFlags == (CONTACT_NOW | 0x1d)) {
        this->action = 3;
        COLLISION_OFF(this);
        this->zVelocity = Q_16_16(2.625);
        this->spritePriority.b1 = 1;
    }
}

void StalfosProjectile_OnGrabbed(Entity* this) {
    if ((this->subAction < 3) && !sub_0806F520(this)) {
        sub_080A9BA8(this);
    }
    StalfosProjectile_SubActions[this->subAction](this);
}

void StalfosProjectile_SubAction0(Entity* this) {
    this->subAction = 2;
    this->z.HALF.HI = -2;
}

void StalfosProjectile_SubAction1(Entity* this) {
    sub_0806F4E8(this);
}

void StalfosProjectile_SubAction2(Entity* this) {
    sub_0806F3E4(this);
}

void StalfosProjectile_SubAction3(Entity* this) {
    COLLISION_OFF(this);
}

void StalfosProjectile_SubAction4(Entity* this) {
}

void StalfosProjectile_SubAction5(Entity* this) {
    sub_080A9BA8(this);
}

void StalfosProjectile_Init(Entity* this) {
    switch (this->type2) {
        case 1:
            this->action = 2;
            COLLISION_ON(this);
            break;
        case 2:
            this->action = 3;
            this->zVelocity = Q_16_16(2.625);
            this->spritePriority.b1 = 1;
            break;
        default:
            this->action = 1;
            break;
    }

    this->gustJarFlags = 2;
    if (this->type == 0) {
        InitializeAnimation(this, 5);
    } else {
        this->frameIndex = 0;
    }
}

void StalfosProjectile_Action1(Entity* this) {
    if (this->parent->next == NULL) {
        sub_080A9BA8(this);
    }
    if (this->parent->action == 0xb) {
        sub_080A9BD0(this);
    } else {
        this->action = 2;
        sub_080A9C34(this);
    }
}

void StalfosProjectile_Action2(Entity* this) {
    if (this->parent->next == NULL) {
        sub_080A9BA8(this);
    }
    if (this->parent->action == 9) {
        sub_080A9C34(this);
    } else {
        sub_080A9C50(this);
    }
}

void StalfosProjectile_Action3(Entity* this) {
    if (this->zVelocity < 0) {
        this->spriteSettings.flipY = 1;
    }
    if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
        sub_080A9BA8(this);
    }
}

void sub_080A9BA8(Entity* this) {
    if (this->type == 0) {
        CreateFx(this, FX_POT_SHATTER, 0);
    } else {
        CreateFx(this, FX_BONE, 0);
    }
    DeleteThisEntity();
}

void sub_080A9BD0(Entity* this) {
    Entity* parent;
    s32 tmp;
    u32 tmp2;
    const struct_08129B20* entry;

    parent = this->parent;
    switch (parent->animationState) {
        case 0:
            tmp = parent->frameIndex - 0x39;
            break;
        case 1:
        case 3:
            tmp = parent->frameIndex - 0x3d;
            break;
        case 2:
            tmp = parent->frameIndex - 0x41;
            break;
    }
    entry = &gUnk_08129B20[tmp + parent->animationState * 4];
    sub_0806FA90(parent, this, entry->unk_0, entry->unk_1);
    this->z.HALF.HI = entry->unk_2 + this->z.HALF.HI;
}

void sub_080A9C34(Entity* this) {
    sub_0806FA90(this->parent, this, 0, 1);
    this->spriteOffsetY -= 0xe;
}

void sub_080A9C50(Entity* this) {
    Entity* parent;
    u32 tmp;

    parent = this->parent;
    switch (parent->animationState) {
        case 0:
            tmp = 0xffffffd9 + parent->frameIndex;
            break;
        case 1:
        case 3:
            tmp = parent->frameIndex - 0x2d;
            break;
        case 2:
            tmp = parent->frameIndex - 0x33;
            break;
    }

    sub_0806FA90(parent, this, 0, 1);
    this->spriteOffsetY += gUnk_08129B50[tmp];
}

void (*const StalfosProjectile_Functions[])(Entity*) = {
    StalfosProjectile_OnTick,    StalfosProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
    StalfosProjectile_OnGrabbed,
};
void (*const StalfosProjectile_Actions[])(Entity*) = {
    StalfosProjectile_Init,
    StalfosProjectile_Action1,
    StalfosProjectile_Action2,
    StalfosProjectile_Action3,
};
void (*const StalfosProjectile_SubActions[])(Entity*) = {
    StalfosProjectile_SubAction0, StalfosProjectile_SubAction1, StalfosProjectile_SubAction2,
    StalfosProjectile_SubAction3, StalfosProjectile_SubAction4, StalfosProjectile_SubAction5,
};
const struct_08129B20 gUnk_08129B20[] = {
    { 0, -9, -1 },  { 0, 5, -25 }, { 0, 3, -20 }, { 0, 0, -14 },  { 10, 0, -1 },  { -5, 0, -24 },
    { -3, 0, -20 }, { 0, 0, -13 }, { 0, 5, -1 },  { 0, -5, -19 }, { 0, -3, -16 }, { 0, 0, -11 },
    { -10, 0, -1 }, { 5, 0, -24 }, { 3, 0, -20 }, { 0, 0, -13 },
};
const u8 gUnk_08129B50[] = { 241, 243, 242, 241, 243, 242, 0, 0 };
