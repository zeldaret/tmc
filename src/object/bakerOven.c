#include "object.h"
#include "functions.h"

extern void SoundReqClipped(Entity*, u32);
extern void sub_0809CDF0(Entity*);

extern void (*const gUnk_08123E20[])(Entity*);

void BakerOven(Entity* this) {
    gUnk_08123E20[this->action](this);
}

void sub_0809CC74(Entity* this) {
    u32 i;
    Entity* ent;

    this->action = 1;
    UpdateSpriteForCollisionLayer(this);

    if (this->type == 0) {
        this->spritePriority.b0 = 5;
        /* Create steam clouds */
        for (i = 0; i < 3; i++) {
            ent = CreateObject(BAKER_OVEN, 1, i);
            if (ent != NULL) {
                ent->parent = this;
                PositionRelative(this, ent, 16 * Q_16_16((i + 1) / 2) - Q_16_16(8.0), Q_16_16(-14.0));
            }
        }
        sub_0809CDF0(this);
    } else {
        if (this->type2 & 1) {
            this->spriteSettings.draw = 1;
            this->actionDelay = 20;
        } else {
            this->action = 2;
            this->actionDelay = (this->type2 & 2) ? 20 : 18;
        }
        InitializeAnimation(this, 0);
    }
}

void sub_0809CD0C(Entity* this) {
    u8* frames;

    if (this->type) {
        GetNextFrame(this);
        frames = &this->frame;
        if (*frames & 1) {
            *frames &= 0xfe;
            this->y.HALF.HI++;
        }

        if ((*frames & 0x80) && this->frameDuration == 1) {
            this->action = 2;
            this->spriteSettings.draw = 0;
        }

        /* Damage minish link if he touches a steam cloud */
        if (this->field_0xf == 0 && gPlayerEntity.iframes == 0 && this->frameIndex &&
            sub_0806FC80(this, &gPlayerEntity, 4)) {
            this->field_0xf++;
            ModHealth(-2);
            SoundReqClipped(&gPlayerEntity, SFX_PLY_VO6);
            gPlayerEntity.iframes = 16;
            gPlayerEntity.knockbackDirection = 16;
            gPlayerEntity.knockbackDuration = 12;
            gPlayerEntity.knockbackSpeed = 16;
        }
    }
}

void sub_0809CDB4(Entity* this) {
    /* Reset cloud position and start animation. */
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->actionDelay = 30;
        this->field_0xf = 0;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI = this->parent->y.HALF.HI - 0xe;
        InitializeAnimation(this, 0);
    }
}

void sub_0809CDF0(Entity* this) {
    u32 y;

    this->field_0x80.HWORD = (((this->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3f) |
                             (((this->y.HALF.HI - gRoomControls.origin_y) >> 4 & 0x3f) << 6);

    y = this->field_0x80.HWORD;
    SetTile(0x402e, y - 0x01, this->collisionLayer);
    SetTile(0x4022, y - 0x00, this->collisionLayer);
    SetTile(0x4022, y + 0x01, this->collisionLayer);
    SetTile(0x4026, y - 0x41, this->collisionLayer);
    SetTile(0x4026, y - 0x40, this->collisionLayer);
    SetTile(0x4024, y - 0x3f, this->collisionLayer);
    SetTile(0x4026, y - 0x81, this->collisionLayer);
    SetTile(0x4026, y - 0x80, this->collisionLayer);
}
