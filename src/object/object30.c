/**
 * @file object30.c
 * @ingroup Objects
 *
 * @brief Object30 object
 */
#include "collision.h"
#include "functions.h"
#include "item.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u16* unk_6c;
    /*0x70*/ u32 gravity;
} Object30Entity;

extern u32 sub_0806F798(Entity*);
extern const Hitbox3D gUnk_08121C58;

void Object30_Init(Object30Entity*);
void Object30_Action1(Object30Entity*);
void Object30_Action2(Object30Entity*);
void sub_0808A968(Object30Entity*);

void Object30(Object30Entity* this) {
    static void (*const Object30_Actions[])(Object30Entity*) = {
        Object30_Init,
        Object30_Action1,
        Object30_Action2,
    };
    Object30_Actions[super->action](this);
    sub_08080CB4(super);
}

void Object30_Init(Object30Entity* this) {
    MapLayer* mapLayer;
    const u16* ptr;
    switch (super->type) {
        case 0:
            mapLayer = GetLayerByIndex(super->collisionLayer);
            ptr = &mapLayer->mapData[sub_0806F798(super)];
            this->unk_6c = (u16*)ptr;
            this->unk_68 = ptr[0];
            super->action = 1;
            break;
        case 1:
            sub_0808A968(this);
            break;
        case 2:
        case 3:
            sub_0808A968(this);
            Object30_Action2(this);
            break;
    }
}

void Object30_Action1(Object30Entity* this) {
    if (this->unk_68 != this->unk_6c[0]) {
        sub_0808A968(this);
    }
}

void Object30_Action2(Object30Entity* this) {
    static const s8 gUnk_08121194[] = {
        -7, -8, -9, -10, -11, -10, -9, -8,
    };
    switch (super->type) {
        case 0:
            if (this->gravity != 0) {
                if (super->zVelocity < 0) {
                    if (super->z.HALF.HI > -8) {
                        this->gravity = 0;
                    } else {
                        if (super->zVelocity < Q_16_16(-0.25)) {
                            this->gravity = Q_8_8(-4.0);
                        } else {
                            this->gravity = Q_8_8(4.0);
                        }
                    }
                }
                GravityUpdate(super, this->gravity);
                return;
            }
            // fallthrough
        case 1:
            super->z.HALF.HI = gUnk_08121194[(super->subtimer++ >> 3) & 7];
            if (!IsCollidingPlayer(super)) {
                return;
            }
            break;
    }
    CreateItemEntity(ITEM_KINSTONE, (u32)super->type2, 0);
    DeleteThisEntity();
}

void sub_0808A968(Object30Entity* this) {
    super->action = 2;
    super->timer = 30;
    super->spriteSettings.draw = 1;
    super->zVelocity = Q_16_16(2.5);
    super->spritePriority.b1 = 3;
    super->spriteSettings.shadow = 0;
    super->collisionFlags |= 0x10;
    super->hitbox = (Hitbox*)&gUnk_08121C58;
    SetEntityPriority(super, 2);
    this->gravity = Q_8_8(40.0);
}
