/**
 * @file barrelSpiderweb.c
 * @ingroup Objects
 *
 * @brief Barrel Spiderweb object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"

void BarrelSpiderweb_Init(Entity*);
void BarrelSpiderweb_Action1(Entity*);
void BarrelSpiderweb_Action2(Entity*);
void sub_0808BDB0(Entity*);
void sub_0808BBE0(Entity*);
void sub_0808BD00(Entity*);

void BarrelSpiderweb(Entity* this) {
    static void (*const BarrelSpiderweb_Actions[])(Entity*) = {
        BarrelSpiderweb_Init,
        BarrelSpiderweb_Action1,
        BarrelSpiderweb_Action2,
    };
    BarrelSpiderweb_Actions[this->action](this);
}

void BarrelSpiderweb_Init(Entity* this) {
    if (CheckGlobalFlag(LV1TARU_OPEN)) {
        LoadGfxGroup(0x4a);
        DeleteThisEntity();
    } else {
        this->action = 1;
        this->flags |= ENT_COLLIDE;
        this->timer = 120;
        this->subtimer = 0;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 4;
        this->spriteOrientation.flipY = 2;
        this->speed = 0x300;
        this->hitType = 1;
        this->collisionFlags = 7;
        this->hurtType = 0x48;
        this->collisionMask = 4;
        this->hitbox = (Hitbox*)&gHitbox_0;
        this->frameIndex = 2;
        this->collisionLayer = gPlayerEntity.base.collisionLayer;
        sub_0808BDB0(this);
        this->y.HALF.HI = 0x170 - (this->parent)->zVelocity;
        sub_0808BBE0(this);
    }
}

void sub_0808BBE0(Entity* this) {
    static const u16 gUnk_0812144C[] = { 192, 256, 208, 240, 224, 224, 240, 208, 256, 192,
                                         256, 192, 240, 208, 224, 224, 208, 240, 192, 256 };
    static const u8 gUnk_08121474[] = {
        248, 250, 252, 254, 0, 0, 2, 4, 6, 8, 0, 0,
    };
    const u16* ptr;
    s32 diff = this->y.HALF.HI - gRoomControls.scroll_y;
    if ((u32)diff < 0xa0) {
        diff /= 0x10;
        this->spriteOffsetY = gUnk_08121474[diff];
        ptr = &gUnk_0812144C[diff * 2];
        SetAffineInfo(this, ptr[0], ptr[1], 0);
    } else {
        this->contactFlags &= ~CONTACT_NOW;
    }
}

void BarrelSpiderweb_Action1(Entity* this) {
    s32 tmp;
    this->x.HALF.HI = gRoomControls.origin_x + 0x78;
    tmp = -0x170;
    this->y.HALF.HI = gRoomControls.origin_y - ((this->parent)->zVelocity + tmp);
    sub_0808BBE0(this);
    if (this->contactFlags == (CONTACT_NOW | 0x13)) {
        this->timer--;
        this->spriteSettings.draw = 1;
        if (this->timer == 0) {
            SetGlobalFlag(LV1TARU_OPEN);
            this->action = 2;
            this->subtimer = 128;
            this->spriteOffsetY = 0;
        } else {
            if ((this->timer & 1) != 0) {
                this->x.HALF.HI += ((Random() & 3) - 2);
                this->y.HALF.HI += ((Random() & 3) - 1);
            }
            if (this->subtimer != 1) {
                this->subtimer = 1;
                LoadGfxGroup(0x4a);
            }
        }
    } else {
        this->timer = 120;
        this->spriteSettings.draw = 0;
        if (this->subtimer != 0) {
            this->subtimer = 0;
            LoadGfxGroup(0x49);
        }
    }
}

void sub_0808BD00(Entity* this) {
    SetGlobalFlag(LV1TARU_OPEN);
    SoundReq(SFX_SECRET);
    DeleteThisEntity();
}

void BarrelSpiderweb_Action2(Entity* this) {

    if (this->subtimer != 0) {
        this->subtimer -= 8;
        SetAffineInfo(this, 0x200 - this->subtimer, 0x200 - this->subtimer, 0);
    }
    if (this->contactFlags == (CONTACT_NOW | 0x13)) {
        this->direction = GetFacingDirection(this, &gPlayerEntity.base);
        LinearMoveUpdate(this);
        if (EntityWithinDistance(this, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI - 6, 0x1c)) {
            sub_0808BD00(this);
        }
    } else {
        if ((this->flags & ENT_COLLIDE) != 0) {
            this->flags &= ~ENT_COLLIDE;
            this->timer = 30;
        } else {
            this->spriteSettings.draw ^= 1;
            if (--this->timer == 0) {
                sub_0808BD00(this);
            }
        }
    }
}

void sub_0808BDB0(Entity* this) {
    LinkedList* list = &gEntityLists[6];
    Entity* it = list->first;
    this->parent = NULL;
    for (; it != (Entity*)list; it = it->next) {
        if (it->kind == 0x9 && it->id == 0xc) {
            this->parent = it;
            return;
        }
    }
}
