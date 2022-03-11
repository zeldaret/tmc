/**
 * @file object21.c
 * @ingroup Objects
 *
 * @brief Object21 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x18];
    /*0x80*/ u32 unk_80;
    /*0x84*/ u32 unk_84;
} Object21Entity;

void sub_08087A10(Object21Entity*);
void sub_08087AFC(Object21Entity*);
void sub_08087B58(Object21Entity*);
void sub_08087B88(Object21Entity*);
void sub_08087B9C(Object21Entity*);
void sub_08087B9C(Object21Entity*);

void Object21(Object21Entity* this) {
    static void (*const gUnk_08120A68[])(Object21Entity*) = {
        sub_08087A10,
        sub_08087AFC,
        NULL,
        sub_08087B58,
    };
    gUnk_08120A68[super->action](this);
    GetNextFrame(super);
    if (super->actionDelay != 0) {
        super->actionDelay--;
    } else {
        if (super->animIndex == 0xa) {
            InitializeAnimation(super, 0xd);
        } else if ((super->frame & 0x80) != 0) {
            DeleteThisEntity();
        }
    }
    if (super->speed != 0) {
        LinearMoveUpdate(super);
        if (super->speed > 0x10) {
            super->speed -= 0x10;
        } else {
            super->speed = 0;
        }
    }
}

extern const Hitbox gUnk_08120A8C;

void sub_08087A10(Object21Entity* this) {
    static const u8 gUnk_08120A78[] = {
        3,
        63,
    };
    static const u8 gUnk_08120A7A[] = {
        15, 24, 30, 35, 0, 0,
    };
    u32 rand;
    u32 tmp;
    super->action = 1;
    if (super->type2 != 0) {
        ChangeObjPalette(super, 3);
    }
    if (super->type > 2) {
        ChangeObjPalette(super, gUnk_08120A78[super->type - 3]);
    }
    switch (super->type) {
        case 4:
            super->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(super);
        case 0:
        case 3:
            super->flags |= ENT_COLLIDE;
            super->health = 1;
            super->field_0x3c = 7;
            super->hitType = 0xaa;
            super->flags2 = 0x0e;
            super->hitbox = (Hitbox*)&gUnk_08120A8C;
            super->field_0x1c = 0;
        case 2:
            rand = Random();
            super->actionDelay = gUnk_08120A7A[rand & 3];
            tmp = (rand >> 8) & 3;
            if ((rand & 0x10) != 0) {
                tmp = -tmp;
            }
            super->x.HALF.HI += tmp;
            super->y.HALF.HI += tmp;
            super->collisionLayer = gPlayerEntity.collisionLayer;
            InitializeAnimation(super, 10);
            return;
        case 1:
            break;
    }
    InitializeAnimation(super, 0x10);
}

void sub_08087AFC(Object21Entity* this) {
    Object21Entity* entity;
    if ((super->bitfield & 0x80) == 0) {
        return;
    }
    switch (super->bitfield & 0x7f) {
        case 0x16:
            super->direction = GetFacingDirection(super->field_0x4c, super);
            super->speed = 0x100;
            break;
        case 0x13:
            super->action = 3;
            super->subAction = 0;
            break;
        case 0x1b:
        case 0x1c:
            entity = (Object21Entity*)super->field_0x4c;
            super->direction = CalculateDirectionTo(entity->unk_84, entity->unk_80, super->x.WORD, super->y.WORD);
            super->speed = 0x100;
            break;
    }
}

void sub_08087B58(Object21Entity* this) {
    static void (*const gUnk_08120A80[])(Object21Entity*) = {
        sub_08087B88,
        sub_08087B9C,
        sub_08087B9C,
    };
    if ((super->bitfield & 0x80) != 0) {
        gUnk_08120A80[super->subAction](this);
    } else {
        super->action = 1;
    }
}

const Hitbox gUnk_08120A8C = { 0, 0, { 6, 3, 3, 6 }, 3, 3 };

void sub_08087B88(Object21Entity* this) {
    super->knockbackSpeed = 0x100;
    super->subAction = 1;
    super->field_0x1d = 1;
}

void sub_08087B9C(Object21Entity* this) {
    if (sub_0806F3E4(super)) {
        DeleteThisEntity();
    }
}
