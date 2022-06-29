/**
 * @file object4B.c
 * @ingroup Objects
 *
 * @brief Object4B object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "menu.h"

typedef struct {
    /*0x00*/ Entity base;
} Object4BEntity;

void Object4B_Init(Object4BEntity*);
void Object4B_Action1(Object4BEntity*);
void Object4B_Action2(Object4BEntity*);
void Object4B_Action3(Object4BEntity*);
void Object4B_Action4(Object4BEntity*);
void Object4B_Action5(Object4BEntity*);
void Object4B_Action6(Object4BEntity*);
void Object4B_Action7(Object4BEntity*);

void Object4B(Object4BEntity* this) {
    static void (*const Object4B_Actions[])(Object4BEntity*) = {
        Object4B_Init,    Object4B_Action1, Object4B_Action2, Object4B_Action3,
        Object4B_Action4, Object4B_Action5, Object4B_Action6, Object4B_Action7,
    };
    Object4B_Actions[super->action](this);
}

void Object4B_Init(Object4BEntity* this) {
    super->action = 1;
    super->timer = 60;
    InitializeAnimation(super, 0);
}

void Object4B_Action1(Object4BEntity* this) {
    if (--super->timer == 0) {
        super->timer = 120;
        super->action++;
        super->spriteSettings.draw = 1;
    }
}

void Object4B_Action2(Object4BEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action++;
        super->spritePriority.b1 = 3;
        InitializeAnimation(super, 2);
    }
}

void Object4B_Action3(Object4BEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action++;
        super->direction = 0;
        super->speed = 0x100;
        super->zVelocity = Q_16_16(2.0);
        super->spriteOrientation.flipY = 0;
        super->timer = 0;
        InitializeAnimation(super, 3);
        SoundReq(SFX_12B);
    }
}

void Object4B_Action4(Object4BEntity* this) {
    if ((super->frame & 0x10) != 0) {
        LinearMoveUpdate(super);
        if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
            GetNextFrame(super);
        }
    } else {
        GetNextFrame(super);
    }
    if ((super->y.HALF.HI - gRoomControls.origin_y) < 0x231) {
        super->y.HALF.HI = gRoomControls.origin_y + 0x230;
        if ((super->frame & ANIM_DONE) != 0) {
            super->action++;
            super->timer = 120;
            InitializeAnimation(super, 2);
        }
    } else if ((super->frame & ANIM_DONE) != 0) {
        super->zVelocity = Q_16_16(2.0);
        InitializeAnimation(super, 3);
        SoundReq(SFX_12B);
    }
}

void Object4B_Action5(Object4BEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action++;
        InitializeAnimation(super, 5);
    }
}

void Object4B_Action6(Object4BEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action++;
        super->timer = 60;
        InitializeAnimation(super, 1);
    }
}

void Object4B_Action7(Object4BEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        gMenu.overlayType++;
        DeleteThisEntity();
    }
}
