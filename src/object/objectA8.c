/**
 * @file objectA8.c
 * @ingroup Objects
 *
 * @brief ObjectA8 object
 */
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "item.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0xc];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78[0xf];
    /*0x87*/ u8 unk_87;
} ObjectA8Entity;

void sub_0809FECC(ObjectA8Entity*);
bool32 sub_0809FE9C(ObjectA8Entity*);
void ObjectA8_Init(ObjectA8Entity*);
void ObjectA8_Action1(ObjectA8Entity*);
void ObjectA8_Action2(ObjectA8Entity*);
void ObjectA8_Action3(ObjectA8Entity*);
void ObjectA8_Action4(ObjectA8Entity*);
void ObjectA8_Action5(ObjectA8Entity*);
void ObjectA8_Action6(ObjectA8Entity*);
void ObjectA8_Action2Subaction0(ObjectA8Entity*);
void ObjectA8_Action2Subaction1(ObjectA8Entity*);
void ObjectA8_Action2Subaction2(ObjectA8Entity*);

extern void sub_08081404(Entity*, u32);

void ObjectA8(ObjectA8Entity* this) {
    static void (*const ObjectA8_Actions[])(ObjectA8Entity*) = {
        ObjectA8_Init,    ObjectA8_Action1, ObjectA8_Action2, ObjectA8_Action3,
        ObjectA8_Action4, ObjectA8_Action5, ObjectA8_Action6,
    };
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        switch (super->contactFlags & 0x7f) {
            case 0:
            case 1:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 0xb:
            case 0xc:
            case 0x1e:
            case 0x1f:
                super->action = 5;
                super->child = &gPlayerEntity.base;
                CreateItemEntity(super->type, 0, 0);
                DeleteThisEntity();
        }
    }
    ObjectA8_Actions[super->action](this);
    sub_08080CB4(super);
}
void ObjectA8_Init(ObjectA8Entity* this) {
    super->action = 1;
    switch (super->type2) {
        case 0:
            super->zVelocity = Q_16_16(1.875);
            super->z.HALF.HI += 8;
            break;
        case 2:
            sub_0809FECC(this);
            return;
    }
    super->collisionLayer = 3;
    super->collisionFlags = 0x17;
    super->hurtType = 0x48;
    super->hitType = 7;
    super->collisionMask = 0x17;
    super->hitbox = (Hitbox*)&gUnk_080FD1A8;
    super->gustJarFlags = 1;
    this->unk_74 = super->x.HALF.HI;
    this->unk_76 = super->y.HALF.HI;
    SetEntityPriority(super, 3);
    EnqueueSFX(SFX_136);
}

void ObjectA8_Action1(ObjectA8Entity* this) {
    super->z.WORD -= Q_16_16(0.875);
    if (super->frame != 0) {
        if (super->timer != 0) {
            super->timer *= 0x1e;
        } else {
            super->timer = 240;
        }
        super->action = 3;
        super->subtimer = 1;
        super->speed = 0x80;
    }
}

void ObjectA8_Action2(ObjectA8Entity* this) {
    static void (*const ObjectA8_Action2Subactions[])(ObjectA8Entity*) = {
        ObjectA8_Action2Subaction0,
        ObjectA8_Action2Subaction1,
        ObjectA8_Action2Subaction2,
    };
    ObjectA8_Action2Subactions[super->subAction](this);
}

void ObjectA8_Action2Subaction0(ObjectA8Entity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 1;
    super->spriteSettings.draw = 1;
}

void ObjectA8_Action2Subaction1(ObjectA8Entity* this) {
    if ((gPlayerState.gustJarState & 0xf) != 1 || (super->contactFlags & 0x7f) != 0x13) {
        super->action = 3;
    } else {
        sub_0806F4E8(super);
    }
}

void ObjectA8_Action2Subaction2(ObjectA8Entity* this) {
    if ((gPlayerState.gustJarState & 0xf) != 1 || (super->contactFlags & 0x7f) != 0x13) {
        super->action = 3;
    } else {
        if (sub_0806F3E4(super)) {
            super->flags &= ~ENT_COLLIDE;
            super->action = 5;
            super->child = &gPlayerEntity.base;
            GiveItem(super->type, 0);
        }
    }
}

void ObjectA8_Action3(ObjectA8Entity* this) {
    static const u8 gUnk_0812484C[] = {
        128,
        96,
        0,
        0,
    };
    if (--super->subtimer == 0) {
        u32 rand = Random();
        super->flags |= ENT_COLLIDE;
        super->subtimer = 32;
        super->speed = gUnk_0812484C[rand >> 8 & 1];
        if (sub_0809FE9C(this)) {
            super->direction = rand & 0x1f;
        } else {
            super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_74, this->unk_76);
        }
        if ((super->direction & 0xf) != 0) {
            super->spriteSettings.flipX = ((super->direction ^ 0x10) >> 4);
        }
    }
    ProcessMovement1(super);
    if ((AnyPrioritySet() == 0) && (super->type == 0)) {
        if (((gRoomTransition.frameCount & 1) != 0) && (--super->timer == 0)) {
            sub_08081404(super, 0);
        }
        if (super->timer < 0x3c) {
            super->spriteSettings.draw ^= 1;
        }
    }
}

void ObjectA8_Action4(ObjectA8Entity* this) {
    if (*(u16*)&super->child->kind != 0xb08) {
        sub_08081404(super, 0);
    } else {
        CopyPosition(super->child, super);
        super->z.HALF.HI--;
        if (IsColliding(super, &gPlayerEntity.base)) {
            sub_0809FECC(this);
            GiveItem(super->type, 0);
        }
    }
}

void ObjectA8_Action5(ObjectA8Entity* this) {
    super->action = 6;
    super->timer = 128;
    super->subtimer = 6;
    super->flags &= ~ENT_COLLIDE;
    super->spriteSettings.draw = 1;
    super->spritePriority.b1 = 2;
    super->spriteOffsetY = -5;
    CopyPosition(super->child, super);
}

void ObjectA8_Action6(ObjectA8Entity* this) {
    s32 tmp;
    Entity* child = super->child;
    tmp = gSineTable[super->timer] * 0xa00;
    if (tmp < 0) {
        tmp += 0xffff;
    }
    super->x.HALF.HI = (s16)(tmp >> 0x10) + child->x.HALF.HI;
    tmp = gSineTable[super->timer + 0x40] * 0x500;
    if (tmp < 0) {
        tmp += 0xffff;
    }
    super->y.HALF.HI = super->child->y.HALF.HI - (tmp >> 0x10);
    super->timer += 8;
    super->z.HALF.HI = super->child->z.HALF.HI;
    super->spriteOrientation.flipY = super->child->spriteOrientation.flipY;
    super->spriteRendering.b3 = super->child->spriteRendering.b3;
    if ((u8)(super->timer - 0x41) < 0x7f) {
        super->spritePriority.b0 = 3;
    } else {
        super->spritePriority.b0 = 5;
    }
    if (--super->subtimer == 0) {
        super->subtimer = 6;
        if (--super->spriteOffsetY < -0x16) {
            sub_08081404(super, 1);
        }
    }
    if (super->spriteOffsetY < -0x11) {
        super->spriteSettings.draw ^= 1;
    }
    if (this->unk_87 > 10) {
        this->unk_87 = 0xa;
    }
}

bool32 sub_0809FE9C(ObjectA8Entity* this) {
    if (((super->x.HALF.HI - (u32)this->unk_74) + 0x48 < 0x91) &&
        ((super->y.HALF.HI - (u32)this->unk_76) + 0x30 < 0x61)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0809FECC(ObjectA8Entity* this) {
    super->child = &gPlayerEntity.base;
    super->action = 5;
    super->subAction = 0;
}
