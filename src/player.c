/**
 * @file player.c
 * @ingroup Player
 *
 * @brief Player entity
 */
#include "area.h"
#include "asm.h"
#include "collision.h"
#include "common.h"
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "hitbox.h"
#include "item.h"
#include "main.h"
#include "message.h"
#include "object.h"
#include "player.h"
#include "playeritem.h"
#include "playerItem/playerItemBottle.h"
#include "save.h"
#include "screen.h"
#include "screenTransitions.h"
#include "sound.h"
#include "tiles.h"

#define kGravityRate Q_8_8(32)
#define kWalkSpeedSlopeSubtractor Q_8_8(0.3125)
#define kWalkSpeed Q_8_8(1.25)
#define kWalkSpeedRolling Q_8_8(2.0)
#define kWalkSpeedGustJar Q_8_8(0.5)
#define kWalkSpeedShield Q_8_8(0.75)
#define kWalkSpeedSwordCharge Q_8_8(0.875)
#define kWalkSpeedBurning Q_8_8(3)

#define kJumpSpeedForward Q_8_8(1)
/* Jumping out of a hole */
#define kJumpSpeedHoleForward Q_8_8(0.46875)
#define kJumpSpeedHoleZ Q_16_16(1.625)
/* Bouncing off a wall */
#define kBounceSpeedForward Q_8_8(1.0)
#define kBounceSpeedZ Q_16_16(2.0)

#define kPullSpeed Q_8_8(0.5)
#define kPushSpeed Q_8_8(0.5)

#define kFallDamage 2

typedef void(PlayerEntityAction)(PlayerEntity*);

static PlayerEntityAction PlayerInit;
static PlayerEntityAction PlayerNormal;
// static PlayerEntityAction PlayerInit;
static PlayerEntityAction PlayerFall;
static PlayerEntityAction PlayerJump;
static PlayerEntityAction PlayerPush;
static PlayerEntityAction PlayerBounce;
static PlayerEntityAction sub_08070E9C;
static PlayerEntityAction PlayerItemGet;
static PlayerEntityAction PlayerMinish;
static PlayerEntityAction PlayerMinishDie;
static PlayerEntityAction sub_08071DB8;
static PlayerEntityAction PlayerEmptyBottle;
static PlayerEntityAction PlayerFrozen;
static PlayerEntityAction sub_0807204C;
static PlayerEntityAction PlayerRoomExit;
static PlayerEntityAction PlayerPull;
static PlayerEntityAction PlayerLava;
PlayerEntityAction PlayerWarp; // why is super defined in playerUtils.c? We may never know : (
static PlayerEntityAction sub_08072454;
static PlayerEntityAction PlayerDrown;
static PlayerEntityAction PlayerUsePortal;
static PlayerEntityAction PlayerTalkEzlo;
static PlayerEntityAction PlayerRoomTransition;
static PlayerEntityAction PlayerRoll;
static PlayerEntityAction PlayerWaitForScroll;
static PlayerEntityAction PlayerInHole;
static PlayerEntityAction sub_08072C9C;
static PlayerEntityAction PlayerSleep;
static PlayerEntityAction PlayerClimb;
static PlayerEntityAction PlayerUseEntrance;
static PlayerEntityAction PlayerParachute;

// PLAYER_FALL
static PlayerEntityAction PlayerFallInit;
static PlayerEntityAction PlayerFallUpdate;

// PLAYER_BOUNCE
static PlayerEntityAction PlayerBounceInit;
static PlayerEntityAction PlayerBounceUpdate;
static PlayerEntityAction sub_08070E7C;

// PLAYER_08070E9C
static PlayerEntityAction sub_08070EDC;
static PlayerEntityAction sub_08070f24;

// PLAYER_ITEMGET
static PlayerEntityAction PlayerItemGetInit;
static PlayerEntityAction PlayerItemGetUpdate;
static PlayerEntityAction sub_08071038;

// PLAYER_JUMP
static PlayerEntityAction PlayerJumpInit;
static PlayerEntityAction sub_08071130;
static PlayerEntityAction sub_08071208;

// PLAYER_DROWN
static PlayerEntityAction PlayerDrownInit;
static PlayerEntityAction sub_080712F0;

// PLAYER_USEPORTAL
static PlayerEntityAction PortalJumpOnUpdate;
static PlayerEntityAction PortalStandUpdate;
static PlayerEntityAction PortalActivateInit;
static PlayerEntityAction PortalActivateUpdate;
static PlayerEntityAction PortalShrinkInit;
static PlayerEntityAction PortalShrinkUpdate;
static PlayerEntityAction PortalEnterUpdate;
static PlayerEntityAction PortalUnknownUpdate;

// PLAYER_TALKEZLO
static PlayerEntityAction PlayerTalkEzlo_Init;
static PlayerEntityAction PlayerTalkEzlo_CreateMessage;
static PlayerEntityAction PlayerTalkEzlo_MessageIdle;
static PlayerEntityAction PlayerTalkEzlo_Leave;

// PLAYER_PUSH
static PlayerEntityAction PlayerPushInit;
static PlayerEntityAction PlayerPushUpdate;
static PlayerEntityAction PlayerPushEnd;

// PLAYER_MINISHDIE
static PlayerEntityAction PlayerMinishDieInit;
static PlayerEntityAction sub_08071CAC;
static PlayerEntityAction sub_08071D04;
static PlayerEntityAction sub_08071D80;

// PLAYER_08071DB8
static PlayerEntityAction sub_08071DD0;
static PlayerEntityAction sub_08071E04;
static PlayerEntityAction sub_08071E74;

// PLAYER_EMPTYBOTTLE
static PlayerEntityAction PlayerEmptyBottleInit;
static PlayerEntityAction PlayerEmptyBottleUpdate;

// PLAYER_FROZEN
static PlayerEntityAction PlayerFrozenInit;
static PlayerEntityAction PlayerFrozenUpdate;

// PLAYER_0807204C
static PlayerEntityAction sub_08072064;
static PlayerEntityAction sub_08072098;

// PLAYER_ROOM_EXIT
static PlayerEntityAction sub_08072100;
static PlayerEntityAction sub_08072168;

// PLAYER_PULL
static PlayerEntityAction sub_08072214;
static PlayerEntityAction sub_08072260;

// PLAYER_LAVA
static PlayerEntityAction PlayerLavaInit;
static PlayerEntityAction sub_08072354;
static PlayerEntityAction sub_080723D0;
static PlayerEntityAction sub_0807240C;

// PLAYER_08072454
static PlayerEntityAction sub_0807246C;
static PlayerEntityAction sub_08072490;

// PLAYER_ROOMTRANSITION
static PlayerEntityAction sub_080724DC;
static PlayerEntityAction sub_0807258C;

// PLAYER_ROLL
static PlayerEntityAction PlayerRollInit;
static PlayerEntityAction PlayerRollUpdate;

// PLAYER_INHOLE
static PlayerEntityAction PlayerInHoleInit;
static PlayerEntityAction PlayerInHoleUpdate;
static PlayerEntityAction sub_08072ACC;
static PlayerEntityAction sub_08072B5C;
static PlayerEntityAction sub_08072C48;

// PLAYER_08072C9C
static PlayerEntityAction sub_08072CC0;
static PlayerEntityAction sub_08072CFC;
static PlayerEntityAction sub_08072D54;
static PlayerEntityAction sub_08072F14;

// PLAYER_CLIMB
static PlayerEntityAction sub_08072F94;
static PlayerEntityAction sub_08073094;

// PLAYER_USEENTRANCE
static PlayerEntityAction PlayerUseStairs;
static PlayerEntityAction sub_080732D0;
static PlayerEntityAction sub_0807332C;
static PlayerEntityAction sub_080733BC;

// PLAYER_PARACHUTE
static PlayerEntityAction sub_08073468;
static PlayerEntityAction sub_080734D4;
static PlayerEntityAction sub_08073504;
static PlayerEntityAction sub_08073584;
static PlayerEntityAction sub_0807379C;
static PlayerEntityAction sub_080737BC;
static PlayerEntityAction sub_0807380C;
static PlayerEntityAction sub_08073884;

// DoJump... ?
static PlayerEntityAction sub_08073924;
static PlayerEntityAction sub_08073968;
static PlayerEntityAction sub_080739EC;
static PlayerEntityAction sub_08073A94;
static PlayerEntityAction sub_08073B8C;
static PlayerEntityAction sub_08073C30;

// PLAYER_MINISH
static PlayerEntityAction sub_08073C80;
static PlayerEntityAction sub_08073D20;
static PlayerEntityAction sub_08073F04;
static PlayerEntityAction sub_08073F4C;
static PlayerEntityAction sub_08073FD0;
static PlayerEntityAction sub_08074018;
static PlayerEntityAction sub_08074060;
static PlayerEntityAction sub_080740D8;

// PLAYER_SLEEP
static PlayerEntityAction sub_08074C68;
static PlayerEntityAction sub_08074CF8;
static PlayerEntityAction sub_08074F00;
static PlayerEntityAction sub_080750F4;
// ...
static PlayerEntityAction sub_08074F1C;
static PlayerEntityAction sub_08074F2C;
static PlayerEntityAction sub_08074F44;
static PlayerEntityAction sub_08074F8C;
static PlayerEntityAction sub_08074FEC;
static PlayerEntityAction sub_0807501C;
static PlayerEntityAction sub_0807508C;
// ...
static PlayerEntityAction sub_08075110;
static PlayerEntityAction sub_0807513C;
static PlayerEntityAction sub_0807518C;
static PlayerEntityAction sub_080751B4;

// static helper functions
static void DoJump(PlayerEntity*);
static void sub_080717F8(PlayerEntity*);
static void reset_priority(void);
static void break_out(PlayerEntity* this);
static void sub_08073AD4(PlayerEntity* this);
static void sub_08073B60(PlayerEntity*);
static void sub_08074244(PlayerEntity*, u32, u32);
static void hide(PlayerEntity*);
static void conveyer_push(PlayerEntity*);
static void sub_08074D34(PlayerEntity*, ScriptExecutionContext*);
static void sub_08070BEC(PlayerEntity*, u32);
static void sub_08074808(PlayerEntity* this);

// exports
void SurfaceAction_Water(PlayerEntity*);
void SurfaceAction_Ladder(PlayerEntity*);
void SurfaceAction_AutoLadder(PlayerEntity*);

extern void InitPauseMenu(void);
extern u32 UpdatePlayerCollision(void);

extern u8 gUnk_080082DC[];

extern u16 script_BedInLinksRoom;
extern u16 script_BedAtSimons;

extern ScriptExecutionContext gPlayerScriptExecutionContext;

bool32 CheckInitPauseMenu(void) {
    u32 framestate;
    if (((gInput.newKeys & START_BUTTON) == 0 || gFadeControl.active || gPauseMenuOptions.disabled ||
         (gMessage.state & MESSAGE_ACTIVE) || gSave.stats.health == 0 || !gSave.inventory[0] ||
         gPlayerState.controlMode != 0 || gPriorityHandler.priority_timer != 0)) {
        return FALSE;
    }

    framestate = gPlayerState.framestate == PL_STATE_IDLE ? gPlayerState.framestate_last : gPlayerState.framestate;
    switch (framestate) {
        case PL_STATE_DIE:
        case PL_STATE_TALKEZLO:
        case PL_STATE_ITEMGET:
        case PL_STATE_DROWN:
        case PL_STATE_STAIRS:
            return FALSE;
    }
    InitPauseMenu();
    return TRUE;
}

void DoPlayerAction(PlayerEntity* this) {
    static void (*const sPlayerActions[])(PlayerEntity*) = {
        [PLAYER_INIT] = PlayerInit,
        [PLAYER_NORMAL] = PlayerNormal,
        [PLAYER_DUMMY] = PlayerInit,
        [PLAYER_FALL] = PlayerFall,
        [PLAYER_JUMP] = PlayerJump,
        [PLAYER_PUSH] = PlayerPush,
        [PLAYER_BOUNCE] = PlayerBounce,
        [PLAYER_08070E9C] = sub_08070E9C,
        [PLAYER_ITEMGET] = PlayerItemGet,
        [PLAYER_MINISH] = PlayerMinish,
        [PLAYER_MINISHDIE] = PlayerMinishDie,
        [PLAYER_08071DB8] = sub_08071DB8,
        [PLAYER_EMPTYBOTTLE] = PlayerEmptyBottle,
        [PLAYER_FROZEN] = PlayerFrozen,
        [PLAYER_0807204C] = sub_0807204C,
        [PLAYER_ROOM_EXIT] = PlayerRoomExit,
        [PLAYER_PULL] = PlayerPull,
        [PLAYER_LAVA] = PlayerLava,
        [PLAYER_WARP] = PlayerWarp,
        [PLAYER_08072454] = sub_08072454,
        [PLAYER_DROWN] = PlayerDrown,
        [PLAYER_USEPORTAL] = PlayerUsePortal,
        [PLAYER_TALKEZLO] = PlayerTalkEzlo,
        [PLAYER_ROOMTRANSITION] = PlayerRoomTransition,
        [PLAYER_ROLL] = PlayerRoll,
        [PLAYER_080728AC] = PlayerWaitForScroll,
        [PLAYER_INHOLE] = PlayerInHole,
        [PLAYER_08072C9C] = sub_08072C9C,
        [PLAYER_SLEEP] = PlayerSleep,
        [PLAYER_CLIMB] = PlayerClimb,
        [PLAYER_USEENTRANCE] = PlayerUseEntrance,
        [PLAYER_PARACHUTE] = PlayerParachute,
    };
    sPlayerActions[super->action](this);
}

static void PlayerInit(PlayerEntity* this) {
    u32 equipSlot;

    gPlayerState.prevAnim = 0xff;
    gPlayerState.startPosX = gPlayerEntity.base.x.HALF.HI;
    gPlayerState.startPosY = gPlayerEntity.base.y.HALF.HI;
    COLLISION_ON(super);
    super->spritePriority.b0 = 0xc;
    super->spritePriority.b1 = 1;
    super->spriteSettings.shadow = 1;
    super->carryFlags = 0x20;
    super->collisionMask = 8;
    super->hitType = 0x79;
    super->hitbox = (Hitbox*)&gPlayerHitbox;
    super->spriteIndex = 1;
#ifndef EU
    gPlayerState.animation = ANIM_DEFAULT;
#endif
    sub_0806FDA0(super);
    LoadSwapGFX(super, 1, 2);
    InitAnimationForceUpdate(super, 2);
    if (super->collisionLayer == 0) {
        ResolveCollisionLayer(super);
    }

    equipSlot = IsItemEquipped(ITEM_LANTERN_ON);
    if (equipSlot != EQUIP_SLOT_NONE) {
        CreateItemEquippedAtSlot(equipSlot);
    }
    DeleteClones();
    UpdatePlayerSkills();

    if (CheckQueuedAction() == 0) {
        PlayerSetNormalAndCollide();
        UpdateFloorType();
        if (gPlayerState.swim_state != 0) {
            Entity* ent;
            gPlayerState.swim_state = 1;
            ResolvePlayerAnimation();
            gPlayerState.framestate = PL_STATE_SWIM;
            PlayerSwimming(super);
            ent = FindEntity(OBJECT, SPECIAL_FX, 0x6, FX_WATER_SPLASH, 0x0);
            if (ent != NULL) {
                DeleteEntity(ent);
            }
        }
    }
}

static void PlayerNormal(PlayerEntity* this) {
    gPlayerState.framestate = PL_STATE_IDLE;
    if (gPlayerState.flags & PL_CAPTURED) {
        super->spritePriority.b1 = 0;
        super->knockbackDuration = 0;
        super->speed = kWalkSpeed;
        gPlayerState.pushedObject = 0x80;
        gPlayerState.framestate = PL_STATE_TRAPPED;
        if ((super->animationState >> 1) + 92 == super->animIndex && (u16)super->spriteIndex == 2)
            UpdateAnimationSingleFrame(&gPlayerEntity.base);
        else
            gPlayerState.animation = ANIM_TRAPPED;
        sub_0806F948(&gPlayerEntity.base);
        ResetActiveItems();
        UpdateActiveItems(super);
        return;
    }
    if (gPlayerState.flags & PL_IN_MINECART) {
        super->hurtType = 30;
        gPlayerState.framestate = PL_STATE_C;
        sub_08070BEC(this, super->speed == 0 ? 1 : 0);
        return;
    }
    if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
        ResolvePlayerAnimation();
        return;
    }
    sub_080085B0(super);
    super->hurtType = 0;
    if (CheckQueuedAction()) {
        return;
    }
    if (!gPlayerState.swim_state && (gPlayerState.jump_status & 0xC0) == 0) {
        if (gPlayerState.shield_status || gPlayerState.bow_state) {
            super->speed = kWalkSpeedShield;
        } else {
            if (gPlayerState.sword_state) {
                super->speed = kWalkSpeedSwordCharge;
            } else if (gPlayerState.gustJarState != PL_JAR_NONE) {
                super->speed = kWalkSpeedGustJar;
            } else {
                super->speed = kWalkSpeed;
            }
        }
    }
    gPlayerState.pushedObject |= 0x80;
    if ((gPlayerState.flags & (PL_USE_OCARINA | PL_FLAGS2)) == 0) {
        UpdateFloorType();
    }

    if (CheckQueuedAction()) {
        return;
    }

    if (gPlayerState.jump_status == 0 && (gPlayerState.flags & PL_BURNING) == 0) {
        if (super->knockbackDuration == 0 && sub_080782C0()) {
            if (gRoomVars.shopItemType == 0) {
                ResetActiveItems();
            }
            if ((gPlayerState.flags & (PL_USE_OCARINA | PL_FLAGS2)) == 0) {
                UpdateFloorType();
                CheckQueuedAction();
            }
            return;
        }
        if (((gPlayerState.flags & (PL_BUSY | PL_DROWNING | PL_USE_PORTAL | PL_CAPTURED | PL_FALLING | PL_BURNING |
                                    PL_IN_MINECART | PL_ROLLING)) |
             gPlayerState.attachedBeetleCount) == 0) {
            switch (UpdatePlayerCollision()) {
                case 0:
                    gPlayerState.pushedObject ^= 0x80;
                    break;
                case 3:
                    gPlayerState.pushedObject = 0x80;
                    break;
                case 15:
                    super->flags &= ~ENT_COLLIDE;
                    sub_080797EC();
                    return;
                case 4:
                    gPlayerState.pushedObject ^= 0x80;
                    sub_080797EC();
                    return;
                case 1:
                case 2:
                case 5 ... 14:
                default:
                    return;
            }
        }
    }

    super->collisionFlags = 0;
    super->spritePriority.b0 = 4;
    if (sub_0807AC54(super)) {
        return;
    }
    UpdateActiveItems(super);

    if (CheckQueuedAction())
        return;

    sub_080792D8();
    if ((gPlayerState.jump_status | gPlayerState.field_0xa) == 0 && (sub_08079550() || sub_08078F74(super))) {
        return;
    }
    DoJump(this);

    if (CheckQueuedAction())
        return;

    if (gPlayerState.jump_status) {
        gPlayerState.framestate = PL_STATE_CAPE;
        if ((gPlayerState.jump_status & 0xC0) == 0) {
            if ((gPlayerState.jump_status & 7) != 3 && (gPlayerState.jump_status & 0x20) == 0) {
                super->speed = gPlayerState.jump_status & 0x20;
                sub_08008926(super);
            } else {
                super->direction = DIR_NONE;
            }
        }
        UpdatePlayerMovement();
        if ((super->frame & 2) == 0 && !gPlayerState.attack_status)
            UpdateAnimationSingleFrame(super);
        return;
    }
    if (super->knockbackDuration == 0) {
        u32 v13;

        if (gPlayerState.swim_state) {
            gPlayerState.framestate = PL_STATE_SWIM;
            PlayerSwimming(super);
        } else {
            if ((gPlayerState.flags & PL_CONVEYOR_PUSHED) == 0)
                super->spritePriority.b1 = 1;
            if (gPlayerState.dash_state & 0x40) {
                sub_08008AA0(super);
            } else {
                if (gPlayerState.floor_type == SURFACE_ICE) {
                    sub_08008926(super);
                } else if (gPlayerState.floor_type == SURFACE_PIT) {
                    ResetPlayerVelocity();
                } else {
                    sub_08008AA0(super);
                }
            }
            if ((gPlayerState.sword_state & 0x10) == 0) {
                super->direction = gPlayerState.direction;
                if (gPlayerState.flags & PL_BURNING) {
                    super->speed = kWalkSpeedBurning;
                    if ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) != 0)
                        super->direction = 4 * (super->animationState & 0xE);
                    DeleteClones();
                }
            }
        }
        v13 = 0;
        if ((((gPlayerState.field_0x7 | super->direction) & DIR_NOT_MOVING_CHECK) | gPlayerState.field_0xa) == 0 &&
            (gPlayerState.field_0x7 & 0x10) == 0) {
            v13 = 1;
            if (super->knockbackDuration == 0 &&
                ((gPlayerState.dash_state & 0x40) || gPlayerState.floor_type != SURFACE_ICE))
                v13 = 3;
        }
        sub_08070BEC(this, v13);
        sub_08008AC6(super);
        if (super->knockbackDuration == 0 && gPlayerState.keepFacing == 0 && gPlayerState.floor_type != SURFACE_LADDER)
            sub_0806F948(super);
    } else {
        if (gPlayerState.item == NULL)
            UpdateAnimationSingleFrame(super);
        if (gPlayerState.swim_state != 0 && (gRoomTransition.frameCount & 7) == 0)
            CreateWaterTrace(super);
        return;
    }
}

static void sub_08070BEC(PlayerEntity* this, u32 r0) {
    if (r0 & 1)
        sub_080797EC();
    else
        ResolvePlayerAnimation();

    if (r0 & 2)
        UpdatePlayerMovement();
}

static void PlayerFall(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerFallStates[] = {
        PlayerFallInit,
        PlayerFallUpdate,
    };

    gPlayerState.direction = DIR_NONE;
    gPlayerState.pushedObject = 0x80;
    gPlayerState.framestate = PL_STATE_FALL;

    sPlayerFallStates[super->subAction](this);
}

static void PlayerFallInit(PlayerEntity* this) {
    SnapToTile(super);

    gPlayerState.flags |= PL_BUSY | PL_DROWNING;
    gPlayerState.flags &= ~PL_BURNING;

    gPlayerState.jump_status = 0;

    if (gPlayerState.flags & PL_MINISH)
        gPlayerState.animation = ANIM_FALL_MINISH;
    else if (gPlayerState.flags & PL_NO_CAP)
        gPlayerState.animation = ANIM_FALL_NOCAP;
    else
        gPlayerState.animation = ANIM_FALL;

    super->subAction++;
    COLLISION_OFF(super);
    super->spritePriority.b1 = 0;
    ResetActiveItems();
    DeleteClones();
    SoundReq(SFX_PLY_VO7);
    SoundReq(SFX_FALL_HOLE);
}

static void PlayerFallUpdate(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        if ((gSave.stats.health != 0) && (gPlayerState.flags & PL_PIT_IS_EXIT)) {
            // pit leads to another room
            gPlayerState.flags &= ~(PL_BUSY | PL_DROWNING);
            super->spriteSettings.draw = 0;
        } else {
            // stay in super room
            gPlayerState.flags &= ~(PL_DROWNING | PL_PIT_IS_EXIT);
            RespawnPlayer();
            gPlayerState.field_0xa = 0;
            super->iframes = 32;
            ModHealth(-kFallDamage);
        }
    }
}

static void PlayerBounce(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerBounceStates[] = {
        PlayerBounceInit,
        PlayerBounceUpdate,
        sub_08070E7C,
    };
    sPlayerBounceStates[super->subAction](this);
}

static void PlayerBounceInit(PlayerEntity* this) {
    COLLISION_OFF(super);
    super->direction = DirectionTurnAround(Direction8FromAnimationState(AnimationStateWalk(super->animationState)));
    super->speed = kBounceSpeedForward;
    super->knockbackDuration = 0;
    super->subAction++;
    super->timer = gPlayerState.field_0x38;
    super->spriteIndex = 1;

    if (!(gPlayerState.flags & PL_MINISH)) {
        super->zVelocity = kBounceSpeedZ;
        gPlayerState.animation = ANIM_BOUNCE;
        InitScreenShake(16, 0);
    } else {
        gPlayerState.animation = ANIM_BOUNCE_MINISH;
        super->zVelocity = (kBounceSpeedZ * 3) / 4;
    }

    gPlayerState.jump_status = 0x80;
    SoundReq(SFX_14C);
    ResetActiveItems();
    ResetPlayerVelocity();
}

static void PlayerBounceUpdate(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_080085B0(super);
    UpdatePlayerMovement();
    UpdateFloorType();

    if (CheckQueuedAction() || GravityUpdate(super, kGravityRate))
        return;

    gPlayerState.jump_status = 0;

    if (CheckQueuedAction())
        return;

    if (sub_08079D48() || gPlayerState.swim_state != 0) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
        return;
    }

    if (super->timer-- != 0) {
        super->zVelocity = Q_16_16(1.0);
        return;
    }

    COLLISION_ON(super);

    if ((gPlayerState.field_0x14 == 0) && PlayerCheckNEastTile()) {
        gPlayerState.surfacePositionSameTimer = 7;
        ResolvePlayerAnimation();
        SetPlayerActionNormal();
        return;
    }

    super->spriteIndex = 1;
    super->timer = 8;
    super->subAction++;

    if (!(gPlayerState.flags & PL_MINISH))
        gPlayerState.animation = ANIM_DEFAULT;
}

static void sub_08070E7C(PlayerEntity* this) {
    if (--super->timer == 0) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
    }
}

static void sub_08070E9C(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BA74[] = {
        sub_08070EDC,
        sub_08070f24,
    };

    if (CheckQueuedAction() != 0) {
        MessageClose();
    } else {
        gPlayerState.field_0x27[0] = 4;
        gPlayerState.framestate = PL_STATE_TALKEZLO;
        UpdateFloorType();
        gUnk_0811BA74[super->subAction](this);
    }
}

static void sub_08070EDC(PlayerEntity* this) {
    super->updatePriority = PRIO_MESSAGE;

    if (gMessage.state & MESSAGE_ACTIVE)
        super->subAction = 1;

    if ((gPlayerState.flags & PL_MINISH) == 0)
        ResolvePlayerAnimation();
    else
        gPlayerState.animation = ANIM_BOUNCE_MINISH;
}

static void sub_08070f24(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->updatePriority = super->updatePriorityPrev;
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerItemGet(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerItemGetStates[] = {
        PlayerItemGetInit,
        PlayerItemGetUpdate,
        sub_08071038,
    };

    Entity* child;
    u8* temp;

    gPlayerState.framestate = PL_STATE_ITEMGET;
    COLLISION_OFF(super);
    sPlayerItemGetStates[super->subAction](this);

    child = super->child;
    if (child != NULL) {
        PositionEntityOnTop(super, child);
        temp = GetSpriteSubEntryOffsetDataPointer((u16)super->spriteIndex, super->frameIndex);
        child->spriteOffsetX = temp[0];
        child->spriteOffsetY = temp[1];
    }
}

static void PlayerItemGetInit(PlayerEntity* this) {
    super->spriteSettings.flipX = FALSE;
    super->animationState = IdleSouth;

    gPlayerState.flags |= PL_BUSY;
    gPlayerState.jump_status = 0;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        u32 anim;
        if (gPlayerState.flags & PL_NO_CAP) {
            if (IsMinishItem(gPlayerState.field_0x38)) {
                anim = ANIM_GET_ITEM_SMALL_NOCAP;
            } else {
                anim = ANIM_GET_ITEM_BIG_NOCAP;
            }
        } else {
            if (IsMinishItem(gPlayerState.field_0x38)) {
                anim = ANIM_GET_ITEM_SMALL;
            } else {
                anim = ANIM_GET_ITEM_BIG;
            }
        }
        gPlayerState.animation = anim;
    }

    super->subAction = 1;
    ResetActiveItems();
    ResetPlayerVelocity();
}

static void PlayerItemGetUpdate(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame != 0) /* entire animation is a static frame, wait for advance */
        super->subAction = 2;
}

static void sub_08071038(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);

    // player is still reading message
    if (CheckQueuedAction() || (gMessage.state & MESSAGE_ACTIVE))
        return;

    if (super->frame & ANIM_DONE) {
        // remove the item
        // is super actually deleted?
        super->child = NULL;
        super->knockbackDuration = 0;
        super->iframes = 248;
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerJump(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerJumpStates[] = {
        PlayerJumpInit,
        sub_08071130,
        sub_08071208,
    };

    gPlayerState.framestate = PL_STATE_JUMP;
    sPlayerJumpStates[super->subAction](this);
}

static void PlayerJumpInit(PlayerEntity* this) {
    s32 temp;

    super->subAction++;

    gPlayerState.flags |= PL_BUSY;
    gPlayerState.flags &= ~(PL_BURNING | PL_FROZEN);

    gPlayerState.queued_action = PLAYER_INIT;

    if ((gPlayerState.heldObject | gPlayerState.sword_state) == 0) {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            ResetActiveItems();
            if (gPlayerState.flags & PL_NO_CAP) {
                gPlayerState.animation = ANIM_JUMP_NOCAP;
            } else {
                gPlayerState.animation = ANIM_JUMP;
            }
        }
    }

    gPlayerState.dash_state = 0;
    super->direction = Direction8FromAnimationState(AnimationStateWalk(super->animationState));

    temp = sub_08079FC4(1);

    temp <<= 4;
    temp -= 4;
    temp <<= 12;
    super->zVelocity = temp;

    super->speed = kJumpSpeedForward;
    DeleteClones();
    SoundReq(SFX_PLY_JUMP);
    SoundReq(SFX_PLY_VO4);
}

static void sub_08071130(PlayerEntity* this) {
    if (CheckQueuedAction())
        return;

    if (gPlayerState.sword_state == 0) {
        UpdateAnimationSingleFrame(super);

        if (super->frame & 1)
            return;
    }

    LinearMoveUpdate(super);

    if (GravityUpdate(super, kGravityRate))
        return;

    gPlayerState.jump_status = 0;
    ResetCollisionLayer(super);

    if (this->carriedEntity != NULL)
        ResetCollisionLayer(this->carriedEntity);

    DoTileInteractionHere(super, 7);

    if (gPlayerState.field_0x14)
        return;

    UpdateFloorType();

    if (CheckQueuedAction())
        return;

    if ((sub_08079D48() == 0) || (gPlayerState.swim_state != 0)) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
        return;
    }

    super->timer = 6;

    if (((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) {
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = ANIM_LAND_NOCAP;
        } else {
            gPlayerState.animation = ANIM_LAND;
        }
        super->animIndex = 0xff;
    }

    super->subAction++;
    ResetPlayerVelocity();
    super->knockbackDuration = 0;
    SoundReq(SFX_PLY_LAND);
}

static void sub_08071208(PlayerEntity* this) {
    if ((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            UpdateAnimationSingleFrame(super);
        }
    }

    if (super->timer-- == 0) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerDrown(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerDrownStates[] = {
        PlayerDrownInit,
        sub_080712F0,
    };

    gPlayerState.framestate = PL_STATE_DROWN;
    gPlayerState.flags |= PL_DROWNING;
    COLLISION_OFF(super);
    sPlayerDrownStates[super->subAction](this);
}

static void PlayerDrownInit(PlayerEntity* this) {
    super->subAction = 1;
    super->spritePriority.b1 = 0;

    if (gPlayerState.flags & PL_MINISH) {
        super->timer = 60;
        gPlayerState.animation = ANIM_DROWN_MINISH;
        SoundReq(SFX_WATER_SPLASH);
    } else {
        if (!(gPlayerState.flags & PL_FLAGS10000))
            SnapToTile(super);

        CreateFx(super, FX_WATER_SPLASH, 0);

        if (!(gPlayerState.flags & PL_NO_CAP))
            gPlayerState.animation = ANIM_DROWN;
        else
            gPlayerState.animation = ANIM_DROWN_NOCAP;
    }
    ResetActiveItems();
}

static void sub_080712F0(PlayerEntity* this) {
    u32 temp;

    UpdateAnimationSingleFrame(super);

    temp = FALSE;

    if (gPlayerState.flags & PL_MINISH) {
        if (--super->timer == 0)
            temp = TRUE;
    } else if ((super->frame & ANIM_DONE) != 0) {
        if (super->animIndex != 0xce)
            gPlayerState.animation = ANIM_DROWN_RESPAWN;
        else
            temp = TRUE;
    }

    if (temp) {
        super->knockbackDuration = 0;
        super->iframes = 32;
        super->spritePriority.b1 = 1;
        super->spriteSettings.draw = FALSE;
        gPlayerState.flags &= ~PL_DROWNING;
        RespawnPlayer();
    }
}

static void PlayerUsePortal(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerUsePortalStates[] = {
        PortalJumpOnUpdate, PortalStandUpdate,  PortalActivateInit, PortalActivateUpdate,
        PortalShrinkInit,   PortalShrinkUpdate, PortalEnterUpdate,  PortalUnknownUpdate,
    };

    gPlayerState.framestate = PL_STATE_USEPORTAL;
    sPlayerUsePortalStates[super->subAction](this);

    // probably a switch
    if ((super->subAction == 7) || (super->subAction < 3))
        return;

    if (!(gPlayerState.flags & PL_USE_PORTAL))
        return;

    if ((gInput.newKeys & (B_BUTTON | R_BUTTON)) == 0)
        return;

    if (AreaIsDungeon() || gArea.portal_type == PT_DUNGEON) {
        super->subAction = 7;
        super->timer = 30;
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 16);
        SoundReq(SFX_F8);
    } else {
        RespawnAsMinish();
    }
}

static void PortalJumpOnUpdate(PlayerEntity* this) {
    u16 x;
    u16 y;

    COLLISION_OFF(super);
    super->knockbackDuration = 0;
    x = gArea.portal_x;
    y = gArea.portal_y;

    if ((super->x.HALF.HI != x) || (super->y.HALF.HI != y)) {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gArea.portal_x, gArea.portal_y);
        super->speed = kJumpSpeedForward;
        UpdatePlayerMovement();
    }

    DoJump(this);
    UpdateAnimationSingleFrame(super);

    if (gPlayerState.jump_status == 0) {
        gPlayerState.flags |= PL_USE_PORTAL;
        super->subAction = 1;
        super->animationState = IdleSouth;
        super->spriteSettings.flipX = FALSE;
        if (gArea.portal_type == PT_JAR) {
            gPlayerState.animation = ANIM_ENTER_POT;
        }
    }

    super->timer = 8;

    if (gArea.portal_type != PT_DUNGEON) {
        super->spritePriority.b0 = 3;
    }
}

static void PortalStandUpdate(PlayerEntity* this) {
    switch (gArea.portal_type) {
        case PT_JAR:
        case PT_5:
            sub_0806F948(&gPlayerEntity.base);
            break;
    }

    if ((gPlayerState.direction & (DIR_NOT_MOVING_CHECK | DIR_DIAGONAL)) == 0) {
        if (super->direction != gPlayerState.direction) {
            super->timer = 8;
        }
        if (super->timer-- == 0) {
            super->direction = gPlayerState.direction;
            super->animationState = Direction8ToAnimationState(super->direction);
            super->zVelocity = Q_16_16(2.0);
            super->speed = kJumpSpeedForward;
            super->action = PLAYER_MINISH;
            super->subAction = 7;
            super->subtimer = 0;
            gPlayerState.animation = (gPlayerState.flags & PL_NO_CAP) ? ANIM_HOP_NOCAP : ANIM_HOP;
            gPlayerState.flags &= ~PL_USE_PORTAL;
            return;
        }
        super->direction = gPlayerState.direction;
    } else {
        super->timer = 8;
    }

    if (gArea.portal_type == PT_JAR) {
        if (super->frame == 0) {
            UpdateAnimationSingleFrame(super);
            return;
        }
    } else {
        UpdateActiveItems(super);
    }
    ResolvePlayerAnimation();
}

static void PortalActivateInit(PlayerEntity* this) {
    gRoomControls.camera_target = NULL;
    gPauseMenuOptions.disabled = 1;
    super->subAction = 3;
    super->subtimer = 30;
    gPlayerState.animation = ANIM_PORTAL_ACTIVATE;
    CreateObjectWithParent(super, EZLO_CAP, 1, 0);
    PutAwayItems();
    SetPlayerEventPriority();
}

static void PortalActivateUpdate(PlayerEntity* this) {
    if (super->subtimer)
        return;

    UpdateAnimationSingleFrame(super);

    if (gPlayerState.flags & PL_MINISH)
        super->subAction = 4;
}

static void PortalShrinkInit(PlayerEntity* this) {
    super->subAction = 5;
    super->spritePriority.b1 = 0;
    super->subtimer = 0;
    super->spriteRendering.b0 = 3;
    this->unk_80.WORD = 0x100;
    this->unk_84.WORD = 0x100;
    SetAffineInfo(super, 0x100, 0x100, 0);
    gPlayerState.animation = ANIM_PORTAL_SHRINK;
    gPlayerState.flags |= PL_MINISH;
    SoundReq(SFX_PLY_SHRINKING);
}

static void PortalShrinkUpdate(PlayerEntity* this) {
    static const u8 gUnk_0811BABC[] = {
        1, 1, 1, 1, 2, 4, 8, 16,
    };
    int iVar3;
    u32 uVar5;
    u32 uVar7;
    u32 uVar8;

    if (this->unk_80.BYTES.byte1) {
        uVar7 = (u32)((this->unk_80.WORD + 0x80) * 0x100000) >> 0x17;
    } else {
        uVar7 = (0x10 / (((this->unk_80.BYTES.byte0 >> 6) ^ 3) + 1)) >> 1;
    }
    uVar5 = this->unk_84.WORD;
    if (uVar5 >= 0x101) {
        uVar5 = (uVar5 + 0x80) * 0x100000 >> 0x17;
    } else {
        if (uVar5 == 0x100) {
            uVar5 = 0x10;
        } else {
            uVar5 = gUnk_0811BABC[uVar5 >> 5];
        }
    }
    iVar3 = Q_16_16(1);

    switch (super->frame) {
        case 1:
            super->spritePriority.b1 = 0;
            if (0x80 < this->unk_80.WORD_U) {
                this->unk_80.WORD_U -= uVar7;
            }
            this->unk_84.WORD_U += uVar5 * 2;
            super->y.WORD_U += iVar3 * 2;
            break;
        case 2:
            this->unk_80.WORD_U += uVar7;
            uVar8 = this->unk_84.WORD_U;
            if (uVar8 >= 0x101) {

                if (uVar8 < 0x180) {
                    uVar5 = uVar5 >> 1;
                }
                if (uVar8 - uVar5 < 0x100) {
                    this->unk_84.WORD_U = 0x100;
                } else {
                    this->unk_84.WORD_U = uVar8 - uVar5;
                }
            } else {
                if (0x80 < uVar8) {
                    this->unk_84.WORD_U = uVar8 - uVar5;
                }
            }
            super->z.WORD = super->z.WORD - iVar3;

            break;
        case 3:
            if (this->unk_80.WORD_U < 0x340) {
                this->unk_80.WORD_U += uVar7;
            }
            if (this->unk_84.WORD_U >= 0x340) {
                super->timer = 8;
                super->subtimer = 30;
                super->subAction = 6;
            } else {
                this->unk_84.WORD_U += uVar5 * 2;
            }
            super->z.WORD = super->z.WORD - iVar3 * 2;
            break;
    }

    SetAffineInfo(super, this->unk_80.WORD, this->unk_84.WORD, 0);
    UpdateAnimationSingleFrame(super);
}

static void PortalEnterUpdate(PlayerEntity* this) {
    if (super->timer == 0) {
        if (GravityUpdate(super, kGravityRate))
            return;

        super->spriteSettings.draw = FALSE;

        if (gArea.portal_type == PT_DUNGEON) {
            if (--super->subtimer == 0)
                sub_080717F8(this);
            return;
        }
        if (gArea.portal_type == PT_TOD)
            DoExitTransition(&gUnk_0813AB58);
        else
            gArea.portal_in_use = TRUE;

        return;
    }
    super->timer--;
}

static void PortalUnknownUpdate(PlayerEntity* this) {
    if (gFadeControl.active)
        return;

    if (super->timer != 0) {
        super->timer--;
        return;
    }

    sub_080717F8(this);
    SetFadeInverted(0x10);
}

static void sub_080717F8(PlayerEntity* this) {
    static const s16 sOffsets[] = {
        0, -22, 22, 0, 0, 22, -22, 0,
    };

    super->animationState = gArea.portal_exit_dir << 1;
    super->x.HALF.HI = gArea.portal_x + sOffsets[gArea.portal_exit_dir * 2];
    super->y.HALF.HI = gArea.portal_y + sOffsets[gArea.portal_exit_dir * 2 + 1];
    gArea.portal_timer = 180;
    gPauseMenuOptions.disabled = 0;
    super->action = PLAYER_MINISH;
    super->subAction = 0;
    gPlayerState.flags = (gPlayerState.flags & ~PL_USE_PORTAL) | PL_MINISH;
    sub_0805EC60(super);
    ResetPlayerEventPriority();
}

static void PlayerTalkEzlo(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerTalkEzloStates[] = {
        PlayerTalkEzlo_Init,
        PlayerTalkEzlo_CreateMessage,
        PlayerTalkEzlo_MessageIdle,
        PlayerTalkEzlo_Leave,
    };

    if (CheckQueuedAction()) {
        MessageClose();
        reset_priority();
    } else {
        gPlayerState.framestate = PL_STATE_TALKEZLO;
        COLLISION_OFF(super);
        sPlayerTalkEzloStates[super->subAction](this);
    }
}

static void PlayerTalkEzlo_Init(PlayerEntity* this) {
    ResetActiveItems();
    gActiveItems[ACTIVE_ITEM_LANTERN].animPriority = 0;
    super->iframes = 0;
    gPriorityHandler.event_priority = PRIO_PLAYER_EVENT;
    super->updatePriority = PRIO_PLAYER_EVENT;

    if (gPlayerState.flags & PL_MINISH) {
        super->subAction = 2;
        super->spritePriority.b1 = 0;
        DisplayEzloMessage();
        return;
    }

    if (gPlayerState.jump_status == 0) {
        super->subAction++;

        if (super->animationState == IdleEast) {
            gPlayerState.animation = ANIM_EZLO_APPEAR_RIGHT;
        } else {
            gPlayerState.animation = ANIM_EZLO_APPEAR_LEFT;
        }

        super->spriteSettings.flipX = 0;
        return;
    }

    if (!GravityUpdate(super, kGravityRate)) {
        gPlayerState.jump_status = 0;
    }
}

static void PlayerTalkEzlo_CreateMessage(PlayerEntity* this) {
    Entity* child;

    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        super->subAction++;
        super->child = CreateObjectWithParent(super, EZLO_CAP, 0, 0);
        if (super->child != NULL) {
            if (super->animationState == IdleEast) {
                gPlayerState.animation = ANIM_EZLO_EYES_MIDDLE;
            } else {
                gPlayerState.animation = ANIM_EZLO_EYES_UP;
            }
            DisplayEzloMessage();
        }
    }
}

static void PlayerTalkEzlo_MessageIdle(PlayerEntity* this) {
    u32 rightOrLeft;

    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->subAction++;
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            if (super->animationState == IdleEast)
                gPlayerState.animation = ANIM_EZLO_LEAVE_RIGHT;
            else
                gPlayerState.animation = ANIM_EZLO_LEAVE_LEFT;
        } else {
            reset_priority();
            PlayerMinishSetNormalAndCollide();
        }
        return;
    }

    if (gPlayerState.flags & PL_MINISH)
        return;

    if (super->animationState == IdleEast)
        rightOrLeft = 4;
    else
        rightOrLeft = 0;

    if (super->child->timer != 0) {
        if ((u8)(rightOrLeft + 200) != super->animIndex) {
            gPlayerState.animation = rightOrLeft + ANIM_EZLO_HEAD_DOWN;
            return;
        }
    } else {
        if ((u8)(rightOrLeft + 199) != super->animIndex) {
            gPlayerState.animation = rightOrLeft + ANIM_EZLO_EYES_UP;
            return;
        }
    }
    UpdateAnimationSingleFrame(super);
}

static void PlayerTalkEzlo_Leave(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        reset_priority();
        PlayerSetNormalAndCollide();
    }
}

static void reset_priority(void) {
    gPriorityHandler.event_priority = PRIO_MIN;
    gPlayerEntity.base.updatePriority = gPlayerEntity.base.updatePriorityPrev;
}

static void PlayerPush(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerPushStates[] = {
        PlayerPushInit,
        PlayerPushUpdate,
        PlayerPushEnd,
    };

    gPlayerState.framestate = PL_STATE_PUSH;
    sPlayerPushStates[super->subAction](this);
}

static void PlayerPushInit(PlayerEntity* this) {
    super->subAction++;
    gPlayerState.flags |= PL_BUSY;
    if (super->type == 1) {
        // scripted push?
        super->speed = 0;
        super->timer = 0;
        super->subtimer = 1;
    } else {
        super->speed = (gPlayerState.flags & PL_MINISH) ? kPushSpeed / 2 : kPushSpeed;
    }
    PlayerPushUpdate(this);
}

static void PlayerPushUpdate(PlayerEntity* this) {
    typedef struct {
        u8 frame;
        u16 speed;
    } PushFrame;

    static const PushFrame sPushFrames[] = {
        { 5, 0 },
        { 1, kPushSpeed * 2 },
        { 5, 0 },
        { 1, kPushSpeed * 2 },
        { 2, 0 },
        { 1, kPushSpeed * 2 },
        { 2, 0 },
        { 1, kPushSpeed * 2 },
        { 3, 0 },
        { 1, kPushSpeed * 2 },
        { 8, kPushSpeed * 3 / 4 },
        { 8, kPushSpeed * 3 / 4 },
        { 8, kPushSpeed * 3 / 4 },
        { 8, kPushSpeed / 2 },
        { 0xFF, 0 },
    };

    gPlayerState.speed_modifier = 0;
    UpdateAnimationSingleFrame(super);
    if (super->type == 1) {
        if (--super->subtimer == 0) {
            if (sPushFrames[super->timer].frame != 0xff) {
                super->subtimer = sPushFrames[super->timer].frame;
                super->speed = sPushFrames[super->timer].speed;
                super->timer++;
            } else {
                super->subAction++;
                return;
            }
        }
    } else {
        gPlayerState.pushedObject--;
        if ((gPlayerState.pushedObject & 0x7f) == 0) {
            super->subAction++;
        }
    }
    UpdatePlayerMovement();
}

static void PlayerPushEnd(PlayerEntity* this) {
    gPlayerState.pushedObject = 2;
    gPlayerState.flags &= ~PL_BUSY;
    super->type = 0;
    super->knockbackDuration = 0;
    PlayerWaitForScroll(this);
    // Final push?
    super->subtimer = 6;
    if (!(gPlayerState.flags & PL_MINISH)) {
        gPlayerState.animation = ANIM_WALK;
        super->spriteIndex = 3;
        InitAnimationForceUpdate(super, (super->animationState >> 1) + 0x3c);
    }
}

static void PlayerMinishDie(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerMinishDieStates[] = {
        PlayerMinishDieInit,
        sub_08071CAC,
        sub_08071D04,
        sub_08071D80,
    };

    COLLISION_OFF(super);
    sPlayerMinishDieStates[super->subAction](this);
    gPlayerState.framestate = PL_STATE_DIE;
}

static void PlayerMinishDieInit(PlayerEntity* this) {
    u32 deathAnim;

    if (gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS))
        return;

    if (GravityUpdate(super, kGravityRate)) {
        if (gPlayerState.flags & PL_NO_CAP)
            gPlayerState.animation = ANIM_JUMP_NOCAP;
        else
            gPlayerState.animation = ANIM_JUMP;
        return;
    }

    gPlayerState.queued_action = PLAYER_INIT;
    if (gPlayerState.flags & PL_MINISH) {
        if (gPlayerState.floor_type == SURFACE_MINISH_DOOR_FRONT ||
            gPlayerState.floor_type == SURFACE_MINISH_DOOR_BACK || gPlayerState.floor_type == SURFACE_A) {
            EnablePlayerDraw(super);
            RespawnPlayer();
            super->action = PLAYER_MINISHDIE;
        }
        deathAnim = ANIM_DIE1_MINISH;
    } else {
        deathAnim = (gPlayerState.flags & PL_NO_CAP) ? ANIM_DIE1_NOCAP : ANIM_DIE1;
    }
    gPlayerState.animation = deathAnim;

    gPlayerState.flags &=
        ~(PL_PARACHUTE | PL_MOLDWORM_RELEASED | PL_ROLLING | PL_FROZEN | PL_BURNING | PL_DISABLE_ITEMS | PL_BUSY);
    super->subAction = 1;
    super->animationState = IdleSouth;
    super->spritePriority.b1 = 1;
    super->spriteSettings.draw = 3;
    gPlayerState.jump_status = 0;
    gPlayerState.pushedObject = 0;
    sub_0800451C(super);
    ResetActiveItems();
    SoundReq(SFX_PLY_DIE);
}

static void sub_08071CAC(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        u32 deathAnim;
        if ((gPlayerState.flags & PL_MINISH) == 0)
            deathAnim = (gPlayerState.flags & PL_NO_CAP) ? ANIM_DIE2_NOCAP : ANIM_DIE2;
        else
            deathAnim = ANIM_DIE2_MINISH;
        gPlayerState.animation = deathAnim;

        super->subAction = 2;
        super->timer = 240;
        SoundReq(SFX_PLY_VO7);
    }
}

static void sub_08071D04(PlayerEntity* this) {
    int idx;
    int deltaHealth;

    UpdateAnimationSingleFrame(super);
    if (super->frame == 0)
        return;

    deltaHealth = 0;
    idx = GetBottleContaining(ITEM_BOTTLE_FAIRY);
    if (idx != 0) {
        gSave.stats.bottles[idx - 1] = 0x20;
        CreateObject(FAIRY, 0x60, 2);
        deltaHealth = 32;
    }

    if (deltaHealth != 0) {
        ModHealth(deltaHealth);
        super->subAction = 3;
        gPlayerState.killed = 0;
        super->direction = DIR_NONE;
        super->speed = 0;
        super->zVelocity = Q_16_16(1.5);
        gPlayerState.jump_status = 1;
        gPlayerState.swim_state = 0;
        return;
    }

    gRoomTransition.field_0x4[1] = 1;
}

static void sub_08071D80(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    gPlayerState.field_0x14 = 1;
    DoJump(this);
    if ((gPlayerState.jump_status & 7) == 3) {
        gPlayerState.jump_status = 0;
        super->iframes = 226;
        ResetPlayerEventPriority();
        ResetPlayerAnimationAndAction();
    }
}

static void sub_08071DB8(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BB3C[] = {
        sub_08071DD0,
        sub_08071E04,
        sub_08071E74,
    };

    gUnk_0811BB3C[super->subAction](this);
}

static void sub_08071DD0(PlayerEntity* this) {
    super->timer = gPlayerState.field_0x38;
    if (gPlayerState.field_0x39 != 0) {
        gPlayerState.field_0x39 = 0;
        super->subAction = 2;
        gPlayerState.animation = ANIM_DEFAULT;
    } else {
        super->subAction = 1;
        gPlayerState.animation = ANIM_BOUNCE;
    }
}

static void sub_08071E04(PlayerEntity* this) {
    if ((super->z.WORD != 0) && (gPlayerState.field_0x14 == 0)) {
        UpdateFloorType();
        if (gPlayerState.floor_type == SURFACE_PIT) {
            gPlayerState.surfacePositionSameTimer = 7;
            gPlayerState.flags |= PL_FALLING;
            SetPlayerActionNormal();
            return;
        }
    }

    UpdateAnimationSingleFrame(super);
    if (sub_08079B24() == 0) {
        sub_08079708(super);
        return;
    }

    sub_080792D8();
    if (sub_0807953C())
        super->timer -= 2;
    else
        super->timer--;

    if ((s8)super->timer < 1)
        SetPlayerActionNormal();
}

static void sub_08071E74(PlayerEntity* this) {
    u32 temp;

    GravityUpdate(super, kGravityRate);
    UpdatePlayerMovement();
    temp = super->timer--;
    if (temp == 0)
        SetPlayerActionNormal();
}

static void PlayerEmptyBottle(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerEmptyBottleStates[] = {
        PlayerEmptyBottleInit,
        PlayerEmptyBottleUpdate,
    };

    sPlayerEmptyBottleStates[super->subAction](this);
}

static void PlayerEmptyBottleInit(PlayerEntity* this) {
    PlayerItemBottleEntity* entity;

    ResetActiveItems();
    entity = (PlayerItemBottleEntity*)CreatePlayerItemWithParent((ItemBehavior*)super, PLAYER_ITEM_BOTTLE);
    if (entity != NULL) {
        entity->bottleIndex = gPlayerState.field_0x38;
        super->subAction++;
        switch (gPlayerState.field_0x38) {
            case 0x20:
                gPlayerState.animation = ANIM_BOTTLE_SWING;
                break;
            case 0x21 ... 0x25:
                gPlayerState.animation = ANIM_BOTTLE_DRINK;
                break;
            default:
                gPlayerState.animation = ANIM_BOTTLE_POUR;
                SetInventoryValue(gPlayerState.field_0x38, 2);
                break;
        }
    }
}

static void PlayerEmptyBottleUpdate(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        gPlayerState.item = NULL;
        PlayerSetNormalAndCollide();
    }
}

static void PlayerFrozen(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerFrozenStates[] = {
        PlayerFrozenInit,
        PlayerFrozenUpdate,
    };

    sPlayerFrozenStates[super->subAction](this);
}

static void PlayerFrozenInit(PlayerEntity* this) {
    COLLISION_OFF(super);
    super->timer = 120;
    super->subAction++;
    gPlayerState.animation = ANIM_FROZEN;
    PutAwayItems();
    SoundReq(SFX_195);
}

static void PlayerFrozenUpdate(PlayerEntity* this) {
    if (GravityUpdate(super, kGravityRate) == 0) {
        UpdateSpriteForCollisionLayer(super);
        gPlayerState.jump_status = 0;
        if (gPlayerState.field_0x14 == 0) {
            if (sub_08079D48() == 0) {
                break_out(this);
                return;
            }
        }
    }
    if (sub_08079B24() == 0) {
        sub_08079708(super);
    } else {
        if (gPlayerState.flags & PL_FROZEN) {
            if (sub_0807953C() != 0) {
                super->timer -= 3;
                super->spriteOffsetX = 2;
            } else {
                super->spriteOffsetX = 0;
            }
            if ((s8)super->timer > 0) {
                return;
            }
        }
    }
    break_out(this);
}

static void break_out(PlayerEntity* this) {
    super->iframes = 160;
    super->knockbackDuration = 0;
    COLLISION_ON(super);
    super->spriteOffsetX = 0;
    gPlayerState.flags &= ~(PL_FROZEN | PL_BUSY);
    CreateFx(super, FX_ICE, 0);
    SetPlayerActionNormal();
}

static void sub_0807204C(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BB58[] = {
        sub_08072064,
        sub_08072098,
    };

    gUnk_0811BB58[super->subAction](this);
}

static void sub_08072064(PlayerEntity* this) {
    super->subAction = 1;
    COLLISION_OFF(super);
    super->timer = gPlayerState.field_0x3a;
    gPlayerState.animation = gPlayerState.field_0x38 | (gPlayerState.field_0x39 << 8);
    ResetActiveItems();
}

static void sub_08072098(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->timer != 0) {
        if (super->timer-- != 0) {
            return;
        }
    } else if ((super->frame & ANIM_DONE) == 0) {
        return;
    }

    if (super->health != 0) {
        COLLISION_ON(super);
    }
    SetPlayerActionNormal();
}

static void PlayerRoomExit(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BB60[] = {
        sub_08072100,
        sub_08072168,
    };

    if (CheckQueuedAction() == 0)
        gUnk_0811BB60[super->subAction](this);
}

static void sub_08072100(PlayerEntity* this) {
    super->spriteSettings.draw = 3;
    super->speed = 0x140;
    super->hitbox = (Hitbox*)&gPlayerHitbox;
    super->timer = gPlayerState.field_0x38;
    super->subAction = 1;
    COLLISION_OFF(super);
    if (gPlayerState.field_0x39)
        super->direction = DIR_NONE;

    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = ANIM_WALK_NOCAP;
    } else {
        gPlayerState.animation = ANIM_WALK;
    }
    ResetActiveItems();
    sub_08072168(this);
}

static void sub_08072168(PlayerEntity* this) {
    u32 i;

    UpdateAnimationSingleFrame(super);
    i = (u16)sub_0806F854(super, 0, -12) ? kGravityRate * 2 : kGravityRate;
    GravityUpdate(super, i);
    if (gPlayerState.field_0x3a) {
        LinearMoveUpdate(super);
    } else {
        UpdatePlayerMovement();
    }
    gPlayerState.direction = super->direction;
    UpdatePlayerCollision();
    if (super->timer-- == 0) {
        super->knockbackDuration = 0;
        COLLISION_ON(super);
        UpdateSpriteForCollisionLayer(super);
        SetPlayerActionNormal();
    }
}

static void PlayerPull(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerPullStates[] = {
        sub_08072214,
        sub_08072260,
    };

    gPlayerState.framestate = PL_STATE_PULL;
    sPlayerPullStates[super->subAction](this);
    gHUD.rActionGrabbing = R_ACTION_GRAB;
}

static void sub_08072214(PlayerEntity* this) {
    super->subAction = 1;
    super->speed = kPullSpeed;
    super->timer = gPlayerState.field_0x38;
    super->direction = Direction8FromAnimationState(AnimationStateFlip180(super->animationState));
    if ((gPlayerState.flags & PL_NO_CAP) == 0) {
        gPlayerState.animation = ANIM_PULL2;
    } else {
        gPlayerState.animation = ANIM_PULL_NOCAP;
    }
    gPlayerState.flags |= PL_BUSY;
    sub_08072260(this);
}

static void sub_08072260(PlayerEntity* this) {
    gPlayerState.speed_modifier = 0;
    UpdatePlayerMovement();
    UpdateAnimationSingleFrame(super);
    if (--super->timer == 0) {
        gPlayerState.flags &= ~PL_BUSY;
        if ((gPlayerState.flags & PL_NO_CAP) == 0) {
            gPlayerState.animation = ANIM_PULL2;
        } else {
            gPlayerState.animation = ANIM_PULL_NOCAP;
        }
        super->knockbackDuration = 0;
        SetPlayerActionNormal();
    }
}

static void PlayerLava(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerLavaStates[] = {
        PlayerLavaInit,
        sub_08072354,
        sub_080723D0,
        sub_0807240C,
    };

    gPlayerState.framestate = PL_STATE_FALL;
    sPlayerLavaStates[super->subAction](this);
}

static void PlayerLavaInit(PlayerEntity* this) {
    Entity* ent;

    COLLISION_OFF(super);
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        super->subAction = 1;
        super->zVelocity = Q_16_16(2.5);
        ent = CreateObject(LINK_FIRE, 0x80, 0);
        if (ent != NULL) {
            ent->child = super;
        }
        gPlayerState.animation = ANIM_BOUNCE;
    } else {
        super->spriteSettings.draw = 0;
        super->subAction = 3;
        super->knockbackDuration = 10;
    }
    gPlayerState.flags |= (PL_BURNING | PL_BUSY);
    ResetActiveItems();
    SoundReq(SFX_124);
    SoundReq(SFX_PLY_VO6);
}

static void sub_08072354(PlayerEntity* this) {
    sub_0806F854(super, 0, -12);
    UpdateAnimationSingleFrame(super);
    sub_08079744(super);
    if (GravityUpdate(super, kGravityRate))
        return;

    super->spritePriority.b1 = 0;
    super->knockbackDuration = 0;
    super->subAction = 2;
    super->timer = 60;
    gPlayerState.animation = ANIM_IN_LAVA;
    gPlayerState.flags &= ~PL_BURNING;
    UpdateSpriteForCollisionLayer(super);
    CreateFx(super, FX_LAVA_SPLASH, 0);
    SoundReq(SFX_1A6);
}

static void sub_080723D0(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->timer-- == 0) {
        super->spritePriority.b1 = 1;
        super->iframes = 20;
        ModHealth(-2);
        RespawnPlayer();
    }
}

static void sub_0807240C(PlayerEntity* this) {
    if (super->knockbackDuration-- == 0) {
        super->spriteSettings.draw = 3;
        super->iframes = 20;
        gPlayerState.flags &= ~PL_BURNING;
        ModHealth(-2);
        RespawnPlayer();
    }
}

static void sub_08072454(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BB80[] = {
        sub_0807246C,
        sub_08072490,
    };

    gUnk_0811BB80[super->subAction](this);
}

static void sub_0807246C(PlayerEntity* this) {
    super->subAction = 1;
    super->timer = gPlayerState.field_0x38;
    gPlayerState.animation = ANIM_LAUNCHED;
    SoundReq(SFX_PLY_VO7);
}

static void sub_08072490(PlayerEntity* this) {
    if (super->timer-- != 0) {
        UpdateAnimationSingleFrame(super);
        UpdatePlayerMovement();
    } else {
        super->iframes = 60;
        ModHealth(-8);
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerRoomTransition(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerRoomTransitionStates[] = {
        sub_080724DC,
        sub_0807258C,
    };
    sPlayerRoomTransitionStates[super->subAction](this);
}

static void sub_080724DC(PlayerEntity* this) {
    super->knockbackDuration = 0;
    DeleteClones();
    if (GetActTileAtEntity(super) != ACT_TILE_41) {
        if ((gPlayerState.remainingDiveTime == 0) && (gPlayerState.swim_state != 0)) {
            PlayerUpdateSwimming(super);
        }
        if (gRoomControls.reload_flags == 0) {
            super->updatePriority = super->updatePriorityPrev;
            PlayerWaitForScroll(this);
        } else if (gPlayerState.gustJarState == PL_JAR_NONE) {
            UpdateAnimationSingleFrame(super);
        }
    } else {
        super->spriteSettings.draw = 3;
        super->subAction = 1;
        if (!gRoomVars.didEnterScrolling) {
            if (gPlayerState.flags & PL_MINISH) {
                gPlayerState.animation = ANIM_BOUNCE_MINISH;
            } else {
                gPlayerState.animation = ANIM_WALK;
            }
            super->direction = Direction8FromAnimationState(super->animationState);
        }
    }
}

static void sub_0807258C(PlayerEntity* this) {
    if (gRoomControls.reload_flags == 0) {
        if (GetActTileInFront(super) == ACT_TILE_41) {
            UpdatePlayerMovement();
            if (sub_080797C4() != 0) {
                gPlayerState.startPosX = gPlayerEntity.base.x.HALF.HI;
                gPlayerState.startPosY = gPlayerEntity.base.y.HALF.HI;
                super->updatePriority = super->updatePriorityPrev;
                PlayerWaitForScroll(this);
            } else {
                UpdateAnimationSingleFrame(super);
            }
        } else {
            gPlayerState.startPosX = gPlayerEntity.base.x.HALF.HI;
            gPlayerState.startPosY = gPlayerEntity.base.y.HALF.HI;
            super->updatePriority = super->updatePriorityPrev;
            PlayerWaitForScroll(this);
        }
    }
    if ((gPlayerState.remainingDiveTime == 0) && (gPlayerState.swim_state != 0)) {
        PlayerUpdateSwimming(super);
    }
}

static void PlayerRoll(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerRollStates[] = {
        PlayerRollInit,
        PlayerRollUpdate,
    };

    gPlayerState.framestate = PL_STATE_ROLL;
    sPlayerRollStates[super->subAction](this);
}

static void PlayerRollInit(PlayerEntity* this) {
    u32 playerFlags;

    if ((gPlayerState.flags & PL_MOLDWORM_RELEASED) == 0) {
        sub_0806F948(&gPlayerEntity.base);
        super->direction = Direction8FromAnimationState(super->animationState);
    }
    super->subAction = 1;
    super->timer = 0;
    ResetActiveItems();
    playerFlags = gPlayerState.flags;
    if (gPlayerState.flags & PL_MINISH) {
        super->spritePriority.b1 = 0;
        gPlayerState.animation = ANIM_ROLL_MINISH;
    } else {
        super->hurtType = 0x1e;
        if (playerFlags & PL_NO_CAP) {
            gPlayerState.animation = ANIM_ROLL_NOCAP;
        } else {
            gPlayerState.animation = ANIM_ROLL;
        }
    }
    gPlayerState.flags |= PL_ROLLING;
    if (Random() & 1) {
        SoundReq(SFX_PLY_VO5);
    } else {
        SoundReq(SFX_PLY_VO4);
    }
    SoundReq(SFX_7E);
}

static void PlayerRollUpdate(PlayerEntity* this) {
    if (((gPlayerState.flags & (PL_ROLLING | PL_MOLDWORM_CAPTURED)) != PL_ROLLING) ||
        (!(gPlayerState.flags & PL_MOLDWORM_RELEASED) && (super->iframes != 0) &&
         (super->contactFlags & CONTACT_NOW))) {
        gPlayerState.flags &= ~PL_ROLLING;
        if (CheckQueuedAction())
            return;

        PlayerWaitForScroll(this);
        return;
    }

    super->direction = Direction8FromAnimationState(AnimationStateIdle(super->animationState));
    if (!(gPlayerState.flags & PL_MINISH) && (super->timer-- == 0)) {
        CreateFx(&gPlayerEntity.base, FX_DASH, 0x40);
        super->timer = 4;
    }
    if (!(gPlayerState.flags & PL_FLAGS2)) {
        UpdateFloorType();
    }
    if (CheckQueuedAction()) {
        gPlayerState.flags &= ~PL_ROLLING;
        return;
    }

    if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
        gPlayerState.flags &= ~PL_ROLLING;
        return;
    }

    if (sub_0807AC54(super)) {
        return;
    }

    if (gPlayerState.flags & (PL_FALLING | PL_HIDDEN | PL_CAPTURED)) {
        gPlayerState.flags &= ~PL_ROLLING;
        PlayerWaitForScroll(this);
        return;
    }

    if (gPlayerState.floor_type == SURFACE_ICE) {
        // roll in place when on ice
        UpdateIcePlayerVelocity(super);
    } else {
        switch (super->frame & 0xf) {
            case 0:
                if ((super->frame & 0xf) == 0) {
                    super->speed = kWalkSpeedRolling;
                }
                break;
            case 1:
                super->speed += kWalkSpeedRolling / 16;
                break;
            case 2:
                super->speed = (kWalkSpeedRolling * 3 / 2);
                break;
            case 3:
                super->speed = 0;
                break;
        }
        CheckPlayerVelocity();
        UpdatePlayerMovement();
    }
    if (((super->frame & 0x10) == 0) && !(gPlayerState.flags & PL_MINISH)) {
        // dont take damage
        super->hurtType = 0;
    }
    if (super->frame & 0x40) {
        UpdateActiveItems(this);
    }
    if ((super->frame & ANIM_DONE) || (gPlayerState.attack_status != 0)) {
        ResetPlayerAnimationAndAction();
    }
    if (super->frame & ANIM_DONE) {
        gPlayerState.flags &= ~(PL_MOLDWORM_RELEASED | PL_ROLLING);
    }
    UpdateAnimationSingleFrame(super);
}

static void PlayerWaitForScroll(PlayerEntity* this) {
    ResolvePlayerAnimation();
    if (gPlayerState.flags & PL_MINISH)
        sub_0807B068(super);
    else
        ResetPlayerVelocity();

    if (gPlayerState.swim_state != 0)
        super->speed = 0;
    if (!(gPlayerState.flags & PL_HIDDEN))
        gPlayerEntity.base.spriteSettings.draw = 3;
    if (!(gPlayerState.flags & PL_MINISH))
        gPlayerEntity.base.spritePriority.b1 = 1;

    if (!(gRoomControls.scroll_flags & 4)) {
        if (gPlayerState.flags & PL_HIDDEN)
            COLLISION_ON(super);
        ResetPlayerAnimationAndAction();
    }
    if ((gPlayerState.flags & PL_FLAGS2) == 0) {
        UpdateFloorType();
    }
}

static void PlayerInHole(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerInHoleStates[] = {
        PlayerInHoleInit, PlayerInHoleUpdate, sub_08072ACC, sub_08072B5C, sub_08072C48,
    };

    gPlayerState.framestate = PL_STATE_HOLE;
    sPlayerInHoleStates[super->subAction](this);
}

static void PlayerInHoleInit(PlayerEntity* this) {
    if (super->health != 0) {
        super->subAction = 1;
        super->x.HALF.HI = (super->x.HALF.HI & ~0xF) | 8;
        super->y.HALF.HI = (super->y.HALF.HI & ~0XF) | 10;
        COLLISION_OFF(super);
        super->spritePriority.b0 = 7;
        super->spritePriority.b1 = 0;
        super->timer = 0;
        gPlayerState.flags |= PL_IN_HOLE;
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = ANIM_FALL_IN_HOLE_NOCAP;
        } else {
            gPlayerState.animation = ANIM_FALL_IN_HOLE;
            if (GetTileIndex(COORD_TO_TILE(super), super->collisionLayer) == SPECIAL_TILE_32) {
                super->timer = 1;
            }
        }
        SetTile(SPECIAL_TILE_112, COORD_TO_TILE(super), super->collisionLayer);
        ResetActiveItems();
        PlayerInHoleUpdate(this);
        SoundReq(SFX_81);
    }
}

static void PlayerInHoleUpdate(PlayerEntity* this) {
    if (super->frame & ANIM_DONE) {
        if (super->timer == 1) {
            super->subAction = 3;
            super->timer = 40;
            super->spritePriority.b1 = 1;
            gPlayerState.animation = ANIM_SPRING_JUMP;
            return;
        }

        super->subAction = 2;
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = ANIM_IN_HOLE_NOCAP;
        } else {
            gPlayerState.animation = ANIM_IN_HOLE;
        }
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

static void sub_08072ACC(PlayerEntity* this) {
    if (gPlayerState.direction == DIR_NONE) {
        super->subtimer = 0;
    } else if (super->subtimer > 7) {
        COLLISION_ON(super);
        super->direction = gPlayerState.direction;
        super->zVelocity = kJumpSpeedHoleZ;
        super->speed = kJumpSpeedHoleForward;
        super->spritePriority.b0 = 4;
        super->spritePriority.b1 = 1;
        gPlayerState.jump_status = 0x41;
        PlayerSetNormalAndCollide();
        RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
    } else {
        super->animationState = Direction8ToAnimationState(gPlayerState.direction);
        super->subtimer++;
    }
}

static void sub_08072B5C(PlayerEntity* this) {
    u32 temp;

    sub_080042BA(super, ((40 - super->timer) >> 4) + 1);
    sub_0806F948(super);
    if (super->timer != 0) {
        super->timer--;
        return;
    }

    SetTile(SPECIAL_TILE_33, COORD_TO_TILE(super), super->collisionLayer);
    super->direction = Direction8FromAnimationState(super->animationState);
    temp = sub_0807A2F8(1);
    if (!temp) {
        COLLISION_ON(super);
        super->spritePriority.b0 = 4;
        super->speed = 0x40;
        super->zVelocity = Q_16_16(3.5625);
        super->z.WORD--;
        gPlayerState.jump_status = 0x41;
        sub_0806F854(super, 0, -12);
        PlayerSetNormalAndCollide();
        return;
    }

    if (!AreaIsOverworld()) {
        sub_08004542(super);
    }
    super->subAction++;

    temp <<= 4;
    temp -= 4;
    temp <<= 12;
    super->zVelocity = temp;

    super->speed = kJumpSpeedForward;
    gPlayerState.animation = ANIM_JUMP;
    SoundReq(SFX_PLY_JUMP);
}

static void sub_08072C48(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    if (GravityUpdate(super, kGravityRate))
        return;

    DoTileInteractionHere(super, 7);
    if (gPlayerState.field_0x14) {
        if (PlayerCheckNEastTile()) {
            gPlayerState.surfacePositionSameTimer = 7;
            if (!(gPlayerState.flags & PL_MINISH)) {
                SetPlayerActionNormal();
            }
        }
    } else {
        PlayerSetNormalAndCollide();
    }
}

static void sub_08072C9C(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BBAC[] = {
        sub_08072CC0,
        sub_08072CFC,
        sub_08072D54,
        sub_08072F14,
    };
    gPlayerState.framestate = PL_STATE_11;
    gUnk_0811BBAC[super->subAction](this);
}

static void sub_08072CC0(PlayerEntity* this) {
    super->subAction = 1;
    COLLISION_OFF(super);
    super->subtimer = (gPlayerState.field_0x3a >> 2) + 1;
    super->direction = gPlayerState.field_0x39;
    super->speed = 0x400;
    gPlayerState.animation = ANIM_GUSTJAR_524;
    gPlayerState.heldObject = 0;
}

static void sub_08072CFC(PlayerEntity* this) {
    sub_080042BA(super, 2);
    if (super->subtimer-- != 0) {
        LinearMoveUpdate(super);
        return;
    }

    super->subAction = 2;
    if (gPlayerState.field_0x38 < 8) {
        gPlayerState.field_0x38 = 8;
    }
    super->zVelocity = gPlayerState.field_0x38 << 0xc;
    super->speed = 0x200;
    gPlayerState.animation = ANIM_JUMP;
    super->timer = 5;
    super->subtimer = 0;
    ResetActiveItems();
}

// TODO Why would this use FindValueForKey just to do a normal comparison?
static const KeyValuePair sTiles0 = { 0x1AD, 1 };
static const u16 sTiles0End = 0;
static const KeyValuePair sTiles1 = { 0x1AE, 1 };
static const u16 sTiles1End = 0;
static const KeyValuePair sTiles2 = { 0x1AC, 1 };
static const u16 sTiles2End = 0;
static const KeyValuePair sTiles3 = { 0x1AF, 1 };
static const u16 sTiles3End = 0;

static const KeyValuePair* const sTileTable[] = {
    &sTiles0,
    &sTiles1,
    &sTiles2,
    &sTiles3,
};

static void sub_08072D54(PlayerEntity* this) {
    u32 uVar2;

    UpdateAnimationSingleFrame(super);
    sub_0806F854(super, 0, -12);
    if (super->timer != 0) {
        LinearMoveUpdate(super);
        super->timer--;
    } else {
        uVar2 = GetTileTypeAtTilePos(sub_0806F730(super), super->collisionLayer);
        switch (super->subtimer) {
            case 0:
                if (FindValueForKey(uVar2, sTileTable[gPlayerEntity.base.animationState >> 1])) {
                    super->timer = 1;
                    super->subtimer = 1;
                }
                break;
            case 1:
                if (FindValueForKey(uVar2, sTileTable[gPlayerEntity.base.animationState >> 1])) {
                    super->timer = 1;
                } else {
                    super->subtimer = 2;
                }
                break;
            case 2:
                super->animationState ^= 4;
                if (FindValueForKey(uVar2, sTileTable[gPlayerEntity.base.animationState >> 1]) != 0) {
                    super->timer = 1;
                    super->subtimer = 3;
                }
                super->animationState ^= 4;
                break;
            case 3:
                super->animationState ^= 4;
                if (FindValueForKey(uVar2, sTileTable[gPlayerEntity.base.animationState >> 1])) {
                    super->timer = 1;
                } else {
                    super->subtimer = 4;
                }
                super->animationState ^= 4;
                break;
        }

        if (super->timer != 0) {
            LinearMoveUpdate(super);
        } else {
            UpdatePlayerMovement();
        }
        super->timer = 0;
    }

    if (!GravityUpdate(super, kGravityRate)) {
        COLLISION_ON(super);
        if (super->collisionLayer == 1) {
            ResetCollisionLayer(super);
        } else {
            sub_08004542(super);
        }
        DoTileInteractionHere(super, 7);
        if (gPlayerState.field_0x14 != 0) {
            if (PlayerCheckNEastTile()) {
                gPlayerState.surfacePositionSameTimer = 7;
                if (!(gPlayerState.flags & PL_MINISH)) {
                    SetPlayerActionNormal();
                }
            }
        } else {
            if ((gPlayerState.flags & PL_NO_CAP)) {
                gPlayerState.animation = ANIM_LAND_NOCAP;
            } else {
                gPlayerState.animation = ANIM_LAND;
            }
            super->timer = 6;
            super->subAction = 3;
            super->knockbackDuration = 0;
            SoundReq(SFX_PLY_LAND);
        }
    }
}

static void sub_08072F14(PlayerEntity* this) {
    if (super->timer-- != 0) {
        PlayerSetNormalAndCollide();
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

static void PlayerClimb(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerClimbStates[] = {
        sub_08072F94,
        sub_08073094,
    };

    if (!CheckQueuedAction()) {
        gPlayerState.framestate = PL_STATE_CLIMB;
        gPlayerState.floor_type = GetSurfaceCalcType(super, 0, 0);
        sPlayerClimbStates[super->subAction](this);
        if (super->knockbackDuration != 0) {
            sub_080792D8();
            if (super->knockbackDuration == 0) {
                super->action = PLAYER_CLIMB;
                super->subAction = 0;
                super->y.HALF.LO = 0;
                gPlayerState.animation = ANIM_CLIMB1_UP;
            }
        }
    }
}

static void sub_08072F94(PlayerEntity* this) {
    u32 direction;

    switch (gPlayerState.floor_type) {
        default:
            PlayerSetNormalAndCollide();
            break;
        case SURFACE_LADDER:
        case SURFACE_AUTO_LADDER:
        case SURFACE_CLIMB_WALL:
        case SURFACE_2C:
            super->spritePriority.b1 = 0;
            direction = gPlayerState.direction;
            if ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) == 0) {
                super->direction = gPlayerState.direction;
                if ((gPlayerState.direction == DirectionEast) || (gPlayerState.direction == DirectionWest)) {
                    if (gPlayerState.floor_type == SURFACE_LADDER) {
                        return;
                    }
                    if ((super->frame & 0x10)) {
                        gPlayerState.animation = ANIM_CLIMB_LEFT;
                    } else {
                        gPlayerState.animation = ANIM_CLIMB_RIGHT;
                    }
                    sub_08073094(this);
                } else {
                    if ((gPlayerState.floor_type == SURFACE_LADDER) && ((direction & (DIR_DIAGONAL | 0x3)) != 0)) {
                        super->direction = (direction + 8) & DirectionSouth;
                    }
                    if (super->direction & DirectionSouth) {
                        if (super->frame & 0x10) {
                            gPlayerState.animation = ANIM_CLIMB1_DOWN;
                        } else {
                            gPlayerState.animation = ANIM_CLIMB2_DOWN;
                        }
                    } else {
                        if (super->frame & 0x10) {
                            gPlayerState.animation = ANIM_CLIMB1_UP;
                        } else {
                            gPlayerState.animation = ANIM_CLIMB2_UP;
                        }
                    }
                }
                super->subAction++;
            } else {
                if (super->frame & 0x10) {
                    gPlayerState.animation = ANIM_CLIMB_LEFT;
                } else {
                    gPlayerState.animation = ANIM_CLIMB_RIGHT;
                }
            }
            break;
    }
}

static void sub_08073094(PlayerEntity* this) {
    static const u16 sSpeeds[] = {
        0x0, 0x40, 0x60, 0x80, 0x100, 0xC0,
    };

    super->spritePriority.b1 = 0;
    super->speed = sSpeeds[super->frame & 0xf];
    UpdatePlayerMovement();
    if (!UpdatePlayerCollision()) {
        gPlayerState.pushedObject ^= 0x80;
        if ((gPlayerState.floor_type != SURFACE_AUTO_LADDER) && (gPlayerState.floor_type != SURFACE_2C)) {
            UpdateFloorType();
        }

        if (CheckQueuedAction() == 0) {
            switch (gPlayerState.floor_type) {
                case SURFACE_AUTO_LADDER:
                case SURFACE_2C:
                    super->knockbackDuration = 0;
                    gPlayerState.flags |= PL_CLIMBING;
                    UpdateAnimationSingleFrame(super);
                    if (super->frame & 0x40) {
                        UpdateFloorType();
                        if (!CheckQueuedAction()) {
                            super->subAction--;
                        }
                    }
                    break;
                case SURFACE_WATER:
                    sub_08074808(this);
                    ResetPlayerAnimationAndAction();
                    break;
                default:
                    PlayerSetNormalAndCollide();
                    break;
                case SURFACE_LADDER:
                case SURFACE_CLIMB_WALL:
                    UpdateAnimationSingleFrame(super);
                    if (super->frame & 0x40) {
                        UpdateFloorType();
                        if (!CheckQueuedAction()) {
                            super->subAction--;
                        }
                    }
                    break;
            }
        }
    }
}

static void PlayerUseEntrance(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerUseEntranceStates[] = {
        PlayerUseStairs,
        sub_080732D0,
        sub_0807332C,
        sub_080733BC,
    };

    gPlayerState.framestate = PL_STATE_STAIRS;
    RequestPriorityDuration(NULL, 8);
    sPlayerUseEntranceStates[super->subAction](this);
}

static void PlayerUseStairs(PlayerEntity* this) {
    COLLISION_OFF(super);
    super->speed = 0x40;
    super->animationState = IdleNorth;
    super->x.HALF.HI = (super->x.HALF.HI & ~0xF) | 8;
    super->x.HALF.LO = 0;
    if (gPlayerState.field_0x38 == 0) {
        super->subAction = 1;
    } else {
        super->spriteSettings.draw = 3;
        super->subAction = 3;
        this->unk_7c.HALF.HI = super->y.HALF.HI;
        super->y.HALF.HI -= 16;
        super->child = CreateObjectWithParent(super, OBJECT_70, 1, 0);
        if (gPlayerState.field_0x39 == 7) {
            super->y.HALF.HI = (super->y.HALF.HI & ~0xF) + 8;
            super->x.HALF.HI &= ~0xF;
            super->direction = DirectionEast;
            super->animationState = IdleEast;
            SoundReq(SFX_STAIRS_ASCEND);
        } else {
            super->y.HALF.HI = (super->y.HALF.HI & ~0xF) + 2;
            super->x.HALF.HI = (super->x.HALF.HI & ~0xF) + 15;
            super->direction = DirectionWest;
            super->animationState = IdleWest;
            SoundReq(SFX_STAIRS_DESCEND);
        }
        SetZeldaFollowTarget(super);
    }
    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = ANIM_WALK_NOCAP;
    } else {
        gPlayerState.animation = ANIM_WALK;
    }
    gRoomControls.camera_target = NULL;
    DeleteClones();
    ResetActiveItems();
}

static void sub_080732D0(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (GetActTileAtEntity(super) != ACT_TILE_40) {
        super->direction = DirectionNorth;
        LinearMoveUpdate(super);
    } else {
        super->subAction++;
        super->y.HALF.LO = 0;
        CreateObjectWithParent(super, OBJECT_70, 1, 0);
        if (gPlayerState.field_0x39 == 7) {
            SoundReq(SFX_STAIRS_ASCEND);
        } else {
            SoundReq(SFX_STAIRS_DESCEND);
        }
    }
}

static void sub_0807332C(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (gPlayerState.field_0x39 == 7) {
        super->direction = IdleNorth;
    } else {
        super->direction = DirectionNorthWest;
    }
    if ((super->x.HALF.HI & 0xF) != 0xF) {
        if (gPlayerState.field_0x39 == 7) {
            super->animationState = IdleEast;
            super->direction = DIR_DIAGONAL;
        } else {
            super->animationState = IdleWest;
            if (super->direction <= DirectionWest) {
                LinearMoveUpdate(super);
                return;
            }
            super->direction = (super->direction - 1) &
                               (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest);
        }
        LinearMoveUpdate(super);
        return;
    }
    if (gPlayerState.field_0x38 != 0) {
        gRoomControls.camera_target = super;
        SetPlayerActionNormal();
    } else {
        gMain.substate = GAMEMAIN_CHANGEAREA;
        gMain.pad = 1;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    }
}

static void sub_080733BC(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->x.HALF.HI & 0xF) == 8) {
        Entity* c;
        super->direction = DirectionSouth;
        super->animationState = IdleSouth;
        c = super->child;
        if (c != NULL) {
            DeleteEntity(c);
            super->child = NULL;
            if (super->collisionLayer == 1) {
                sub_0807AABC(super);
            } else {
                sub_0807AA80(super);
            }
        }
    }
    LinearMoveUpdate(super);
    if (this->unk_7c.HALF_U.HI == super->y.HALF.HI) {
        gRoomControls.camera_target = super;
        PlayerSetNormalAndCollide();
    }
}

static void PlayerParachute(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerParachuteStates[] = {
        sub_08073468, sub_080734D4, sub_08073504, sub_08073584, sub_0807379C, sub_080737BC, sub_0807380C, sub_08073884,
    };

    if (!CheckQueuedAction()) {
        UpdateFloorType();
        super->spriteOrientation.flipY = 1;
        super->spriteRendering.b3 = 1;
        gPlayerState.framestate = PL_STATE_PARACHUTE;
        sPlayerParachuteStates[super->subAction](this);
    }
}

static void sub_08073468(PlayerEntity* this) {
    gPlayerState.animation = ANIM_PARACHUTE_ACTIVATE;
    gPlayerState.jump_status = 0;
    super->zVelocity = Q_16_16(-1.0);
    super->subAction++;
    this->unk_7c.WORD = 480;
    super->direction = Direction8FromAnimationState(super->animationState);
    if ((gPlayerState.flags & PL_PARACHUTE) == 0) {
        gPlayerState.flags |= PL_PARACHUTE;
        CreateObjectWithParent(super, EZLO_CAP_FLYING, 0, 0);
    }
    ResetActiveItems();
    if (super->zVelocity > 0 || gPlayerState.field_0x38 == 1)
        COLLISION_OFF(super);
}

static void sub_080734D4(PlayerEntity* this) {
    GravityUpdate(super, -(kGravityRate / 2));
    if (super->zVelocity > 0 || gPlayerState.field_0x38 == 1) {
        super->zVelocity = Q_16_16(4.5625);
        super->subAction++;
    }
}

static void sub_08073504(PlayerEntity* this) {
    GravityUpdate(super, super->zVelocity < 0 ? kGravityRate / 4 : kGravityRate * 2);
    if (super->zVelocity < 0 && super->z.HALF.HI > -32) {
        super->subAction++;
        this->unk_80.WORD = super->direction << 8;
        this->unk_84.BYTES.byte3 = 0;
        this->unk_84.BYTES.byte2 = 0;
        gPlayerState.animation = ANIM_PARACHUTE;
        if (gPlayerState.field_0x38 == 1) {
            COLLISION_OFF(super);
            super->subAction = 6;
            super->speed = 16;
            super->timer = 30;
            SoundReq(SFX_NEAR_PORTAL);
        }
    }
    UpdateAnimationSingleFrame(super);
}

static void sub_08073584(PlayerEntity* this) {
    u32 state, dir, idx;

    if ((gPlayerState.playerInput.newInput & INPUT_ACTION) || super->iframes > 0 || gPlayerState.killed ||
        (gPlayerState.flags & PL_PARACHUTE) == 0) {
        gPlayerState.jump_status |= 0x40;
        PlayerSetNormalAndCollide();
        DoJump(this);
        gPlayerState.animation = ANIM_PARACHUTE_FALL;
        return;
    }

    gHUD.rActionPlayerState = R_ACTION_CANCEL;
    if (sub_0807A2F8(0)) {
        super->subAction++;
        super->direction = 4 * (super->animationState & IdleWest);
        COLLISION_OFF(super);
        return;
    }

    if (gArea.locationIndex == 16) // AREA_CLOUD_TOPS
        super->speed = 0x100;
    else
        super->speed = 0x80;

    if ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) == 0) {
        if (super->direction != gPlayerState.direction) {
            if (((super->direction - gPlayerState.direction) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast |
                                                                DirectionSouth | DirectionWest)) < DirectionSouth)
                this->unk_80.WORD_U -= 0x20;
            else
                this->unk_80.WORD_U += 0x20;
        }
    }
    super->direction = (this->unk_80.WORD_U >> 8) &
                       (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest);
    UpdatePlayerMovement();
    state = 4 * super->animationState;
    dir = super->direction;
    if (super->animationState == IdleNorth) {
        state = (state + 8) & 0x1F;
        dir = (dir + 8) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest);
    }

    if (state - 7 > dir) {
        state = (super->animationState - 2) & 7;
    } else if (state + 7 < dir) {
        state = (super->animationState + 2) & 7;
    } else {
        state = super->animationState;
    }

    if (state != super->animationState) {
        this->unk_84.BYTES.byte3 = 20;
    }

    super->animationState = state;
    idx = 0;
    state = gPlayerState.direction >> 2;
    if (!this->unk_84.BYTES.byte3 ||
        ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) == 0 && super->animationState != state)) {
        static const u16 sAnims1[] = {
            ANIM_PARACHUTE,
            ANIM_PARACHUTE_TURN_LEFT,
            ANIM_PARACHUTE_TURN_OPPOSITE,
            ANIM_PARACHUTE_TURN_RIGHT,
        };

        if (!(gPlayerState.direction & DIR_NOT_MOVING_CHECK)) {
            if (super->animationState != state) {
                if (super->animationState == (state ^ 4)) {
                    idx = 2;
                } else {

                    if (super->animationState == (((state & 6) + 2) & 7)) {
                        idx = 1;
                    } else {
                        idx = 3;
                    }
                }
            }
        }

        if (sAnims1[idx] == gPlayerState.animation) {
            if (gArea.locationIndex == 16) // AREA_CLOUD_TOPS
                sub_080042BA(super, 2);
            else
                UpdateAnimationSingleFrame(super);
        } else {
            gPlayerState.animation = sAnims1[idx];
        }
        this->unk_84.BYTES.byte2 = idx;
    } else {
        static const u16 sAnims2[] = {
            ANIM_PARACHUTE,
            ANIM_PARACHUTE_TURN2_LEFT,
            ANIM_PARACHUTE_TURN2_OPPOSITE,
            ANIM_PARACHUTE_TURN2_RIGHT,
        };

        this->unk_84.BYTES.byte3--;
        if (sAnims2[this->unk_84.BYTES.byte2] == gPlayerState.animation)
            UpdateAnimationSingleFrame(super);
        else
            gPlayerState.animation = sAnims2[this->unk_84.BYTES.byte2];
    }

    if (--this->unk_7c.WORD_U == -1) {
        gPlayerState.jump_status |= 0x40;
        PlayerSetNormalAndCollide();
    } else {
        u32 di = (this->unk_7c.WORD / 20);
        super->z.HALF.HI = -8 - di;
    }
}

static void sub_0807379C(PlayerEntity* this) {
    if (super->z.HALF.HI > -32) {
        super->z.HALF.HI--;
    } else {
        super->subAction++;
    }
}

static void sub_080737BC(PlayerEntity* this) {
    u16 pos;
    u32 tmp;

    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    super->z.WORD += Q_16_16(0.296875);
    if (DirectionIsHorizontal(super->direction))
        pos = super->x.HALF.HI;
    else
        pos = super->y.HALF.HI;
    tmp = 0xf;
    tmp &= pos;
    if (tmp == 8 && GetCollisionDataAtEntity(super) == 0) {
        gPlayerState.jump_status |= 0x40;
        PlayerSetNormalAndCollide();
    }
}

static void sub_0807380C(PlayerEntity* this) {
    static const u16 sAnims[] = {
        ANIM_PARACHUTE,
        ANIM_PARACHUTE_TURN_LEFT,
        ANIM_PARACHUTE_TURN_OPPOSITE,
        ANIM_PARACHUTE_TURN_RIGHT,
    };

    if ((gRoomTransition.frameCount & 3) == 0) {
        u32 tmp = (super->animationState + 2) & IdleWest;
        super->animationState = tmp;
        super->direction = 4 * tmp;
    }
    gPlayerState.animation = sAnims[super->animationState >> 1];
    if (super->z.HALF.HI < -16) {
        GravityUpdate(super, kGravityRate / 16);
    } else {
        if (--super->timer == 0) {
            super->subAction = 7;
            super->timer = 60;
            super->zVelocity = Q_16_16(2.0);
        }
    }
    UpdateAnimationSingleFrame(super);
}

void sub_08073884(PlayerEntity* this) {
    static const u16 sAnims[] = {
        ANIM_PARACHUTE,
        ANIM_PARACHUTE_TURN_LEFT,
        ANIM_PARACHUTE_TURN_OPPOSITE,
        ANIM_PARACHUTE_TURN_RIGHT,
    };

    if ((gRoomTransition.frameCount & 1) == 0) {
        u32 tmp = (super->animationState + 2) & IdleWest;
        super->animationState = tmp;
        super->direction = 4 * tmp;
    }
    gPlayerState.animation = sAnims[super->animationState >> 1];
    if (--super->timer == 0) {
        if (gPlayerState.field_0x39 != 0xff)
            DoExitTransition(&gUnk_0813AD88[gPlayerState.field_0x39]);
        else
            InitParachuteRoom();
    }
    GravityUpdate(super, -((kGravityRate * 3) / 4));
    UpdateAnimationSingleFrame(super);
}

static void DoJump(PlayerEntity* this) {
    static PlayerEntityAction* const sStates[] = {
        sub_08073924, sub_08073968, sub_080739EC, sub_08073A94, sub_08073B8C, sub_08073C30,
    };

    sStates[gPlayerState.jump_status & 7](this);
}

static void sub_08073924(PlayerEntity* this) {
    if (!(gPlayerState.flags & PL_ROLLING) && (super->z.HALF.HI & 0x8000) && !gPlayerState.field_0xa) {
        gPlayerState.jump_status = 0x40;
        gPlayerState.direction = DIR_NONE;
        super->direction = DIR_NONE;
        PutAwayItems();
        sub_08073968(this);
    }
}

static void sub_08073968(PlayerEntity* this) {
    if ((gPlayerState.jump_status & 0xC0) == 0) {
        super->direction = gPlayerState.direction;
    }
    CheckPlayerVelocity();
    if ((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) {
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = ANIM_HOP_NOCAP;
        } else {
            if ((gPlayerState.flags & PL_MINISH) == 0) {
                if (gPlayerState.flags & PL_ENTER_MINECART) {
                    gPlayerState.animation = ANIM_JUMP;
                } else {
                    gPlayerState.animation = ANIM_HOP;
                }
            }
        }
        if ((gPlayerState.jump_status & 0xC0) == 0) {
            sub_0806F948(super);
        }
        SoundReq(SFX_PLY_JUMP);
    }
    gPlayerState.jump_status = (gPlayerState.jump_status & ~7) | 2;
}

static void sub_080739EC(PlayerEntity* this) {
    u32 v;

    if ((gPlayerState.jump_status & 0xC0) != 0) {
        gPlayerState.direction = super->direction;
        if (gPlayerState.jump_status & 0x80)
            super->collisions = COL_NONE;
        v = kGravityRate;
    } else {
        if ((u16)sub_0806F854(super, 0, -12)) {
            gPlayerState.jump_status |= 8;
            v = kGravityRate * 2;
        } else {
            v = kGravityRate;
            if (gPlayerState.jump_status & 0x10)
                v /= 2;
        }
    }
    if ((gPlayerState.jump_status & 0xC0) == 0) {
        if ((gPlayerState.jump_status & 0x20) && super->zVelocity == 0) {
            super->zVelocity = Q_16_16(2.5);
            super->timer = 10;
            super->direction = DIR_NONE;
            gPlayerState.jump_status += 2;
            gPlayerState.animation = ANIM_DOWN_THRUST;
            ResetPlayerVelocity();
            return;
        }
    }
    if (!GravityUpdate(super, v))
        sub_08073AD4(this);
}

void sub_08073A94(PlayerEntity* this) {
    if ((super->frame & ANIM_DONE) || super->knockbackDuration != 0) {
        sub_08073B60(this);
    }
    if (gPlayerEntity.base.z.WORD != 0) {
        gPlayerState.jump_status = 0;
        sub_08073924(this);
    }
}

static void sub_08073AD4(PlayerEntity* this) {
    u32 tmp;

    if ((super->collisionLayer & 2) == 0) {
        super->spriteOrientation.flipY = 2;
        super->spriteRendering.b3 = 2;
    }
    tmp = (gPlayerState.jump_status & ~0xC0);
    if (super->action != PLAYER_MINISHDIE) {
        sub_0807A2B8();
        gPlayerState.jump_status = 0;
        UpdateFloorType();
        if (gPlayerState.queued_action != PLAYER_INIT || gPlayerState.swim_state != 0) {
            return;
        }
        if (gPlayerState.attack_status)
            sub_08073B60(this);
    }
    gPlayerState.jump_status = tmp + 1;
    if (gPlayerState.flags & PL_NO_CAP)
        gPlayerState.animation = ANIM_LAND_NOCAP;
    else
        gPlayerState.animation = ANIM_LAND;
    SoundReq(SFX_PLY_LAND);
}

static void sub_08073B60(PlayerEntity* this) {
    gPlayerState.sword_state = 0;
    gPlayerState.attack_status = 0;
    gPlayerState.jump_status = 0;
    ResolvePlayerAnimation();
    sub_080085B0(super);
    if ((gPlayerState.flags & PL_USE_PORTAL) == 0) {
        SetPlayerActionNormal();
    }
}

void sub_08073B8C(PlayerEntity* this) {
    if (!gPlayerState.attack_status) {
        sub_08073B60(this);
        return;
    }
    sub_0806F854(super, 0, -12);
    if ((super->frame & 1) == 0)
        UpdateAnimationSingleFrame(super);
    COLLISION_OFF(super);
    if (super->timer != 0) {
        --super->timer;
        return;
    }
    GravityUpdate(super, kGravityRate * 2);
    if (super->z.HALF.HI >= -8) {
        if (!gPlayerState.field_0x14 && (sub_0807A2B8() || !sub_08079D48())) {
            COLLISION_ON(super);
            sub_08073B60(this);
            return;
        }
        gPlayerState.jump_status++;
        super->timer = 15;
        InitScreenShake(16, 0);
        SoundReq(SFX_14C);
    }
}

void sub_08073C30(PlayerEntity* this) {
    if (!gPlayerState.attack_status || super->timer-- == 0) {
        sub_08073B60(this);
    } else {
        COLLISION_ON(super);
        UpdateAnimationSingleFrame(super);
    }
}

static void PlayerMinish(PlayerEntity* this) {
    static PlayerEntityAction* const sPlayerMinishStates[] = {
        sub_08073C80, sub_08073D20, sub_08073F04, sub_08073F4C, sub_08073FD0, sub_08074018, sub_08074060, sub_080740D8,
    };
    sPlayerMinishStates[super->subAction](this);
}

static void sub_08073C80(PlayerEntity* this) {
    static const Hitbox sMinishHitbox = { 0, -1, { 3, 2, 2, 3 }, 2, 2 };

    gPlayerState.flags |= PL_MINISH;
    gPlayerState.animation = ANIM_BOUNCE_MINISH;
    super->spriteSettings.draw = 3;
    super->spritePriority.b1 = 3;
    super->spriteSettings.shadow = 0;
    super->spriteRendering.b0 = 0;
    super->hitbox = (Hitbox*)&sMinishHitbox;
    super->timer = 0;
    super->subtimer = 2;
    super->knockbackDuration = 0;
    super->subAction = 1;
    LoadSwapGFX(super, 1, 2);
    gRoomControls.camera_target = super;
    sub_080809D4();
    if (gRoomTransition.player_status.spawn_type == PL_SPAWN_9) {
        gRoomTransition.player_status.spawn_type = PL_SPAWN_DEFAULT;
        super->spriteSettings.draw = 0;
        super->subAction = 2;
    } else {
        CreateObject(MINISH_EMOTICON, 0, 0);
    }
}

static void sub_08073D20(PlayerEntity* this) {
    gPlayerState.framestate = PL_STATE_IDLE;
    super->spritePriority.b1 = 3;
    super->hurtType = 1;
    ResetPlayerVelocity();
    if (!gPlayerState.swim_state)
        super->speed = 0xC0; /* todo: shielding speed? */
    if (!sub_08079B24()) {
        sub_08079708(super);
        return;
    }
    if (!CheckQueuedAction()) {
        DoJump(this);
        UpdateFloorType();
        if (gPlayerState.jump_status)
            gPlayerState.framestate = PL_STATE_CAPE;
        if (gPlayerState.floor_type != SURFACE_SHALLOW_WATER && gPlayerState.floor_type != SURFACE_WATER) {
            gPlayerState.swim_state = 0;
            super->collisionFlags &= ~4;
        }
        if (!CheckQueuedAction() && super->subAction != 2) {
            if ((gPlayerState.flags & PL_HIDDEN) == 0) {
                sub_080085B0(super);
                sub_080792D8();
                if (!gPlayerState.field_0xa && sub_08079550())
                    return;
                if (super->knockbackDuration) {
                    super->direction = super->knockbackDirection;
                    return;
                }
                if (sub_080782C0()) {
                    CheckQueuedAction();
                    return;
                }
                COLLISION_ON(super);
            }
            if (!UpdatePlayerCollision()) {
                UpdateActiveItems(super);
                if (!GravityUpdate(super, kGravityRate))
                    gPlayerState.jump_status = 0;
                if ((gPlayerState.field_0x7 & 0x80) == 0 && !gPlayerState.field_0xa) {
                    if (super->iframes <= 8) {
                        if (gPlayerState.swim_state) {
                            gPlayerState.framestate = PL_STATE_SWIM;
                            PlayerSwimming(super);
                            UpdatePlayerMovement();
                        } else {
                            super->direction = gPlayerState.direction;
                            if (!(gPlayerState.direction & DIR_NOT_MOVING_CHECK)) {
                                gPlayerState.framestate = PL_STATE_WALK;
                                UpdatePlayerMovement();
                            }
                        }
                    }
                    if (!gPlayerState.keepFacing)
                        sub_0806F948(super);
                    UpdateAnimationSingleFrame(super);
                    sub_0807B068(super);
                    if (sub_080793E4(16)) {
                        super->iframes = 20;
                        super->knockbackDuration = 4;
                        super->knockbackDirection =
                            DirectionTurnAround(Direction8FromAnimationState(super->animationState));
                        ModHealth(-2);
                        SoundReq(SFX_PLY_VO6);
                    }
                    if ((gPlayerState.flags & PL_HIDDEN) == 0)
                        sub_08008AC6(super);
                    else
                        gPlayerState.framestate = PL_STATE_D;
                }
            }
        }
    }
}

static void sub_08073F04(PlayerEntity* this) {
    super->spritePriority.b1 = 2;
    super->spriteSettings.draw = 0;
    super->subAction++;
    super->zVelocity = Q_16_16(2.5);
    super->speed = 0x100;
    gPlayerState.flags &= ~PL_MINISH;
    ResetActiveItems();
}

static void sub_08073F4C(PlayerEntity* this) {
    u32 x = gArea.portal_x;
    u32 y = gArea.portal_y;
    if (super->x.HALF.HI != x || super->y.HALF.HI != y) {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gArea.portal_x, gArea.portal_y);
        super->speed = 0x100;
        LinearMoveUpdate(super);
    } else {
        COLLISION_OFF(super);
        super->timer = 30;
        super->subAction++;
        super->spriteSettings.flipX = 0;
        this->unk_80.WORD_U = 1152;
        this->unk_84.WORD_U = 1152;
        super->spriteRendering.b0 = 3;
        sub_08074018(this);
        gPlayerState.animation = ANIM_GROW;
    }
}

static void sub_08073FD0(PlayerEntity* this) {
    if (super->timer != 0) {
        if (--super->timer != 0) {
            return;
        }
        if (super->spriteSettings.draw == 0) {
            super->spriteSettings.draw = 3;
            SoundReq(SFX_PLY_JUMP);
        }
    }
    GravityUpdate(super, kGravityRate);
    if (super->zVelocity == 0) {
        super->subAction++;
        SoundReq(SFX_PLY_GROW);
    }
}

static void sub_08074018(PlayerEntity* this) {
    if (this->unk_80.WORD_U > 0x100)
        this->unk_80.WORD_U -= 32;
    if (this->unk_84.WORD_U > 0x100)
        this->unk_84.WORD_U -= 32;
    else
        super->subAction++;
    SetAffineInfo(super, this->unk_80.WORD_U, this->unk_84.WORD_U, 0);
    UpdateAnimationSingleFrame(super);
}

static void sub_08074060(PlayerEntity* this) {
    if (!GravityUpdate(super, kGravityRate)) {
        super->hitbox = (Hitbox*)&gPlayerHitbox;
        super->direction = DirectionSouth;
        super->animationState = IdleSouth;
        super->speed = 0x100;
        super->spritePriority.b1 = 1;
        super->spriteSettings.shadow = 1;
        super->subtimer = 0;
        super->subAction++;
        super->zVelocity = Q_16_16(2.0);
        gPlayerState.animation = ANIM_HOP;
        sub_0805EC60(super);
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

void sub_080740D8(PlayerEntity* this) {
    int y;
    int x;
    u32 dir;

    UpdateAnimationSingleFrame(super);
    if (!super->subtimer)
        dir = super->direction;
    else
        dir = DirectionTurnAround(super->direction);
    switch (dir) {
        case 24:
            x = super->x.HALF.HI - super->hitbox->unk2[0] + super->hitbox->offset_x - gRoomControls.origin_x;
            y = super->y.HALF.HI + super->hitbox->offset_y - gRoomControls.origin_y;
            break;
        case 8:
            x = super->x.HALF.HI + super->hitbox->unk2[0] + super->hitbox->offset_x - gRoomControls.origin_x;
            y = super->y.HALF.HI + super->hitbox->offset_y - gRoomControls.origin_y;
            break;
        case 16:
            x = super->x.HALF.HI + super->hitbox->offset_x - gRoomControls.origin_x;
            y = super->y.HALF.HI + super->hitbox->unk2[3] + super->hitbox->offset_y - gRoomControls.origin_y;
            break;
        case 0:
            x = super->x.HALF.HI + super->hitbox->offset_x - gRoomControls.origin_x;
            y = super->y.HALF.HI - super->hitbox->unk2[3] + super->hitbox->offset_y - gRoomControls.origin_y;
            break;
    }

    if (sub_080086B4(x, y, gUnk_080082DC))
        LinearMoveUpdate(super);
    else
        super->subtimer = 1;
    if (!GravityUpdate(super, kGravityRate))
        PlayerSetNormalAndCollide();
}

u32 sub_080741C4(void) {
    if ((gPlayerState.jump_status && (gPlayerState.jump_status & 7) != 3) || gPlayerEntity.base.z.WORD != 0) {
        gPlayerState.surfacePositionSameTimer = 0;
        gPlayerState.surfaceTimer = 0;
        return 1;
    }
    return 0;
}

void SurfaceAction_DoNothing(PlayerEntity* this) {
}

void SurfaceAction_Pit(PlayerEntity* this) {
    if (!sub_080741C4() && sub_08079C30(super)) {
        if (super->action != PLAYER_FALL) {
            ResetActiveItems();
            gPlayerState.queued_action = PLAYER_FALL;
        }
    }
}

void SurfaceAction_SlopeGndGndVertical(PlayerEntity* this) {
    sub_08074244(this, DirectionEast, DirectionWest);
}

void SurfaceAction_SlopeGndGndHorizontal(PlayerEntity* this) {
    sub_08074244(this, DirectionNorth, DirectionSouth);
}

static void sub_08074244(PlayerEntity* this, u32 a1, u32 a2) {
    if (gPlayerState.floor_type != SURFACE_LIGHT_GRADE && gPlayerState.floor_type != SURFACE_29) {
        super->collisionLayer = 3;
        super->spriteOrientation.flipY = 1;
        super->spriteRendering.b3 = 1;
    }
    if (!sub_080741C4()) {
        u32 tmp;
        if (gPlayerState.dash_state == 0) {
            tmp = gPlayerState.direction;
        } else {
            tmp = 4 * super->animationState;
        }
        if (a1 != tmp || a2 != tmp) {
            gPlayerState.speed_modifier -= kWalkSpeedSlopeSubtractor;
        }
    }
}

void SurfaceAction_6(PlayerEntity* this) {
    if (gPlayerState.swim_state != 0) {
        gPlayerState.swim_state = 0;
    }
    super->spritePriority.b0 = 4;
    super->collisionFlags &= ~4;
}

void SurfaceAction_7(PlayerEntity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0 && gPlayerState.surfacePositionSameTimer == 15) {
        CreateObjectWithParent(super, CRACKING_GROUND, 0, 0);
    }
}

void SurfaceAction_MinishDoorFront(PlayerEntity* this) {
    if ((super->y.HALF.HI & 0xF) <= 0xD) {
        super->collisions = COL_EAST_FULL | COL_WEST_FULL;
        hide(this);
    } else {
        EnablePlayerDraw(super);
    }
}

void SurfaceAction_MinishDoorBack(PlayerEntity* this) {
    if ((super->y.HALF.HI & 0xF) > 1) {
        super->collisions = COL_EAST_FULL | COL_WEST_FULL;
        hide(this);
    } else {
        EnablePlayerDraw(super);
    }
}

void SurfaceAction_A(PlayerEntity* this) {
    if ((super->x.HALF.HI & 0xF) < 12) {
        super->collisions = COL_NORTH_FULL | COL_SOUTH_FULL;
        hide(this);
    } else {
        EnablePlayerDraw(super);
    }
}

void SurfaceAction_B(PlayerEntity* this) {
    if ((super->x.HALF.HI & 0xF) > 4) {
        super->collisions = COL_NORTH_FULL | COL_SOUTH_FULL;
        hide(this);
    } else {
        EnablePlayerDraw(super);
    }
}

static void hide(PlayerEntity* this) {
    gPlayerState.flags |= PL_HIDDEN;
    super->type2 = 0x80;
    super->spriteSettings.draw = 0;
    COLLISION_OFF(super);
    super->knockbackDuration = 0;
    ResetActiveItems();
}

void SurfaceAction_14(PlayerEntity* this) {
    if (!sub_080741C4()) {
        if (sub_08079C30(super)) {
            u32 spd;
            sub_0807AABC(super);
            sub_08074808(this);
            spd = super->speed;
            super->speed = 0x300;
            super->direction = DirectionSouth;
            gPlayerState.field_0xa |= 0x80;
            LinearMoveUpdate(super);
            super->speed = spd;
        }
    }
}

void SurfaceAction_CloneTile(PlayerEntity* this) {
    if (gPlayerState.chargeState.action == 4) {
        u32 item, n, i;
        if (ItemIsSword(gSave.stats.equipped[SLOT_A])) {
            item = gSave.stats.equipped[SLOT_A];
        } else {
            item = gSave.stats.equipped[SLOT_B];
        }
        switch (item) {
            case 1:
            case 2:
                n = 0;
                break;
            case 3:
                n = 1;
                break;
            case 4:
                n = 2;
                break;
            case 6:
                n = 3;
                break;
            default:
                //! @bug: n is not initialized
                break;
        }
        for (i = 0; i < n; ++i) {
            if (gPlayerClones[i] == 0)
                break;
        }
        if (n > i) {
            Entity* e = CreateObjectWithParent(super, PLAYER_CLONE, i, 0);
            gPlayerClones[i] = e;
            if (e != NULL) {
                CopyPosition(super, e);
            }
        } else {
            gPlayerState.sword_state |= 0x80;
            gPlayerState.flags |= PL_CLONING;
            super->x.WORD = (super->x.WORD & ~0xFFFFF) | 0x80000;
            super->y.WORD = (super->y.WORD & ~0xFFFFF) | 0x80000;
            ResetLantern();
        }
    }
}

void SurfaceAction_16(PlayerEntity* this) {
    if (!sub_080741C4() && !gPlayerState.field_0x14) {
        if (super->iframes == 0) {
            ModHealth(-2);
            SoundReq(SFX_PLY_VO6);
            super->iframes = 24;
            super->knockbackDuration = 4;
            super->knockbackDirection = CalculateDirectionTo(
                (super->x.HALF.HI & 0xFFF0) | 8, (super->y.HALF.HI & 0xFFF0) | 8, super->x.HALF.HI, super->y.HALF.HI);
        }
        if ((gPlayerState.flags & PL_MINISH) == 0)
            DoTileInteractionHere(super, 7);
    }
}

void SurfaceAction_Ice(PlayerEntity* this) {
    if (!sub_080741C4() && ((gPlayerState.field_0x35 & 0x80) == 0 || super->knockbackDuration != 0)) {
        ResetPlayerVelocity();
    }
}

void SurfaceAction_ShallowWater(PlayerEntity* this) {
    if (!sub_080741C4()) {
        if (gPlayerState.flags & PL_MINISH) {
            super->spritePriority.b1 = 0;
            SurfaceAction_Water(this);
        } else {
            if (gPlayerState.swim_state) {
                COLLISION_ON(super);
                super->collisionFlags &= ~4;
                super->spritePriority.b0 = 4;
                gPlayerState.swim_state = 0;
            }
            if ((gPlayerState.playerInput.newInput & INPUT_ANY_DIRECTION) || gPlayerState.surfacePositionSameTimer == 1)
                SoundReq(SFX_WATER_WALK);
        }
    }
}

void SurfaceAction_SlopeGndWater(PlayerEntity* this) {
    if (gPlayerState.swim_state) {
        COLLISION_ON(super);
        super->collisionFlags &= ~4;
        super->spritePriority.b0 = 4;
        gPlayerState.swim_state = 0;
    }
}

void SurfaceAction_Swamp(PlayerEntity* this) {
    if (sub_080741C4()) {
        gPlayerState.surfacePositionSameTimer = 0;
        gPlayerState.surfaceTimer = 0;
        return;
    }

    if (super->health) {
        if (sub_08079C30(super) == 0) {
            gPlayerState.surfacePositionSameTimer = 0;
            gPlayerState.surfaceTimer = 0;
            return;
        }
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            if (gPlayerState.dash_state) {
                if ((gPlayerState.dash_state & 0x40) != 0) {
                    gPlayerState.surfacePositionSameTimer = 0;
                    gPlayerState.surfaceTimer = 0;
                    return;
                }
            } else {
                PutAwayItems();
            }

            if (gPlayerState.surfaceTimer == 1) {
                CreateObjectWithParent(super, OBJECT_70, 0, 0);
                CreateFx(super, FX_GREEN_SPLASH, 0);
                SoundReq(SFX_161);
            } else if ((gPlayerState.playerInput.newInput & INPUT_ANY_DIRECTION) != 0) {
                SoundReq(SFX_161);
            } else if ((gRoomTransition.frameCount & 0xf) == 0) {
                SoundReq(SFX_161);
            }
            gPlayerState.speed_modifier -= 0xf0;
            gPlayerState.framestate = PL_STATE_SINKING;
            if (gPlayerState.surfaceTimer < 0xf0) {
                gPlayerState.spriteOffsetY = gPlayerState.spriteOffsetY + 4 + (gPlayerState.surfaceTimer >> 5);
                return;
            }
        }
    }
    gPlayerState.flags &= ~PL_ROLLING;
    CreateFx(super, FX_GREEN_SPLASH, 0);
    super->iframes = 0x20;
    ModHealth(-4);
    RespawnPlayer();
}

void SurfaceAction_Water(PlayerEntity* this) {
    if (!sub_080741C4()) {
        if (gPlayerState.field_0x14 == 0) {
            gPlayerState.spriteOffsetY += 2;
        } else {
            gPlayerState.swim_state = 0;
            super->spritePriority.b0 = 4;
            super->collisionFlags &= ~4;
        }
        if ((gPlayerState.swim_state & 0xF) || sub_08079C30(super)) {
            sub_08074808(this);
        }
    }
}

static void sub_08074808(PlayerEntity* this) {
    ResetLantern();
    if (GetInventoryValue(ITEM_FLIPPERS) == 1) {
        if (!gPlayerState.swim_state) {
            if ((gPlayerState.flags & PL_FLAGS10000) != 0)
                gPlayerState.swim_state = 1;
            else
                gPlayerState.swim_state = 8;
            super->speed = 0;
            gPlayerState.remainingDiveTime = 0;
            if ((gPlayerState.flags & PL_MINISH) == 0)
                CreateFx(super, FX_WATER_SPLASH, 0);
            SoundReq(SFX_1A5);
            ResetActiveItems();
        }
        if ((gPlayerState.swim_state & 0xF) != 1) {
            sub_08079744(super);
            gPlayerState.swim_state--;
        }
        gPlayerState.flags &= ~(PL_BURNING | PL_FROZEN);
        if ((gPlayerState.flags & PL_DRUGGED) != 0 && this->unk_7a <= 0xEu)
            this->unk_7a = 15;
    } else {
        gPlayerState.queued_action = PLAYER_DROWN;
    }
}

void SurfaceAction_Button(PlayerEntity* this) {
    gPlayerState.spriteOffsetY -= 2;
}

void sub_080748D4(void) {
    sub_080741C4();
}

void SurfaceAction_1B(PlayerEntity* this) {
    if (!sub_080741C4()) {
        if (super->collisionLayer != 1) {
            super->y.HALF.HI += 12;
            if ((gPlayerState.flags & PL_MINISH) == 0)
                super->z.HALF.HI -= 12;
        }
        sub_0807AABC(super);
    }
}

void SurfaceAction_1C(PlayerEntity* this) {
    if (!sub_080741C4()) {
        if (sub_08079C30(super)) {
            gPlayerState.queued_action = PLAYER_LAVA;
        }
    }
}

void SurfaceAction_ClimbWall(PlayerEntity* this) {
    if (GetInventoryValue(ITEM_GRIP_RING) == 1) {
        SurfaceAction_Ladder(this);
    } else {
        super->y.HALF.HI = (super->y.HALF.HI & 0xFFF0) | 0xF;
        gPlayerState.floor_type = SURFACE_NORMAL;
    }
}

void SurfaceAction_Ladder(PlayerEntity* this) {
    if (!sub_080741C4()) {
        gPlayerState.jump_status = 0;
        super->spriteRendering.b3 = 1;
        super->spriteOrientation.flipY = 1;
        super->animationState = IdleNorth;
        super->collisionLayer = 3;
        ResetActiveItems();
    }
}

void SurfaceAction_2C(PlayerEntity* this) {
    if (GetInventoryValue(ITEM_GRIP_RING) == 1) {
        SurfaceAction_AutoLadder(this);
    } else {
        super->y.HALF.HI &= 0xFFF0;
        gPlayerState.floor_type = SURFACE_NORMAL;
    }
}

void SurfaceAction_AutoLadder(PlayerEntity* this) {
    if (!sub_080741C4()) {
        super->spriteRendering.b3 = 1;
        super->spriteOrientation.flipY = 1;
        super->animationState = IdleNorth;
        super->collisionLayer = 3;
        gPlayerState.swim_state = 0;
        super->collisionFlags &= ~4;
        if ((super->y.HALF.HI & 0xF) <= 7) {
            gPlayerState.animation = ANIM_CLIMB_FROM_TOP;
            super->direction = DirectionSouth;
        } else {
            gPlayerState.animation = ANIM_CLIMB_TO_TOP;
            super->direction = DirectionNorth;
        }
        ResetActiveItems();
    }
}

void SurfaceAction_20(PlayerEntity* this) {
    if (gPlayerState.swim_state & 0x80) {
        Entity* e = CreateObjectWithParent(&gPlayerEntity.base, GROUND_ITEM, ITEM_RUPEE1, 0);
        if (e != NULL) {
            e->timer = 1;
            UpdateSpriteForCollisionLayer(e);
            CloneTile(TILE_TYPE_57, gPlayerState.tilePos, super->collisionLayer);
        }
    }
    SurfaceAction_Water(this);
}

void SurfaceAction_22(PlayerEntity* this) {
}

void SurfaceAction_Dust(PlayerEntity* this) {
    if (!sub_080741C4()) {
        gPlayerState.speed_modifier -= 128;
        if (gPlayerState.surfacePositionSameTimer == 1 ||
            (gPlayerState.playerInput.newInput & INPUT_ANY_DIRECTION) != 0) {
            if (gPlayerState.floor_type == SURFACE_DUST)
                CreateObjectWithParent(super, DIRT_PARTICLE, 1, 0);
            else
                CreateObjectWithParent(super, DIRT_PARTICLE, 1, 1);
        }
    }
}

void SurfaceAction_26(PlayerEntity* this) {
    u32 v1;

    if (gPlayerState.dash_state == 0)
        v1 = gPlayerState.direction;
    else
        v1 = 4 * super->animationState;
    sub_08074244(this, v1, v1);
}

void SurfaceAction_Hole(PlayerEntity* this) {
    if (!gPlayerState.field_0x14 && !sub_080741C4()) {
        if (gPlayerState.flags & PL_MINISH)
            SurfaceAction_Pit(this);
        else
            gPlayerState.queued_action = PLAYER_INHOLE;
    }
}

void SurfaceAction_ConveyerNorth(PlayerEntity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        super->animationState = IdleNorth;
        super->direction = DirectionNorth;
        conveyer_push(this);
    }
}

void SurfaceAction_ConveyerSouth(PlayerEntity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        super->animationState = IdleSouth;
        super->direction = DirectionSouth;
        conveyer_push(this);
    }
}

void SurfaceAction_ConveyerWest(PlayerEntity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        super->animationState = IdleWest;
        super->direction = DirectionWest;
        conveyer_push(this);
    }
}

void SurfaceAction_ConveyerEast(PlayerEntity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        super->animationState = IdleEast;
        super->direction = DirectionEast;
        conveyer_push(this);
    }
}

static void conveyer_push(PlayerEntity* this) {
    ResetActiveItems();
    super->spritePriority.b1 = 0;
    super->speed = kWalkSpeed;
    gPlayerState.flags |= PL_CONVEYOR_PUSHED;
    gPlayerState.field_0xa |= 0x80;
    gPlayerState.mobility |= 0x80;
    gPlayerState.field_0x27[0]++;
    LinearMoveUpdate(super);
}

static void PlayerSleep(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BC88[] = {
        sub_08074C68,
        sub_08074CF8,
        sub_08074F00,
        sub_080750F4,
    };

    if (!CheckQueuedAction())
        gUnk_0811BC88[super->subAction](this);
}

static void sub_08074C68(PlayerEntity* this) {
    this->unk_68.BYTES.byte0 = 0;
    if (gPlayerState.field_0x38 != 1) {
        if (*(ScriptExecutionContext**)&this->unk_84.WORD == &gPlayerScriptExecutionContext) {
            super->subAction = 1;
            sub_0807DD64(super);
            sub_08074CF8(this);
        }
    } else {
        super->spriteSettings.draw = 1;
        super->animationState = IdleNorth;
        super->spritePriority.b1 = 0;
        super->subAction = 2;
        this->unk_68.BYTES.byte0 = 1;
        sub_0807DD64(super);
        if (!gPlayerState.field_0x39)
            gPlayerState.animation = ANIM_SLEEP_NOCAP;
        else
            gPlayerState.animation = ANIM_SLEEP;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
    }
}

static void sub_08074CF8(PlayerEntity* this) {
    u32 v3;

    v3 = super->animationState;
    ExecuteScript(super, *(ScriptExecutionContext**)&this->unk_84.WORD);
    sub_08074D34(this, *(ScriptExecutionContext**)&this->unk_84.WORD);
    if ((this->unk_80.HALF.HI & 1) != 0)
        super->animationState = v3;
    GravityUpdate(super, kGravityRate);
    UpdateAnimationSingleFrame(super);
}

void sub_08074D34(PlayerEntity* this, ScriptExecutionContext* ctx) {
    while (ctx->postScriptActions) {
        u32 bit = (~ctx->postScriptActions + 1) & ctx->postScriptActions;
        ctx->postScriptActions ^= bit;
        switch (bit) {
            default:
                break;
            case 0x1:
                if (gPlayerState.flags & PL_NO_CAP)
                    gPlayerState.animation = ANIM_DEFAULT_NOCAP;
                else
                    gPlayerState.animation = ANIM_DEFAULT;
                break;
            case 0x2:
                if (gPlayerState.flags & PL_NO_CAP)
                    gPlayerState.animation = ANIM_WALK_NOCAP;
                else
                    gPlayerState.animation = ANIM_WALK;
                break;
            case 0x4:
                break;
            case 0x8:
                if (gPlayerState.flags & PL_NO_CAP)
                    gPlayerState.animation = ANIM_HOP_NOCAP;
                else
                    gPlayerState.animation = ANIM_HOP;
                super->zVelocity = Q_16_16(1.5);
                break;
            case 0x10:
                CreateSpeechBubbleExclamationMark(super, 8, -24);
                break;
            case 0x20:
                CreateSpeechBubbleQuestionMark(super, 8, -24);
                break;
            case 0x80:
                super->spriteSettings.draw = 1;
                break;
            case 0x100:
                super->spriteSettings.draw = 0;
                break;
            case 0x200:
                this->unk_80.HALF_U.HI = 0;
                break;
            case 0x1000:
                this->unk_80.HALF_U.HI &= ~1;
                break;
            case 0x2000:
                this->unk_80.HALF_U.HI |= 1;
                break;
            case 0x4000:
                this->unk_80.HALF_U.HI |= 8;
                break;
            case 0x8000:
                this->unk_80.HALF_U.HI |= 4;
                break;
            case 0x20000:
                super->spriteSettings.flipX ^= 1;
                break;
            case 0x100000:
                super->subAction = 2;
                this->unk_68.BYTES.byte0 = 2;
                break;
            case 0x200000:
                super->subAction = 3;
                this->unk_68.BYTES.byte0 = 0;
                break;
        }
    }
}

static void sub_08074F00(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BC98[] = {
        sub_08074F1C, sub_08074F2C, sub_08074F44, sub_08074F8C, sub_08074FEC, sub_0807501C, sub_0807508C,
    };

    gUnk_0811BC98[this->unk_68.BYTES.byte0](this);
}

void sub_08074F1C(PlayerEntity* this) {
    this->unk_68.BYTES.byte0 = 1;
    super->animationState = IdleNorth;
}

void sub_08074F2C(PlayerEntity* this) {
    ExecuteScript(super, *(ScriptExecutionContext**)&this->unk_84.WORD);
    sub_08074D34(this, *(ScriptExecutionContext**)&this->unk_84.WORD);
}

void sub_08074F44(PlayerEntity* this) {
    typedef struct {
        u8 fill[0x6c];
        Entity* e;
    } fixme;

    this->unk_68.BYTES.byte0++;
    if (((fixme*)&gPlayerEntity.base)->e)
        DeleteEntity(((fixme*)&gPlayerEntity.base)->e);
    if (!gPlayerState.field_0x39) {
        gPlayerState.animation = ANIM_WAKEUP_NOCAP;
        gPlayerState.flags |= PL_NO_CAP;
    } else {
        gPlayerState.animation = ANIM_WAKEUP;
    }
}

void sub_08074F8C(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame == 1) {
        super->frame = 0;
        gActiveScriptInfo.syncFlags |= 4;
    }
    if (super->frame & ANIM_DONE) {
        this->unk_68.BYTES.byte0++;
        super->timer = 8;
        super->animationState = IdleSouth;
        if (!gPlayerState.field_0x39) {
            gPlayerState.animation = ANIM_DEFAULT_NOCAP;
        } else {
            gPlayerState.animation = ANIM_DEFAULT;
        }
    }
}

void sub_08074FEC(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (--super->timer == 0) {
        this->unk_68.BYTES.byte0++;
        super->timer = 4;
        super->animationState = gPlayerState.field_0x3a;
    }
}

void sub_0807501C(PlayerEntity* this) {
    if (--super->timer == 0) {
        super->animationState = gPlayerState.field_0x3a;
        if (!gPlayerState.field_0x39) {
            gPlayerState.animation = ANIM_HOP_NOCAP;
        } else {
            gPlayerState.animation = ANIM_HOP;
        }
        super->spritePriority.b1 = 1;
        super->direction = Direction8FromAnimationState(super->animationState);
        super->speed = 200;
        super->zVelocity = Q_16_16(2.0);
        super->timer = 8;
        this->unk_68.BYTES.byte0++;
        SoundReq(SFX_PLY_JUMP);
    }
}

void sub_0807508C(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (GravityUpdate(super, kGravityRate)) {
        LinearMoveUpdate(super);
    } else {
        if (!gPlayerState.field_0x39) {
            gPlayerState.animation = ANIM_DEFAULT_NOCAP;
        } else {
            gPlayerState.flags &= ~PL_NO_CAP;
            gPlayerState.animation = ANIM_DEFAULT;
        }
        if (--super->timer == 0) {
            super->animationState = IdleSouth;
            super->subAction = 1;
            this->unk_68.BYTES.byte0 = 0;
            SoundReq(SFX_PLY_LAND);
        }
    }
}

void sub_080750F4(PlayerEntity* this) {
    static PlayerEntityAction* const gUnk_0811BCB4[] = {
        sub_08075110,
        sub_0807513C,
        sub_0807518C,
        sub_080751B4,
    };
    gUnk_0811BCB4[this->unk_68.BYTES.byte0](this);
}

void sub_08075110(PlayerEntity* this) {
    this->unk_68.BYTES.byte0++;
    super->subtimer = super->animationState;
    super->animationState = IdleNorth;
    gPlayerState.animation = ANIM_PUT_ON_EZLO;
    gPlayerState.flags &= ~PL_NO_CAP;
}

void sub_0807513C(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame == 1) {
        super->frame = 0;
        SoundReq(SFX_PLY_JUMP);
    }
    if (super->frame == 2) {
        super->frame = 0;
        SoundReq(SFX_14B);
        SoundReq(SFX_PLY_VO6);
    }
    if (super->frame & ANIM_DONE) {
        this->unk_68.BYTES.byte0++;
        super->timer = 60;
    }
}

void sub_0807518C(PlayerEntity* this) {
    if (--super->timer == 0) {
        this->unk_68.BYTES.byte0++;
        gPlayerState.animation = ANIM_EZLO_LEAVE_LEFT;
    }
}

void sub_080751B4(PlayerEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        super->animationState = IdleSouth;
        super->subAction = 1;
        this->unk_68.BYTES.byte0 = 0;
        gPlayerState.animation = ANIM_DEFAULT;
    }
}

void sub_080751E8(u32 a1, u32 a2, void* script) {
    Entity* e;
    Entity* e2;

    typedef struct {
        u8 filler[0x84];
        ScriptExecutionContext* ctx;
    } fixme;

    MemClear(&gPlayerScriptExecutionContext, sizeof(ScriptExecutionContext));
    gPlayerScriptExecutionContext.scriptInstructionPointer = script;
    ((fixme*)&gPlayerEntity.base)->ctx = &gPlayerScriptExecutionContext;
    gPlayerState.queued_action = PLAYER_SLEEP;
    gPlayerState.field_0x38 = 1;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x3a = a2;
    gPlayerState.flags |= PL_NO_CAP;
    if (!a1) {
        gPlayerState.field_0x39 = 0;
        script = &script_BedInLinksRoom;
    } else {
        gPlayerState.field_0x39 = 1;
        script = &script_BedAtSimons;
    }
    e = CreateObject(BED_COVER, !gPlayerState.field_0x39 ? 2 : 0, 0);
    if (e != NULL) {
        CopyPosition(&gPlayerEntity.base, e);
        StartCutscene(e, script);
    }
    e2 = CreateSpeechBubbleSleep(&gPlayerEntity.base, -14, -28);
    *(Entity**)&gPlayerEntity.unk_6c = e2;
    if (e2 != NULL) {
        SetEntityPriority(e2, PRIO_NO_BLOCK);
    }
}

void sub_0807529C(PlayerEntity* this) {
    CreateSpeechBubbleQuestionMark(super, 8, -32);
}

void sub_080752AC(PlayerEntity* this, ScriptExecutionContext* ctx) {
    LinearMoveUpdate(super);
    if (!ctx->unk_18) {
        if (GetActTileAtEntity(super) != ACT_TILE_41) {
            ctx->unk_18 = 1;
            ctx->unk_19 = 6;
        }
    } else if (--ctx->unk_19 == 0) {
        return;
    }
    gActiveScriptInfo.commandSize = 0;
}
