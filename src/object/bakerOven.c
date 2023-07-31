/**
 * @file bakerOven.c
 * @ingroup Objects
 *
 * @brief Baker Oven object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u16 unk_80;
} BakerOvenEntity;

extern void SoundReqClipped(Entity*, u32);
void sub_0809CDF0(BakerOvenEntity* this);
void BakerOven_Init(BakerOvenEntity* this);
void BakerOven_Action1(BakerOvenEntity* this);
void BakerOven_Action2(BakerOvenEntity* this);

void BakerOven(BakerOvenEntity* this) {
    static void (*const BakerOven_Actions[])(BakerOvenEntity*) = {
        BakerOven_Init,
        BakerOven_Action1,
        BakerOven_Action2,
    };
    BakerOven_Actions[super->action](this);
}

void BakerOven_Init(BakerOvenEntity* this) {
    u32 i;
    Entity* entity;

    super->action = 1;
    UpdateSpriteForCollisionLayer(super);

    if (super->type == 0) {
        super->spritePriority.b0 = 5;
        /* Create steam clouds */
        for (i = 0; i < 3; i++) {
            entity = CreateObject(BAKER_OVEN, 1, i);
            if (entity != NULL) {
                entity->parent = super;
                PositionRelative(super, entity, 16 * Q_16_16((i + 1) / 2) - Q_16_16(8.0), Q_16_16(-14.0));
            }
        }
        sub_0809CDF0(this);
    } else {
        if (super->type2 & 1) {
            super->spriteSettings.draw = 1;
            super->timer = 20;
        } else {
            super->action = 2;
            super->timer = (super->type2 & 2) ? 20 : 18;
        }
        InitializeAnimation(super, 0);
    }
}

void BakerOven_Action1(BakerOvenEntity* this) {
    u8* frame;

    if (super->type) {
        GetNextFrame(super);
        frame = &super->frame;
        if (super->frame & 1) {
            super->frame &= ~1;
            super->y.HALF.HI++;
        }

        if ((*frame & ANIM_DONE) && super->frameDuration == 1) {
            super->action = 2;
            super->spriteSettings.draw = 0;
        }

        /* Damage minish link if he touches a steam cloud */
        if (super->subtimer == 0 && gPlayerEntity.iframes == 0 && super->frameIndex &&
            sub_0806FC80(super, &gPlayerEntity, 4)) {
            super->subtimer++;
            ModHealth(-2);
            SoundReqClipped(&gPlayerEntity, SFX_PLY_VO6);
            gPlayerEntity.iframes = 16;
            gPlayerEntity.knockbackDirection = 16;
            gPlayerEntity.knockbackDuration = 12;
            gPlayerEntity.knockbackSpeed = 16;
        }
    }
}

void BakerOven_Action2(BakerOvenEntity* this) {
    /* Reset cloud position and start animation. */
    if (--super->timer == 0) {
        super->action = 1;
        super->timer = 30;
        super->subtimer = 0;
        super->spriteSettings.draw = 1;
        super->y.HALF.HI = super->parent->y.HALF.HI - 0xe;
        InitializeAnimation(super, 0);
    }
}

void sub_0809CDF0(BakerOvenEntity* this) {
    u32 y;

    this->unk_80 = (((super->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3f) |
                   (((super->y.HALF.HI - gRoomControls.origin_y) >> 4 & 0x3f) << 6);

    y = this->unk_80;
    SetTile(0x402e, y - 0x01, super->collisionLayer);
    SetTile(0x4022, y - 0x00, super->collisionLayer);
    SetTile(0x4022, y + 0x01, super->collisionLayer);
    SetTile(0x4026, y - 0x41, super->collisionLayer);
    SetTile(0x4026, y - 0x40, super->collisionLayer);
    SetTile(0x4024, y - 0x3f, super->collisionLayer);
    SetTile(0x4026, y - 0x81, super->collisionLayer);
    SetTile(0x4026, y - 0x80, super->collisionLayer);
}
