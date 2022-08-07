/**
 * @file bird.c
 * @ingroup Objects
 *
 * @brief Bird object
 */
#include "collision.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "message.h"
#include "object.h"
#include "save.h"

extern u16 script_EzloTalkOcarina[];

void Bird_Type0(Entity*);
void Bird_Type1(Entity*);
void Bird_Type2(Entity*);
void Bird_Type3(Entity*);
void Bird_Type8(Entity*);
void Bird_Type9(Entity*);
void Bird_Type10(Entity*);
void Bird_Type0_Init(Entity*);
void Bird_Type0_Action1(Entity*);
void Bird_Type1_Init(Entity*);
void Bird_Type1_Action1(Entity*);
void Bird_Type1_Action1_Subaction0(Entity*);
void Bird_Type1_Action1_Subaction1(Entity*);
void Bird_Type2_Init(Entity*);
void Bird_Type2_Action1(Entity*);

void Bird(Entity* this) {
    static void (*const typeFuncs[])(Entity*) = {
        Bird_Type0, Bird_Type1, Bird_Type2, Bird_Type3, Bird_Type3,  Bird_Type3,
        Bird_Type3, Bird_Type3, Bird_Type8, Bird_Type9, Bird_Type10,
    };
    typeFuncs[this->type](this);
}

void Bird_Type0(Entity* this) {
    static void (*const Bird_Type0_Actions[])(Entity*) = {
        Bird_Type0_Init,
        Bird_Type0_Action1,
    };

    Bird_Type0_Actions[this->action](this);
}

void Bird_Type0_Init(Entity* this) {
    Entity* target;

    this->action++;
    this->spriteSettings.draw = TRUE;
    this->timer = 49;
    this->subtimer = 1;
    this->zVelocity = Q_16_16(-1.5);
    this->z.WORD = Q_16_16(-56.75);
    this->field_0x68.HWORD = Q_8_8(-8.0);
    this->speed = 0x280;
    this->direction = 8;
    this->collisionLayer = 2;
    this->x.HALF.HI = gRoomControls.scroll_x;
    SoundReq(SFX_123);
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0);
    target = CreateObject(BIRD, 1, 0);
    if (target != NULL) {
        target->parent = this;
        PositionRelative(this, target, 0, Q_16_16(8.0));
        SortEntityAbove(this, target);
    }
}

void Bird_Type0_Action1(Entity* this) {
    LinearMoveUpdate(this);
    GravityUpdate(this, *(s16*)&this->field_0x68.HWORD);
    if (this->timer != 0) {
        if (--this->timer == 0) {
            this->subtimer = 0;
        }
    } else if (CheckOnScreen(this) == 0) {
        DeleteThisEntity();
    }
    UpdateAnimationSingleFrame(this);
}

void Bird_Type1(Entity* this) {
    static void (*const Bird_Type1_Actions[])(Entity*) = {
        Bird_Type1_Init,
        Bird_Type1_Action1,
    };
    Bird_Type1_Actions[this->action](this);
}

void Bird_Type1_Init(Entity* this) {
    this->action++;
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0x17);
}

void Bird_Type1_Action1(Entity* this) {
    static void (*const Bird_Type1_Action1_Subactions[])(Entity*) = {
        Bird_Type1_Action1_Subaction0,
        Bird_Type1_Action1_Subaction1,
    };
    Bird_Type1_Action1_Subactions[this->subAction](this);
}

void Bird_Type1_Action1_Subaction0(Entity* this) {
    u32 temp;

    if (this->parent != NULL) {
        temp = this->parent->subtimer;
        if (temp != 0) {
            PositionRelative(this->parent, this, 0, Q_16_16(8.0));
        } else {
            this->subAction++;
            this->zVelocity = temp;
        }
    }
}

void Bird_Type1_Action1_Subaction1(Entity* this) {
    Entity* fx;

    if (sub_080044EC(this, 0x1800) < 2) {
        this->type = 2;
        this->action = 1;
        this->z.WORD = 0;
        this->collisionLayer = 1;
        SetLocalFlag(LV3_OCARINA_FALL);
        SoundReq(SFX_SECRET);
        fx = CreateFx(this, FX_DASH, 0);
        if (fx != NULL) {
            SortEntityBelow(this, fx);
        }
    }
}

void Bird_Type2(Entity* this) {
    static void (*const Bird_Type2_Actions[])(Entity*) = {
        Bird_Type2_Init,
        Bird_Type2_Action1,
    };
    Bird_Type2_Actions[this->action](this);
}

void Bird_Type2_Init(Entity* this) {
    this->action++;
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0x17);
}

void Bird_Type2_Action1(Entity* this) {
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        sub_0800445C(this);
    } else if (IsCollidingPlayer(this) != 0) {
        CreateItemEntity(ITEM_OCARINA, 0, 0);
        gSave.windcrests |= 0x10000000;
        DeleteThisEntity();
    }
}

void Bird_Type3(Entity* this) {

    if (this->action == 0) {
        this->action++;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        this->frame = 0x80;
    }

    if ((this->frame & ANIM_DONE) != 0) {
        InitializeAnimation(this, Random() & 3);
        this->frameDuration = (Random() & 0xf) + 0x10;
        this->spriteSettings.flipX = FALSE;
        if ((Random() & 1) != 0) {
            this->spriteSettings.flipX = TRUE;
        }
    } else {
        GetNextFrame(this);
    }
}

void Bird_Type8(Entity* this) {
    Entity* pEVar5;

    switch (this->action) {
        case 0:
            if (this->timer != 0) {
                this->frameIndex = 0xff;
                this->timer--;
                return;
            }
            this->action = 1;
            this->zVelocity = 0;
            this->z.WORD = Q_16_16(-20.0);
            this->speed = 0x180;
            this->direction = 8;
            this->collisionLayer = 1;
            this->spritePriority.b0 = 0;
            this->spriteRendering.b3 = 0;
            this->spriteOrientation.flipY = 1;
            this->x.HALF.HI = gRoomControls.scroll_x;
            this->y.HALF.HI = gPlayerEntity.y.HALF.HI;
            this->child = NULL;
            SetDefaultPriority(this, 6);
            InitAnimationForceUpdate(this, 0);
            SoundReq(0x123);
            break;
        case 1:
            this->collisionLayer = gPlayerEntity.collisionLayer;
            this->speed += 8;
            if (this->speed > 0x300) {
                this->speed = 0x300;
            }

            if ((gPlayerEntity.flags & ENT_COLLIDE) && (gMessage.doTextBox & 0x7f) == 0 &&
                gPlayerEntity.action != PLAYER_SLEEP && gPlayerEntity.action != PLAYER_BOUNCE &&
                gPlayerEntity.action != PLAYER_MINISH && gPlayerState.framestate != PL_STATE_CLIMB &&
                gPlayerState.framestate != PL_STATE_JUMP && gPlayerState.framestate != PL_STATE_PARACHUTE &&
                PlayerCanBeMoved() && (EntityInRectRadius(this, &gPlayerEntity, 0xe, 0xe))) {
                s32 z = gPlayerEntity.z.HALF.HI - this->z.HALF.HI - 8;
                if ((u16)z < 0x20 && gPlayerEntity.health != 0) {
                    pEVar5 = CreateObject(BIRD, 10, 0);
                    if (pEVar5 != NULL) {
                        this->child = pEVar5;
                        this->action = 2;
                        this->timer = 8;
                        this->speed = 0x300;
                        this->field_0x68.HWORD = Q_8_8(-32.0);
                        PlayerDropHeldObject();
                        sub_08078B48();
                        ResetPlayerAnimationAndAction();
                        PutAwayItems();
                        gPlayerState.swim_state = 0;
                        gPlayerState.jump_status = 0;
                        gPlayerEntity.flags &= 0x7f;
                        gPlayerEntity.spriteSettings.draw = 0;
                        gPriorityHandler.sys_priority = 6;
                        gPauseMenuOptions.disabled = 1;
                    }
                }
            }
            break;
        default:
            sub_08078B48();
            gPlayerEntity.spriteSettings.draw = 0;
            break;
    }
    LinearMoveUpdate(this);
    GravityUpdate(this, (s16)this->field_0x68.HWORD);
    UpdateAnimationSingleFrame(this);
    pEVar5 = this->child;
    if (pEVar5 != NULL) {
        if (gPlayerEntity.x.HALF.HI < this->x.HALF.HI - 8) {
            this->timer = 0;
        }

        if (this->timer == 0) {
            PositionRelative(this, pEVar5, 0xfff80000, 0);
            pEVar5->z.HALF.HI += 0x18;
            pEVar5->spritePriority.b0 = this->spritePriority.b0;
            pEVar5->spriteRendering.b3 = this->spriteRendering.b3;
            pEVar5->spriteOrientation.flipY = this->spriteOrientation.flipY;
        } else {
            this->timer--;
            CopyPosition(&gPlayerEntity, pEVar5);
        }
    }

    if (CheckOnScreen(this) == 0) {
        if (this->action == 2) {
            gSave.windcrests |= 0x10000000;
            MenuFadeIn(9, 0);
        }
        pEVar5 = this->child;
        if (pEVar5 != NULL) {
            DeleteEntityAny(pEVar5);
        }
        DeleteThisEntity();
    }
}

void Bird_Type9(Entity* this) {
    Entity* pEVar1;
    Entity* child;

    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->zVelocity = Q_16_16(-2.5);
        this->z.WORD = Q_16_16(-75.25);
        this->field_0x68.HWORD = Q_8_8(-16.0);
        this->speed = 0x300;
        this->direction = 8;
        this->collisionLayer = 1;
        this->spritePriority.b0 = 0;
        this->spriteRendering.b3 = 0;
        this->spriteOrientation.flipY = 1;
        SetDefaultPriority(this, 6);
        this->x.HALF.HI = gRoomControls.scroll_x;
        this->y.HALF.HI = gPlayerEntity.y.HALF.HI;
        SoundReq(SFX_123);
        this->spritePriority.b1 = 2;
        InitAnimationForceUpdate(this, 0);
        sub_08078B48();
    } else if (this->action == 1) {
        gPlayerEntity.spriteSettings.draw = 0;
        child = this->child;
        if (child != NULL) {
            PositionRelative(this, child, Q_16_16(-8), 0);
            child->z.HALF.HI += 0x18;
            child->spritePriority.b0 = this->spritePriority.b0;
            child->spriteRendering.b3 = this->spriteRendering.b3;
            child->spriteOrientation.flipY = this->spriteOrientation.flipY;
        }
        sub_08078B48();
        if (gRoomControls.scroll_x + 0x78 < this->x.HALF.HI) {
            this->action++;
            this->spritePriority.b1 = 1;
            if (child != NULL) {
                child->action++;
            }
            gRoomControls.camera_target = &gPlayerEntity;
            gPlayerEntity.spriteSettings.draw = 1;
            ResetPlayerAnimationAndAction();
            ResetPlayerEventPriority();
            gPauseMenuOptions.disabled = 0;
            if (!CheckGlobalFlag(WARP_1ST)) {
                pEVar1 = CreateObject(CUTSCENE_ORCHESTRATOR, 0, 0);
                if (pEVar1 != NULL) {
                    *(ScriptExecutionContext**)&pEVar1->cutsceneBeh = StartCutscene(pEVar1, script_EzloTalkOcarina);
                    SetGlobalFlag(WARP_1ST);
                }
            }
        }
    }
    LinearMoveUpdate(this);
    GravityUpdate(this, (short)this->field_0x68.HWORD);
    UpdateAnimationSingleFrame(this);
    if (!CheckOnScreen(this)) {
        DeleteThisEntity();
    }
}

void Bird_Type10(Entity* this) {
    this->palette.b.b0 = gPlayerEntity.palette.b.b0;
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->collisionLayer = 1;
            this->spritePriority.b0 = 0;
            this->spriteRendering.b3 = 0;
            this->spriteOrientation.flipY = 1;
            SetDefaultPriority(this, 6);
            InitAnimationForceUpdate(this, 0xe0);
        case 1:
            UpdateAnimationSingleFrame(this);
            break;
        case 2:
            this->action = 3;
            break;
        case 3:
            DeleteThisEntity();
            break;
    }
}

void CreateBird(Entity* this) {
    Entity* birdEnt;

#ifndef EU
    if (AreaAllowsWarp()) {
#else
    if (AreaIsOverworld()) {
#endif
        if (!FindEntity(OBJECT, BIRD, 6, 8, 0)) {
            birdEnt = CreateObject(BIRD, 8, 0);
            if (birdEnt != NULL) {
                birdEnt->timer = 0;
            }
        }
    }
}

void sub_0809D738(void) {
    Entity* pEVar1;
    Entity* pEVar2;

    pEVar1 = CreateObject(BIRD, 9, 0);
    if (pEVar1 != NULL) {
        gRoomControls.camera_target = NULL;
        SetDefaultPriority(pEVar1, 6);
        SetPlayerEventPriority();
        pEVar2 = CreateObject(BIRD, 10, 0);
        if (pEVar2 != NULL) {
            pEVar1->child = pEVar2;
        }
        gPauseMenuOptions.disabled = 1;
    } else {
        ResetPlayerAnimationAndAction();
    }
}
