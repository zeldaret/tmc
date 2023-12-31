/**
 * @file chuchuBossCutscene.c
 * @ingroup Objects
 *
 * @brief Chuchu Boss Cutscene object
 */
#include "functions.h"
#include "menu.h"
#include "object.h"

void ChuchuBossCutscene_Init(Entity*);
void ChuchuBossCutscene_Action1(Entity*);
void ChuchuBossCutscene_Action2(Entity*);
void ChuchuBossCutscene_Action3(Entity*);
void ChuchuBossCutscene_Action4(Entity*);
void ChuchuBossCutscene_Action5(Entity*);
void ChuchuBossCutscene_Action6(Entity*);
void ChuchuBossCutscene_Action7(Entity*);

void ChuchuBossCutscene(Entity* this) {
    static void (*const ChuchuBossCutscene_Actions[])(Entity*) = {
        ChuchuBossCutscene_Init,    ChuchuBossCutscene_Action1, ChuchuBossCutscene_Action2, ChuchuBossCutscene_Action3,
        ChuchuBossCutscene_Action4, ChuchuBossCutscene_Action5, ChuchuBossCutscene_Action6, ChuchuBossCutscene_Action7,
    };
    ChuchuBossCutscene_Actions[this->action](this);
}

void ChuchuBossCutscene_Init(Entity* this) {
    this->action = 1;
    this->timer = 60;
    InitializeAnimation(this, 0);
}

void ChuchuBossCutscene_Action1(Entity* this) {
    if (--this->timer == 0) {
        this->timer = 120;
        this->action++;
        this->spriteSettings.draw = 1;
    }
}

void ChuchuBossCutscene_Action2(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        this->action++;
        this->spritePriority.b1 = 3;
        InitializeAnimation(this, 2);
    }
}

void ChuchuBossCutscene_Action3(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action++;
        this->direction = DirectionNorth;
        this->speed = 0x100;
        this->zVelocity = Q_16_16(2.0);
        this->spriteOrientation.flipY = 0;
        this->timer = 0;
        InitializeAnimation(this, 3);
        SoundReq(SFX_12B);
    }
}

void ChuchuBossCutscene_Action4(Entity* this) {
    if ((this->frame & 0x10) != 0) {
        LinearMoveUpdate(this);
        if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
            GetNextFrame(this);
        }
    } else {
        GetNextFrame(this);
    }
    if ((this->y.HALF.HI - gRoomControls.origin_y) < 0x231) {
        this->y.HALF.HI = gRoomControls.origin_y + 0x230;
        if ((this->frame & ANIM_DONE) != 0) {
            this->action++;
            this->timer = 120;
            InitializeAnimation(this, 2);
        }
    } else if ((this->frame & ANIM_DONE) != 0) {
        this->zVelocity = Q_16_16(2.0);
        InitializeAnimation(this, 3);
        SoundReq(SFX_12B);
    }
}

void ChuchuBossCutscene_Action5(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action++;
        InitializeAnimation(this, 5);
    }
}

void ChuchuBossCutscene_Action6(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        this->action++;
        this->timer = 60;
        InitializeAnimation(this, 1);
    }
}

void ChuchuBossCutscene_Action7(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        gMenu.overlayType++;
        DeleteThisEntity();
    }
}
