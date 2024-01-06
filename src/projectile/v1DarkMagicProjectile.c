/**
 * @file v1DarkMagicProjectile.c
 * @ingroup Projectiles
 *
 * @brief V1 Dark Magic Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "physics.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unused2[11];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x92*/ u8 unused3[2];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u8 unk_86;
} V1DarkMagicProjectileEntity;

extern void SoundReqClipped(Entity*, u32);

extern void (*const V1DarkMagicProjectile_Functions[])(V1DarkMagicProjectileEntity*);
extern void (*const V1DarkMagicProjectile_Actions[])(V1DarkMagicProjectileEntity*);
extern void (*const V1DarkMagicProjectile_SubActions[])(Entity*);

void sub_080AAF74(V1DarkMagicProjectileEntity*);
void sub_080AB034(Entity*);

void V1DarkMagicProjectile(V1DarkMagicProjectileEntity* this) {
    V1DarkMagicProjectile_Functions[GetNextFunction(super)](this);
}

void V1DarkMagicProjectile_OnTick(V1DarkMagicProjectileEntity* this) {
    V1DarkMagicProjectile_Actions[super->action](this);
    if ((super->type2 == 0) && (--this->unk_84 == 0)) {
        super->health = 0;
    }
}

void V1DarkMagicProjectile_OnCollision(V1DarkMagicProjectileEntity* this) {
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        if (super->type2 == 0) {
            if ((super->contactFlags & 0x3f) == 0) {
                super->action = 2;
                COLLISION_OFF(super);
                if (super->type == 0) {
                    SortEntityAbove(&gPlayerEntity.base, super);
                } else {
                    SortEntityAbove(super->parent, super);
                }
                ResetActiveItems();
                gPlayerState.mobility |= 0x80;
                gPlayerState.field_0xa |= 0x80;
            }
            if (gPlayerEntity.base.health == 0) {
                super->health = 0;
            }
        } else {
            SoundReq(SFX_ITEM_GLOVES_KNOCKBACK);
            CopyPosition(super->parent, super);
        }
    }
    if (super->knockbackDuration != 0) {
        super->knockbackDuration = 0;
    }
}

void V1DarkMagicProjectile_OnDeath(V1DarkMagicProjectileEntity* this) {
    V1DarkMagicProjectileEntity* parent;
    if (super->type && super->type2) {
        DeleteThisEntity();
    }

    if (super->spriteSettings.draw == 1) {
        super->spriteSettings.draw = 0;
        this->unk_86 = 1;
        CreateFx(super, FX_DEATH, 0);
    }

    parent = (V1DarkMagicProjectileEntity*)super->parent;
    if (super->type2 == 0) {
        u8* ptr = &(parent->unk_74);
        parent->unk_74 = 3;
        parent->unk_80 += this->unk_81 >> 1;
        if (parent->unk_80 > 8) {
            parent->unk_80 = 8;
        } else if (parent->unk_80 == 0) {
            parent->unk_80 = 1;
        }
    } else {
        *(u8*)&parent->unk_84 = 0;
        parent->base.hitType = 0x2b;
    }

    if (this->unk_86 == 0) {
        CreateFx(super, FX_DEATH, 0);
    }

    DeleteThisEntity();
}

void V1DarkMagicProjectile_OnGrabbed(V1DarkMagicProjectileEntity* this) {
    if (!sub_0806F520(super)) {
        super->health = 0;
    }
    V1DarkMagicProjectile_SubActions[super->subAction](super);
}

void V1DarkMagicProjectile_SubAction0(Entity* this) {
    this->subAction = 2;
}

void V1DarkMagicProjectile_SubAction1(Entity* this) {
}

void V1DarkMagicProjectile_SubAction2(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        this->health = 0;
    }
}

void V1DarkMagicProjectile_Init(V1DarkMagicProjectileEntity* this) {
    Entity* entity;

    if (super->type2 == 0) {
        super->action = 1;
    } else {
        super->action = 3;
        super->hitType = 0x2c;
        SortEntityAbove(super->parent, super);
    }
    if (super->type == 0) {
        super->timer = 0;
        super->subtimer = 4;
        this->unk_80 = 0;
        this->unk_81 = 0;
        super->health = 0x10;
        super->z.HALF.HI += 4;
        super->spriteOrientation.flipY = 1;
        super->spriteRendering.b3 = 1;
        super->spritePriority.b0 = 4;
        super->direction = GetFacingDirection(super, &gPlayerEntity.base);
        this->unk_86 = 0;
        this->unk_84 = 300;
        entity = CreateProjectile(V1_DARK_MAGIC_PROJECTILE);
        if (entity != NULL) {
            entity->type = 1;
            entity->type2 = super->type2;
            entity->parent = super;
        }
    } else {
        SortEntityAbove(super->parent, super);
        COLLISION_OFF(super);
        CopyPosition(super->parent, super);
    }
    InitializeAnimation(super, super->type);
}

void V1DarkMagicProjectile_Action1(V1DarkMagicProjectileEntity* this) {
    u8 bVar1;
    u32 uVar2;

    switch (super->type) {
        case 0:
            if (--super->subtimer == 0) {
                super->subtimer = 4;
                uVar2 = GetFacingDirection(super, &gPlayerEntity.base);
                sub_08004596(super, uVar2);
            }
            LinearMoveUpdate(super);
            break;
        case 1:
            if ((super->parent == NULL) || (super->parent->next == NULL)) {
                DeleteThisEntity();
            }
        case 2:
            if (super->parent->spriteSettings.draw == 0) {
                DeleteThisEntity();
            }
            CopyPosition(super->parent, super);
            break;
    }
    sub_080AB034(super);
}

void V1DarkMagicProjectile_Action2(V1DarkMagicProjectileEntity* this) {
    sub_080AAF74(this);
    sub_080AB034(super);
}

void V1DarkMagicProjectile_Action3(V1DarkMagicProjectileEntity* this) {
    CopyPosition(super->parent, super);
    sub_080AB034(super);
    super->spriteSettings.draw = super->parent->spriteSettings.draw;
    if (super->type != 0) {
        super->health = super->parent->health;
    }
#ifndef EU
    if (super->parent->action == 2) {
        if ((super->flags & ENT_COLLIDE) != 0) {
            COLLISION_OFF(super);
        }
    } else {
        if ((super->flags & ENT_COLLIDE) == 0) {
            COLLISION_ON(super);
        }
    }
#endif
}

void sub_080AAF74(V1DarkMagicProjectileEntity* this) {
    if (sub_0807953C() != 0) {
        this->unk_80 += (Random() & 1) + 1;
    }
    if (++super->timer == 0x3c) {
        super->timer = 30;
        gPlayerEntity.base.iframes = 8;
        ModHealth(-4);
        SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
        if (gPlayerEntity.base.health == 0) {
            super->health = 0;
        }
    }
    if (!((this->unk_80 < 0x31) && (this->unk_81 != 0x10))) {
        super->action = 1;
        this->unk_80 = 0;
        gPlayerEntity.base.iframes = 0xf0;
        gPlayerState.mobility = 0;
        super->health = 0;
    } else {
        ResetActiveItems();
        gPlayerState.mobility |= 0x80;
        gPlayerState.field_0xa |= 0x80;
        CopyPosition(&gPlayerEntity.base, super);
        super->z.HALF.HI = gPlayerEntity.base.z.HALF.HI - 4;
    }
}

void sub_080AB034(Entity* this) {
    u32 tmp;

    GetNextFrame(this);
    if ((this->frameSpriteSettings & 1) != 0) {
        tmp = 0;
    } else {
        tmp = 0x139;
    }
    ChangeObjPalette(this, tmp);
}

void (*const V1DarkMagicProjectile_Functions[])(V1DarkMagicProjectileEntity*) = {
    V1DarkMagicProjectile_OnTick,
    V1DarkMagicProjectile_OnCollision,
    (void (*)(V1DarkMagicProjectileEntity*))DeleteEntity,
    V1DarkMagicProjectile_OnDeath,
    (void (*)(V1DarkMagicProjectileEntity*))DeleteEntity,
    V1DarkMagicProjectile_OnGrabbed,
};
void (*const V1DarkMagicProjectile_Actions[])(V1DarkMagicProjectileEntity*) = {
    V1DarkMagicProjectile_Init,
    V1DarkMagicProjectile_Action1,
    V1DarkMagicProjectile_Action2,
    V1DarkMagicProjectile_Action3,
};
void (*const V1DarkMagicProjectile_SubActions[])(Entity*) = {
    V1DarkMagicProjectile_SubAction0,
    V1DarkMagicProjectile_SubAction1,
    V1DarkMagicProjectile_SubAction2,
};
