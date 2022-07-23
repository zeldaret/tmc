/**
 * @file chuchuBossCutscene.c
 * @ingroup Objects
 *
 * @brief Chuchu Boss Cutscene object
 */

#define NENT_DEPRECATED
#include "functions.h"
#include "global.h"
#include "menu.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
} ChuchuBossCutsceneEntity;

void ChuchuBossCutscene_Init(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action1(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action2(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action3(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action4(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action5(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action6(ChuchuBossCutsceneEntity*);
void ChuchuBossCutscene_Action7(ChuchuBossCutsceneEntity*);

void ChuchuBossCutscene(ChuchuBossCutsceneEntity* this) {
    static void (*const ChuchuBossCutscene_Actions[])(ChuchuBossCutsceneEntity*) = {
        ChuchuBossCutscene_Init,    ChuchuBossCutscene_Action1, ChuchuBossCutscene_Action2, ChuchuBossCutscene_Action3,
        ChuchuBossCutscene_Action4, ChuchuBossCutscene_Action5, ChuchuBossCutscene_Action6, ChuchuBossCutscene_Action7,
    };
    ChuchuBossCutscene_Actions[super->action](this);
}

void ChuchuBossCutscene_Init(ChuchuBossCutsceneEntity* this) {
    super->action = 1;
    super->timer = 60;
    InitializeAnimation(super, 0);
}

void ChuchuBossCutscene_Action1(ChuchuBossCutsceneEntity* this) {
    if (--super->timer == 0) {
        super->timer = 120;
        super->action++;
        super->spriteSettings.draw = 1;
    }
}

void ChuchuBossCutscene_Action2(ChuchuBossCutsceneEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action++;
        super->spritePriority.b1 = 3;
        InitializeAnimation(super, 2);
    }
}

void ChuchuBossCutscene_Action3(ChuchuBossCutsceneEntity* this) {
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

void ChuchuBossCutscene_Action4(ChuchuBossCutsceneEntity* this) {
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

void ChuchuBossCutscene_Action5(ChuchuBossCutsceneEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action++;
        InitializeAnimation(super, 5);
    }
}

void ChuchuBossCutscene_Action6(ChuchuBossCutsceneEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action++;
        super->timer = 60;
        InitializeAnimation(super, 1);
    }
}

void ChuchuBossCutscene_Action7(ChuchuBossCutsceneEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        gMenu.overlayType++;
        DeleteThisEntity();
    }
}
