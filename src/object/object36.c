/**
 * @file object36.c
 * @ingroup Objects
 *
 * @brief Object36 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "hitbox.h"

typedef struct {
    /*0x00*/ Entity base;
} Object36Entity;

void sub_0808BB30(Object36Entity*);
void sub_0808BC3C(Object36Entity*);
void sub_0808BD14(Object36Entity*);
void sub_0808BDB0(Object36Entity*);
void sub_0808BBE0(Object36Entity*);
void sub_0808BD00(Object36Entity*);

void Object36(Object36Entity* this) {
    static void (*const gUnk_08121440[])(Object36Entity*) = {
        sub_0808BB30,
        sub_0808BC3C,
        sub_0808BD14,
    };
    gUnk_08121440[super->action](this);
}

void sub_0808BB30(Object36Entity* this) {
    if (CheckGlobalFlag(LV1TARU_OPEN)) {
        LoadGfxGroup(0x4a);
        DeleteThisEntity();
    } else {
        super->action = 1;
        super->flags |= ENT_COLLIDE;
        super->actionDelay = 0x78;
        super->field_0xf = 0;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 4;
        super->spriteOrientation.flipY = 2;
        super->speed = 0x300;
        super->hitType = 1;
        super->field_0x3c = 7;
        super->hurtType = 0x48;
        super->flags2 = 4;
        super->hitbox = (Hitbox*)&gHitbox_0;
        super->frameIndex = 2;
        super->collisionLayer = gPlayerEntity.collisionLayer;
        sub_0808BDB0(this);
        super->y.HALF.HI = 0x170 - (super->parent)->zVelocity;
        sub_0808BBE0(this);
    }
}

void sub_0808BBE0(Object36Entity* this) {
    static const u16 gUnk_0812144C[] = { 192, 256, 208, 240, 224, 224, 240, 208, 256, 192,
                                         256, 192, 240, 208, 224, 224, 208, 240, 192, 256 };
    static const u8 gUnk_08121474[] = {
        248, 250, 252, 254, 0, 0, 2, 4, 6, 8, 0, 0,
    };
    const u16* ptr;
    s32 diff = super->y.HALF.HI - gRoomControls.scroll_y;
    if ((u32)diff < 0xa0) {
        diff /= 0x10;
        super->spriteOffsetY = gUnk_08121474[diff];
        ptr = &gUnk_0812144C[diff * 2];
        sub_0805EC9C(super, ptr[0], ptr[1], 0);
    } else {
        super->bitfield &= 0x7f;
    }
}

void sub_0808BC3C(Object36Entity* this) {
    s32 tmp;
    super->x.HALF.HI = gRoomControls.origin_x + 0x78;
    tmp = -0x170;
    super->y.HALF.HI = gRoomControls.origin_y - ((super->parent)->zVelocity + tmp);
    sub_0808BBE0(this);
    if (super->bitfield == 0x93) {
        super->actionDelay--;
        super->spriteSettings.draw = 1;
        if (super->actionDelay == 0) {
            SetGlobalFlag(LV1TARU_OPEN);
            super->action = 2;
            super->field_0xf = 0x80;
            super->spriteOffsetY = 0;
        } else {
            if ((super->actionDelay & 1) != 0) {
                super->x.HALF.HI += ((Random() & 3) - 2);
                super->y.HALF.HI += ((Random() & 3) - 1);
            }
            if (super->field_0xf != 1) {
                super->field_0xf = 1;
                LoadGfxGroup(0x4a);
            }
        }
    } else {
        super->actionDelay = 0x78;
        super->spriteSettings.draw = 0;
        if (super->field_0xf != 0) {
            super->field_0xf = 0;
            LoadGfxGroup(0x49);
        }
    }
}

void sub_0808BD00(Object36Entity* this) {
    SetGlobalFlag(LV1TARU_OPEN);
    SoundReq(SFX_SECRET);
    DeleteThisEntity();
}

void sub_0808BD14(Object36Entity* this) {

    if (super->field_0xf != 0) {
        super->field_0xf -= 8;
        sub_0805EC9C(super, 0x200 - super->field_0xf, 0x200 - super->field_0xf, 0);
    }
    if (super->bitfield == 0x93) {
        super->direction = GetFacingDirection(super, &gPlayerEntity);
        LinearMoveUpdate(super);
        if (EntityWithinDistance(super, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI - 6, 0x1c)) {
            sub_0808BD00(this);
        }
    } else {
        if ((super->flags & ENT_COLLIDE) != 0) {
            super->flags &= ~ENT_COLLIDE;
            super->actionDelay = 0x1e;
        } else {
            super->spriteSettings.draw ^= 1;
            if (--super->actionDelay == 0) {
                sub_0808BD00(this);
            }
        }
    }
}

void sub_0808BDB0(Object36Entity* this) {
    LinkedList* list = &gEntityLists[6];
    Entity* it = list->first;
    super->parent = NULL;
    for (; it != (Entity*)list; it = it->next) {
        if (it->kind == 0x9 && it->id == 0xc) {
            super->parent = it;
            return;
        }
    }
}
