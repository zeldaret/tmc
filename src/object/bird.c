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
#include "object/cutsceneOrchestrator.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s16 gravity;
} BirdEntity;

extern u16 script_EzloTalkOcarina[];

void Bird_Type0(BirdEntity* this);
void Bird_Type1(BirdEntity* this);
void Bird_Type2(BirdEntity* this);
void Bird_Type3(BirdEntity* this);
void Bird_Type8(BirdEntity* this);
void Bird_Type9(BirdEntity* this);
void Bird_Type10(BirdEntity* this);
void Bird_Type0_Init(BirdEntity* this);
void Bird_Type0_Action1(BirdEntity* this);
void Bird_Type1_Init(BirdEntity* this);
void Bird_Type1_Action1(BirdEntity* this);
void Bird_Type1_Action1_Subaction0(BirdEntity* this);
void Bird_Type1_Action1_Subaction1(BirdEntity* this);
void Bird_Type2_Init(BirdEntity* this);
void Bird_Type2_Action1(BirdEntity* this);

void Bird(BirdEntity* this) {
    static void (*const typeFuncs[])(BirdEntity*) = {
        Bird_Type0, Bird_Type1, Bird_Type2, Bird_Type3, Bird_Type3,  Bird_Type3,
        Bird_Type3, Bird_Type3, Bird_Type8, Bird_Type9, Bird_Type10,
    };
    typeFuncs[super->type](this);
}

void Bird_Type0(BirdEntity* this) {
    static void (*const Bird_Type0_Actions[])(BirdEntity*) = {
        Bird_Type0_Init,
        Bird_Type0_Action1,
    };

    Bird_Type0_Actions[super->action](this);
}

void Bird_Type0_Init(BirdEntity* this) {
    Entity* target;

    super->action++;
    super->spriteSettings.draw = TRUE;
    super->timer = 49;
    super->subtimer = 1;
    super->zVelocity = Q_16_16(-1.5);
    super->z.WORD = Q_16_16(-56.75);
    this->gravity = Q_8_8(-8.0);
    super->speed = 0x280;
    super->direction = 8;
    super->collisionLayer = 2;
    super->x.HALF.HI = gRoomControls.scroll_x;
    SoundReq(SFX_123);
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, 0);
    target = CreateObject(BIRD, 1, 0);
    if (target != NULL) {
        target->parent = super;
        PositionRelative(super, target, 0, Q_16_16(8.0));
        SortEntityAbove(super, target);
    }
}

void Bird_Type0_Action1(BirdEntity* this) {
    LinearMoveUpdate(super);
    GravityUpdate(super, this->gravity);
    if (super->timer != 0) {
        if (--super->timer == 0) {
            super->subtimer = 0;
        }
    } else if (CheckOnScreen(super) == 0) {
        DeleteThisEntity();
    }
    UpdateAnimationSingleFrame(super);
}

void Bird_Type1(BirdEntity* this) {
    static void (*const Bird_Type1_Actions[])(BirdEntity*) = {
        Bird_Type1_Init,
        Bird_Type1_Action1,
    };
    Bird_Type1_Actions[super->action](this);
}

void Bird_Type1_Init(BirdEntity* this) {
    super->action++;
    super->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, 0x17);
}

void Bird_Type1_Action1(BirdEntity* this) {
    static void (*const Bird_Type1_Action1_Subactions[])(BirdEntity*) = {
        Bird_Type1_Action1_Subaction0,
        Bird_Type1_Action1_Subaction1,
    };
    Bird_Type1_Action1_Subactions[super->subAction](this);
}

void Bird_Type1_Action1_Subaction0(BirdEntity* this) {
    u32 temp;

    if (super->parent != NULL) {
        temp = super->parent->subtimer;
        if (temp != 0) {
            PositionRelative(super->parent, super, 0, Q_16_16(8.0));
        } else {
            super->subAction++;
            super->zVelocity = temp;
        }
    }
}

void Bird_Type1_Action1_Subaction1(BirdEntity* this) {
    Entity* fx;

    if (BounceUpdate(super, Q_8_8(24.0)) < BOUNCE_AIRBORNE) {
        super->type = 2;
        super->action = 1;
        super->z.WORD = 0;
        super->collisionLayer = 1;
        SetLocalFlag(LV3_OCARINA_FALL);
        SoundReq(SFX_SECRET);
        fx = CreateFx(super, FX_DASH, 0);
        if (fx != NULL) {
            SortEntityBelow(super, fx);
        }
    }
}

void Bird_Type2(BirdEntity* this) {
    static void (*const Bird_Type2_Actions[])(BirdEntity*) = {
        Bird_Type2_Init,
        Bird_Type2_Action1,
    };
    Bird_Type2_Actions[super->action](this);
}

void Bird_Type2_Init(BirdEntity* this) {
    super->action++;
    super->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, 0x17);
}

void Bird_Type2_Action1(BirdEntity* this) {
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        sub_0800445C(super);
    } else if (IsCollidingPlayer(super) != 0) {
        CreateItemEntity(ITEM_OCARINA, 0, 0);
        gSave.windcrests |= 0x10000000;
        DeleteThisEntity();
    }
}

void Bird_Type3(BirdEntity* this) {

    if (super->action == 0) {
        super->action++;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(super);
        super->frame = 0x80;
    }

    if ((super->frame & ANIM_DONE) != 0) {
        InitializeAnimation(super, Random() & 3);
        super->frameDuration = (Random() & 0xf) + 0x10;
        super->spriteSettings.flipX = FALSE;
        if ((Random() & 1) != 0) {
            super->spriteSettings.flipX = TRUE;
        }
    } else {
        GetNextFrame(super);
    }
}

void Bird_Type8(BirdEntity* this) {
    Entity* pEVar5;

    switch (super->action) {
        case 0:
            if (super->timer != 0) {
                super->frameIndex = 0xff;
                super->timer--;
                return;
            }
            super->action = 1;
            super->zVelocity = 0;
            super->z.WORD = Q_16_16(-20.0);
            super->speed = 0x180;
            super->direction = 8;
            super->collisionLayer = 1;
            super->spritePriority.b0 = 0;
            super->spriteRendering.b3 = 0;
            super->spriteOrientation.flipY = 1;
            super->x.HALF.HI = gRoomControls.scroll_x;
            super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI;
            super->child = NULL;
            SetEntityPriority(super, 6);
            InitAnimationForceUpdate(super, 0);
            SoundReq(0x123);
            break;
        case 1:
            super->collisionLayer = gPlayerEntity.base.collisionLayer;
            super->speed += 8;
            if (super->speed > 0x300) {
                super->speed = 0x300;
            }

            if ((gPlayerEntity.base.flags & ENT_COLLIDE) && (gMessage.state & MESSAGE_ACTIVE) == 0 &&
                gPlayerEntity.base.action != PLAYER_SLEEP && gPlayerEntity.base.action != PLAYER_BOUNCE &&
                gPlayerEntity.base.action != PLAYER_MINISH && gPlayerState.framestate != PL_STATE_CLIMB &&
                gPlayerState.framestate != PL_STATE_JUMP && gPlayerState.framestate != PL_STATE_PARACHUTE &&
                PlayerCanBeMoved() && (EntityInRectRadius(super, &gPlayerEntity.base, 0xe, 0xe))) {
                s32 z = gPlayerEntity.base.z.HALF.HI - super->z.HALF.HI - 8;
                if ((u16)z < 0x20 && gPlayerEntity.base.health != 0) {
                    pEVar5 = CreateObject(BIRD, 10, 0);
                    if (pEVar5 != NULL) {
                        super->child = pEVar5;
                        super->action = 2;
                        super->timer = 8;
                        super->speed = 0x300;
                        this->gravity = Q_8_8(-32.0);
                        PlayerDropHeldObject();
                        PausePlayer();
                        ResetPlayerAnimationAndAction();
                        PutAwayItems();
                        gPlayerState.swim_state = 0;
                        gPlayerState.jump_status = 0;
                        gPlayerEntity.base.flags &= ~0x80;
                        gPlayerEntity.base.spriteSettings.draw = 0;
                        gPriorityHandler.event_priority = 6;
                        gPauseMenuOptions.disabled = 1;
                    }
                }
            }
            break;
        default:
            PausePlayer();
            gPlayerEntity.base.spriteSettings.draw = 0;
            break;
    }
    LinearMoveUpdate(super);
    GravityUpdate(super, (s16)this->gravity);
    UpdateAnimationSingleFrame(super);
    pEVar5 = super->child;
    if (pEVar5 != NULL) {
        if (gPlayerEntity.base.x.HALF.HI < super->x.HALF.HI - 8) {
            super->timer = 0;
        }

        if (super->timer == 0) {
            PositionRelative(super, pEVar5, 0xfff80000, 0);
            pEVar5->z.HALF.HI += 0x18;
            pEVar5->spritePriority.b0 = super->spritePriority.b0;
            pEVar5->spriteRendering.b3 = super->spriteRendering.b3;
            pEVar5->spriteOrientation.flipY = super->spriteOrientation.flipY;
        } else {
            super->timer--;
            CopyPosition(&gPlayerEntity.base, pEVar5);
        }
    }

    if (CheckOnScreen(super) == 0) {
        if (super->action == 2) {
            gSave.windcrests |= 0x10000000;
            MenuFadeIn(9, 0);
        }
        pEVar5 = super->child;
        if (pEVar5 != NULL) {
            DeleteEntityAny(pEVar5);
        }
        DeleteThisEntity();
    }
}

void Bird_Type9(BirdEntity* this) {
    Entity* child;

    if (super->action == 0) {
        super->action = 1;
        super->spriteSettings.draw = 1;
        super->zVelocity = Q_16_16(-2.5);
        super->z.WORD = Q_16_16(-75.25);
        this->gravity = Q_8_8(-16.0);
        super->speed = 0x300;
        super->direction = 8;
        super->collisionLayer = 1;
        super->spritePriority.b0 = 0;
        super->spriteRendering.b3 = 0;
        super->spriteOrientation.flipY = 1;
        SetEntityPriority(super, 6);
        super->x.HALF.HI = gRoomControls.scroll_x;
        super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI;
        SoundReq(SFX_123);
        super->spritePriority.b1 = 2;
        InitAnimationForceUpdate(super, 0);
        PausePlayer();
    } else if (super->action == 1) {
        gPlayerEntity.base.spriteSettings.draw = 0;
        child = super->child;
        if (child != NULL) {
            PositionRelative(super, child, Q_16_16(-8), 0);
            child->z.HALF.HI += 0x18;
            child->spritePriority.b0 = super->spritePriority.b0;
            child->spriteRendering.b3 = super->spriteRendering.b3;
            child->spriteOrientation.flipY = super->spriteOrientation.flipY;
        }
        PausePlayer();
        if (gRoomControls.scroll_x + 0x78 < super->x.HALF.HI) {
            super->action++;
            super->spritePriority.b1 = 1;
            if (child != NULL) {
                child->action++;
            }
            gRoomControls.camera_target = &gPlayerEntity.base;
            gPlayerEntity.base.spriteSettings.draw = 1;
            ResetPlayerAnimationAndAction();
            ResetPlayerEventPriority();
            gPauseMenuOptions.disabled = 0;
            if (!CheckGlobalFlag(WARP_1ST)) {
                CutsceneOrchestratorEntity* orchestrator =
                    (CutsceneOrchestratorEntity*)CreateObject(CUTSCENE_ORCHESTRATOR, 0, 0);
                if (orchestrator != NULL) {
                    orchestrator->context = StartCutscene(&orchestrator->base, script_EzloTalkOcarina);
                    SetGlobalFlag(WARP_1ST);
                }
            }
        }
    }
    LinearMoveUpdate(super);
    GravityUpdate(super, (short)this->gravity);
    UpdateAnimationSingleFrame(super);
    if (!CheckOnScreen(super)) {
        DeleteThisEntity();
    }
}

void Bird_Type10(BirdEntity* this) {
    super->palette.b.b0 = gPlayerEntity.base.palette.b.b0;
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            super->collisionLayer = 1;
            super->spritePriority.b0 = 0;
            super->spriteRendering.b3 = 0;
            super->spriteOrientation.flipY = 1;
            SetEntityPriority(super, 6);
            InitAnimationForceUpdate(super, 0xe0);
        case 1:
            UpdateAnimationSingleFrame(super);
            break;
        case 2:
            super->action = 3;
            break;
        case 3:
            DeleteThisEntity();
            break;
    }
}

void CreateBird(Entity* this) {
    // EU only allows warp from the overworld. This prevents warping from the rooftop of the Wind Tribe's tower.
#ifndef EU
    if (AreaAllowsWarp()) {
#else
    if (AreaIsOverworld()) {
#endif
        if (!FindEntity(OBJECT, BIRD, 6, 8, 0)) {
            Entity* bird = CreateObject(BIRD, 8, 0);
            if (bird != NULL) {
                bird->timer = 0;
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
        SetEntityPriority(pEVar1, 6);
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
