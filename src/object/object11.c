/**
 * @file object11.c
 * @ingroup Objects
 *
 * @brief Object11 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "hitbox.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u8 unk_72;
} Object11Entity;

typedef struct {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
} struct_08120588;

void Object11_Init(Object11Entity*);
void Object11_Action1(Object11Entity*);
void Object11_Action2(Object11Entity*);
void Object11_Action2SubAction0(Object11Entity*);
void Object11_Action2SubAction1(Object11Entity*);
void Object11_Action2SubAction2(Object11Entity*);
void Object11_Action2SubAction3(Object11Entity*);
void Object11_Action2SubAction4(Object11Entity*);
void Object11_Action2SubAction5(Object11Entity*);

void Object11(Object11Entity* this) {
    static void (*const Object11_Actions[])(Object11Entity*) = {
        Object11_Init,
        Object11_Action1,
        Object11_Action2,
    };
    if (!EntityIsDeleted(super)) {
        Object11_Actions[super->action](this);
    }
}

extern const Hitbox gUnk_081205B4;
void Object11_Init(Object11Entity* this) {
    static const struct_08120588 gUnk_08120588[] = {
        { 0, 32, 1 }, { 0, 64, 2 }, { 0, 32, 2 }, { 13, 1, 0 }, { 22, 1, 0 },
    };
    if (super->type == 3) {
        Object11_Action2SubAction5(this);
    }
    sub_08004168(super);
    if (super->type == 4) {
        Object11_Action2SubAction5(this);
    }
    super->action = 2;
    super->flags |= ENT_COLLIDE;
    super->spriteRendering.b3 = 2;
    super->field_0x1d = gUnk_08120588[super->type].unk_1;
    super->field_0x1c = gUnk_08120588[super->type].unk_2;
    super->speed = 0x80;
    super->collisionLayer = gPlayerEntity.collisionLayer;
    super->health = 1;
    super->field_0x3c = 7;
    super->hitType = 0x6e;
    super->flags2 = 4;
    super->hitbox = (Hitbox*)&gUnk_081205B4;
    this->unk_72 = 0;
    this->unk_70 = GetTileIndex(COORD_TO_TILE(super), super->collisionLayer);
    SetTile(0x4022, COORD_TO_TILE(super), super->collisionLayer);
    InitializeAnimation(super, gUnk_08120588[super->type].unk_0);
}

void Object11_Action1(Object11Entity* this) {
    if (((gPlayerState.field_0x1c & 0xf) != 1) || ((super->bitfield & 0x7f) != 0x13)) {
        RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
        DeleteThisEntity();
    }
}

void Object11_Action2(Object11Entity* this) {
    static void (*const Object11_Action2SubActions[])(Object11Entity*) = {
        Object11_Action2SubAction0, Object11_Action2SubAction1, Object11_Action2SubAction2,
        Object11_Action2SubAction3, Object11_Action2SubAction4, Object11_Action2SubAction5,
    };
    Object11_Action2SubActions[super->subAction](this);
}

const Hitbox gUnk_081205B4 = { 0, 0, { 6, 3, 3, 6 }, 6, 6 };

void Object11_Action2SubAction0(Object11Entity* this) {
    super->subAction = 1;
    Object11_Action2SubAction1(this);
}

void Object11_Action2SubAction1(Object11Entity* this) {
    Object11_Action1(this);
    sub_0806F4E8(super);
    if ((super->field_0x1d != 0) && (--super->field_0x1d == 0)) {
        super->subAction = 2;
    }
}

void Object11_Action2SubAction2(Object11Entity* this) {
    if (this->unk_72 == 0) {
        this->unk_72 = 1;
        super->spriteOffsetX = 0;
        sub_0807B9B8(this->unk_70, COORD_TO_TILE(super), super->collisionLayer);
    }
    if (((gPlayerState.field_0x1c & 0xf) != 1) || ((super->bitfield & 0x7f) != 0x13)) {
        Object11_Action2SubAction5(this);
    }
    if (sub_0806F3E4(super) && ((super->field_0x1c & 0xf) == 1)) {
        DeleteThisEntity();
    }
}

void Object11_Action2SubAction3(Object11Entity* this) {
}

void Object11_Action2SubAction4(Object11Entity* this) {
}

void Object11_Action2SubAction5(Object11Entity* this) {
    switch (super->type2) {
        case 0xff:
            break;
        case 0xf:
            CreateFx(super, super->actionDelay, 0x80);
            break;
        case 0:
            break;
        default:
            CreateObjectWithParent(super, super->type2, super->actionDelay, 0);
            break;
    }
    DeleteThisEntity();
}
