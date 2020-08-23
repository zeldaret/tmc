#include "global.h"
#include "entity.h"
#include "functions.h"

extern void sub_0800449C(Entity*, u32);
extern u32 sub_0806FC80(Entity*, Entity*, s32);
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

    if (this->entityType.form == 0) {
        this->spritePriority.b0 = 5;
        /* Create steam clouds */
        for (i = 0; i < 3; i++) {
            ent = CreateObject(0x92, 1, i);
            if (ent) {
                ent->parent = this;
                PositionRelative(this, ent, (((i + 1) / 2) * 0x100000) - 0x80000, -0xe0000);
            }
        }
        sub_0809CDF0(this);
    } else {
        if (this->entityType.parameter & 1) {
            this->spriteSettings.b.draw = 1;
            this->actionDelay = 20;
        } else {
            this->action = 2;
            this->actionDelay = (this->entityType.parameter & 2) ? 20 : 18;
        }
        InitializeAnimation(this, 0);
    }
}

void sub_0809CD0C(Entity* this) {
    u8* frames;

    if (this->entityType.form) {
        GetNextFrame(this);
        frames = &this->frames.all;
        if (*frames & 1) {
            *frames &= 0xfe;
            this->y.HALF.HI++;
        }

        if ((*frames & 0x80) && this->frameDuration == 1) {
            this->action = 2;
            this->spriteSettings.b.draw = 0;
        }

        /* Damage minish link if he touches a steam cloud */
        if (this->field_0xf == 0 && gPlayerEntity.hurtBlinkTime == 0 && this->frameIndex &&
            sub_0806FC80(this, &gPlayerEntity, 4)) {
            this->field_0xf++;
            ModHealth(-2);
            sub_0800449C(&gPlayerEntity, 0x7a);
            gPlayerEntity.hurtBlinkTime = 16;
            gPlayerEntity.field_0x3e = 16;
            gPlayerEntity.field_0x42 = 12;
            gPlayerEntity.field_0x46 = 16;
        }
    }
}

void sub_0809CDB4(Entity* this) {
    /* Reset cloud position and start animation. */
    if (--this->actionDelay == 0) {
        this->action = 1;
        this->actionDelay = 30;
        this->field_0xf = 0;
        this->spriteSettings.b.draw = 1;
        this->y.HALF.HI = this->parent->y.HALF.HI - 0xe;
        InitializeAnimation(this, 0);
    }
}

void sub_0809CDF0(Entity* this) {
    u32 y;

    this->field_0x80.HWORD = (((this->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 0x3f) |
                             (((this->y.HALF.HI - gRoomControls.roomOriginY) >> 4 & 0x3f) << 6);

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
