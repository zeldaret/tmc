/**
 * @file barrelSpiderweb.c
 * @ingroup Objects
 *
 * @brief Barrel Spiderweb object
 */

#define NENT_DEPRECATED
#include "functions.h"
#include "global.h"
#include "hitbox.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
} BarrelSpiderwebEntity;

void BarrelSpiderweb_Init(BarrelSpiderwebEntity*);
void BarrelSpiderweb_Action1(BarrelSpiderwebEntity*);
void BarrelSpiderweb_Action2(BarrelSpiderwebEntity*);
void sub_0808BDB0(BarrelSpiderwebEntity*);
void sub_0808BBE0(BarrelSpiderwebEntity*);
void sub_0808BD00(BarrelSpiderwebEntity*);

void BarrelSpiderweb(BarrelSpiderwebEntity* this) {
    static void (*const BarrelSpiderweb_Actions[])(BarrelSpiderwebEntity*) = {
        BarrelSpiderweb_Init,
        BarrelSpiderweb_Action1,
        BarrelSpiderweb_Action2,
    };
    BarrelSpiderweb_Actions[super->action](this);
}

void BarrelSpiderweb_Init(BarrelSpiderwebEntity* this) {
    if (CheckGlobalFlag(LV1TARU_OPEN)) {
        LoadGfxGroup(0x4a);
        DeleteThisEntity();
    } else {
        super->action = 1;
        super->flags |= ENT_COLLIDE;
        super->timer = 120;
        super->subtimer = 0;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 4;
        super->spriteOrientation.flipY = 2;
        super->speed = 0x300;
        super->hitType = 1;
        super->collisionFlags = 7;
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

void sub_0808BBE0(BarrelSpiderwebEntity* this) {
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
        SetAffineInfo(super, ptr[0], ptr[1], 0);
    } else {
        super->contactFlags &= 0x7f;
    }
}

void BarrelSpiderweb_Action1(BarrelSpiderwebEntity* this) {
    s32 tmp;
    super->x.HALF.HI = gRoomControls.origin_x + 0x78;
    tmp = -0x170;
    super->y.HALF.HI = gRoomControls.origin_y - ((super->parent)->zVelocity + tmp);
    sub_0808BBE0(this);
    if (super->contactFlags == 0x93) {
        super->timer--;
        super->spriteSettings.draw = 1;
        if (super->timer == 0) {
            SetGlobalFlag(LV1TARU_OPEN);
            super->action = 2;
            super->subtimer = 128;
            super->spriteOffsetY = 0;
        } else {
            if ((super->timer & 1) != 0) {
                super->x.HALF.HI += ((Random() & 3) - 2);
                super->y.HALF.HI += ((Random() & 3) - 1);
            }
            if (super->subtimer != 1) {
                super->subtimer = 1;
                LoadGfxGroup(0x4a);
            }
        }
    } else {
        super->timer = 120;
        super->spriteSettings.draw = 0;
        if (super->subtimer != 0) {
            super->subtimer = 0;
            LoadGfxGroup(0x49);
        }
    }
}

void sub_0808BD00(BarrelSpiderwebEntity* this) {
    SetGlobalFlag(LV1TARU_OPEN);
    SoundReq(SFX_SECRET);
    DeleteThisEntity();
}

void BarrelSpiderweb_Action2(BarrelSpiderwebEntity* this) {

    if (super->subtimer != 0) {
        super->subtimer -= 8;
        SetAffineInfo(super, 0x200 - super->subtimer, 0x200 - super->subtimer, 0);
    }
    if (super->contactFlags == 0x93) {
        super->direction = GetFacingDirection(super, &gPlayerEntity);
        LinearMoveUpdate(super);
        if (EntityWithinDistance(super, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI - 6, 0x1c)) {
            sub_0808BD00(this);
        }
    } else {
        if ((super->flags & ENT_COLLIDE) != 0) {
            super->flags &= ~ENT_COLLIDE;
            super->timer = 30;
        } else {
            super->spriteSettings.draw ^= 1;
            if (--super->timer == 0) {
                sub_0808BD00(this);
            }
        }
    }
}

void sub_0808BDB0(BarrelSpiderwebEntity* this) {
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
