/**
 * @file lavaPlatform.c
 * @ingroup Objects
 *
 * @brief Lava Platform object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 timer;
    /*0x72*/ u16 wobbleTime;  /**< Time the player can stand on the platform. */
    /*0x74*/ u16 respawnTime; /**< Time until the platform respawns after it has sunk. */
    /*0x76*/ u16 unk_76;
    /*0x78*/ Entity* unk_78; // Typed same as second argument of UpdateRailMovement
} LavaPlatformEntity;

typedef struct {
    /*0x00*/ Entity* unk_78; // Typed same as second argument of UpdateRailMovement
    /*0x04*/ s16 x;
    /*0x06*/ s16 y;
    /*0x08*/ u8 collisionLayer;
    /*0x09*/ u8 type2;
    /*0x0a*/ u16 wobbleTime;
    /*0x0c*/ u16 respawnTime;
    /*0x0e*/ u8 unk_e[2];
} LavaPlatformEntry;

void LavaPlatform_Type0(LavaPlatformEntity*);
void LavaPlatform_Type1(LavaPlatformEntity*);
void LavaPlatform_SpawnPlatforms(LavaPlatformEntity*);
void sub_080926E4(LavaPlatformEntity*);
void sub_0809264C(LavaPlatformEntity*);
void sub_08092620(LavaPlatformEntity*);
bool32 LavaPlatform_IsPlayerOnPlatform(LavaPlatformEntity*);
void LavaPlatform_Type0Init(LavaPlatformEntity*);
void LavaPlatform_Type0Action1(LavaPlatformEntity*);
void LavaPlatform_Type0Action2(LavaPlatformEntity*);
void LavaPlatform_Type1Init(LavaPlatformEntity*);
void LavaPlatform_Type1Action1(LavaPlatformEntity*);
void LavaPlatform_Type1Action2(LavaPlatformEntity*);
void LavaPlatform_Type1Action3(LavaPlatformEntity*);
void LavaPlatform_Type1Action4(LavaPlatformEntity*);
void LavaPlatform_Type1Action5(LavaPlatformEntity*);
void LavaPlatform_Type1Action6(LavaPlatformEntity*);
void LavaPlatform_Type1Action7(LavaPlatformEntity*);

void LavaPlatform(LavaPlatformEntity* this) {
    if (super->type == 0) {
        LavaPlatform_Type0(this);
    } else {
        LavaPlatform_Type1(this);
    }
}

void LavaPlatform_Type0(LavaPlatformEntity* this) {
    static void (*const LavaPlatform_Type0Actions[])(LavaPlatformEntity*) = {
        LavaPlatform_Type0Init,
        LavaPlatform_Type0Action1,
        LavaPlatform_Type0Action2,
    };
    LavaPlatform_Type0Actions[super->action](this);
}

void LavaPlatform_Type0Init(LavaPlatformEntity* this) {
    super->action = 1;
    LavaPlatform_SpawnPlatforms(this);
}

void LavaPlatform_Type0Action1(LavaPlatformEntity* this) {
    if (*(u8*)&this->timer != 0) {
        // Use this entity to show the platform flipping animation.
        super->action = 2;
        super->zVelocity = Q_16_16(2.75);
        super->spriteSettings.draw = 1;
        UpdateSpriteForCollisionLayer(super);
        InitAnimationForceUpdate(super, (super->child)->animationState);
        EnqueueSFX(SFX_LAVA_TILE_FLIP);
        InitializeAnimation(super->child, 3);
    }
}

void LavaPlatform_Type0Action2(LavaPlatformEntity* this) {
    if (GravityUpdate(super, Q_8_8(36.0)) == 0) {
        // Finished flipping platform.
        super->action = 1;
        super->spriteSettings.draw = 0;
        *(u8*)&this->timer = 0;
        (super->child)->spriteOffsetY = 0;
        InitializeAnimation(super->child, super->child->animationState);
        CreateFx(super, FX_LAVA_SPLASH_HUGE, 0);
    } else if ((super->zVelocity < Q_16_16(1.5)) && ((super->frame & ANIM_DONE) == 0)) {
        UpdateAnimationSingleFrame(super);
    }
}

void LavaPlatform_Type1(LavaPlatformEntity* this) {
    static void (*const LavaPlatform_Type1Actions[])(LavaPlatformEntity*) = {
        LavaPlatform_Type1Init,    LavaPlatform_Type1Action1, LavaPlatform_Type1Action2, LavaPlatform_Type1Action3,
        LavaPlatform_Type1Action4, LavaPlatform_Type1Action5, LavaPlatform_Type1Action6, LavaPlatform_Type1Action7,
    };
    super->subtimer = 0;
    LavaPlatform_Type1Actions[super->action](this);
    sub_080926E4(this);
}

void LavaPlatform_Type1Init(LavaPlatformEntity* this) {
    super->animationState = super->type2;
    super->spritePriority.b0 = 7;
    super->hurtType = 0x48;
    super->collisionFlags = 7;
    super->collisionMask = 0x81;
    super->hitbox = (Hitbox*)&gUnk_080FD280;
    sub_0809264C(this);
}

void LavaPlatform_Type1Action1(LavaPlatformEntity* this) {
    if (super->animIndex != 3) {
        if (super->subAction == 0) {
            super->subAction = 1;
            super->animationState ^= 1;
            InitializeAnimation(super, (u32)super->animationState);
        }
        if (--super->spriteOffsetY == -3) {
            sub_0809264C(this);
        }
    }
}

void LavaPlatform_Type1Action2(LavaPlatformEntity* this) {
    if (super->contactFlags == (CONTACT_NOW | 0x1d)) {
        sub_08092620(this);
    } else {
        if (LavaPlatform_IsPlayerOnPlatform(this)) {
            super->action = 3;
            super->flags &= ~ENT_COLLIDE;
            super->timer = 20;
            gPlayerState.spriteOffsetY = -3;
        }
    }
}

/** Player is standing on the platform. */
void LavaPlatform_Type1Action3(LavaPlatformEntity* this) {
    if (LavaPlatform_IsPlayerOnPlatform(this)) {
        gPlayerState.spriteOffsetY = -3;
    }
    if (--super->timer == 0) {
        super->action = 4;
        this->timer = this->wobbleTime;
        super->spriteOffsetY = 0;
        InitializeAnimation(super, 2);
        EnqueueSFX(SFX_LAVA_TILE_STEP);
    }
}

/** Platform begins to wobble */
void LavaPlatform_Type1Action4(LavaPlatformEntity* this) {
    u32 tmp;
    LavaPlatform_IsPlayerOnPlatform(this);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer < 0x8d) {
        GetNextFrame(super);
        tmp = super->frame & ANIM_DONE;
        if (tmp) {
            // Platform sank
            super->action = 5;
            this->timer = this->respawnTime;
            super->spriteSettings.draw = 0;
        } else {
            if ((super->frame & 1) != 0) {
                super->frame = tmp;
                EnqueueSFX(SFX_LAVA_TILE_WOBBLE);
            } else {
                if ((super->frame & 2) != 0) {
                    super->frame = super->frame & 1;
                    EnqueueSFX(SFX_LAVA_TILE_SINK);
                }
            }
        }
    }
}

void LavaPlatform_Type1Action5(LavaPlatformEntity* this) {
    if (--this->timer == 0) {
        super->action = 6;
        super->animationState = super->type2;
        super->spriteSettings.draw = 1;
        super->spriteOffsetY = 0;
        InitializeAnimation(super, super->animationState + 4);
        if (super->animationState == 0) {
            LavaPlatform_IsPlayerOnPlatform(this);
        }
    }
}

void LavaPlatform_Type1Action6(LavaPlatformEntity* this) {
    bool32 tmp;

    if (super->animationState == 0) {
        tmp = LavaPlatform_IsPlayerOnPlatform(this);
    } else {
        tmp = FALSE;
    }
    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        super->frame = 0;
        super->flags |= ENT_COLLIDE;
        super->hitType = 0xac;
    } else {
        if ((super->frame & ANIM_DONE) != 0) {
            sub_0809264C(this);
            if (tmp) {
                gPlayerState.spriteOffsetY = -3;
            }
        }
    }
}

void LavaPlatform_Type1Action7(LavaPlatformEntity* this) {
    if (super->contactFlags == (CONTACT_NOW | 0x1d)) {
        sub_08092620(this);
    }
}

void LavaPlatform_SpawnPlatforms(LavaPlatformEntity* this) {
    LavaPlatformEntry* entry = (LavaPlatformEntry*)GetCurrentRoomProperty(super->type2);
    while (entry->type2 != 0xff) {
        LavaPlatformEntity* platform = (LavaPlatformEntity*)CreateObject(LAVA_PLATFORM, 1, entry->type2);
        if (platform != NULL) {
            (platform->base).direction = 0xff;
            (platform->base).speed = 0;
            (platform->base).parent = super;
            (platform->base).x.HALF.HI = entry->x + gRoomControls.origin_x;
            (platform->base).y.HALF.HI = entry->y + gRoomControls.origin_y;
            (platform->base).collisionLayer = entry->collisionLayer;
            platform->wobbleTime = entry->wobbleTime;
            platform->respawnTime = entry->respawnTime;
            platform->unk_78 = entry->unk_78;
            UpdateSpriteForCollisionLayer((Entity*)platform);
            UpdateRailMovement(&platform->base, (u16**)&platform->unk_78, &platform->unk_76);
        }
        entry++;
    }
}

void sub_08092620(LavaPlatformEntity* this) {
    LavaPlatformEntity* parent = (LavaPlatformEntity*)super->parent;
    u32 one;
    if (*(u8*)&parent->timer == 0) {
        one = 1;
        *(u8*)&parent->timer = one;
        (parent->base).child = super;
        CopyPosition(super, &parent->base);
        super->action = one;
        super->subAction = 0;
        super->hitType = 0xac;
    }
}

void sub_0809264C(LavaPlatformEntity* this) {
    if ((super->animationState & 1) != 0) {
        super->action = 7;
        super->hitType = 0xac;
    } else {
        super->action = 2;
        super->hitType = 1;
    }
    super->flags |= ENT_COLLIDE;
    super->spriteSettings.draw = 1;
    super->spriteOffsetY = -3;
    InitializeAnimation(super, super->animationState);
}

bool32 LavaPlatform_IsPlayerOnPlatform(LavaPlatformEntity* this) {
    if ((gPlayerState.flags & PL_MINISH) == 0 && EntityInRectRadius(super, &gPlayerEntity.base, 0x10, 0x10) &&
        PlayerCanBeMoved()) {
        gPlayerState.field_0x14 = 1;
        if (gPlayerEntity.base.z.HALF.HI == 0) {
            super->subtimer = 1;
            return TRUE;
        }
    }

    return FALSE;
}

void sub_080926E4(LavaPlatformEntity* this) {
    SyncPlayerToPlatform(super, super->subtimer);
    if (super->action == 1) {
        (super->parent)->x.HALF.HI = super->x.HALF.HI;
        (super->parent)->y.HALF.HI = super->y.HALF.HI;
    }
    if (--this->unk_76 == 0) {
        UpdateRailMovement(super, (u16**)&this->unk_78, &this->unk_76);
    }
}
