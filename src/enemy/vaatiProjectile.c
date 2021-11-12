#include "global.h"
#include "enemy.h"
#include "random.h"
#include "functions.h"

extern bool32 PlayerInRange(Entity*, u32, u32);
extern void DoExitTransition(ScreenTransitionData*);
extern u32 sub_080002E0(u32, u32);
extern Entity* gUnk_020000B0;
extern const ScreenTransitionData gUnk_0813AB94;

bool32 sub_0803E4A0(Entity*);
void VaatiProjectileFunction0(Entity*);
void VaatiProjectileFunction1(Entity*);
void sub_08001328(Entity*);
void VaatiProjectileFunction3(Entity*);
void VaatiProjectileNoop(Entity*);
void VaatiProjectileFunction0Action0(Entity*);
void VaatiProjectileFunction0Action1(Entity*);
void VaatiProjectileFunction0Action2(Entity*);
void VaatiProjectileFunction0Action3(Entity*);
void VaatiProjectileFunction0Action4(Entity*);
void VaatiProjectileFunction0Action5(Entity*);
void VaatiProjectileFunction0Action6(Entity*);
void VaatiProjectileFunction0Action7(Entity*);
void VaatiProjectileFunction0Action8(Entity*);
void VaatiProjectileFunction0Action9(Entity*);
void sub_0803E444(Entity*);
void sub_0803E480(Entity*);
void sub_0803E4D8(Entity*);

void (*const vaatiProjectileFunctions[])(Entity*) = {
    VaatiProjectileFunction0, VaatiProjectileFunction1, sub_08001328, VaatiProjectileFunction3, sub_08001242,
    VaatiProjectileNoop,
};
void (*const vaatiProjectileFunction0Actions[])(Entity*) = {
    VaatiProjectileFunction0Action0, VaatiProjectileFunction0Action1, VaatiProjectileFunction0Action2,
    VaatiProjectileFunction0Action3, VaatiProjectileFunction0Action4, VaatiProjectileFunction0Action5,
    VaatiProjectileFunction0Action6, VaatiProjectileFunction0Action7, VaatiProjectileFunction0Action8,
    VaatiProjectileFunction0Action9,
};

void VaatiProjectile(Entity* this) {
    if (sub_0803E4A0(this)) {
        COLLISION_OFF(this);
        this->health = 0;
        this->parent = NULL;
    }
    vaatiProjectileFunctions[GetNextFunction(this)](this);
}

void VaatiProjectileFunction0(Entity* this) {
    vaatiProjectileFunction0Actions[this->action](this);
}

void VaatiProjectileFunction1(Entity* this) {
    Entity* entity;

    if (this->bitfield == 0x80) {
#ifndef EU
        if (this->health != 0) {
#endif
            this->action = 5;
            COLLISION_OFF(this);
            this->spritePriority.b1 = 0;
            gPlayerEntity.flags &= 0x7f;
            gPlayerEntity.spriteOrientation.flipY = this->spriteOrientation.flipY;
            gPlayerEntity.spriteRendering.b3 = this->spriteRendering.b3;
            sub_0803E444(this);
#ifndef EU
            sub_08078A90(2);
            entity = this->parent;
            if (entity != NULL) {
                entity->flags = entity->flags & 0x7f;
            }
        } else {
            gPlayerState.flags &= 0xfffffeff; // using b.unk8 does not match
            entity = &gPlayerEntity;
            entity->flags = gPlayerEntity.flags | 0x80;
        }
#endif
    }
    sub_0804AA30(this, vaatiProjectileFunctions);
}

void VaatiProjectileFunction3(Entity* this) {
    if (this->parent != NULL) {
        this->parent->field_0xf--;
        this->parent = NULL;
    }
    sub_0804A7D4(this);
}

void VaatiProjectileNoop(Entity* this) {
}

void VaatiProjectileFunction0Action0(Entity* this) {
    Entity* entity;

    if (this->type == 0) {
        entity = CreateEnemy(VAATI_PROJECTILE, 1);
        if (entity != NULL) {
            entity->parent = this;
            this->child = entity;
            if (this->type2 == 0) {
                this->action = 1;
                this->z.HALF.HI = -0x18;
            } else {
                this->action = 9;
                this->z.HALF.HI = -0x80;
                this->flags2 = 1;
            }
            InitializeAnimation(this, 0);
        }
    } else {
        this->action = 8;
        COLLISION_OFF(this);
        this->spriteOffsetY = 1;
        this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = this->parent->spriteRendering.b3;
        this->spritePriority.b1 = 0;
        PositionRelative(this->parent, this, 0, -0x10000);
        InitializeAnimation(this, 1);
    }
}

void VaatiProjectileFunction0Action1(Entity* this) {
    sub_0803E480(this);
    if (PlayerInRange(this, 0, 8) != 0) {
        this->action = 2;
        this->actionDelay = 10;
        InitializeAnimation(this->child, 2);
    } else {
        if (gUnk_020000B0 != NULL) {
            sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
            sub_0806F69C(this);
        }
    }
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action2(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        if (++this->z.HALF.HI == 0) {
            this->action = 3;
        }
    }
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action3(Entity* this) {
    if (this->child->frame & 0x80) {
        if (--this->z.HALF.HI <= -0x18) {
            this->action = 4;
            this->actionDelay = (Random() & 0xf) + 0xf;
            InitializeAnimation(this->child, 1);
        }
        GetNextFrame(this);
    }
}

void VaatiProjectileFunction0Action4(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
    }
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action5(Entity* this) {
    sub_0803E444(this);
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        if (-0x18 < --this->z.HALF.HI) {
            return;
        }
        this->action = 6;
        this->actionDelay = 0x14;
    }
}

void VaatiProjectileFunction0Action6(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 7;
        this->direction = 0x10;
        this->speed = 0x300;
    }
    sub_0803E444(this);
}

void VaatiProjectileFunction0Action7(Entity* this) {
    sub_0803E444(this);
    sub_0806F69C(this);
    sub_0803E4D8(this);
    if ((gRoomControls.roomOriginY + gRoomControls.height + -0x10) <= this->y.HALF.HI) {
        sub_0805E5A8();
        DoExitTransition((ScreenTransitionData*)&gUnk_0813AB94);
    }
}

void VaatiProjectileFunction0Action8(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    PositionRelative(this->parent, this, 0, -0x10000);
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action9(Entity* this) {
    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
    this->y.HALF.HI = gPlayerEntity.y.HALF.HI;
    if (this->z.HALF.HI < -8) {
        if (this->animIndex != 2) {
            this->actionDelay = 0;
            InitializeAnimation(this->child, 2);
        }
        VaatiProjectileFunction0Action2(this);
    } else {
        this->z.HALF.HI += 8;
    }
}

void sub_0803E444(Entity* this) {
    ResetPlayer();
    gPlayerState.field_0x1a[0] = gPlayerState.field_0x1a[0] | 0x80;
    gPlayerState.field_0xa = gPlayerState.field_0xa | 0x80;
    sub_0806FA90(this, this->field_0x4c, 0, -2);
    gPlayerEntity.spriteOffsetY += 0xe;
}

void sub_0803E480(Entity* this) {
    if (this->field_0x78.HWORD >= 0x4b1) {
        this->speed = 0x180;
    } else {
        this->field_0x78.HWORD++;
    }
}

bool32 sub_0803E4A0(Entity* this) {
#ifdef EU
    bool32 ret;
    if (gScreenTransition.field_0x39 == 0) {
        return TRUE;
    } else {
        if (this->parent == NULL) {
            return FALSE;
        }
        ret = this->parent->next == NULL;
    }
    return ret;
#else
    bool32 ret;
    if (gScreenTransition.field_0x39 != 0) {
        if (this->parent == NULL) {
            return FALSE;
        }
        if (this->parent->health == 0) {
            return TRUE;
        } else {
            ret = this->parent->next == NULL;
        }
    } else {
        return TRUE;
    }
    return ret;
#endif
}

void sub_0803E4D8(Entity* this) {
    u32 tile;

    tile = TILE(this->x.HALF.HI, this->y.HALF.HI + 8);
    if (sub_080002E0(tile, gPlayerEntity.collisionLayer) != 0xff) {
        SetTile(0x4074, tile, gPlayerEntity.collisionLayer);
    }
}
