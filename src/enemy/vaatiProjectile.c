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
void sub_0803E0C4(Entity*);
void sub_0803E0DC(Entity*);
void sub_08001328(Entity*);
void sub_0803E188(Entity*);
void nullsub_19(Entity*);
void sub_0803E1A8(Entity*);
void sub_0803E258(Entity*);
void sub_0803E2A8(Entity*);
void sub_0803E2D0(Entity*);
void sub_0803E314(Entity*);
void sub_0803E340(Entity*);
void sub_0803E370(Entity*);
void sub_0803E398(Entity*);
void sub_0803E3D4(Entity*);
void sub_0803E3FC(Entity*);
void sub_0803E444(Entity*);
void sub_0803E480(Entity*);
void sub_0803E4D8(Entity*);

void (*const gUnk_080D0648[])(Entity*) = {
    sub_0803E0C4, sub_0803E0DC, sub_08001328, sub_0803E188, sub_08001242, nullsub_19,
};
void (*const gUnk_080D0660[])(Entity*) = {
    sub_0803E1A8, sub_0803E258, sub_0803E2A8, sub_0803E2D0, sub_0803E314,
    sub_0803E340, sub_0803E370, sub_0803E398, sub_0803E3D4, sub_0803E3FC,
};

void VaatiProjectile(Entity* this) {
    if (sub_0803E4A0(this)) {
        this->flags &= 0x7f;
        this->currentHealth = 0;
        this->parent = NULL;
    }
    gUnk_080D0648[GetNextFunction(this)](this);
}

void sub_0803E0C4(Entity* this) {
    gUnk_080D0660[this->action](this);
}

void sub_0803E0DC(Entity* this) {
    Entity* entity;

    if (this->bitfield == 0x80) {
        if (this->currentHealth != 0) {
            this->action = 5;
            this->flags = this->flags & 0x7f;
            this->spritePriority.b1 = 0;
            gPlayerEntity.flags &= 0x7f;
            gPlayerEntity.spriteOrientation.flipY = this->spriteOrientation.flipY;
            gPlayerEntity.spriteRendering.b3 = this->spriteRendering.b3;
            sub_0803E444(this);
            sub_08078A90(2);
            entity = this->parent;
            if (entity != NULL) {
                entity->flags = entity->flags & 0x7f;
            }
        } else {
            gPlayerState.flags.all &= 0xfffffeff; // using b.unk8 does not match
            entity = &gPlayerEntity;
            entity->flags = gPlayerEntity.flags | 0x80;
        }
    }
    sub_0804AA30(this, gUnk_080D0648);
}

void sub_0803E188(Entity* this) {
    if (this->parent != NULL) {
        this->parent->field_0xf--;
        this->parent = NULL;
    }
    sub_0804A7D4(this);
}

void nullsub_19(Entity* this) {
}

void sub_0803E1A8(Entity* this) {
    Entity* entity;

    if (this->type == 0) {
        entity = CreateEnemy(VAATI_PROJECTILE, 1);
        if (entity != NULL) {
            entity->parent = this;
            this->attachedEntity = entity;
            if (this->type2 == 0) {
                this->action = 1;
                this->height.HALF.HI = -0x18;
            } else {
                this->action = 9;
                this->height.HALF.HI = -0x80;
                this->flags2 = 1;
            }
            InitializeAnimation(this, 0);
        }
    } else {
        this->action = 8;
        this->flags = this->flags & 0x7f;
        this->spriteOffsetY = 1;
        this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = this->parent->spriteRendering.b3;
        this->spritePriority.b1 = 0;
        PositionRelative(this->parent, this, 0, -0x10000);
        InitializeAnimation(this, 1);
    }
}

void sub_0803E258(Entity* this) {
    sub_0803E480(this);
    if (PlayerInRange(this, 0, 8) != 0) {
        this->action = 2;
        this->actionDelay = 10;
        InitializeAnimation(this->attachedEntity, 2);
    } else {
        if (gUnk_020000B0 != NULL) {
            sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
            sub_0806F69C(this);
        }
    }
    GetNextFrame(this);
}

void sub_0803E2A8(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        if (++this->height.HALF.HI == 0) {
            this->action = 3;
        }
    }
    GetNextFrame(this);
}

void sub_0803E2D0(Entity* this) {
    if ((this->attachedEntity->frames.b.f3) != 0) {
        if (--this->height.HALF.HI <= -0x18) {
            this->action = 4;
            this->actionDelay = (Random() & 0xf) + 0xf;
            InitializeAnimation(this->attachedEntity, 1);
        }
        GetNextFrame(this);
    }
}

void sub_0803E314(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
    }
    GetNextFrame(this);
}

void sub_0803E340(Entity* this) {
    sub_0803E444(this);
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        if (-0x18 < --this->height.HALF.HI) {
            return;
        }
        this->action = 6;
        this->actionDelay = 0x14;
    }
}

void sub_0803E370(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 7;
        this->direction = 0x10;
        this->speed = 0x300;
    }
    sub_0803E444(this);
}

void sub_0803E398(Entity* this) {
    sub_0803E444(this);
    sub_0806F69C(this);
    sub_0803E4D8(this);
    if ((gRoomControls.roomOriginY + gRoomControls.height + -0x10) <= this->y.HALF.HI) {
        sub_0805E5A8();
        DoExitTransition((ScreenTransitionData*)&gUnk_0813AB94);
    }
}

void sub_0803E3D4(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    PositionRelative(this->parent, this, 0, -0x10000);
    GetNextFrame(this);
}

void sub_0803E3FC(Entity* this) {
    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
    this->y.HALF.HI = gPlayerEntity.y.HALF.HI;
    if (this->height.HALF.HI < -8) {
        if (this->animIndex != 2) {
            this->actionDelay = 0;
            InitializeAnimation(this->attachedEntity, 2);
        }
        sub_0803E2A8(this);
    } else {
        this->height.HALF.HI += 8;
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
    bool32 ret;
    if (gScreenTransition.field_0x39 != 0) {
        if (this->parent == NULL) {
            return FALSE;
        }
        if (this->parent->currentHealth == 0) {
            return TRUE;
        } else {
            ret = this->parent->next == NULL;
        }
    } else {
        return TRUE;
    }
    return ret;
}

void sub_0803E4D8(Entity* this) {
    u32 tile;

    tile = TILE(this->x.HALF.HI, this->y.HALF.HI + 8);
    if (sub_080002E0(tile, gPlayerEntity.collisionLayer) != 0xff) {
        SetTile(0x4074, tile, gPlayerEntity.collisionLayer);
    }
}
