/**
 * @file object30.c
 * @ingroup Objects
 *
 * @brief Object30 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "item.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u16* unk_6c;
    /*0x70*/ u32 unk_70;
} Object30Entity;

extern u32 sub_0806F798(Entity*);
extern const Hitbox gUnk_08121C58;

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
    LayerStruct* data;
    const u16* ptr;
    switch (super->type) {
        case 0:
            data = GetLayerByIndex(super->collisionLayer);
            ptr = &data->mapData[sub_0806F798(super)];
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
    static const u8 gUnk_08121194[] = {
        249, 248, 247, 246, 245, 246, 247, 248,
    };
    u8 tmp;
    switch (super->type) {
        case 0:
            if (this->unk_70 != 0) {
                if (super->zVelocity < 0) {
                    if (super->z.HALF.HI > -8) {
                        this->unk_70 = 0;
                    } else {
                        if (super->zVelocity < -0x4000) {
                            this->unk_70 = -0x400;
                        } else {
                            this->unk_70 = 0x400;
                        }
                    }
                }
                GravityUpdate(super, this->unk_70);
                return;
            }
            // fallthrough
        case 1:
            tmp = gUnk_08121194[(super->subtimer++ >> 3) & 7];
            super->z.HALF.HI = tmp << 0x18 >> 0x18;
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
    super->timer = 0x1e;
    super->spriteSettings.draw = 1;
    super->zVelocity = 0x28000;
    super->spritePriority.b1 = 3;
    super->spriteSettings.shadow = 0;
    super->collisionFlags |= 0x10;
    super->hitbox = (Hitbox*)&gUnk_08121C58;
    SetDefaultPriority(super, 2);
    this->unk_70 = 0x2800;
}
