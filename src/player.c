#include "global.h"
#include "asm.h"
#include "sound.h"
#include "entity.h"
#include "player.h"
#include "message.h"
#include "common.h"
#include "area.h"
#include "item.h"
#include "save.h"
#include "object.h"
#include "functions.h"
#include "hitbox.h"
#include "game.h"
#include "screen.h"
#include "main.h"

#define GRAVITY_RATE 0x2000
#define SLOPE_SPEED_MODIFIER 0x50

#define WALK_SPEED 0x140
#define ROLL_SPEED 0x200
#define SHIELDING_SPEED 0xC0
#define GUST_JAR_SPEED 0x80
#define SWORD_CHARGE_SPEED 0xE0
#define BURNING_SPEED 0x300

#define JUMP_SPEED_FWD 0x100
/* Jumping out of a hole */
#define JUMP_SPEED_HOLE_FWD 0x78
#define JUMP_SPEED_HOLE_Z 0x1a000
/* Bouncing off a wall */
#define BOUNCE_SPEED_FWD 0x100
#define BOUNCE_SPEED_Z 0x20000

#define PULL_SPEED 0x80
#define PUSH_SPEED 0x80

#define PIT_DAMAGE 0x2

#define DEFAULT_ANIM 0x100

static EntityAction PlayerInit;
static EntityAction PlayerNormal;
// static EntityAction PlayerInit;
static EntityAction PlayerFall;
static EntityAction PlayerJump;
static EntityAction PlayerPush;
static EntityAction PlayerBounce;
static EntityAction sub_08070E9C;
static EntityAction PlayerItemGet;
static EntityAction PlayerMinish;
static EntityAction PlayerMinishDie;
static EntityAction sub_08071DB8;
static EntityAction PlayerEmptyBottle;
static EntityAction PlayerFrozen;
static EntityAction sub_0807204C;
static EntityAction sub_080720DC;
static EntityAction PlayerPull;
static EntityAction PlayerLava;
EntityAction PlayerWarp;
static EntityAction sub_08072454;
static EntityAction PlayerDrown;
static EntityAction PlayerUsePortal;
static EntityAction PlayerTalkEzlo;
static EntityAction PlayerRoomTransition;
static EntityAction PlayerRoll;
static EntityAction PlayerWaitForScroll;
static EntityAction PlayerInHole;
static EntityAction sub_08072C9C;
static EntityAction sub_08074C44;
static EntityAction PlayerClimb;
static EntityAction PlayerUseEntrance;
static EntityAction PlayerParachute;

// PLAYER_FALL
static EntityAction PlayerFallInit;
static EntityAction PlayerFallUpdate;

// PLAYER_BOUNCE
static EntityAction PlayerBounceInit;
static EntityAction PlayerBounceUpdate;
static EntityAction sub_08070E7C;

// PLAYER_08070E9C
static EntityAction sub_08070EDC;
static EntityAction sub_08070f24;

// PLAYER_ITEMGET
static EntityAction PlayerItemGetInit;
static EntityAction PlayerItemGetUpdate;
static EntityAction sub_08071038;

// PLAYER_JUMP
static EntityAction PlayerJumpInit;
static EntityAction sub_08071130;
static EntityAction sub_08071208;

// PLAYER_DROWN
static EntityAction PlayerDrownInit;
static EntityAction sub_080712F0;

// PLAYER_USEPORTAL
static EntityAction PortalJumpOnUpdate;
static EntityAction PortalStandUpdate;
static EntityAction PortalActivateInit;
static EntityAction PortalActivateUpdate;
static EntityAction PortalShrinkInit;
static EntityAction PortalShrinkUpdate;
static EntityAction PortalEnterUpdate;
static EntityAction PortalUnknownUpdate;

// PLAYER_TALKEZLO
static EntityAction PlayerTalkEzloInit;
static EntityAction sub_0807193C;
static EntityAction sub_08071990;
static EntityAction sub_08071A4C;

// PLAYER_PUSH
static EntityAction PlayerPushInit;
static EntityAction PlayerPushUpdate;
static EntityAction sub_08071B60;

// PLAYER_MINISHDIE
static EntityAction PlayerMinishDieInit;
static EntityAction sub_08071CAC;
static EntityAction sub_08071D04;
static EntityAction sub_08071D80;

// PLAYER_08071DB8
static EntityAction sub_08071DD0;
static EntityAction sub_08071E04;
static EntityAction sub_08071E74;

// PLAYER_EMPTYBOTTLE
static EntityAction PlayerEmptyBottleInit;
static EntityAction PlayerEmptyBottleUpdate;

// PLAYER_FROZEN
static EntityAction PlayerFrozenInit;
static EntityAction PlayerFrozenUpdate;

// PLAYER_0807204C
static EntityAction sub_08072064;
static EntityAction sub_08072098;

// PLAYER_080720DC
static EntityAction sub_08072100;
static EntityAction sub_08072168;

// PLAYER_PULL
static EntityAction sub_08072214;
static EntityAction sub_08072260;

// PLAYER_LAVA
static EntityAction PlayerLavaInit;
static EntityAction sub_08072354;
static EntityAction sub_080723D0;
static EntityAction sub_0807240C;

// PLAYER_08072454
static EntityAction sub_0807246C;
static EntityAction sub_08072490;

// PLAYER_ROOMTRANSITION
static EntityAction sub_080724DC;
static EntityAction sub_0807258C;

// PLAYER_ROLL
static EntityAction PlayerRollInit;
static EntityAction PlayerRollUpdate;

// PLAYER_INHOLE
static EntityAction PlayerInHoleInit;
static EntityAction PlayerInHoleUpdate;
static EntityAction sub_08072ACC;
static EntityAction sub_08072B5C;
static EntityAction sub_08072C48;

// PLAYER_08072C9C
static EntityAction sub_08072CC0;
static EntityAction sub_08072CFC;
static EntityAction sub_08072D54;
static EntityAction sub_08072F14;

// PLAYER_CLIMB
static EntityAction sub_08072F94;
static EntityAction sub_08073094;

// PLAYER_USEENTRANCE
static EntityAction sub_080731D8;
static EntityAction sub_080732D0;
static EntityAction sub_0807332C;
static EntityAction sub_080733BC;

// PLAYER_PARACHUTE
static EntityAction sub_08073468;
static EntityAction sub_080734D4;
static EntityAction sub_08073504;
static EntityAction sub_08073584;
static EntityAction sub_0807379C;
static EntityAction sub_080737BC;
static EntityAction sub_0807380C;
static EntityAction sub_08073884;

// DoJump... ?
static EntityAction sub_08073924;
static EntityAction sub_08073968;
static EntityAction sub_080739EC;
static EntityAction sub_08073A94;
static EntityAction sub_08073B8C;
static EntityAction sub_08073C30;

// PLAYER_MINISH
static EntityAction sub_08073C80;
static EntityAction sub_08073D20;
static EntityAction sub_08073F04;
static EntityAction sub_08073F4C;
static EntityAction sub_08073FD0;
static EntityAction sub_08074018;
static EntityAction sub_08074060;
static EntityAction sub_080740D8;

// PLAYER_08074C44
static EntityAction sub_08074C68;
static EntityAction sub_08074CF8;
static EntityAction sub_08074F00;
static EntityAction sub_080750F4;
// ...
static EntityAction sub_08074F1C;
static EntityAction sub_08074F2C;
static EntityAction sub_08074F44;
static EntityAction sub_08074F8C;
static EntityAction sub_08074FEC;
static EntityAction sub_0807501C;
static EntityAction sub_0807508C;
// ...
static EntityAction sub_08075110;
static EntityAction sub_0807513C;
static EntityAction sub_0807518C;
static EntityAction sub_080751B4;

static void sub_080717F8(Entity*);
static void reset_priority(void);
static void break_out(Entity* this);
static void sub_08073AD4(Entity* this);
static void sub_08073B60(Entity*);
static void sub_08074244(Entity*, u32, u32);
static void hide(Entity*);
static void conveyer_push(Entity*);
static void sub_08074D34(Entity*, ScriptExecutionContext*);
static void sub_08070BEC(Entity*, u32);

// exports
void SurfaceAction_Water(Entity*);
void SurfaceAction_Ladder(Entity*);
void SurfaceAction_AutoLadder(Entity*);

extern void sub_080A4D88(void);
extern void RespawnPlayer(void);
extern void sub_080797EC(void);
extern void UpdatePlayerMovement(void);
extern void sub_08079258(void);
extern void EnablePlayerDraw(Entity*);
extern u32 sub_08079B24(void);
extern void sub_08079708(Entity*);
extern Entity* CreatePlayerBomb(Entity*, u32);
extern u32 sub_0806F854(Entity*, s32, s32);
extern u32 UpdatePlayerCollision(void);
extern void sub_08079744(Entity*);
extern void sub_0807AE20(Entity*);
extern u32 sub_0807A894(Entity*);
extern u32 sub_080797C4(void);
extern void sub_0800892E(Entity*);
extern void sub_08078F24(void);
extern void sub_0807B068(Entity*);
extern u32 sub_080001DA(u32, u32);
extern u32 sub_0807A2F8(u32);
extern u32 sub_0806F730(Entity*);
extern u32 sub_08007DD6(u32, const u16*);
extern u32 GetSurfaceCalcType(Entity*, u32, u32);
extern void sub_08074808(Entity* this);
extern void DoJump(Entity*);
extern void SetZeldaFollowTarget(Entity*);
u32 ItemIsSword(u32 item);
extern u32 sub_0807A2B8(void);
extern u32 sub_08079550(void);
extern u32 sub_080782C0(void);
extern u32 sub_080793E4(u32);
extern void sub_08008AC6(Entity*);
extern u32 sub_08079C30(Entity*);
extern void sub_08077AEC(void);
extern u32 RunQueuedAction(void);
extern void UpdatePlayerSkills(void);

void sub_08077698(Entity*);
u32 sub_080782C0(void);
u32 UpdatePlayerCollision(void);
void sub_080797EC(void);
u32 sub_0807AC54(Entity*);
void sub_080792D8(void);
u32 sub_08078F74(Entity*);
void DoJump(Entity*);
void sub_08008926(Entity*);
void UpdatePlayerMovement(void);
void CreateWaterTrace(Entity*);
void sub_08008AC6(Entity*);
void sub_08008AA0(Entity*);

extern ScreenTransitionData gUnk_0813AB58;
extern ScreenTransitionData gUnk_0813AD88[];
extern u8 gUnk_080082DC[];

extern u16 script_BedInLinksRoom;
extern u16 script_BedAtSimons;

extern Entity* gPlayerClones[];
extern ScriptExecutionContext gPlayerScriptExecutionContext;

NONMATCH("asm/non_matching/playerItemPacciCane/sub_080705AC.inc", u32 CheckPlayerInactive(void)) {
    if (!((gInput.newKeys & START_BUTTON) == 0 || gFadeControl.active || gUnk_02034490[0] ||
          (gMessage.doTextBox & 0x7F) || gSave.stats.health == 0 || !gSave.fillerD0[34] ||
          gPlayerState.controlMode != 0 || gPriorityHandler.priority_timer != 0)) {
        u32 tmp = gPlayerState.framestate ? gPlayerState.framestate : gPlayerState.framestate_last;
        switch (tmp) {
            case PL_STATE_DIE:
            case PL_STATE_TALKEZLO:
            case PL_STATE_ITEMGET:
            case PL_STATE_DROWN:
            case PL_STATE_STAIRS:
                return 0;
        }
        sub_080A4D88();
        return 1;
    }
    return 0;
}
END_NONMATCH

void DoPlayerAction(Entity* this) {
    static void (*const sPlayerActions[])(Entity*) = {
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
        [PLAYER_080720DC] = sub_080720DC,
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
        [PLAYER_08074C44] = sub_08074C44,
        [PLAYER_CLIMB] = PlayerClimb,
        [PLAYER_USEENTRANCE] = PlayerUseEntrance,
        [PLAYER_PARACHUTE] = PlayerParachute,
    };
    sPlayerActions[this->action](this);
}

static void PlayerInit(Entity* this) {
    gPlayerState.field_0x0[0] = 0xff;
    gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
    gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
    COLLISION_ON(this);
    this->spritePriority.b0 = 0xc;
    this->spritePriority.b1 = 1;
    this->spriteSettings.shadow = 1;
    this->field_0x16 = 0x20;
    this->flags2 = 8;
    this->hitType = 0x79;
    this->hitbox = (Hitbox*)&gPlayerHitbox;
    this->spriteIndex = 1;
#ifndef EU
    gPlayerState.animation = DEFAULT_ANIM;
#endif
    sub_0806FDA0(this);
    LoadSwapGFX(this, 1, 2);
    InitAnimationForceUpdate(this, 2);
    if (this->collisionLayer == 0) {
        ResolveCollisionLayer(this);
    }

    if (IsItemEquipped(ITEM_LANTERN_ON) != 2) {
        sub_08077728();
    }
    DeleteClones();
    UpdatePlayerSkills();

    if (RunQueuedAction() == 0) {
        sub_0807921C();
        UpdateFloorType();
        if (gPlayerState.swim_state != 0) {
            Entity* ent;
            gPlayerState.swim_state = 1;
            ResolvePlayerAnimation();
            gPlayerState.framestate = PL_STATE_SWIM;
            sub_0807ACCC(this);
            ent = FindEntity(OBJECT, SPECIAL_FX, 0x6, FX_WATER_SPLASH, 0x0);
            if (ent != NULL) {
                DeleteEntity(ent);
            }
        }
    }
}

static void PlayerNormal(Entity* this) {
    gPlayerState.framestate = PL_STATE_IDLE;
    if (gPlayerState.flags & PL_CAPTURED) {
        this->spritePriority.b1 = 0;
        this->knockbackDuration = 0;
        this->speed = WALK_SPEED;
        gPlayerState.pushedObject = 0x80;
        gPlayerState.framestate = PL_STATE_TRAPPED;
        if ((this->animationState >> 1) + 92 == this->animIndex && (u16)this->spriteIndex == 2)
            UpdateAnimationSingleFrame(&gPlayerEntity);
        else
            gPlayerState.animation = 604;
        sub_0806F948(&gPlayerEntity);
        ResetPlayer();
        sub_08077698(this);
        return;
    }
    if (gPlayerState.flags & PL_IN_MINECART) {
        u32 x;
        this->hurtType = 30;
        gPlayerState.framestate = PL_STATE_C;
        sub_08070BEC(this, this->speed == 0 ? 1 : 0);
        return;
    }
    if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
        ResolvePlayerAnimation();
        return;
    }
    sub_080085B0(this);
    this->hurtType = 0;
    if (RunQueuedAction()) {
        return;
    }
    if (!gPlayerState.swim_state && (gPlayerState.jump_status & 0xC0) == 0) {
        if (gPlayerState.field_0x3[0] || gPlayerState.field_0x1f[2]) {
            this->speed = SHIELDING_SPEED;
        } else {
            if (gPlayerState.sword_state) {
                this->speed = SWORD_CHARGE_SPEED;
            } else if (gPlayerState.field_0x1c) {
                this->speed = GUST_JAR_SPEED;
            } else {
                this->speed = WALK_SPEED;
            }
        }
    }
    gPlayerState.pushedObject |= 0x80;
    if ((gPlayerState.flags & (PL_USE_OCARINA | 2)) == 0) {
        UpdateFloorType();
    }

    if (RunQueuedAction()) {
        return;
    }

    if (gPlayerState.jump_status == 0 && (gPlayerState.flags & PL_BURNING) == 0) {
        if (this->knockbackDuration == 0 && sub_080782C0()) {
            if (gRoomVars.shopItemType == 0) {
                ResetPlayer();
            }
            if ((gPlayerState.flags & (PL_USE_OCARINA | 2)) == 0) {
                UpdateFloorType();
                RunQueuedAction();
            }
            return;
        }
        if (((gPlayerState.flags &
              (PL_BUSY | PL_DROWNING | PL_USE_PORTAL | 0x10 | PL_FALLING | PL_BURNING | 0x1000 | PL_ROLLING)) |
             gPlayerState.field_0xaa) == 0) {
            switch (UpdatePlayerCollision()) {
                case 0:
                    gPlayerState.pushedObject ^= 0x80;
                    break;
                case 3:
                    gPlayerState.pushedObject = 0x80;
                    break;
                case 15:
                    this->flags &= ~ENT_COLLIDE;
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

    this->field_0x3c = 0;
    this->spritePriority.b0 = 4;
    if (sub_0807AC54(this)) {
        return;
    }
    sub_08077698(this);

    if (RunQueuedAction())
        return;

    sub_080792D8();
    if ((gPlayerState.jump_status | gPlayerState.field_0xa) == 0 && (sub_08079550() || sub_08078F74(this))) {
        return;
    }
    DoJump(this);

    if (RunQueuedAction())
        return;

    if (gPlayerState.jump_status) {
        gPlayerState.framestate = PL_STATE_CAPE;
        if ((gPlayerState.jump_status & 0xC0) == 0) {
            if ((gPlayerState.jump_status & 7) != 3 && (gPlayerState.jump_status & 0x20) == 0) {
                this->speed = gPlayerState.jump_status & 0x20;
                sub_08008926(this);
            } else {
                this->direction = 0xff;
            }
        }
        UpdatePlayerMovement();
        if ((this->frame & 2) == 0 && !gPlayerState.field_0x3[1])
            UpdateAnimationSingleFrame(this);
        return;
    }
    if (this->knockbackDuration == 0) {
        u32 v13;

        if (gPlayerState.swim_state) {
            gPlayerState.framestate = PL_STATE_SWIM;
            sub_0807ACCC(this);
        } else {
            if ((gPlayerState.flags & 0x2000000) == 0)
                this->spritePriority.b1 = 1;
            if (gPlayerState.dash_state & 0x40) {
                sub_08008AA0(this);
            } else {
                if (gPlayerState.floor_type == SURFACE_ICE) {
                    sub_08008926(this);
                } else if (gPlayerState.floor_type == SURFACE_PIT) {
                    ResetPlayerVelocity();
                } else {
                    sub_08008AA0(this);
                }
            }
            if ((gPlayerState.sword_state & 0x10) == 0) {
                this->direction = gPlayerState.field_0xd;
                if (gPlayerState.flags & PL_BURNING) {
                    this->speed = BURNING_SPEED;
                    if ((gPlayerState.field_0xd & 0x80) != 0)
                        this->direction = 4 * (this->animationState & 0xE);
                    DeleteClones();
                }
            }
        }
        v13 = 0;
        if ((((gPlayerState.field_0x7 | this->direction) & 0x80) | gPlayerState.field_0xa) == 0 &&
            (gPlayerState.field_0x7 & 0x10) == 0) {
            v13 = 1;
            if (this->knockbackDuration == 0 &&
                ((gPlayerState.dash_state & 0x40) || gPlayerState.floor_type != SURFACE_ICE))
                v13 = 3;
        }
        sub_08070BEC(this, v13);
        sub_08008AC6(this);
        if (this->knockbackDuration == 0 && gPlayerState.keepFacing == 0 && gPlayerState.floor_type != SURFACE_LADDER)
            sub_0806F948(this);
    } else {
        if (gPlayerState.item == NULL)
            UpdateAnimationSingleFrame(this);
        if (gPlayerState.swim_state != 0 && (gRoomTransition.frameCount & 7) == 0)
            CreateWaterTrace(this);
        return;
    }
}

static void sub_08070BEC(Entity* this, u32 r0) {
    if (r0 & 1)
        sub_080797EC();
    else
        ResolvePlayerAnimation();

    if (r0 & 2)
        UpdatePlayerMovement();
}

static void PlayerFall(Entity* this) {
    static EntityAction* const sPlayerFallStates[] = {
        PlayerFallInit,
        PlayerFallUpdate,
    };

    gPlayerState.field_0xd = 0xFF;
    gPlayerState.pushedObject = 0x80;
    gPlayerState.framestate = PL_STATE_FALL;

    sPlayerFallStates[this->subAction](this);
}

static void PlayerFallInit(Entity* this) {
    sub_08004168(this);

    gPlayerState.flags |= PL_BUSY | PL_DROWNING;
    gPlayerState.flags &= ~PL_BURNING;

    gPlayerState.jump_status = 0;

    if (gPlayerState.flags & PL_MINISH)
        gPlayerState.animation = 0x1ba;
    else if (gPlayerState.flags & PL_NO_CAP)
        gPlayerState.animation = 0x458;
    else
        gPlayerState.animation = 0x1b8;

    this->subAction++;
    COLLISION_OFF(this);
    this->spritePriority.b1 = 0;
    ResetPlayer();
    DeleteClones();
    SoundReq(SFX_PLY_VO7);
    SoundReq(SFX_FALL_HOLE);
}

static void PlayerFallUpdate(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        if ((gSave.stats.health != 0) && (gPlayerState.flags & 0x8000)) {
            gPlayerState.flags &= ~(PL_BUSY | PL_DROWNING);
            this->spriteSettings.draw = 0;
        } else {
            gPlayerState.flags &= ~(PL_DROWNING | 0x8000);
            RespawnPlayer();
            gPlayerState.field_0xa = 0;
            this->iframes = 32;
            ModHealth(-PIT_DAMAGE);
        }
    }
}

static void PlayerBounce(Entity* this) {
    static EntityAction* const sPlayerBounceStates[] = {
        PlayerBounceInit,
        PlayerBounceUpdate,
        sub_08070E7C,
    };
    sPlayerBounceStates[this->subAction](this);
}

static void PlayerBounceInit(Entity* this) {
    COLLISION_OFF(this);
    this->direction = DirectionTurnAround(Direction8FromAnimationState(AnimationStateWalk(this->animationState)));
    this->speed = BOUNCE_SPEED_FWD;
    this->knockbackDuration = 0;
    this->subAction++;
    this->actionDelay = gPlayerState.field_0x38;
    this->spriteIndex = 1;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        this->zVelocity = BOUNCE_SPEED_Z;
        gPlayerState.animation = 0x114;
        InitScreenShake(16, 0);
    } else {
        gPlayerState.animation = 0xc18;
        this->zVelocity = (BOUNCE_SPEED_Z * 3) / 4;
    }

    gPlayerState.jump_status = 0x80;
    SoundReq(SFX_14C);
    ResetPlayer();
    ResetPlayerVelocity();
}

// minor regalloc
static NONMATCH("asm/non_matching/player/sub_08070DC4.inc", void PlayerBounceUpdate(Entity* this)) {
    UpdateAnimationSingleFrame(this);
    sub_080085B0(this);
    UpdatePlayerMovement();
    UpdateFloorType();

    if (RunQueuedAction() || GravityUpdate(this, GRAVITY_RATE))
        return;

    gPlayerState.jump_status = 0;

    if (RunQueuedAction() || sub_08079D48())
        return;

    if (gPlayerState.swim_state != 0) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
        return;
    }

    if (--this->actionDelay != 0xFF) {
        this->zVelocity = 0x10000;
        return;
    }

    COLLISION_ON(this);

    if ((gPlayerState.field_0x14 == 0) && sub_08008B22()) {
        gPlayerState.field_0x11 = 7;
        ResolvePlayerAnimation();
        SetPlayerActionNormal();
        return;
    }

    this->spriteIndex = 1;
    this->actionDelay = 8;
    this->subAction++;

    if ((gPlayerState.flags & PL_MINISH) == 0)
        gPlayerState.animation = DEFAULT_ANIM;
}
END_NONMATCH

static void sub_08070E7C(Entity* this) {
    if (--this->actionDelay == 0) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
    }
}

static void sub_08070E9C(Entity* this) {
    static EntityAction* const gUnk_0811BA74[] = {
        sub_08070EDC,
        sub_08070f24,
    };

    if (RunQueuedAction() != 0) {
        MessageClose();
    } else {
        gPlayerState.field_0x27[0] = 4;
        gPlayerState.framestate = PL_STATE_TALKEZLO;
        UpdateFloorType();
        gUnk_0811BA74[this->subAction](this);
    }
}

static void sub_08070EDC(Entity* this) {
    this->updatePriority = PRIO_MESSAGE;

    if ((gMessage.doTextBox & 0x7f) != 0)
        this->subAction = 1;

    if ((gPlayerState.flags & PL_MINISH) == 0)
        ResolvePlayerAnimation();
    else
        gPlayerState.animation = 0xc18;
}

static void sub_08070f24(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->updatePriority = this->updatePriorityPrev;
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerItemGet(Entity* this) {
    static EntityAction* const sPlayerItemGetStates[] = {
        PlayerItemGetInit,
        PlayerItemGetUpdate,
        sub_08071038,
    };

    Entity* child;
    u8* temp;

    gPlayerState.framestate = PL_STATE_ITEMGET;
    COLLISION_OFF(this);
    sPlayerItemGetStates[this->subAction](this);

    child = this->child;
    if (child != NULL) {
        PositionEntityOnTop(this, child);
        temp = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        child->spriteOffsetX = temp[0];
        child->spriteOffsetY = temp[1];
    }
}

static void PlayerItemGetInit(Entity* this) {
    this->spriteSettings.flipX = FALSE;
    this->animationState = IdleSouth;

    gPlayerState.flags |= PL_BUSY;
    gPlayerState.jump_status = 0;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        u32 anim;
        if (gPlayerState.flags & PL_NO_CAP) {
            if (sub_080542AC(gPlayerState.field_0x38)) {
                anim = 0x45e;
            } else {
                anim = 0x45b;
            }
        } else {
            if (sub_080542AC(gPlayerState.field_0x38)) {
                anim = 0x2e0;
            } else {
                anim = 0x1b9;
            }
        }
        gPlayerState.animation = anim;
    }

    this->subAction = 1;
    ResetPlayer();
    ResetPlayerVelocity();
}

static void PlayerItemGetUpdate(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame != /* entire animation is a static frame */ 0)
        this->subAction = 2;
}

static void sub_08071038(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (RunQueuedAction() || (gMessage.doTextBox & 0x7f))
        return;

    if (this->frame & 0x80) {
        this->child = NULL;
        this->knockbackDuration = 0;
        this->iframes = 248;
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerJump(Entity* this) {
    static EntityAction* const sPlayerJumpStates[] = {
        PlayerJumpInit,
        sub_08071130,
        sub_08071208,
    };

    gPlayerState.framestate = PL_STATE_JUMP;
    sPlayerJumpStates[this->subAction](this);
}

static void PlayerJumpInit(Entity* this) {
    u32 temp;

    this->subAction++;

    gPlayerState.flags |= PL_BUSY;
    gPlayerState.flags &= ~(PL_BURNING | PL_FROZEN);

    gPlayerState.queued_action = 0;

    if ((gPlayerState.heldObject | gPlayerState.sword_state) == 0) {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            ResetPlayer();
            if (gPlayerState.flags & PL_NO_CAP) {
                gPlayerState.animation = 0x420;
            } else {
                gPlayerState.animation = 0x810;
            }
        }
    }

    gPlayerState.dash_state = 0;
    this->direction = Direction8FromAnimationState(AnimationStateWalk(this->animationState));

    temp = sub_08079FC4(1);
    asm("lsl r0, r0, #0x4");
    this->zVelocity = (temp - 4) * 64 * 64;

    this->speed = JUMP_SPEED_FWD;
    DeleteClones();
    SoundReq(SFX_PLY_JUMP);
    SoundReq(SFX_PLY_VO4);
}

static void sub_08071130(Entity* this) {
    if (RunQueuedAction())
        return;

    if (gPlayerState.sword_state == 0) {
        UpdateAnimationSingleFrame(this);

        if (this->frame & 1)
            return;
    }

    LinearMoveUpdate(this);

    if (GravityUpdate(this, GRAVITY_RATE))
        return;

    gPlayerState.jump_status = 0;
    ResetCollisionLayer(this);

    if (*(Entity**)&this->field_0x74 != NULL)
        ResetCollisionLayer(*(Entity**)&this->field_0x74);

    sub_08008790(this, 7);

    if (gPlayerState.field_0x14)
        return;

    UpdateFloorType();

    if (RunQueuedAction())
        return;

    if ((sub_08079D48() == 0) || (gPlayerState.swim_state != 0)) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
        return;
    }

    this->actionDelay = 6;

    if (((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) {
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = 0x424;
        } else {
            gPlayerState.animation = 0x820;
        }
        this->animIndex = 0xff;
    }

    this->subAction++;
    ResetPlayerVelocity();
    this->knockbackDuration = 0;
    SoundReq(SFX_PLY_LAND);
}

static void sub_08071208(Entity* this) {
    if ((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            UpdateAnimationSingleFrame(this);
        }
    }

    if (--this->actionDelay == 0xff) {
        gPlayerState.jump_status = 0;
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerDrown(Entity* this) {
    static EntityAction* const sPlayerDrownStates[] = {
        PlayerDrownInit,
        sub_080712F0,
    };

    gPlayerState.framestate = PL_STATE_DROWN;
    gPlayerState.flags |= PL_DROWNING;
    COLLISION_OFF(this);
    sPlayerDrownStates[this->subAction](this);
}

static void PlayerDrownInit(Entity* this) {
    this->subAction = 1;
    this->spritePriority.b1 = 0;

    if (gPlayerState.flags & PL_MINISH) {
        this->actionDelay = 0x3c;
        gPlayerState.animation = 0xc19;
        SoundReq(SFX_WATER_SPLASH);
    } else {
        if ((gPlayerState.flags & 0x10000) == 0)
            sub_08004168(this);

        CreateFx(this, FX_WATER_SPLASH, 0);

        if ((gPlayerState.flags & PL_NO_CAP) == 0)
            gPlayerState.animation = 0x72c;
        else
            gPlayerState.animation = 0x44c;
    }
    ResetPlayer();
}

static void sub_080712F0(Entity* this) {
    u32 temp;

    UpdateAnimationSingleFrame(this);

    temp = FALSE;

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        if (--this->actionDelay == 0)
            temp = TRUE;
    } else if ((this->frame & 0x80) != 0) {
        if (this->animIndex != 0xce)
            gPlayerState.animation = 0x2ce;
        else
            temp = TRUE;
    }

    if (temp == FALSE)
        return;

    this->knockbackDuration = 0;
    this->iframes = 32;
    this->spritePriority.b1 = 1;
    this->spriteSettings.draw = FALSE;
    gPlayerState.flags &= ~PL_DROWNING;
    RespawnPlayer();
}

static void PlayerUsePortal(Entity* this) {
    static EntityAction* const sPlayerUsePortalStates[] = {
        PortalJumpOnUpdate, PortalStandUpdate,  PortalActivateInit, PortalActivateUpdate,
        PortalShrinkInit,   PortalShrinkUpdate, PortalEnterUpdate,  PortalUnknownUpdate,
    };

    gPlayerState.framestate = PL_STATE_USEPORTAL;
    sPlayerUsePortalStates[this->subAction](this);

    // probably a switch
    if ((this->subAction == 7) || (this->subAction < 3))
        return;

    if ((gPlayerState.flags & PL_USE_PORTAL) == 0)
        return;

    if ((gInput.newKeys & (B_BUTTON | R_BUTTON)) == 0)
        return;

    if (AreaIsDungeon() || gArea.curPortalType == 3) {
        this->subAction = 7;
        this->actionDelay = 30;
        SetFade(7, 16);
        SoundReq(SFX_F8);
    } else {
        RespawnAsMinish();
    }
}

static void PortalJumpOnUpdate(Entity* this) {
    u16 x;
    u16 y;

    COLLISION_OFF(this);
    this->knockbackDuration = 0;

    x = gArea.curPortalX;
    y = gArea.curPortalY;

    if ((this->x.HALF.HI != x) || (this->y.HALF.HI != y)) {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, gArea.curPortalX, gArea.curPortalY);
        this->speed = JUMP_SPEED_FWD;
        UpdatePlayerMovement();
    }

    DoJump(this);
    UpdateAnimationSingleFrame(this);

    if (gPlayerState.jump_status == 0) {
        gPlayerState.flags |= PL_USE_PORTAL;
        this->subAction = 1;
        this->animationState = IdleSouth;
        this->spriteSettings.flipX = FALSE;
        if (gArea.curPortalType == 4) {
            gPlayerState.animation = 0x52c;
        }
    }

    this->actionDelay = 8;

    if (gArea.curPortalType != 3) {
        this->spritePriority.b0 = 3;
    }
}

static void PortalStandUpdate(Entity* this) {
    switch (gArea.curPortalType) {
        case 4:
        case 5:
            sub_0806F948(&gPlayerEntity);
            break;
    }

    if ((gPlayerState.field_0xd & 0x84) == 0) {
        if (this->direction != gPlayerState.field_0xd) {
            this->actionDelay = 8;
        }
        if (--this->actionDelay == 0xff) {
            this->direction = gPlayerState.field_0xd;
            this->animationState = Direction8ToAnimationState(this->direction);
            this->zVelocity = 0x20000;
            this->speed = JUMP_SPEED_FWD;
            this->action = PLAYER_MINISH;
            this->subAction = 7;
            this->field_0xf = 0;
            gPlayerState.animation = (gPlayerState.flags & PL_NO_CAP) ? 0x41C : 0x80C;
            gPlayerState.flags &= ~PL_USE_PORTAL;
            return;
        }
        this->direction = gPlayerState.field_0xd;
    } else {
        this->actionDelay = 8;
    }

    if (gArea.curPortalType == 4) {
        if (this->frame == 0) {
            UpdateAnimationSingleFrame(this);
            return;
        }
    } else {
        sub_08077698(this);
    }
    ResolvePlayerAnimation();
}

static void PortalActivateInit(Entity* this) {
    gRoomControls.camera_target = NULL;
    gUnk_02034490[0] = 1;
    this->subAction = 3;
    this->field_0xf = 0x1e;
    gPlayerState.animation = 0x738;
    CreateObjectWithParent(this, EZLO_CAP, 1, 0);
    sub_08077B20();
    SetPlayerEventPriority();
}

static void PortalActivateUpdate(Entity* this) {
    if (this->field_0xf)
        return;

    UpdateAnimationSingleFrame(this);

    if (gPlayerState.flags & PL_MINISH)
        this->subAction = 4;
}

static void PortalShrinkInit(Entity* this) {
    this->subAction = 5;
    this->spritePriority.b1 = 0;
    this->field_0xf = 0;
    this->spriteRendering.b0 = 3;
    *(u32*)&this->field_0x80.HWORD = 0x100;
    *(u32*)&this->cutsceneBeh = 0x100;
    sub_0805EC9C(this, 0x100, 0x100, 0);
    gPlayerState.animation = 0x2c3;
    gPlayerState.flags |= PL_MINISH;
    SoundReq(SFX_PLY_SHRINKING);
}

static const u8 gUnk_0811BABC[] = {
    1, 1, 1, 1, 2, 4, 8, 16,
};

// horrible
static ASM_FUNC("asm/non_matching/player/PortalShrinkUpdate.inc", void PortalShrinkUpdate(Entity* this));

static void PortalEnterUpdate(Entity* this) {
    if (this->actionDelay == 0) {
        if (GravityUpdate(this, GRAVITY_RATE))
            return;

        this->spriteSettings.draw = FALSE;

        if (gArea.curPortalType == 3) {
            if (--this->field_0xf == 0)
                sub_080717F8(this);
            return;
        }
        if (gArea.curPortalType == 6)
            DoExitTransition(&gUnk_0813AB58);
        else
            gArea.playShrinkSeq = 1;

        return;
    }
    this->actionDelay--;
}

static void PortalUnknownUpdate(Entity* this) {
    if (gFadeControl.active)
        return;

    if (this->actionDelay != 0) {
        this->actionDelay--;
        return;
    }

    sub_080717F8(this);
    SetFadeInverted(0x10);
}

static void sub_080717F8(Entity* this) {
    static const s16 sOffsets[] = {
        0, -22, 22, 0, 0, 22, -22, 0,
    };

    this->animationState = gArea.curPortalExitDirection << 1;
    this->x.HALF.HI = gArea.curPortalX + sOffsets[gArea.curPortalExitDirection * 2];
    this->y.HALF.HI = gArea.curPortalY + sOffsets[gArea.curPortalExitDirection * 2 + 1];
    gArea.unk1A = 0xb4;
    gUnk_02034490[0] = 0;
    this->action = PLAYER_MINISH;
    this->subAction = 0;
    gPlayerState.flags = (gPlayerState.flags & ~PL_USE_PORTAL) | PL_MINISH;
    sub_0805EC60(this);
    ResetPlayerEventPriority();
}

static void PlayerTalkEzlo(Entity* this) {
    static EntityAction* const sPlayerTalkEzloStates[] = {
        PlayerTalkEzloInit,
        sub_0807193C,
        sub_08071990,
        sub_08071A4C,
    };

    if (RunQueuedAction()) {
        MessageClose();
        reset_priority();
    } else {
        gPlayerState.framestate = PL_STATE_TALKEZLO;
        COLLISION_OFF(this);
        sPlayerTalkEzloStates[this->subAction](this);
    }
}

static void PlayerTalkEzloInit(Entity* this) {
    ResetPlayer();
    gUnk_03000B80.filler[0x63] = 0;
    this->iframes = 0;
    gPriorityHandler.sys_priority = PRIO_PLAYER_EVENT;
    this->updatePriority = PRIO_PLAYER_EVENT;

    if (gPlayerState.flags & PL_MINISH) {
        this->subAction = 2;
        this->spritePriority.b1 = 0;
        DisplayEzloMessage();
        return;
    }

    if (gPlayerState.jump_status == 0) {
        this->subAction++;

        if (this->animationState == IdleEast)
            gPlayerState.animation = 0x3ca;
        else
            gPlayerState.animation = 0x3c6;

        this->spriteSettings.flipX = 0;
        return;
    }

    if (!GravityUpdate(this, GRAVITY_RATE))
        gPlayerState.jump_status = 0;
}

static void sub_0807193C(Entity* this) {
    Entity* child;

    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        this->subAction++;
        child = CreateObjectWithParent(this, EZLO_CAP, 0, 0);
        this->child = child;
        if (child != NULL) {
            if (this->animationState == IdleEast)
                gPlayerState.animation = 0x3cc;
            else
                gPlayerState.animation = 0x3c7;
            DisplayEzloMessage();
        }
    }
}

static void sub_08071990(Entity* this) {
    u32 temp;

    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->subAction++;
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            if (this->animationState == IdleEast)
                gPlayerState.animation = 0x3cd;
            else
                gPlayerState.animation = 0x3c9;
        } else {
            reset_priority();
            sub_08079258();
        }
        return;
    }

    if (gPlayerState.flags & PL_MINISH)
        return;

    if (this->animationState == IdleEast)
        temp = 4;
    else
        temp = 0;

    if (this->child->actionDelay != 0) {
        if ((u8)(temp + 200) != this->animIndex) {
            gPlayerState.animation = temp + 0x3c8;
            return;
        }
    } else {
        if ((u8)(temp + 199) != this->animIndex) {
            gPlayerState.animation = temp + 0x3c7;
            return;
        }
    }
    UpdateAnimationSingleFrame(this);
}

static void sub_08071A4C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        reset_priority();
        sub_0807921C();
    }
}

static void reset_priority(void) {
    gPriorityHandler.sys_priority = PRIO_MIN;
    gPlayerEntity.updatePriority = gPlayerEntity.updatePriorityPrev;
}

static void PlayerPush(Entity* this) {
    static EntityAction* const sPlayerPushStates[] = {
        PlayerPushInit,
        PlayerPushUpdate,
        sub_08071B60,
    };

    gPlayerState.framestate = PL_STATE_PUSH;
    sPlayerPushStates[this->subAction](this);
}

static void PlayerPushInit(Entity* this) {
    this->subAction++;
    gPlayerState.flags |= PL_BUSY;
    if (this->type == 1) {
        // scripted push?
        this->speed = 0;
        this->actionDelay = 0;
        this->field_0xf = 1;
    } else {
        this->speed = (gPlayerState.flags & PL_MINISH) ? PUSH_SPEED / 2 : PUSH_SPEED;
    }
    PlayerPushUpdate(this);
}

static void PlayerPushUpdate(Entity* this) {
    typedef struct {
        u8 frame;
        u16 speed;
    } PushFrame;

    static const PushFrame sPushFrames[] = {
        { 5, 0 },
        { 1, PUSH_SPEED * 2 },
        { 5, 0 },
        { 1, PUSH_SPEED * 2 },
        { 2, 0 },
        { 1, PUSH_SPEED * 2 },
        { 2, 0 },
        { 1, PUSH_SPEED * 2 },
        { 3, 0 },
        { 1, PUSH_SPEED * 2 },
        { 8, PUSH_SPEED * 3 / 4 },
        { 8, PUSH_SPEED * 3 / 4 },
        { 8, PUSH_SPEED * 3 / 4 },
        { 8, PUSH_SPEED / 2 },
        { 0xFF, 0 },
    };

    gPlayerState.speed_modifier = 0;
    UpdateAnimationSingleFrame(this);
    if (this->type == 1) {
        if (--this->field_0xf == 0) {
            if (sPushFrames[this->actionDelay].frame != 0xff) {
                this->field_0xf = sPushFrames[this->actionDelay].frame;
                this->speed = sPushFrames[this->actionDelay].speed;
                this->actionDelay++;
            } else {
                this->subAction++;
                return;
            }
        }
    } else {
        gPlayerState.pushedObject--;
        if ((gPlayerState.pushedObject & 0x7f) == 0) {
            this->subAction++;
        }
    }
    UpdatePlayerMovement();
}

static void sub_08071B60(Entity* this) {
    gPlayerState.pushedObject = 2;
    gPlayerState.flags &= ~PL_BUSY;
    this->type = 0;
    this->knockbackDuration = 0;
    PlayerWaitForScroll(this);
    this->field_0xf = 6;
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        gPlayerState.animation = 0x104;
        this->spriteIndex = 3;
        InitAnimationForceUpdate(this, (this->animationState >> 1) + 0x3c);
    }
}

static void PlayerMinishDie(Entity* this) {
    static EntityAction* const sPlayerMinishDieStates[] = {
        PlayerMinishDieInit,
        sub_08071CAC,
        sub_08071D04,
        sub_08071D80,
    };

    COLLISION_OFF(this);
    sPlayerMinishDieStates[this->subAction](this);
    gPlayerState.framestate = PL_STATE_DIE;
}

static void PlayerMinishDieInit(Entity* this) {
    u32 temp;

    if (gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS))
        return;

    if (GravityUpdate(this, GRAVITY_RATE)) {
        if (gPlayerState.flags & PL_NO_CAP)
            gPlayerState.animation = 0x420;
        else
            gPlayerState.animation = 0x810;
        return;
    }

    gPlayerState.queued_action = 0;
    if (gPlayerState.flags & PL_MINISH) {
        if (gPlayerState.floor_type == SURFACE_MINISH_DOOR_FRONT ||
            gPlayerState.floor_type == SURFACE_MINISH_DOOR_BACK || gPlayerState.floor_type == SURFACE_A) {
            EnablePlayerDraw(this);
            RespawnPlayer();
            this->action = PLAYER_MINISHDIE;
        }
        temp = 0xc1a;
    } else {
        temp = (gPlayerState.flags & PL_NO_CAP) ? 0x459 : 0x1bc;
    }
    gPlayerState.animation = temp;

    gPlayerState.flags &=
        ~(PL_PARACHUTE | PL_MOLDWORM_RELEASED | PL_ROLLING | PL_FROZEN | PL_BURNING | 0x100 | PL_BUSY);
    this->subAction = 1;
    this->animationState = IdleSouth;
    this->spritePriority.b1 = 1;
    this->spriteSettings.draw = 3;
    gPlayerState.jump_status = 0;
    gPlayerState.pushedObject = 0;
    sub_0800451C(this);
    ResetPlayer();
    SoundReq(SFX_PLY_DIE);
}

static void sub_08071CAC(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        u32 temp;
        if ((gPlayerState.flags & PL_MINISH) == 0)
            temp = (gPlayerState.flags & PL_NO_CAP) ? 0x45a : 0x2bd;
        else
            temp = 0xc1b;
        gPlayerState.animation = temp;

        this->subAction = 2;
        this->actionDelay = 0xf0;
        SoundReq(SFX_PLY_VO7);
    }
}

static void sub_08071D04(Entity* this) {
    int idx;
    int deltaHealth;

    UpdateAnimationSingleFrame(this);
    if (this->frame == 0)
        return;

    deltaHealth = 0;
    idx = GetBottleContaining(0x28);
    if (idx != 0) {
        gSave.stats.bottles[idx - 1] = 0x20;
        CreateObject(FAIRY, 0x60, 2);
        deltaHealth = 32;
    }

    if (deltaHealth != 0) {
        ModHealth(deltaHealth);
        this->subAction = 3;
        gPlayerState.field_0x3c[0] = 0;
        this->direction = 0xff;
        this->speed = 0;
        this->zVelocity = 0x18000;
        gPlayerState.jump_status = 1;
        gPlayerState.swim_state = 0;
        return;
    }

    gRoomTransition.field_0x4[1] = 1;
}

static void sub_08071D80(Entity* this) {
    UpdateAnimationSingleFrame(this);
    gPlayerState.field_0x14 = 1;
    DoJump(this);
    if ((gPlayerState.jump_status & 7) == 3) {
        gPlayerState.jump_status = 0;
        this->iframes = 226;
        ResetPlayerEventPriority();
        ResetPlayerAnimationAndAction();
    }
}

static void sub_08071DB8(Entity* this) {
    static EntityAction* const gUnk_0811BB3C[] = {
        sub_08071DD0,
        sub_08071E04,
        sub_08071E74,
    };

    gUnk_0811BB3C[this->subAction](this);
}

static void sub_08071DD0(Entity* this) {
    this->actionDelay = gPlayerState.field_0x38;
    if (gPlayerState.field_0x39 != 0) {
        gPlayerState.field_0x39 = 0;
        this->subAction = 2;
        gPlayerState.animation = DEFAULT_ANIM;
    } else {
        this->subAction = 1;
        gPlayerState.animation = 0x114;
    }
}

static void sub_08071E04(Entity* this) {
    if ((this->z.WORD != 0) && (gPlayerState.field_0x14 == '\0')) {
        UpdateFloorType();
        if (gPlayerState.floor_type == SURFACE_PIT) {
            gPlayerState.field_0x11 = 7;
            gPlayerState.flags |= PL_FALLING;
            SetPlayerActionNormal();
            return;
        }
    }

    UpdateAnimationSingleFrame(this);
    if (sub_08079B24() == 0) {
        sub_08079708(this);
        return;
    }

    sub_080792D8();
    if (sub_0807953C())
        this->actionDelay -= 2;
    else
        this->actionDelay -= 1;

    if ((s8)this->actionDelay < 1)
        SetPlayerActionNormal();
}

static void sub_08071E74(Entity* this) {
    u32 temp;

    GravityUpdate(this, GRAVITY_RATE);
    UpdatePlayerMovement();
    temp = this->actionDelay--;
    if (temp == 0)
        SetPlayerActionNormal();
}

static void PlayerEmptyBottle(Entity* this) {
    static EntityAction* const sPlayerEmptyBottleStates[] = {
        PlayerEmptyBottleInit,
        PlayerEmptyBottleUpdate,
    };

    sPlayerEmptyBottleStates[this->subAction](this);
}

static void PlayerEmptyBottleInit(Entity* this) {
    Entity* ent;

    ResetPlayer();
    ent = CreatePlayerBomb(this, 0xe);
    if (ent != NULL) {
        ent->field_0x68.HALF.LO = gPlayerState.field_0x38;
        this->subAction++;
        switch (gPlayerState.field_0x38) {
            case 0x20:
                gPlayerState.animation = 0x614;
                break;
            case 0x21 ... 0x25:
                gPlayerState.animation = 0x2df;
                break;
            default:
                gPlayerState.animation = 0x610;
                sub_0807CAA0(gPlayerState.field_0x38, 2);
                break;
        }
    }
}

static void PlayerEmptyBottleUpdate(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        gPlayerState.item = NULL;
        sub_0807921C();
    }
}

static void PlayerFrozen(Entity* this) {
    static EntityAction* const sPlayerFrozenStates[] = {
        PlayerFrozenInit,
        PlayerFrozenUpdate,
    };

    sPlayerFrozenStates[this->subAction](this);
}

static void PlayerFrozenInit(Entity* this) {
    COLLISION_OFF(this);
    this->actionDelay = 120;
    this->subAction++;
    gPlayerState.animation = 0x294;
    sub_08077B20();
    SoundReq(SFX_195);
}

static void PlayerFrozenUpdate(Entity* this) {
    if (GravityUpdate(this, GRAVITY_RATE) == 0) {
        UpdateSpriteForCollisionLayer(this);
        gPlayerState.jump_status = 0;
        if (gPlayerState.field_0x14 == 0) {
            if (sub_08079D48() == 0) {
                break_out(this);
                return;
            }
        }
    }
    if (sub_08079B24() == 0) {
        sub_08079708(this);
    } else {
        if (gPlayerState.flags & PL_FROZEN) {
            if (sub_0807953C() != 0) {
                this->actionDelay -= 3;
                this->spriteOffsetX = 2;
            } else {
                this->spriteOffsetX = 0;
            }
            if ((s8)this->actionDelay > 0) {
                return;
            }
        }
    }
    break_out(this);
}

static void break_out(Entity* this) {
    this->iframes = 160;
    this->knockbackDuration = 0;
    COLLISION_ON(this);
    this->spriteOffsetX = 0;
    gPlayerState.flags &= ~(PL_FROZEN | PL_BUSY);
    CreateFx(this, FX_ICE, 0);
    SetPlayerActionNormal();
}

static void sub_0807204C(Entity* this) {
    static EntityAction* const gUnk_0811BB58[] = {
        sub_08072064,
        sub_08072098,
    };

    gUnk_0811BB58[this->subAction](this);
}

static void sub_08072064(Entity* this) {
    this->subAction = 1;
    COLLISION_OFF(this);
    this->actionDelay = gPlayerState.field_0x3a;
    gPlayerState.animation = gPlayerState.field_0x38 | (gPlayerState.field_0x39 << 8);
    ResetPlayer();
}

static void sub_08072098(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->actionDelay != 0)
        if (--this->actionDelay != 0xFF)
            return;
        else
            ;
    else if ((this->frame & 0x80) == 0)
        return;

    if (this->health != 0)
        COLLISION_ON(this);
    SetPlayerActionNormal();
}

static void sub_080720DC(Entity* this) {
    static EntityAction* const gUnk_0811BB60[] = {
        sub_08072100,
        sub_08072168,
    };

    if (RunQueuedAction() == 0)
        gUnk_0811BB60[this->subAction](this);
}

static void sub_08072100(Entity* this) {
    this->spriteSettings.draw = 3;
    this->speed = 0x140;
    this->hitbox = (Hitbox*)&gPlayerHitbox;
    this->actionDelay = gPlayerState.field_0x38;
    this->subAction = 1;
    COLLISION_OFF(this);
    if (gPlayerState.field_0x39)
        this->direction = 0xff;

    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = 0x404;
    } else {
        gPlayerState.animation = 0x104;
    }
    ResetPlayer();
    sub_08072168(this);
}

static void sub_08072168(Entity* this) {
    u32 i;

    UpdateAnimationSingleFrame(this);
    i = (u16)sub_0806F854(this, 0, -12) ? GRAVITY_RATE * 2 : GRAVITY_RATE;
    GravityUpdate(this, i);
    if (gPlayerState.field_0x3a) {
        LinearMoveUpdate(this);
    } else {
        UpdatePlayerMovement();
    }
    gPlayerState.field_0xd = this->direction;
    UpdatePlayerCollision();
    if (--this->actionDelay == 0xff) {
        this->knockbackDuration = 0;
        COLLISION_ON(this);
        UpdateSpriteForCollisionLayer(this);
        SetPlayerActionNormal();
    }
}

static void PlayerPull(Entity* this) {
    static EntityAction* const sPlayerPullStates[] = {
        sub_08072214,
        sub_08072260,
    };

    gPlayerState.framestate = PL_STATE_PULL;
    sPlayerPullStates[this->subAction](this);
    gUnk_0200AF00.filler25[9] = 8;
}

static void sub_08072214(Entity* this) {
    this->subAction = 1;
    this->speed = PULL_SPEED;
    this->actionDelay = gPlayerState.field_0x38;
    this->direction = Direction8FromAnimationState(AnimationStateTurnAround(this->animationState));
    if ((gPlayerState.flags & PL_NO_CAP) == 0) {
        gPlayerState.animation = 0x34c;
    } else {
        gPlayerState.animation = 0x944;
    }
    gPlayerState.flags |= PL_BUSY;
    sub_08072260(this);
}

static void sub_08072260(Entity* this) {
    gPlayerState.speed_modifier = 0;
    UpdatePlayerMovement();
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0) {
        gPlayerState.flags &= ~PL_BUSY;
        if ((gPlayerState.flags & PL_NO_CAP) == 0) {
            gPlayerState.animation = 0x34c;
        } else {
            gPlayerState.animation = 0x944;
        }
        this->knockbackDuration = 0;
        SetPlayerActionNormal();
    }
}

static void PlayerLava(Entity* this) {
    static EntityAction* const sPlayerLavaStates[] = {
        PlayerLavaInit,
        sub_08072354,
        sub_080723D0,
        sub_0807240C,
    };

    gPlayerState.framestate = PL_STATE_FALL;
    sPlayerLavaStates[this->subAction](this);
}

static void PlayerLavaInit(Entity* this) {
    Entity* ent;

    COLLISION_OFF(this);
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        this->subAction = 1;
        this->zVelocity = 0x28000;
        ent = CreateObject(OBJECT_42, 0x80, 0);
        if (ent != NULL) {
            ent->child = this;
        }
        gPlayerState.animation = 0x114;
    } else {
        this->spriteSettings.draw = 0;
        this->subAction = 3;
        this->knockbackDuration = 10;
    }
    gPlayerState.flags |= (PL_BURNING | PL_BUSY);
    ResetPlayer();
    SoundReq(SFX_124);
    SoundReq(SFX_PLY_VO6);
}

static void sub_08072354(Entity* this) {
    sub_0806F854(this, 0, -12);
    UpdateAnimationSingleFrame(this);
    sub_08079744(this);
    if (GravityUpdate(this, GRAVITY_RATE))
        return;

    this->spritePriority.b1 = 0;
    this->knockbackDuration = 0;
    this->subAction = 2;
    this->actionDelay = 0x3c;
    gPlayerState.animation = 0x2c1;
    gPlayerState.flags &= ~PL_BURNING;
    UpdateSpriteForCollisionLayer(this);
    CreateFx(this, FX_LAVA_SPLASH, 0);
    SoundReq(SFX_1A6);
}

static void sub_080723D0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0xff) {
        this->spritePriority.b1 = 1;
        this->iframes = 20;
        ModHealth(-2);
        RespawnPlayer();
    }
}

static void sub_0807240C(Entity* this) {
    if (--this->knockbackDuration == 0xff) {
        this->spriteSettings.draw = 3;
        this->iframes = 20;
        gPlayerState.flags &= ~PL_BURNING;
        ModHealth(-2);
        RespawnPlayer();
    }
}

static void sub_08072454(Entity* this) {
    static EntityAction* const gUnk_0811BB80[] = {
        sub_0807246C,
        sub_08072490,
    };

    gUnk_0811BB80[this->subAction](this);
}

static void sub_0807246C(Entity* this) {
    this->subAction = 1;
    this->actionDelay = gPlayerState.field_0x38;
    gPlayerState.animation = 0x3c0;
    SoundReq(0x7b);
}

static void sub_08072490(Entity* this) {
    if (--this->actionDelay != 0xff) {
        UpdateAnimationSingleFrame(this);
        UpdatePlayerMovement();
    } else {
        this->iframes = 60;
        ModHealth(-8);
        ResetPlayerAnimationAndAction();
    }
}

static void PlayerRoomTransition(Entity* this) {
    static EntityAction* const sPlayerRoomTransitionStates[] = {
        sub_080724DC,
        sub_0807258C,
    };
    sPlayerRoomTransitionStates[this->subAction](this);
}

static void sub_080724DC(Entity* this) {
    this->knockbackDuration = 0;
    DeleteClones();
    if (sub_080002B8(this) != 0x29) {
        if ((gPlayerState.field_0x82[7] == 0) && (gPlayerState.swim_state != 0)) {
            sub_0807AE20(this);
        }
        if (gRoomControls.reload_flags == 0) {
            this->updatePriority = this->updatePriorityPrev;
            PlayerWaitForScroll(this);
        } else if (gPlayerState.field_0x1c == 0) {
            UpdateAnimationSingleFrame(this);
        }
    } else {
        this->spriteSettings.draw = 3;
        this->subAction = 1;
        if (gRoomVars.field_0x0 == 0) {
            if (gPlayerState.flags & PL_MINISH) {
                gPlayerState.animation = 0xc18;
            } else {
                gPlayerState.animation = 0x104;
            }
            this->direction = Direction8FromAnimationState(this->animationState);
        }
    }
}

static void sub_0807258C(Entity* this) {
    if (gRoomControls.reload_flags == 0) {
        if (sub_0807A894(this) == 0x29) {
            UpdatePlayerMovement();
            if (sub_080797C4() != 0) {
                gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
                gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
                this->updatePriority = this->updatePriorityPrev;
                PlayerWaitForScroll(this);
            } else {
                UpdateAnimationSingleFrame(this);
            }
        } else {
            gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
            gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
            this->updatePriority = this->updatePriorityPrev;
            PlayerWaitForScroll(this);
        }
    }
    if ((gPlayerState.field_0x82[7] == 0) && (gPlayerState.swim_state != 0)) {
        sub_0807AE20(this);
    }
}

static void PlayerRoll(Entity* this) {
    static EntityAction* const sPlayerRollStates[] = {
        PlayerRollInit,
        PlayerRollUpdate,
    };

    gPlayerState.framestate = PL_STATE_ROLL;
    sPlayerRollStates[this->subAction](this);
}

static void PlayerRollInit(Entity* this) {
    u32 temp;

    if ((gPlayerState.flags & PL_MOLDWORM_RELEASED) == 0) {
        sub_0806F948(&gPlayerEntity);
        this->direction = Direction8FromAnimationState(this->animationState);
    }
    this->subAction = 1;
    this->actionDelay = 0;
    ResetPlayer();
    temp = gPlayerState.flags;
    if (gPlayerState.flags & PL_MINISH) {
        this->spritePriority.b1 = 0;
        gPlayerState.animation = 0xc08;
    } else {
        this->hurtType = 0x1e;
        if (temp & 8) {
            gPlayerState.animation = 0x438;
        } else {
            gPlayerState.animation = 0x2ac;
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

static void PlayerRollUpdate(Entity* this) {
    if (((gPlayerState.flags & (PL_ROLLING | PL_MOLDWORM_CAPTURED)) != PL_ROLLING) ||
        ((gPlayerState.flags & PL_MOLDWORM_RELEASED) == 0 && (this->iframes != 0) && (this->bitfield & 0x80))) {
        gPlayerState.flags &= ~PL_ROLLING;
        if (RunQueuedAction())
            return;

        PlayerWaitForScroll(this);
        return;
    }

    this->direction = Direction8FromAnimationState(AnimationStateIdle(this->animationState));
    if (((gPlayerState.flags & PL_MINISH) == 0) && (--this->actionDelay == 0xff)) {
        CreateFx(&gPlayerEntity, FX_DASH, 0x40);
        this->actionDelay = 4;
    }
    if ((gPlayerState.flags & 2) == 0) {
        UpdateFloorType();
    }
    if (RunQueuedAction()) {
        gPlayerState.flags &= ~PL_ROLLING;
        return;
    }

    if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
        gPlayerState.flags &= ~PL_ROLLING;
        return;
    }

    if (sub_0807AC54(this)) {
        return;
    }

    if (gPlayerState.flags & (PL_FALLING | PL_HIDDEN | PL_CAPTURED)) {
        gPlayerState.flags &= ~PL_ROLLING;
        PlayerWaitForScroll(this);
        return;
    }

    if (gPlayerState.floor_type == SURFACE_ICE) {
        // roll in place when on ice
        sub_0800892E(this);
    } else {
        switch (this->frame & 0xf) {
            case 0:
                if ((this->frame & 0xf) == 0) {
                    this->speed = ROLL_SPEED;
                }
                break;
            case 1:
                this->speed += ROLL_SPEED / 16;
                break;
            case 2:
                this->speed = (ROLL_SPEED * 3 / 2);
                break;
            case 3:
                this->speed = 0;
                break;
        }
        sub_08078F24();
        UpdatePlayerMovement();
    }
    if (((this->frame & 0x10) == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) {
        // dont take damage
        this->hurtType = 0;
    }
    if (this->frame & 0x40) {
        sub_08077698(this);
    }
    if ((this->frame & 0x80) || (gPlayerState.field_0x3[1] != 0)) {
        ResetPlayerAnimationAndAction();
    }
    if (this->frame & 0x80) {
        gPlayerState.flags &= ~(PL_MOLDWORM_RELEASED | PL_ROLLING);
    }
    UpdateAnimationSingleFrame(this);
}

static void PlayerWaitForScroll(Entity* this) {
    ResolvePlayerAnimation();
    if (gPlayerState.flags & PL_MINISH)
        sub_0807B068(this);
    else
        ResetPlayerVelocity();

    if (gPlayerState.swim_state != 0)
        this->speed = 0;
    if ((gPlayerState.flags & PL_HIDDEN) == 0)
        gPlayerEntity.spriteSettings.draw = 3;
    if ((gPlayerState.flags & PL_MINISH) == 0)
        gPlayerEntity.spritePriority.b1 = 1;

    if ((gRoomControls.scroll_flags & 4) == 0) {
        if (gPlayerState.flags & PL_HIDDEN)
            COLLISION_ON(this);
        ResetPlayerAnimationAndAction();
    }
    if ((gPlayerState.flags & 2) == 0) {
        UpdateFloorType();
    }
}

static void PlayerInHole(Entity* this) {
    static EntityAction* const sPlayerInHoleStates[] = {
        PlayerInHoleInit, PlayerInHoleUpdate, sub_08072ACC, sub_08072B5C, sub_08072C48,
    };

    gPlayerState.framestate = PL_STATE_HOLE;
    sPlayerInHoleStates[this->subAction](this);
}

static void PlayerInHoleInit(Entity* this) {
    if (this->health != 0) {
        this->subAction = 1;
        this->x.HALF.HI = (this->x.HALF.HI & ~0xF) | 8;
        this->y.HALF.HI = (this->y.HALF.HI & ~0XF) | 10;
        COLLISION_OFF(this);
        this->spritePriority.b0 = 7;
        this->spritePriority.b1 = 0;
        this->actionDelay = 0;
        gPlayerState.flags |= PL_IN_HOLE;
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = 0x950;
        } else {
            gPlayerState.animation = 0x61c;
            if (sub_080001DA(COORD_TO_TILE(this), this->collisionLayer) == 0x4020) {
                this->actionDelay = 1;
            }
        }
        SetTile(0x4070, COORD_TO_TILE(this), this->collisionLayer);
        ResetPlayer();
        PlayerInHoleUpdate(this);
        SoundReq(0x81);
    }
}

static void PlayerInHoleUpdate(Entity* this) {
    if (this->frame & 0x80) {
        if (this->actionDelay == 1) {
            this->subAction = 3;
            this->actionDelay = 0x28;
            this->spritePriority.b1 = 1;
            gPlayerState.animation = 0x624;
            return;
        }

        this->subAction = 2;
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = 0x954;
        } else {
            gPlayerState.animation = 0x620;
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

static void sub_08072ACC(Entity* this) {
    if (gPlayerState.field_0xd == 0xff) {
        this->field_0xf = 0;
    } else if (this->field_0xf > 7) {
        COLLISION_ON(this);
        this->direction = gPlayerState.field_0xd;
        this->zVelocity = JUMP_SPEED_HOLE_Z;
        this->speed = JUMP_SPEED_HOLE_FWD;
        this->spritePriority.b0 = 4;
        this->spritePriority.b1 = 1;
        gPlayerState.jump_status = 0x41;
        sub_0807921C();
        sub_0807BA8C(COORD_TO_TILE(this), this->collisionLayer);
    } else {
        this->animationState = Direction8ToAnimationState(gPlayerState.field_0xd);
        this->field_0xf++;
    }
}

static void sub_08072B5C(Entity* this) {
    u32 temp;

    sub_080042BA(this, ((0x28 - this->actionDelay) >> 4) + 1);
    sub_0806F948(this);
    if (this->actionDelay != 0) {
        this->actionDelay--;
        return;
    }

    SetTile(0x4021, COORD_TO_TILE(this), this->collisionLayer);
    this->direction = Direction8FromAnimationState(this->animationState);
    temp = sub_0807A2F8(1);
    if (!temp) {
        COLLISION_ON(this);
        this->spritePriority.b0 = 4;
        this->speed = 0x40;
        this->zVelocity = 0x39000;
        this->z.WORD--;
        gPlayerState.jump_status = 0x41;
        sub_0806F854(this, 0, -12);
        sub_0807921C();
        return;
    }

    if (!AreaIsOverworld()) {
        sub_08004542(this);
    }
    this->subAction++;
    temp <<= 4;
    temp -= 4;
    temp <<= 12;
    this->zVelocity = temp;
    this->speed = 0x100;
    gPlayerState.animation = 0x810;
    SoundReq(0x7c);
}

static void sub_08072C48(Entity* this) {
    UpdateAnimationSingleFrame(this);
    LinearMoveUpdate(this);
    if (GravityUpdate(this, GRAVITY_RATE))
        return;

    sub_08008790(this, 7);
    if (gPlayerState.field_0x14) {
        if (sub_08008B22()) {
            gPlayerState.field_0x11 = 7;
            if (!(gPlayerState.flags & PL_MINISH)) {
                SetPlayerActionNormal();
            }
        }
    } else {
        sub_0807921C();
    }
}

static void sub_08072C9C(Entity* this) {
    static EntityAction* const gUnk_0811BBAC[] = {
        sub_08072CC0,
        sub_08072CFC,
        sub_08072D54,
        sub_08072F14,
    };
    gPlayerState.framestate = 0x11;
    gUnk_0811BBAC[this->subAction](this);
}

static void sub_08072CC0(Entity* this) {
    this->subAction = 1;
    COLLISION_OFF(this);
    this->field_0xf = (gPlayerState.field_0x3a >> 2) + 1;
    this->direction = gPlayerState.field_0x39;
    this->speed = 0x400;
    gPlayerState.animation = 0x524;
    gPlayerState.heldObject = 0;
}

static void sub_08072CFC(Entity* this) {
    sub_080042BA(this, 2);
    if (--this->field_0xf != 0xff) {
        LinearMoveUpdate(this);
        return;
    }

    this->subAction = 2;
    if (gPlayerState.field_0x38 < 8) {
        gPlayerState.field_0x38 = 8;
    }
    this->zVelocity = gPlayerState.field_0x38 << 0xc;
    this->speed = 0x200;
    gPlayerState.animation = 0x810;
    this->actionDelay = 5;
    this->field_0xf = 0;
    ResetPlayer();
}

static const u16 sTiles[] = {
    0x1AD, 1, 0, 0x1AE, 1, 0, 0x1AC, 1, 0, 0x1AF, 1, 0,
};

static const u16* const sTileTable[] = {
    sTiles,
    sTiles + 3,
    sTiles + 6,
    sTiles + 9,
};

static NONMATCH("asm/non_matching/player/sub_08072D54.inc", void sub_08072D54(Entity* this)) {
    u32 bVar1;
    u32 uVar2;

    UpdateAnimationSingleFrame(this);
    sub_0806F854(this, 0, -12);
    if (this->actionDelay != 0) {
        LinearMoveUpdate(this);
    } else {
        uVar2 = sub_0806F730(this);
        uVar2 = GetTileType(uVar2, this->collisionLayer);
        switch (this->field_0xf) {
            case 0:
                if (sub_08007DD6(uVar2, sTileTable[gPlayerEntity.animationState >> 1])) {
                    this->actionDelay = 1;
                    this->field_0xf = 1;
                }
                break;
            case 1:
                if (sub_08007DD6(uVar2, sTileTable[gPlayerEntity.animationState >> 1])) {
                    this->actionDelay = 1;
                    this->field_0xf = 1;
                }
                break;
            case 3:
                if (this->actionDelay == 0) {
                    UpdatePlayerMovement();
                } else {
                    LinearMoveUpdate(this);
                }
                break;
            case 2:
                this->animationState ^= 4;
                if (sub_08007DD6(uVar2, sTileTable[gPlayerEntity.animationState >> 1]) != 0) {
                    this->actionDelay = 1;
                    this->field_0xf = 3;
                }
                break;
            default:
                this->animationState ^= 4;
                if (sub_08007DD6(uVar2, sTileTable[gPlayerEntity.animationState >> 1])) {
                    this->field_0xf = 4;
                } else {
                    this->actionDelay = 1;
                }
                break;
        }

        if (this->actionDelay != 0) {
            LinearMoveUpdate(this);
        } else {
            UpdatePlayerMovement();
        }
        this->actionDelay = 0;
    }

    this->actionDelay = bVar1;
    if (!GravityUpdate(this, GRAVITY_RATE)) {
        COLLISION_ON(this);
        if (this->collisionLayer == 1) {
            ResetCollisionLayer(this);
        } else {
            sub_08004542(this);
        }
        sub_08008790(this, 7);
        if (gPlayerState.field_0x14 != 0) {
            if (sub_08008B22() == 0) {
                gPlayerState.field_0x11 = 7;
                if (!(gPlayerState.flags & PL_MINISH)) {
                    SetPlayerActionNormal();
                }
            }
        } else {
            if ((gPlayerState.flags & PL_NO_CAP)) {
                gPlayerState.animation = 0x424;
            } else {
                gPlayerState.animation = 0x820;
            }
            this->actionDelay = 6;
            this->subAction = 3;
            this->knockbackDuration = 0;
            SoundReq(0x7d);
        }
    }
}
END_NONMATCH

static void sub_08072F14(Entity* this) {
    if (--this->actionDelay != 0xff) {
        sub_0807921C();
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

static void PlayerClimb(Entity* this) {
    static EntityAction* const sPlayerClimbStates[] = {
        sub_08072F94,
        sub_08073094,
    };

    if (!RunQueuedAction()) {
        gPlayerState.framestate = PL_STATE_CLIMB;
        gPlayerState.floor_type = GetSurfaceCalcType(this, 0, 0);
        sPlayerClimbStates[this->subAction](this);
        if (this->knockbackDuration != 0) {
            sub_080792D8();
            if (this->knockbackDuration == 0) {
                this->action = PLAYER_CLIMB;
                this->subAction = 0;
                this->y.HALF.LO = 0;
                gPlayerState.animation = 0x2cf;
            }
        }
    }
}

static void sub_08072F94(Entity* this) {
    u32 bVar1;

    switch (gPlayerState.floor_type) {
        default:
            sub_0807921C();
            break;
        case SURFACE_LADDER:
        case SURFACE_AUTO_LADDER:
        case SURFACE_CLIMB_WALL:
        case SURFACE_2C:
            this->spritePriority.b1 = 0;
            bVar1 = gPlayerState.field_0xd;
            if ((gPlayerState.field_0xd & 0x80) == 0) {
                this->direction = gPlayerState.field_0xd;
                if ((gPlayerState.field_0xd == 8) || (gPlayerState.field_0xd == 0x18)) {
                    if (gPlayerState.floor_type == SURFACE_LADDER) {
                        return;
                    }
                    if ((this->frame & 0x10)) {
                        gPlayerState.animation = 0x2d4;
                    } else {
                        gPlayerState.animation = 0x2d5;
                    }
                    sub_08073094(this);
                } else {
                    if ((gPlayerState.floor_type == SURFACE_LADDER) && ((bVar1 & 7) != 0)) {
                        this->direction = (bVar1 + 8) & 0x10;
                    }
                    if (this->direction & 0x10) {
                        if (this->frame & 0x10) {
                            gPlayerState.animation = 0x2d1;
                        } else {
                            gPlayerState.animation = 0x2d2;
                        }
                    } else {
                        if (this->frame & 0x10) {
                            gPlayerState.animation = 0x2cf;
                        } else {
                            gPlayerState.animation = 0x2d0;
                        }
                    }
                }
                this->subAction++;
            } else {
                if (this->frame & 0x10) {
                    gPlayerState.animation = 0x2d4;
                } else {
                    gPlayerState.animation = 0x2d5;
                }
            }
            break;
    }
}

static void sub_08073094(Entity* this) {
    static const u16 sSpeeds[] = {
        0x0, 0x40, 0x60, 0x80, 0x100, 0xC0,
    };

    this->spritePriority.b1 = 0;
    this->speed = sSpeeds[this->frame & 0xf];
    UpdatePlayerMovement();
    if (!UpdatePlayerCollision()) {
        gPlayerState.pushedObject ^= 0x80;
        if ((gPlayerState.floor_type != SURFACE_AUTO_LADDER) && (gPlayerState.floor_type != SURFACE_2C)) {
            UpdateFloorType();
        }

        if (RunQueuedAction() == 0) {
            switch (gPlayerState.floor_type) {
                case SURFACE_AUTO_LADDER:
                case SURFACE_2C:
                    this->knockbackDuration = 0;
                    gPlayerState.flags |= PL_CLIMBING;
                    UpdateAnimationSingleFrame(this);
                    if (this->frame & 0x40) {
                        UpdateFloorType();
                        if (!RunQueuedAction()) {
                            this->subAction--;
                        }
                    }
                    break;
                case SURFACE_WATER:
                    sub_08074808(this);
                    ResetPlayerAnimationAndAction();
                    break;
                default:
                    sub_0807921C();
                    break;
                case SURFACE_LADDER:
                case SURFACE_CLIMB_WALL:
                    UpdateAnimationSingleFrame(this);
                    if (this->frame & 0x40) {
                        UpdateFloorType();
                        if (!RunQueuedAction()) {
                            this->subAction--;
                        }
                    }
                    break;
            }
        }
    }
}

static void PlayerUseEntrance(Entity* this) {
    static EntityAction* const sPlayerUseEntranceStates[] = {
        sub_080731D8,
        sub_080732D0,
        sub_0807332C,
        sub_080733BC,
    };

    gPlayerState.framestate = PL_STATE_STAIRS;
    RequestPriorityDuration(NULL, 8);
    sPlayerUseEntranceStates[this->subAction](this);
}

static void sub_080731D8(Entity* this) {
    COLLISION_OFF(this);
    this->speed = 0x40;
    this->animationState = IdleNorth;
    this->x.HALF.HI = (this->x.HALF.HI & ~0xF) | 8;
    this->x.HALF.LO = 0;
    if (gPlayerState.field_0x38 == 0) {
        this->subAction = 1;
    } else {
        this->spriteSettings.draw = 3;
        this->subAction = 3;
        this->field_0x7c.HALF.HI = this->y.HALF.HI;
        this->y.HALF.HI -= 16;
        this->child = CreateObjectWithParent(this, OBJECT_70, 1, 0);
        if (gPlayerState.field_0x39 == 7) {
            this->y.HALF.HI = (this->y.HALF.HI & ~0xF) + 8;
            this->x.HALF.HI &= ~0xF;
            this->direction = DirectionEast;
            this->animationState = IdleEast;
            SoundReq(SFX_STAIRS_ASCEND);
        } else {
            this->y.HALF.HI = (this->y.HALF.HI & ~0xF) + 2;
            this->x.HALF.HI = (this->x.HALF.HI & ~0xF) + 15;
            this->direction = DirectionWest;
            this->animationState = IdleWest;
            SoundReq(SFX_STAIRS_DESCEND);
        }
        SetZeldaFollowTarget(this);
    }
    if (gPlayerState.flags & PL_NO_CAP) {
        gPlayerState.animation = 1028;
    } else {
        gPlayerState.animation = 260;
    }
    gRoomControls.camera_target = NULL;
    DeleteClones();
    ResetPlayer();
}

static void sub_080732D0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (sub_080002B8(this) != 40) {
        this->direction = DirectionNorth;
        LinearMoveUpdate(this);
    } else {
        this->subAction++;
        this->y.HALF.LO = 0;
        CreateObjectWithParent(this, OBJECT_70, 1, 0);
        if (gPlayerState.field_0x39 == 7) {
            SoundReq(SFX_STAIRS_ASCEND);
        } else {
            SoundReq(SFX_STAIRS_DESCEND);
        }
    }
}

static void sub_0807332C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (gPlayerState.field_0x39 == 7) {
        this->direction = IdleNorth;
    } else {
        this->direction = 28;
    }
    if ((this->x.HALF.HI & 0xF) != 0xF) {
        if (gPlayerState.field_0x39 == 7) {
            this->animationState = IdleEast;
            this->direction = 4;
        } else {
            this->animationState = 6;
            if (this->direction <= DirectionWest) {
                LinearMoveUpdate(this);
                return;
            }
            this->direction = (this->direction - 1) & 0x1F;
        }
        LinearMoveUpdate(this);
        return;
    }
    if (gPlayerState.field_0x38 != 0) {
        gRoomControls.camera_target = this;
        SetPlayerActionNormal();
    } else {
        gMain.substate = 3;
        *(&gMain.pauseInterval + 1) = 1;
        SetFade(5, 8);
    }
}

static void sub_080733BC(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->x.HALF.HI & 0xF) == 8) {
        Entity* c;
        this->direction = DirectionSouth;
        this->animationState = IdleSouth;
        c = this->child;
        if (c != NULL) {
            DeleteEntity(c);
            this->child = NULL;
            if (this->collisionLayer == 1) {
                sub_0807AABC(this);
            } else {
                sub_0807AA80(this);
            }
        }
    }
    LinearMoveUpdate(this);
    if (this->field_0x7c.HALF_U.HI == this->y.HALF.HI) {
        gRoomControls.camera_target = this;
        sub_0807921C();
    }
}

static void PlayerParachute(Entity* this) {
    static EntityAction* const sPlayerParachuteStates[] = {
        sub_08073468, sub_080734D4, sub_08073504, sub_08073584, sub_0807379C, sub_080737BC, sub_0807380C, sub_08073884,
    };

    if (!RunQueuedAction()) {
        UpdateFloorType();
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
        gPlayerState.framestate = PL_STATE_PARACHUTE;
        sPlayerParachuteStates[this->subAction](this);
    }
}

static void sub_08073468(Entity* this) {
    gPlayerState.animation = 1792;
    gPlayerState.jump_status = 0;
    this->zVelocity = -0x10000;
    this->subAction++;
    this->field_0x7c.WORD = 480;
    this->direction = Direction8FromAnimationState(this->animationState);
    if ((gPlayerState.flags & PL_PARACHUTE) == 0) {
        gPlayerState.flags |= PL_PARACHUTE;
        CreateObjectWithParent(this, OBJECT_61, 0, 0);
    }
    ResetPlayer();
    if (this->zVelocity > 0 || gPlayerState.field_0x38 == 1)
        COLLISION_OFF(this);
}

static void sub_080734D4(Entity* this) {
    GravityUpdate(this, -(GRAVITY_RATE / 2));
    if (this->zVelocity > 0 || gPlayerState.field_0x38 == 1) {
        this->zVelocity = 0x49000;
        this->subAction++;
    }
}

static void sub_08073504(Entity* this) {
    GravityUpdate(this, this->zVelocity < 0 ? GRAVITY_RATE / 4 : GRAVITY_RATE * 2);
    if (this->zVelocity < 0 && this->z.HALF.HI > -32) {
        this->subAction++;
        *((u32*)&this->field_0x80.HWORD) = this->direction << 8;
        this->field_0x86.HALF.HI = 0;
        this->field_0x86.HALF.LO = 0;
        gPlayerState.animation = 1800;
        if (gPlayerState.field_0x38 == 1) {
            COLLISION_OFF(this);
            this->subAction = 6;
            this->speed = 16;
            this->actionDelay = 30;
            SoundReq(SFX_NEAR_PORTAL);
        }
    }
    UpdateAnimationSingleFrame(this);
}

static const u16 gUnk_0811BC28[] = {
    0x0708,
    0x071C,
    0x0718,
    0x0714,
};

static const u16 gUnk_0811BC30[] = {
    0x0708,
    0x0728,
    0x0724,
    0x0720,
};

static NONMATCH("asm/non_matching/player/sub_08073584.inc", void sub_08073584(Entity* this)) {
    u32 state, dir, tmp, tmp2, idx;

    if ((gPlayerState.field_0x92 & 0x80) || this->iframes > 0 || gPlayerState.field_0x3c[0] ||
        (gPlayerState.flags & PL_PARACHUTE) == 0) {
        gPlayerState.jump_status |= 0x40;
        sub_0807921C();
        DoJump(this);
        gPlayerState.animation = 1840;
        return;
    }
    gUnk_0200AF00.filler25[10] = 1;
    if (sub_0807A2F8(0)) {
        this->subAction++;
        this->direction = 4 * (this->animationState & 6);
        COLLISION_OFF(this);
        return;
    }
    if (gArea.locationIndex == 16)
        this->speed = 256;
    else
        this->speed = 128;
    if ((gPlayerState.field_0xd & 0x80) == 0) {
        if (this->direction != gPlayerState.field_0xd) {
            if (((this->direction - gPlayerState.field_0xd) & 0x1F) <= 0xF)
                *(u32*)&this->field_0x80 -= 32;
            else
                *(u32*)&this->field_0x80 += 32;
        }
    }
    this->direction = (*(u32*)&this->field_0x80 >> 8) & 0x1F;
    UpdatePlayerMovement();
    state = 4 * this->animationState;
    dir = this->direction;
    if (this->animationState == 0) {
        state = (state + 8) & 0x1F;
        dir = (dir + 8) & 0x1F;
    }
    if (state - 7 > dir) {
        tmp = (this->animationState - 2) & 7;
    } else if (state + 7 < dir) {
        tmp = (this->animationState + 2) & 7;
    } else {
        tmp = this->animationState;
    }
    if (tmp != this->animationState) {
        this->field_0x86.HALF.HI = 20;
    }
    this->animationState = tmp;
    idx = 0;
    tmp2 = gPlayerState.field_0xd >> 2;
    if (!this->field_0x86.HALF.HI || ((gPlayerState.field_0xd & 0x80) == 0 && this->animationState != tmp2)) {
        if ((gPlayerState.field_0xd & 0x80) == 0) {
            if (this->animationState != tmp2) {
                if (this->animationState == (tmp2 ^ 4)) {
                    idx = 2;
                } else {
                    if (this->animationState == (((tmp2 & 6) + 2) & 7)) {
                        idx = 1;
                    } else {
                        idx = 3;
                    }
                }
            }
        }
        if (gUnk_0811BC28[idx] == gPlayerState.animation) {
            if (gArea.locationIndex == 16)
                sub_080042BA(this, 2);
            else
                UpdateAnimationSingleFrame(this);
        } else {
            gPlayerState.animation = gUnk_0811BC28[idx];
        }
        this->field_0x86.HALF.LO = idx;
    } else {

        this->field_0x86.HALF.HI--;
        if (gUnk_0811BC30[this->field_0x86.HALF.LO] == gPlayerState.animation)
            UpdateAnimationSingleFrame(this);
        else
            gPlayerState.animation = gUnk_0811BC30[this->field_0x86.HALF.LO];
    }
    if (--this->field_0x7c.WORD == -1) {
        gPlayerState.jump_status |= 0x40;
        sub_0807921C();
    } else {
        u32 di = (this->field_0x7c.WORD / 20);
        this->z.HALF.HI = -8 - di;
    }
}
END_NONMATCH

static void sub_0807379C(Entity* this) {
    if (this->z.HALF.HI > -32) {
        this->z.HALF.HI--;
    } else {
        this->subAction++;
    }
}

static void sub_080737BC(Entity* this) {
    u16 pos;
    u32 tmp;

    UpdateAnimationSingleFrame(this);
    LinearMoveUpdate(this);
    this->z.WORD += 0x4C00;
    if (DirectionIsHorizontal(this->direction))
        pos = this->x.HALF.HI;
    else
        pos = this->y.HALF.HI;
    tmp = 0xf;
    tmp &= pos;
    if (tmp == 8 && !sub_080002D0(this)) {
        gPlayerState.jump_status |= 0x40;
        sub_0807921C();
    }
}

static void sub_0807380C(Entity* this) {
    static const u16 sAnims[] = {
        0x0708,
        0x071C,
        0x0718,
        0x0714,
    };

    if ((gRoomTransition.frameCount & 3) == 0) {
        u32 tmp = (this->animationState + 2) & 6;
        this->animationState = tmp;
        this->direction = 4 * tmp;
    }
    gPlayerState.animation = sAnims[this->animationState >> 1];
    if (this->z.HALF.HI < -16) {
        GravityUpdate(this, GRAVITY_RATE / 16);
    } else {
        if (--this->actionDelay == 0) {
            this->subAction = 7;
            this->actionDelay = 60;
            this->zVelocity = 0x20000;
        }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_08073884(Entity* this) {
    static const u16 sAnims[] = {
        0x0708,
        0x071C,
        0x0718,
        0x0714,
    };

    if ((gRoomTransition.frameCount & 1) == 0) {
        u32 tmp = (this->animationState + 2) & 6;
        this->animationState = tmp;
        this->direction = 4 * tmp;
    }
    gPlayerState.animation = sAnims[this->animationState >> 1];
    if (--this->actionDelay == 0) {
        if (gPlayerState.field_0x39 != 0xff)
            DoExitTransition(&gUnk_0813AD88[gPlayerState.field_0x39]);
        else
            InitParachuteRoom();
    }
    GravityUpdate(this, -((GRAVITY_RATE * 3) / 4));
    UpdateAnimationSingleFrame(this);
}

void DoJump(Entity* this) {
    static EntityAction* const sStates[] = {
        sub_08073924, sub_08073968, sub_080739EC, sub_08073A94, sub_08073B8C, sub_08073C30,
    };

    sStates[gPlayerState.jump_status & 7](this);
}

void sub_08073924(Entity* this) {
    if ((gPlayerState.flags & PL_ROLLING) == 0 && (this->z.HALF.HI & 0x8000) && !gPlayerState.field_0xa) {
        gPlayerState.jump_status = 0x40;
        gPlayerState.field_0xd = 0xff;
        this->direction = 0xff;
        sub_08077B20();
        sub_08073968(this);
    }
}

static void sub_08073968(Entity* this) {
    if ((gPlayerState.jump_status & 0xC0) == 0) {
        this->direction = gPlayerState.field_0xd;
    }
    sub_08078F24();
    if ((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) {
        if (gPlayerState.flags & PL_NO_CAP) {
            gPlayerState.animation = 1052;
        } else {
            if ((gPlayerState.flags & PL_MINISH) == 0) {
                if (gPlayerState.flags & PL_ENTER_MINECART) {
                    gPlayerState.animation = 2064;
                } else {
                    gPlayerState.animation = 2060;
                }
            }
        }
        if ((gPlayerState.jump_status & 0xC0) == 0) {
            sub_0806F948(this);
        }
        SoundReq(SFX_PLY_JUMP);
    }
    gPlayerState.jump_status = (gPlayerState.jump_status & ~7) | 2;
}

static void sub_080739EC(Entity* this) {
    u32 v;

    if ((gPlayerState.jump_status & 0xC0) != 0) {
        gPlayerState.field_0xd = this->direction;
        if (gPlayerState.jump_status & 0x80)
            this->collisions = 0;
        v = GRAVITY_RATE;
    } else {
        if ((u16)sub_0806F854(this, 0, -12)) {
            gPlayerState.jump_status |= 8;
            v = GRAVITY_RATE * 2;
        } else {
            v = GRAVITY_RATE;
            if (gPlayerState.jump_status & 0x10)
                v /= 2;
        }
    }
    if ((gPlayerState.jump_status & 0xC0) == 0) {
        if ((gPlayerState.jump_status & 0x20) && this->zVelocity == 0) {
            this->zVelocity = 0x28000;
            this->actionDelay = 10;
            this->direction = 0xff;
            gPlayerState.jump_status += 2;
            gPlayerState.animation = 372;
            ResetPlayerVelocity();
            return;
        }
    }
    if (!GravityUpdate(this, v))
        sub_08073AD4(this);
}

void sub_08073A94(Entity* this) {
    if ((this->frame & 0x80) || this->knockbackDuration != 0) {
        sub_08073B60(this);
    }
    if (gPlayerEntity.z.WORD != 0) {
        gPlayerState.jump_status = 0;
        sub_08073924(this);
    }
}

static void sub_08073AD4(Entity* this) {
    u32 tmp;

    if ((this->collisionLayer & 2) == 0) {
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
    }
    tmp = (gPlayerState.jump_status & ~0xC0);
    if (this->action != PLAYER_MINISHDIE) {
        sub_0807A2B8();
        gPlayerState.jump_status = 0;
        UpdateFloorType();
        if (gPlayerState.queued_action != 0 || gPlayerState.swim_state != 0) {
            return;
        }
        if (gPlayerState.field_0x3[1])
            sub_08073B60(this);
    }
    gPlayerState.jump_status = tmp + 1;
    if (gPlayerState.flags & PL_NO_CAP)
        gPlayerState.animation = 1060;
    else
        gPlayerState.animation = 2080;
    SoundReq(SFX_PLY_LAND);
}

static void sub_08073B60(Entity* this) {
    gPlayerState.sword_state = 0;
    gPlayerState.field_0x3[1] = 0;
    gPlayerState.jump_status = 0;
    ResolvePlayerAnimation();
    sub_080085B0(this);
    if ((gPlayerState.flags & PL_USE_PORTAL) == 0) {
        SetPlayerActionNormal();
    }
}

void sub_08073B8C(Entity* this) {
    if (!gPlayerState.field_0x3[1]) {
        sub_08073B60(this);
        return;
    }
    sub_0806F854(this, 0, -12);
    if ((this->frame & 1) == 0)
        UpdateAnimationSingleFrame(this);
    COLLISION_OFF(this);
    if (this->actionDelay != 0) {
        --this->actionDelay;
        return;
    }
    GravityUpdate(this, GRAVITY_RATE * 2);
    if (this->z.HALF.HI >= -8) {
        if (!gPlayerState.field_0x14 && (sub_0807A2B8() || !sub_08079D48())) {
            COLLISION_ON(this);
            sub_08073B60(this);
            return;
        }
        gPlayerState.jump_status++;
        this->actionDelay = 15;
        InitScreenShake(0x10, 0);
        SoundReq(SFX_14C);
    }
}

void sub_08073C30(Entity* this) {
    if (!gPlayerState.field_0x3[1] || --this->actionDelay == 0xFF) {
        sub_08073B60(this);
    } else {
        COLLISION_ON(this);
        UpdateAnimationSingleFrame(this);
    }
}

static void PlayerMinish(Entity* this) {
    static EntityAction* const sPlayerMinishStates[] = {
        sub_08073C80, sub_08073D20, sub_08073F04, sub_08073F4C, sub_08073FD0, sub_08074018, sub_08074060, sub_080740D8,
    };
    sPlayerMinishStates[this->subAction](this);
}

extern Hitbox gUnk_0811BC80;

static void sub_08073C80(Entity* this) {
    static const Hitbox sMinishHitbox = { 0, -1, { 3, 2, 2, 3 }, 2, 2 };

    gPlayerState.flags |= PL_MINISH;
    gPlayerState.animation = 3096;
    this->spriteSettings.draw = 3;
    this->spritePriority.b1 = 3;
    this->spriteSettings.shadow = 0;
    this->spriteRendering.b0 = 0;
    this->hitbox = (Hitbox*)&sMinishHitbox;
    this->actionDelay = 0;
    this->field_0xf = 2;
    this->knockbackDuration = 0;
    this->subAction = 1;
    LoadSwapGFX(this, 1, 2);
    gRoomControls.camera_target = this;
    sub_080809D4();
    if (gRoomTransition.player_status.spawn_type == PL_SPAWN_9) {
        gRoomTransition.player_status.spawn_type = PL_SPAWN_DEFAULT;
        this->spriteSettings.draw = 0;
        this->subAction = 2;
    } else {
        CreateObject(MINISH_EMOTICON, 0, 0);
    }
}

static void sub_08073D20(Entity* this) {
    gPlayerState.framestate = PL_STATE_IDLE;
    this->spritePriority.b1 = 3;
    this->hurtType = 1;
    ResetPlayerVelocity();
    if (!gPlayerState.swim_state)
        this->speed = 0xC0; /* todo: shielding speed? */
    if (!sub_08079B24()) {
        sub_08079708(this);
        return;
    }
    if (!RunQueuedAction()) {
        DoJump(this);
        UpdateFloorType();
        if (gPlayerState.jump_status)
            gPlayerState.framestate = PL_STATE_CAPE;
        if (gPlayerState.floor_type != SURFACE_SHALLOW_WATER && gPlayerState.floor_type != SURFACE_WATER) {
            gPlayerState.swim_state = 0;
            this->field_0x3c &= ~4;
        }
        if (!RunQueuedAction() && this->subAction != 2) {
            if ((gPlayerState.flags & PL_HIDDEN) == 0) {
                sub_080085B0(this);
                sub_080792D8();
                if (!gPlayerState.field_0xa && sub_08079550())
                    return;
                if (this->knockbackDuration) {
                    this->direction = this->knockbackDirection;
                    return;
                }
                if (sub_080782C0()) {
                    RunQueuedAction();
                    return;
                }
                COLLISION_ON(this);
            }
            if (!UpdatePlayerCollision()) {
                sub_08077698(this);
                if (!GravityUpdate(this, GRAVITY_RATE))
                    gPlayerState.jump_status = 0;
                if ((gPlayerState.field_0x7 & 0x80) == 0 && !gPlayerState.field_0xa) {
                    if (this->iframes <= 8) {
                        if (gPlayerState.swim_state) {
                            gPlayerState.framestate = PL_STATE_SWIM;
                            sub_0807ACCC(this);
                            UpdatePlayerMovement();
                        } else {
                            this->direction = gPlayerState.field_0xd;
                            if ((gPlayerState.field_0xd & 0x80) == 0) {
                                gPlayerState.framestate = PL_STATE_WALK;
                                UpdatePlayerMovement();
                            }
                        }
                    }
                    if (!gPlayerState.keepFacing)
                        sub_0806F948(this);
                    UpdateAnimationSingleFrame(this);
                    sub_0807B068(this);
                    if (sub_080793E4(16)) {
                        this->iframes = 20;
                        this->knockbackDuration = 4;
                        this->knockbackDirection =
                            DirectionTurnAround(Direction8FromAnimationState(this->animationState));
                        ModHealth(-2);
                        SoundReq(SFX_PLY_VO6);
                    }
                    if ((gPlayerState.flags & PL_HIDDEN) == 0)
                        sub_08008AC6(this);
                    else
                        gPlayerState.framestate = PL_STATE_D;
                }
            }
        }
    }
}

static void sub_08073F04(Entity* this) {
    this->spritePriority.b1 = 2;
    this->spriteSettings.draw = 0;
    this->subAction++;
    this->zVelocity = 0x28000;
    this->speed = 0x100;
    gPlayerState.flags &= ~PL_MINISH;
    ResetPlayer();
}

static void sub_08073F4C(Entity* this) {
    u32 x = gArea.curPortalX;
    u32 y = gArea.curPortalY;
    if (this->x.HALF.HI != x || this->y.HALF.HI != y) {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, gArea.curPortalX, gArea.curPortalY);
        this->speed = 0x100;
        LinearMoveUpdate(this);
    } else {
        COLLISION_OFF(this);
        this->actionDelay = 30;
        this->subAction++;
        this->spriteSettings.flipX = 0;
        *(u32*)&this->field_0x80.HWORD = 1152;
        *(u32*)&this->cutsceneBeh.HWORD = 1152;
        this->spriteRendering.b0 = 3;
        sub_08074018(this);
        gPlayerState.animation = 1852;
    }
}

static void sub_08073FD0(Entity* this) {
    if (this->actionDelay != 0) {
        if (--this->actionDelay != 0) {
            return;
        }
        if (this->spriteSettings.draw == 0) {
            this->spriteSettings.draw = 3;
            SoundReq(SFX_PLY_JUMP);
        }
    }
    GravityUpdate(this, GRAVITY_RATE);
    if (this->zVelocity == 0) {
        this->subAction++;
        SoundReq(SFX_PLY_GROW);
    }
}

static void sub_08074018(Entity* this) {
    if (*(u32*)&this->field_0x80 > 0x100)
        *(u32*)&this->field_0x80 -= 32;
    if (*(u32*)&this->cutsceneBeh > 0x100)
        *(u32*)&this->cutsceneBeh -= 32;
    else
        this->subAction++;
    sub_0805EC9C(this, *(u32*)&this->field_0x80, *(u32*)&this->cutsceneBeh, 0);
    UpdateAnimationSingleFrame(this);
}

static void sub_08074060(Entity* this) {
    if (!GravityUpdate(this, GRAVITY_RATE)) {
        this->hitbox = (Hitbox*)&gPlayerHitbox;
        this->direction = DirectionSouth;
        this->animationState = IdleSouth;
        this->speed = 0x100;
        this->spritePriority.b1 = 1;
        this->spriteSettings.shadow = 1;
        this->field_0xf = 0;
        this->subAction++;
        this->zVelocity = 0x20000;
        gPlayerState.animation = 2060;
        sub_0805EC60(this);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

static NONMATCH("asm/non_matching/player/sub_080740D8.inc", void sub_080740D8(Entity* this)) {
    int v1;          // r5
    int v2;          // r6
    unsigned int v4; // r0
    Hitbox* v5;      // r2
    int v6;          // r0

    UpdateAnimationSingleFrame(this);
    if (!this->field_0xf)
        v4 = this->direction;
    else
        v4 = this->direction ^ 0x10;
    switch (v4) {
        case 24:
            v5 = this->hitbox;
            v2 = this->x.HALF.HI - v5->unk2[0] + v5->offset_x - gRoomControls.origin_x;
            v6 = this->y.HALF.HI;
            v1 = v6 + v5->offset_y - gRoomControls.origin_y;
            break;
        case 8:
            v5 = this->hitbox;
            v2 = this->x.HALF.HI + v5->unk2[0] + v5->offset_x - gRoomControls.origin_x;
            v6 = this->y.HALF.HI;
            v1 = v6 + v5->offset_y - gRoomControls.origin_y;
            break;
        case 16:
            v5 = this->hitbox;
            v2 = this->x.HALF.HI + v5->offset_x - gRoomControls.origin_x;
            v6 = this->y.HALF.HI + v5->unk2[3];
            v1 = v6 + v5->offset_y - gRoomControls.origin_y;
            break;
        case 0:
            v5 = this->hitbox;
            v2 = this->x.HALF.HI + v5->unk2[0] + v5->offset_x - gRoomControls.origin_x;
            v6 = this->y.HALF.HI;
            v1 = v6 + v5->offset_y - gRoomControls.origin_y;
            break;
        default:
            break;
    }

    if (sub_080086B4(v2, v1, gUnk_080082DC))
        LinearMoveUpdate(this);
    else
        this->field_0xf = 1;
    if (!GravityUpdate(this, GRAVITY_RATE))
        sub_0807921C();
}
END_NONMATCH

u32 sub_080741C4(void) {
    if ((gPlayerState.jump_status && (gPlayerState.jump_status & 7) != 3) || gPlayerEntity.z.WORD != 0) {
        gPlayerState.field_0x11 = 0;
        gPlayerState.field_0x37 = 0;
        return 1;
    }
    return 0;
}

void SurfaceAction_DoNothing(Entity* this) {
}

void SurfaceAction_Pit(Entity* this) {
    if (!sub_080741C4() && sub_08079C30(this)) {
        if (this->action != PLAYER_FALL) {
            ResetPlayer();
            gPlayerState.queued_action = PLAYER_FALL;
        }
    }
}

void SurfaceAction_SlopeGndGndVertical(Entity* this) {
    sub_08074244(this, DirectionEast, DirectionWest);
}

void SurfaceAction_SlopeGndGndHorizontal(Entity* this) {
    sub_08074244(this, DirectionNorth, DirectionSouth);
}

static void sub_08074244(Entity* this, u32 a1, u32 a2) {
    if (gPlayerState.floor_type != SURFACE_LIGHT_GRADE && gPlayerState.floor_type != SURFACE_29) {
        this->collisionLayer = 3;
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
    }
    if (!sub_080741C4()) {
        u32 tmp;
        if (gPlayerState.dash_state == 0) {
            tmp = gPlayerState.field_0xd;
        } else {
            tmp = 4 * this->animationState;
        }
        if (a1 != tmp || a2 != tmp) {
            gPlayerState.speed_modifier -= SLOPE_SPEED_MODIFIER;
        }
    }
}

void SurfaceAction_6(Entity* this) {
    if (gPlayerState.swim_state != 0) {
        gPlayerState.swim_state = 0;
    }
    this->spritePriority.b0 = 4;
    this->field_0x3c &= ~4;
}

void SurfaceAction_7(Entity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0 && gPlayerState.field_0x11 == 15) {
        CreateObjectWithParent(this, OBJECT_E, 0, 0);
    }
}

void SurfaceAction_MinishDoorFront(Entity* this) {
    if ((this->y.HALF.HI & 0xF) <= 0xD) {
        this->collisions = 0x6600;
        hide(this);
    } else {
        EnablePlayerDraw(this);
    }
}

void SurfaceAction_MinishDoorBack(Entity* this) {
    if ((this->y.HALF.HI & 0xF) > 1) {
        this->collisions = 0x6600;
        hide(this);
    } else {
        EnablePlayerDraw(this);
    }
}

void SurfaceAction_A(Entity* this) {
    if ((this->x.HALF.HI & 0xF) < 12) {
        this->collisions = 0x66;
        hide(this);
    } else {
        EnablePlayerDraw(this);
    }
}

void SurfaceAction_B(Entity* this) {
    if ((this->x.HALF.HI & 0xF) > 4) {
        this->collisions = 0x66;
        hide(this);
    } else {
        EnablePlayerDraw(this);
    }
}

static void hide(Entity* this) {
    gPlayerState.flags |= PL_HIDDEN;
    this->type2 = 0x80;
    this->spriteSettings.draw = 0;
    COLLISION_OFF(this);
    this->knockbackDuration = 0;
    ResetPlayer();
}

void SurfaceAction_14(Entity* this) {
    if (!sub_080741C4()) {
        if (sub_08079C30(this)) {
            u32 spd;
            sub_0807AABC(this);
            sub_08074808(this);
            spd = this->speed;
            this->speed = 0x300;
            this->direction = 16;
            gPlayerState.field_0xa |= 0x80;
            LinearMoveUpdate(this);
            this->speed = spd;
        }
    }
}

void SurfaceAction_CloneTile(Entity* this) {
    if (gPlayerState.field_0xa0[0] == 4) {
        u32 item, n, i;
        if (ItemIsSword(gSave.stats.itemOnA)) {
            item = gSave.stats.itemOnA;
        } else {
            item = gSave.stats.itemOnB;
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
            Entity* e = CreateObjectWithParent(this, OBJECT_10, i, 0);
            gPlayerClones[i] = e;
            if (e != NULL) {
                CopyPosition(this, e);
            }
        } else {
            gPlayerState.sword_state |= 0x80;
            gPlayerState.flags |= PL_CLONING;
            this->x.WORD = (this->x.WORD & ~0xFFFFF) | 0x80000;
            this->y.WORD = (this->y.WORD & ~0xFFFFF) | 0x80000;
            sub_08077AEC();
        }
    }
}

void SurfaceAction_16(Entity* this) {
    if (!sub_080741C4() && !gPlayerState.field_0x14) {
        if (this->iframes == 0) {
            ModHealth(-2);
            SoundReq(SFX_PLY_VO6);
            this->iframes = 24;
            this->knockbackDuration = 4;
            this->knockbackDirection = sub_080045D4((this->x.HALF.HI & 0xFFF0) | 8, (this->y.HALF.HI & 0xFFF0) | 8,
                                                    this->x.HALF.HI, this->y.HALF.HI);
        }
        if ((gPlayerState.flags & PL_MINISH) == 0)
            sub_08008790(this, 7);
    }
}

void SurfaceAction_Ice(Entity* this) {
    if (!sub_080741C4() && ((gPlayerState.field_0x34[1] & 0x80) == 0 || this->knockbackDuration != 0)) {
        ResetPlayerVelocity();
    }
}

void SurfaceAction_ShallowWater(Entity* this) {
    if (!sub_080741C4()) {
        if (gPlayerState.flags & PL_MINISH) {
            this->spritePriority.b1 = 0;
            SurfaceAction_Water(this);
        } else {
            if (gPlayerState.swim_state) {
                COLLISION_ON(this);
                this->field_0x3c &= ~4;
                this->spritePriority.b0 = 4;
                gPlayerState.swim_state = 0;
            }
            if ((gPlayerState.field_0x92 & 0xF00) || gPlayerState.field_0x11 == 1)
                SoundReq(SFX_WATER_WALK);
        }
    }
}

void SurfaceAction_SlopeGndWater(Entity* this) {
    if (gPlayerState.swim_state) {
        COLLISION_ON(this);
        this->field_0x3c &= ~4;
        this->spritePriority.b0 = 4;
        gPlayerState.swim_state = 0;
    }
}

ASM_FUNC("asm/non_matching/player/sub_08074678.inc", void SurfaceAction_Swamp(Entity* this));

void SurfaceAction_Water(Entity* this) {
    if (!sub_080741C4()) {
        if (gPlayerState.field_0x14 == 0) {
            gPlayerState.field_0x3f += 2;
        } else {
            gPlayerState.swim_state = 0;
            this->spritePriority.b0 = 4;
            this->field_0x3c &= ~4;
        }
        if ((gPlayerState.swim_state & 0xF) || sub_08079C30(this)) {
            sub_08074808(this);
        }
    }
}

void sub_08074808(Entity* this) {
    sub_08077AEC();
    if (GetInventoryValue(ITEM_FLIPPERS) == 1) {
        if (!gPlayerState.swim_state) {
            if ((gPlayerState.flags & 0x10000) != 0)
                gPlayerState.swim_state = 1;
            else
                gPlayerState.swim_state = 8;
            this->speed = 0;
            gPlayerState.field_0x82[7] = 0;
            if ((gPlayerState.flags & PL_MINISH) == 0)
                CreateFx(this, FX_WATER_SPLASH, 0);
            SoundReq(SFX_1A5);
            ResetPlayer();
        }
        if ((gPlayerState.swim_state & 0xF) != 1) {
            sub_08079744(this);
            --gPlayerState.swim_state;
        }
        gPlayerState.flags &= ~(PL_BURNING | PL_FROZEN);
        if ((gPlayerState.flags & PL_DRUGGED) != 0 && this->field_0x7a.HWORD <= 0xEu)
            this->field_0x7a.HWORD = 15;
    } else {
        gPlayerState.queued_action = PLAYER_DROWN;
    }
}

void SurfaceAction_Button(Entity* this) {
    gPlayerState.field_0x3f -= 2;
}

void sub_080748D4(void) {
    sub_080741C4();
}

void SurfaceAction_1B(Entity* this) {
    if (!sub_080741C4()) {
        if (this->collisionLayer != 1) {
            this->y.HALF.HI += 12;
            if ((gPlayerState.flags & PL_MINISH) == 0)
                this->z.HALF.HI -= 12;
        }
        sub_0807AABC(this);
    }
}

void SurfaceAction_1C(Entity* this) {
    if (!sub_080741C4()) {
        if (sub_08079C30(this)) {
            gPlayerState.queued_action = PLAYER_LAVA;
        }
    }
}

void SurfaceAction_ClimbWall(Entity* this) {
    if (GetInventoryValue(ITEM_GRIP_RING) == 1) {
        SurfaceAction_Ladder(this);
    } else {
        this->y.HALF.HI = (this->y.HALF.HI & 0xFFF0) | 0xF;
        gPlayerState.floor_type = SURFACE_NORMAL;
    }
}

void SurfaceAction_Ladder(Entity* this) {
    if (!sub_080741C4()) {
        gPlayerState.jump_status = 0;
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
        this->animationState = IdleNorth;
        this->collisionLayer = 3;
        ResetPlayer();
    }
}

void SurfaceAction_2C(Entity* this) {
    if (GetInventoryValue(ITEM_GRIP_RING) == 1) {
        SurfaceAction_AutoLadder(this);
    } else {
        this->y.HALF.HI &= 0xFFF0;
        gPlayerState.floor_type = SURFACE_NORMAL;
    }
}

void SurfaceAction_AutoLadder(Entity* this) {
    if (!sub_080741C4()) {
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
        this->animationState = IdleNorth;
        this->collisionLayer = 3;
        gPlayerState.swim_state = 0;
        this->field_0x3c &= ~4;
        if ((this->y.HALF.HI & 0xF) <= 7) {
            gPlayerState.animation = 723;
            this->direction = DirectionSouth;
        } else {
            gPlayerState.animation = 726;
            this->direction = DirectionNorth;
        }
        ResetPlayer();
    }
}

void SurfaceAction_20(Entity* this) {
    if (gPlayerState.swim_state & 0x80) {
        Entity* e = CreateObjectWithParent(&gPlayerEntity, GROUND_ITEM, ITEM_RUPEE1, 0);
        if (e != NULL) {
            e->actionDelay = 1;
            UpdateSpriteForCollisionLayer(e);
            sub_08000152(57, gPlayerState.field_0x22[0], this->collisionLayer);
        }
    }
    SurfaceAction_Water(this);
}

void SurfaceAction_22(Entity* this) {
}

void SurfaceAction_Dust(Entity* this) {
    if (!sub_080741C4()) {
        gPlayerState.speed_modifier -= 128;
        if (gPlayerState.field_0x11 == 1 || (gPlayerState.field_0x92 & 0xF00) != 0) {
            if (gPlayerState.floor_type == SURFACE_DUST)
                CreateObjectWithParent(this, OBJECT_21, 1, 0);
            else
                CreateObjectWithParent(this, OBJECT_21, 1, 1);
        }
    }
}

void SurfaceAction_26(Entity* this) {
    u32 v1;

    if (gPlayerState.dash_state == 0)
        v1 = gPlayerState.field_0xd;
    else
        v1 = 4 * this->animationState;
    sub_08074244(this, v1, v1);
}

void SurfaceAction_Hole(Entity* this) {
    if (!gPlayerState.field_0x14 && !sub_080741C4()) {
        if (gPlayerState.flags & PL_MINISH)
            SurfaceAction_Pit(this);
        else
            gPlayerState.queued_action = PLAYER_INHOLE;
    }
}

void SurfaceAction_ConveyerNorth(Entity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        this->animationState = IdleNorth;
        this->direction = DirectionNorth;
        conveyer_push(this);
    }
}

void SurfaceAction_ConveyerSouth(Entity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        this->animationState = IdleSouth;
        this->direction = DirectionSouth;
        conveyer_push(this);
    }
}

void SurfaceAction_ConveyerWest(Entity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        this->animationState = IdleWest;
        this->direction = DirectionWest;
        conveyer_push(this);
    }
}

void SurfaceAction_ConveyerEast(Entity* this) {
    if (!sub_080741C4() && (gPlayerState.flags & PL_MINISH) == 0) {
        this->animationState = IdleEast;
        this->direction = DirectionEast;
        conveyer_push(this);
    }
}

static void conveyer_push(Entity* this) {
    ResetPlayer();
    this->spritePriority.b1 = 0;
    this->speed = WALK_SPEED;
    gPlayerState.flags |= 0x2000000;
    gPlayerState.field_0xa |= 0x80;
    gPlayerState.mobility |= 0x80;
    gPlayerState.field_0x27[0]++;
    LinearMoveUpdate(this);
}

static void sub_08074C44(Entity* this) {
    static EntityAction* const gUnk_0811BC88[] = {
        sub_08074C68,
        sub_08074CF8,
        sub_08074F00,
        sub_080750F4,
    };

    if (!RunQueuedAction())
        gUnk_0811BC88[this->subAction](this);
}

static void sub_08074C68(Entity* this) {
    this->field_0x68.HALF.LO = 0;
    if (gPlayerState.field_0x38 != 1) {
        if (*(ScriptExecutionContext**)&this->cutsceneBeh.HWORD == &gPlayerScriptExecutionContext) {
            this->subAction = 1;
            sub_0807DD64(this);
            sub_08074CF8(this);
        }
    } else {
        this->spriteSettings.draw = 1;
        this->animationState = 0;
        this->spritePriority.b1 = 0;
        this->subAction = 2;
        this->field_0x68.HALF.LO = 1;
        sub_0807DD64(this);
        if (!gPlayerState.field_0x39)
            gPlayerState.animation = 1850;
        else
            gPlayerState.animation = 1846;
        SetFade(5, 0x100);
    }
}

static void sub_08074CF8(Entity* this) {
    u32 v3;

    v3 = this->animationState;
    ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh.HWORD);
    sub_08074D34(this, *(ScriptExecutionContext**)&this->cutsceneBeh.HWORD);
    if ((this->field_0x82.HWORD & 1) != 0)
        this->animationState = v3;
    GravityUpdate(this, GRAVITY_RATE);
    UpdateAnimationSingleFrame(this);
}

void sub_08074D34(Entity* this, ScriptExecutionContext* ctx) {
    while (ctx->postScriptActions) {
        u32 bit = (~ctx->postScriptActions + 1) & ctx->postScriptActions;
        ctx->postScriptActions ^= bit;
        switch (bit) {
            default:
                break;
            case 0x1:
                if (gPlayerState.flags & PL_NO_CAP)
                    gPlayerState.animation = 0x400;
                else
                    gPlayerState.animation = DEFAULT_ANIM;
                break;
            case 0x2:
                if (gPlayerState.flags & PL_NO_CAP)
                    gPlayerState.animation = 1028;
                else
                    gPlayerState.animation = 260;
                break;
            case 0x4:
                break;
            case 0x8:
                if (gPlayerState.flags & PL_NO_CAP)
                    gPlayerState.animation = 1052;
                else
                    gPlayerState.animation = 2060;
                this->zVelocity = 0x18000;
                break;
            case 0x10:
                CreateSpeechBubbleExclamationMark(this, 8, -24);
                break;
            case 0x20:
                CreateSpeechBubbleQuestionMark(this, 8, -24);
                break;
            case 0x80:
                this->spriteSettings.draw = 1;
                break;
            case 0x100:
                this->spriteSettings.draw = 0;
                break;
            case 0x200:
                this->field_0x82.HWORD = 0;
                break;
            case 0x1000:
                this->field_0x82.HWORD &= ~1;
                break;
            case 0x2000:
                this->field_0x82.HWORD |= 1;
                break;
            case 0x4000:
                this->field_0x82.HWORD |= 8;
                break;
            case 0x8000:
                this->field_0x82.HWORD |= 4;
                break;
            case 0x20000:
                this->spriteSettings.flipX ^= 1;
                break;
            case 0x100000:
                this->subAction = 2;
                this->field_0x68.HALF.LO = 2;
                break;
            case 0x200000:
                this->subAction = 3;
                this->field_0x68.HALF.LO = 0;
                break;
        }
    }
}

static void sub_08074F00(Entity* this) {
    static EntityAction* const gUnk_0811BC98[] = {
        sub_08074F1C, sub_08074F2C, sub_08074F44, sub_08074F8C, sub_08074FEC, sub_0807501C, sub_0807508C,
    };

    gUnk_0811BC98[this->field_0x68.HALF.LO](this);
}

void sub_08074F1C(Entity* this) {
    this->field_0x68.HALF.LO = 1;
    this->animationState = IdleNorth;
}

void sub_08074F2C(Entity* this) {
    ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh.HWORD);
    sub_08074D34(this, *(ScriptExecutionContext**)&this->cutsceneBeh.HWORD);
}

void sub_08074F44(Entity* this) {
    typedef struct {
        u8 fill[0x6c];
        Entity* e;
    } fixme;

    this->field_0x68.HALF.LO++;
    if (((fixme*)&gPlayerEntity)->e)
        DeleteEntity(((fixme*)&gPlayerEntity)->e);
    if (!gPlayerState.field_0x39) {
        gPlayerState.animation = 1851;
        gPlayerState.flags |= PL_NO_CAP;
    } else {
        gPlayerState.animation = 1847;
    }
}

void sub_08074F8C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame == 1) {
        this->frame = 0;
        gActiveScriptInfo.syncFlags |= 4;
    }
    if (this->frame & 0x80) {
        this->field_0x68.HALF.LO++;
        this->actionDelay = 8;
        this->animationState = IdleSouth;
        if (!gPlayerState.field_0x39) {
            gPlayerState.animation = 1024;
        } else {
            gPlayerState.animation = DEFAULT_ANIM;
        }
    }
}

void sub_08074FEC(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0) {
        this->field_0x68.HALF.LO++;
        this->actionDelay = 4;
        this->animationState = gPlayerState.field_0x3a;
    }
}

void sub_0807501C(Entity* this) {
    if (--this->actionDelay == 0) {
        this->animationState = gPlayerState.field_0x3a;
        if (!gPlayerState.field_0x39) {
            gPlayerState.animation = 1052;
        } else {
            gPlayerState.animation = 2060;
        }
        this->spritePriority.b1 = 1;
        this->direction = Direction8FromAnimationState(this->animationState);
        this->speed = 200;
        this->zVelocity = 0x20000;
        this->actionDelay = 8;
        this->field_0x68.HALF.LO++;
        SoundReq(SFX_PLY_JUMP);
    }
}

void sub_0807508C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (GravityUpdate(this, GRAVITY_RATE)) {
        LinearMoveUpdate(this);
    } else {
        if (!gPlayerState.field_0x39) {
            gPlayerState.animation = 1024;
        } else {
            gPlayerState.flags &= ~PL_NO_CAP;
            gPlayerState.animation = DEFAULT_ANIM;
        }
        if (--this->actionDelay == 0) {
            this->animationState = IdleSouth;
            this->subAction = 1;
            this->field_0x68.HALF.LO = 0;
            SoundReq(SFX_PLY_LAND);
        }
    }
}

void sub_080750F4(Entity* this) {
    static EntityAction* const gUnk_0811BCB4[] = {
        sub_08075110,
        sub_0807513C,
        sub_0807518C,
        sub_080751B4,
    };
    gUnk_0811BCB4[this->field_0x68.HALF.LO](this);
}

void sub_08075110(Entity* this) {
    this->field_0x68.HALF.LO++;
    this->field_0xf = this->animationState;
    this->animationState = 0;
    gPlayerState.animation = 1844;
    gPlayerState.flags &= ~PL_NO_CAP;
}

void sub_0807513C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame == 1) {
        this->frame = 0;
        SoundReq(SFX_PLY_JUMP);
    }
    if (this->frame == 2) {
        this->frame = 0;
        SoundReq(SFX_14B);
        SoundReq(SFX_PLY_VO6);
    }
    if (this->frame & 0x80) {
        this->field_0x68.HALF.LO++;
        this->actionDelay = 60;
    }
}

void sub_0807518C(Entity* this) {
    if (--this->actionDelay == 0) {
        this->field_0x68.HALF.LO++;
        gPlayerState.animation = 969;
    }
}

void sub_080751B4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        this->animationState = IdleSouth;
        this->subAction = 1;
        this->field_0x68.HALF.LO = 0;
        gPlayerState.animation = DEFAULT_ANIM;
    }
}

// regalloc
NONMATCH("asm/non_matching/player/sub_080751E8.inc", void sub_080751E8(u32 a1, u32 a2, void* script)) {
    void* tmp;
    Entity* e;
    Entity* e2;

    typedef struct {
        u8 filler[0x84];
        ScriptExecutionContext* ctx;
    } fixme;

    MemClear(&gPlayerScriptExecutionContext, sizeof(ScriptExecutionContext));
    gPlayerScriptExecutionContext.scriptInstructionPointer = script;
    ((fixme*)&gPlayerEntity)->ctx = &gPlayerScriptExecutionContext;
    gPlayerState.queued_action = PLAYER_08074C44;
    gPlayerState.field_0x38 = 1;
    gPlayerState.field_0x39 = 0;
    gPlayerState.field_0x3a = a2;
    gPlayerState.flags |= PL_NO_CAP;
    if (!a1) {
        gPlayerState.field_0x39 = 0;
        tmp = &script_BedInLinksRoom;
    } else {
        gPlayerState.field_0x39 = 1;
        tmp = &script_BedAtSimons;
    }
    e = CreateObject(OBJECT_5B, !gPlayerState.field_0x39 ? 2 : 0, 0);
    if (e != NULL) {
        CopyPosition(&gPlayerEntity, e);
        StartCutscene(e, tmp);
    }
    e2 = CreateSpeechBubbleSleep(&gPlayerEntity, -14, -28);
    *(Entity**)&gPlayerEntity.field_0x6c.HWORD = e2;
    if (e2 != NULL) {
        SetDefaultPriority(e2, PRIO_NO_BLOCK);
    }
}
END_NONMATCH

void sub_0807529C(Entity* this) {
    CreateSpeechBubbleQuestionMark(this, 8, -32);
}

void sub_080752AC(Entity* this, ScriptExecutionContext* ctx) {
    LinearMoveUpdate(this);
    if (!ctx->unk_18) {
        if (sub_080002B8(this) != 41) {
            ctx->unk_18 = 1;
            ctx->unk_19 = 6;
        }
    } else if (--ctx->unk_19 == 0) {
        return;
    }
    gActiveScriptInfo.commandSize = 0;
}
