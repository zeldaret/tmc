/**
 * @file bush.c
 * @ingroup Objects
 *
 * @brief Bush object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u8 unk_72;
} BushEntity;

typedef struct {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
} struct_08120588;

void Bush_Init(BushEntity*);
void Bush_Action1(BushEntity*);
void Bush_Action2(BushEntity*);
void Bush_Action2SubAction0(BushEntity*);
void Bush_Action2SubAction1(BushEntity*);
void Bush_Action2SubAction2(BushEntity*);
void Bush_Action2SubAction3(BushEntity*);
void Bush_Action2SubAction4(BushEntity*);
void Bush_Action2SubAction5(BushEntity*);

void Bush(BushEntity* this) {
    static void (*const Bush_Actions[])(BushEntity*) = {
        Bush_Init,
        Bush_Action1,
        Bush_Action2,
    };
    if (!EntityDisabled(super)) {
        Bush_Actions[super->action](this);
    }
}

extern const Hitbox gUnk_081205B4;
void Bush_Init(BushEntity* this) {
    static const struct_08120588 gUnk_08120588[] = {
        { 0, 32, 1 }, { 0, 64, 2 }, { 0, 32, 2 }, { 13, 1, 0 }, { 22, 1, 0 },
    };
    if (super->type == 3) {
        Bush_Action2SubAction5(this);
    }
    SnapToTile(super);
    if (super->type == 4) {
        Bush_Action2SubAction5(this);
    }
    super->action = 2;
    super->flags |= ENT_COLLIDE;
    super->spriteRendering.b3 = 2;
    super->gustJarTolerance = gUnk_08120588[super->type].unk_1;
    super->gustJarFlags = gUnk_08120588[super->type].unk_2;
    super->speed = 0x80;
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    super->health = 1;
    super->collisionFlags = 7;
    super->hitType = 0x6e;
    super->collisionMask = 4;
    super->hitbox = (Hitbox*)&gUnk_081205B4;
    this->unk_72 = 0;
    this->unk_70 = GetTileIndex(COORD_TO_TILE(super), super->collisionLayer);
    SetTile(SPECIAL_TILE_34, COORD_TO_TILE(super), super->collisionLayer);
    InitializeAnimation(super, gUnk_08120588[super->type].unk_0);
}

void Bush_Action1(BushEntity* this) {
    if (((gPlayerState.gustJarState & 0xf) != 1) || ((super->contactFlags & 0x7f) != 0x13)) {
        RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
        DeleteThisEntity();
    }
}

void Bush_Action2(BushEntity* this) {
    static void (*const Bush_Action2SubActions[])(BushEntity*) = {
        Bush_Action2SubAction0, Bush_Action2SubAction1, Bush_Action2SubAction2,
        Bush_Action2SubAction3, Bush_Action2SubAction4, Bush_Action2SubAction5,
    };
    Bush_Action2SubActions[super->subAction](this);
}

const Hitbox gUnk_081205B4 = { 0, 0, { 6, 3, 3, 6 }, 6, 6 };

void Bush_Action2SubAction0(BushEntity* this) {
    super->subAction = 1;
    Bush_Action2SubAction1(this);
}

void Bush_Action2SubAction1(BushEntity* this) {
    Bush_Action1(this);
    sub_0806F4E8(super);
    if ((super->gustJarTolerance != 0) && (--super->gustJarTolerance == 0)) {
        super->subAction = 2;
    }
}

void Bush_Action2SubAction2(BushEntity* this) {
    if (this->unk_72 == 0) {
        this->unk_72 = 1;
        super->spriteOffsetX = 0;
        SetTileByIndex(this->unk_70, COORD_TO_TILE(super), super->collisionLayer);
    }
    if (((gPlayerState.gustJarState & 0xf) != 1) || ((super->contactFlags & 0x7f) != 0x13)) {
        Bush_Action2SubAction5(this);
    }
    if (sub_0806F3E4(super) && ((super->gustJarFlags & 0xf) == 1)) {
        DeleteThisEntity();
    }
}

void Bush_Action2SubAction3(BushEntity* this) {
}

void Bush_Action2SubAction4(BushEntity* this) {
}

void Bush_Action2SubAction5(BushEntity* this) {
    switch (super->type2) {
        case 0xff:
            break;
        case 0xf:
            CreateFx(super, super->timer, 0x80);
            break;
        case 0:
            break;
        default:
            CreateObjectWithParent(super, super->type2, super->timer, 0);
            break;
    }
    DeleteThisEntity();
}
