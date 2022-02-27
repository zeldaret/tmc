/**
 * @file object35.c
 * @ingroup Objects
 *
 * @brief Object35 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
} Object35Entity;

extern void sub_080836DC(Entity*, u32, u32); // lockedDoor
extern void sub_08083814(Entity*, u32);      // lockedDoor
void Object35_Type0(Object35Entity*);
void Object35_Type1(Object35Entity*);
void Object35_Type2(Object35Entity*);
void Object35_Type0Init(Object35Entity*);
void Object35_Type0Action1(Object35Entity*);
void Object35_Type0Action2(Object35Entity*);
void Object35_Type1Init(Object35Entity*);
void Object35_Type1Action1(Object35Entity*);
void Object35_Type1Action2(Object35Entity*);
void Object35_Type1Action3(Object35Entity*);
void Object35_Type1Action4(Object35Entity*);
void Object35_Type1Action5(Object35Entity*);
void Object35_Type2Init(Object35Entity*);
void Object35_Type2Action1(Object35Entity*);

void Object35(Object35Entity* this) {
    static void (*const Object35_Types[])(Object35Entity*) = {
        Object35_Type0,
        Object35_Type1,
        Object35_Type2,
    };
    Object35_Types[super->type](this);
}

void Object35_Type0(Object35Entity* this) {
    static void (*const Object35_Type0Actions[])(Object35Entity*) = {
        Object35_Type0Init,
        Object35_Type0Action1,
        Object35_Type0Action2,
    };
    Object35_Type0Actions[super->action](this);
}

void Object35_Type0Init(Object35Entity* this) {
    super->action = 2;
    super->type2 = 2;
    super->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(super);
    super->spritePriority.b0 = 1;
    super->actionDelay = -0x4c;
    InitializeAnimation(super, super->type2);
}

void Object35_Type0Action1(Object35Entity* this) {
    s8 tmp;
    GetNextFrame(super);
    if (--super->actionDelay == 0) {
        super->actionDelay = -0x4c;
        super->type2++;
        tmp = 3;
        super->type2 = super->type2 % tmp;
        InitializeAnimation(super, super->type2);
    }
}

void Object35_Type0Action2(Object35Entity* this) {
    GetNextFrame(super);
}

void Object35_Type1(Object35Entity* this) {
    static void (*const Object35_Type1Actions[])(Object35Entity*) = {
        Object35_Type1Init,    Object35_Type1Action1, Object35_Type1Action2,
        Object35_Type1Action3, Object35_Type1Action4, Object35_Type1Action5,
    };
    Object35_Type1Actions[super->action](this);
    gPlayerState.mobility |= 0x80;
}

void Object35_Type1Init(Object35Entity* this) {
    super->speed = 0x300;
    super->frameIndex = 0;
    this->unk_70 = super->x.HALF.HI;
    this->unk_72 = super->y.HALF.HI;
    super->spritePriority.b0 = 5;
    this->unk_76 = COORD_TO_TILE(super);
    this->unk_74 = GetTileIndex(this->unk_76, super->collisionLayer);
    if (super->actionDelay == 0) {
        super->action = 1;
        super->field_0xf = 0x78;
        SetTile(0x4022, this->unk_76, super->collisionLayer);
    } else {
        super->action = 3;
        super->spriteSettings.draw = 0;
        super->spriteSettings.flipY = 1;
        super->actionDelay = 0;
    }
}

void Object35_Type1Action1(Object35Entity* this) {
    if (CheckRoomFlag(0)) {
        super->action = 2;
        super->actionDelay = 7;
        super->direction = 0;
        SetTile(this->unk_74, this->unk_76, super->collisionLayer);
        EnqueueSFX(SFX_10B);
    }
}

void Object35_Type1Action2(Object35Entity* this) {
    LinearMoveUpdate(super);
    if (--super->actionDelay == 0) {
        super->action = 5;
        super->actionDelay = 8;
        super->spriteSettings.draw = 0;
        super->x.HALF.HI = this->unk_70;
        super->y.HALF.HI = this->unk_72;
    }
}

void Object35_Type1Action3(Object35Entity* this) {
    if (sub_08083734(super, 2)) {
        super->action = 4;
        sub_080836DC(super, 2, this->unk_76);
    }
}

void Object35_Type1Action4(Object35Entity* this) {
    LinearMoveUpdate(super);
    if (--super->actionDelay == 0) {
        super->action = 5;
        sub_08083814(super, 2);
        EnqueueSFX(SFX_10B);
        SetTile(0x4022, this->unk_76, super->collisionLayer);
    }
}

void Object35_Type1Action5(Object35Entity* this) {
}

void Object35_Type2(Object35Entity* this) {
    static void (*const Object35_Type2Actions[])(Object35Entity*) = {
        Object35_Type2Init,
        Object35_Type2Action1,
    };
    Object35_Type2Actions[super->action](this);
}

void Object35_Type2Init(Object35Entity* this) {
    super->action = 1;
    super->actionDelay = 0x10;
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

void Object35_Type2Action1(Object35Entity* this) {
    if (--super->actionDelay == 0) {
        DeleteThisEntity();
    }
}
