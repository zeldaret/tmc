/**
 * @file fairy.c
 * @ingroup Objects
 *
 * @brief Fairy object
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
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a[0xd];
    /*0x87*/ u8 unk_87;
} FairyEntity;

void sub_0808D76C(FairyEntity*);
void sub_0808DAD0(FairyEntity*);
void sub_0808DB2C(FairyEntity*);
bool32 sub_0808DAA0(FairyEntity*);
void Fairy_Init(FairyEntity*);
void Fairy_Action1(FairyEntity*);
void Fairy_Action2(FairyEntity*);
void Fairy_Action3(FairyEntity*);
void Fairy_Action4(FairyEntity*);
void Fairy_SubAction0(FairyEntity*);
void Fairy_SubAction1(FairyEntity*);
void Fairy_SubAction2(FairyEntity*);

extern void sub_08081404(Entity*, u32);

void Fairy(FairyEntity* this) {
    static void (*const Fairy_Actions[])(FairyEntity*) = {
        Fairy_Init, Fairy_Action1, Fairy_Action2, Fairy_Action3, Fairy_Action4,
    };

    if (((super->contactFlags & CONTACT_NOW) != 0)) {
        switch (super->contactFlags & 0x7f) {
            case 0x14:
                super->action = 3;
                super->flags &= ~ENT_COLLIDE;
                super->spriteSettings.draw = 1;
                super->child = super->contactedEntity;
                break;
            case 0x1f:
                DeleteThisEntity();
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
                sub_0808DAD0(this);
                break;
            case 0x13:
                sub_0808D76C(this);
                return;
        }
    }
    Fairy_Actions[super->action](this);
    sub_08080CB4(super);
}

void sub_0808D76C(FairyEntity* this) {
    static void (*const Fairy_SubActions[])(FairyEntity*) = {
        Fairy_SubAction0,
        Fairy_SubAction1,
        Fairy_SubAction2,
    };

    Fairy_SubActions[super->subAction](this);
}

void Fairy_SubAction0(FairyEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 1;
    super->spriteSettings.draw = 1;
}

void Fairy_SubAction1(FairyEntity* this) {
    sub_0806F4E8(super);
}

void Fairy_SubAction2(FairyEntity* this) {
    if (sub_0806F3E4(super)) {
        sub_0808DB2C(this);
    }
}

void Fairy_Init(FairyEntity* this) {
    super->collisionLayer = 3;
    super->collisionFlags = 0x17;
    super->hurtType = 0x49;
    super->hitType = 7;
    super->collisionMask = 0x17;
    super->health = 0xff;
    super->hitbox = (Hitbox*)&gUnk_080FD1A8;
    super->gustJarFlags = 1;
    this->unk_74 = super->x.HALF.HI;
    this->unk_76 = super->y.HALF.HI;
    SetEntityPriority(super, 6);
    EnqueueSFX(SFX_136);

    switch (super->type2) {
        case 0:
            super->zVelocity = Q_16_16(1.875);
            super->z.HALF.HI += 8;
        // fallthrough
        default:
            super->action = 1;
            break;
        case 2:
            sub_0808DAD0(this);
            break;
        case 3:
            sub_0808DB2C(this);
            break;
    }
}

void Fairy_Action1(FairyEntity* this) {
    super->z.WORD -= Q_16_16(0.875);
    if (super->frame != 0) {
        if (super->timer != 0) {
            this->unk_78 *= 0x1e;
        } else {
            this->unk_78 = 600;
        }
        super->action = 2;
        super->subtimer = 1;
        super->speed = 0x80;
    }
}

void Fairy_Action2(FairyEntity* this) {
    static const u8 gUnk_081217A4[] = {
        128,
        96,
        0,
        0,
    };
    if (--super->subtimer == 0) {
        u32 rand = Random();
        super->flags |= ENT_COLLIDE;
        super->subtimer = 32;
        super->speed = (u16)gUnk_081217A4[rand >> 8 & 1];
        if (sub_0808DAA0(this)) {
            super->direction = rand & 0x1f;
        } else {
            super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_74, this->unk_76);
        }
        if ((super->direction & 0xf) != 0) {
            super->spriteSettings.flipX = ((super->direction ^ 0x10) >> 4);
        }
    }
    ProcessMovement1(super);
    if ((AnyPrioritySet() == 0) && (super->type2 == 0)) {
        if (--this->unk_78 == 0) {
            sub_08081404(super, 0);
        }
        if (this->unk_78 < 0x78) {
            super->spriteSettings.draw ^= 1;
        }
    }
}

void Fairy_Action3(FairyEntity* this) {
    if (*(u16*)&super->child->kind != 0x308) {
        sub_08081404(super, 0);
    } else {
        CopyPosition(super->child, super);
        super->z.HALF.HI--;
        if (IsColliding(super, &gPlayerEntity.base)) {
            sub_0808DB2C(this);
        }
    }
}

void Fairy_Action4(FairyEntity* this) {
    Entity* child;
    s32 tmp;

    child = super->child;
    tmp = gSineTable[super->timer] * 0xa00;
    if (tmp < 0) {
        tmp += 0xffff;
    }
    super->x.HALF.HI = (tmp >> 0x10) + child->x.HALF.HI;
    tmp = gSineTable[super->timer + 0x40] * 0x500;
    if (tmp < 0) {
        tmp += 0xffff;
    }
    super->y.HALF.HI = child->y.HALF.HI - (tmp >> 0x10);
    super->timer += 8;
    super->z.HALF.HI = child->z.HALF.HI;
    super->spriteOrientation.flipY = child->spriteOrientation.flipY;
    super->spriteRendering.b3 = child->spriteRendering.b3;
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
        this->unk_87 = 10;
    }
}

bool32 sub_0808DAA0(FairyEntity* this) {
    if (((super->x.HALF.HI - (u32)this->unk_74) + 0x30 < 0x61) &&
        ((super->y.HALF.HI - (u32)this->unk_76) + 0x30 < 0x61)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0808DAD0(FairyEntity* this) {
    if (super->health == 0) {
        DeleteThisEntity();
    }
    super->action = 4;
    super->timer = 128;
    super->subtimer = 6;
    super->flags &= ~ENT_COLLIDE;
    super->spriteSettings.draw = 1;
    super->spritePriority.b1 = 2;
    super->spriteOffsetY = -5;
    super->child = &gPlayerEntity.base;
    CopyPosition(&gPlayerEntity.base, super);
}

void sub_0808DB2C(FairyEntity* this) {
    super->action = 2;
    super->subAction = 0;
    super->flags |= ENT_COLLIDE;
    super->collisionMask = 1;
    CopyPosition(&gPlayerEntity.base, super);
}
