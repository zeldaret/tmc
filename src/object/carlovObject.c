/**
 * @file carlovObject.c
 * @ingroup Objects
 *
 * @brief Carlov Object object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
} CarlovObjectEntity;

extern void sub_080836DC(Entity*, u32, u32); // lockedDoor
extern void sub_08083814(Entity*, u32);      // lockedDoor
void CarlovObject_Type0(CarlovObjectEntity*);
void CarlovObject_Type1(CarlovObjectEntity*);
void CarlovObject_Type2(CarlovObjectEntity*);
void CarlovObject_Type0Init(CarlovObjectEntity*);
void CarlovObject_Type0Action1(CarlovObjectEntity*);
void CarlovObject_Type0Action2(CarlovObjectEntity*);
void CarlovObject_Type1Init(CarlovObjectEntity*);
void CarlovObject_Type1Action1(CarlovObjectEntity*);
void CarlovObject_Type1Action2(CarlovObjectEntity*);
void CarlovObject_Type1Action3(CarlovObjectEntity*);
void CarlovObject_Type1Action4(CarlovObjectEntity*);
void CarlovObject_Type1Action5(CarlovObjectEntity*);
void CarlovObject_Type2Init(CarlovObjectEntity*);
void CarlovObject_Type2Action1(CarlovObjectEntity*);

void CarlovObject(CarlovObjectEntity* this) {
    static void (*const CarlovObject_Types[])(CarlovObjectEntity*) = {
        CarlovObject_Type0,
        CarlovObject_Type1,
        CarlovObject_Type2,
    };
    CarlovObject_Types[super->type](this);
}

void CarlovObject_Type0(CarlovObjectEntity* this) {
    static void (*const CarlovObject_Type0Actions[])(CarlovObjectEntity*) = {
        CarlovObject_Type0Init,
        CarlovObject_Type0Action1,
        CarlovObject_Type0Action2,
    };
    CarlovObject_Type0Actions[super->action](this);
}

void CarlovObject_Type0Init(CarlovObjectEntity* this) {
    super->action = 2;
    super->type2 = 2;
    super->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(super);
    super->spritePriority.b0 = 1;
    super->timer = -76;
    InitializeAnimation(super, super->type2);
}

void CarlovObject_Type0Action1(CarlovObjectEntity* this) {
    s8 tmp;
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->timer = -76;
        super->type2++;
        tmp = 3;
        super->type2 %= tmp;
        InitializeAnimation(super, super->type2);
    }
}

void CarlovObject_Type0Action2(CarlovObjectEntity* this) {
    GetNextFrame(super);
}

void CarlovObject_Type1(CarlovObjectEntity* this) {
    static void (*const CarlovObject_Type1Actions[])(CarlovObjectEntity*) = {
        CarlovObject_Type1Init,    CarlovObject_Type1Action1, CarlovObject_Type1Action2,
        CarlovObject_Type1Action3, CarlovObject_Type1Action4, CarlovObject_Type1Action5,
    };
    CarlovObject_Type1Actions[super->action](this);
    gPlayerState.mobility |= 0x80;
}

void CarlovObject_Type1Init(CarlovObjectEntity* this) {
    super->speed = 0x300;
    super->frameIndex = 0;
    this->unk_70 = super->x.HALF.HI;
    this->unk_72 = super->y.HALF.HI;
    super->spritePriority.b0 = 5;
    this->unk_76 = COORD_TO_TILE(super);
    this->unk_74 = GetTileIndex(this->unk_76, super->collisionLayer);
    if (super->timer == 0) {
        super->action = 1;
        super->subtimer = 120;
        SetTile(SPECIAL_TILE_34, this->unk_76, super->collisionLayer);
    } else {
        super->action = 3;
        super->spriteSettings.draw = 0;
        super->spriteSettings.flipY = 1;
        super->timer = 0;
    }
}

void CarlovObject_Type1Action1(CarlovObjectEntity* this) {
    if (CheckRoomFlag(0)) {
        super->action = 2;
        super->timer = 7;
        super->direction = 0;
        SetTile(this->unk_74, this->unk_76, super->collisionLayer);
        EnqueueSFX(SFX_10B);
    }
}

void CarlovObject_Type1Action2(CarlovObjectEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        super->action = 5;
        super->timer = 8;
        super->spriteSettings.draw = 0;
        super->x.HALF.HI = this->unk_70;
        super->y.HALF.HI = this->unk_72;
    }
}

void CarlovObject_Type1Action3(CarlovObjectEntity* this) {
    if (sub_08083734(super, 2)) {
        super->action = 4;
        sub_080836DC(super, 2, this->unk_76);
    }
}

void CarlovObject_Type1Action4(CarlovObjectEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        super->action = 5;
        sub_08083814(super, 2);
        EnqueueSFX(SFX_10B);
        SetTile(SPECIAL_TILE_34, this->unk_76, super->collisionLayer);
    }
}

void CarlovObject_Type1Action5(CarlovObjectEntity* this) {
}

void CarlovObject_Type2(CarlovObjectEntity* this) {
    static void (*const CarlovObject_Type2Actions[])(CarlovObjectEntity*) = {
        CarlovObject_Type2Init,
        CarlovObject_Type2Action1,
    };
    CarlovObject_Type2Actions[super->action](this);
}

void CarlovObject_Type2Init(CarlovObjectEntity* this) {
    super->action = 1;
    super->timer = 16;
    super->z.HALF.HI -= 0x10;
    if (super->type2 == 0) {
        super->frameIndex = 2;
    } else {
        super->frameIndex = 0;
        if (((super->parent)->x.HALF.HI & 0x10) != 0) {
            super->frameIndex = 1;
        }
    }
    CreateDust(super);
}

void CarlovObject_Type2Action1(CarlovObjectEntity* this) {
    if (--super->timer == 0) {
        DeleteThisEntity();
    }
}
