#include "global.h"
#include "audio.h"
#include "entity.h"
#include "player.h"
#include "textbox.h"
#include "utils.h"
#include "area.h"
#include "save.h"
#include "game.h"
#include "object.h"
#include "functions.h"
#include "object.h"
#include "effects.h"
#include "random.h"
#include "hitbox.h"

typedef void(EntityAction)(Entity*);

static EntityAction* const sPlayerActions[];

static EntityAction PlayerInit;
static EntityAction PlayerNormal;
static EntityAction PlayerInit;
static EntityAction PlayerFall;
static EntityAction PlayerJump;
static EntityAction PlayerPush;
static EntityAction PlayerBounce;
static EntityAction sub_08070E9C;
static EntityAction PlayerItemGet;
EntityAction PlayerMinish;
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
static EntityAction sub_080728AC;
static EntityAction PlayerInHole;
static EntityAction sub_08072C9C;
EntityAction sub_08074C44;
static EntityAction sub_08072F34;
static EntityAction PlayerUseEntrance;
EntityAction PlayerParachute;

// PLAYER_FALL
static EntityAction sub_08070C3C;
static EntityAction sub_08070CB4;

// PLAYER_BOUNCE
static EntityAction sub_08070D38;
static EntityAction sub_08070DC4;
static EntityAction sub_08070E7C;

// PLAYER_08070E9C
static EntityAction sub_08070EDC;
static EntityAction sub_08070f24;

// PLAYER_ITEMGET
static EntityAction sub_08070FA4;
static EntityAction sub_08071020;
static EntityAction sub_08071038;

// PLAYER_JUMP
static EntityAction sub_080710A8;
static EntityAction sub_08071130;
static EntityAction sub_08071208;

// PLAYER_DROWN
static EntityAction sub_0807127C;
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
static EntityAction sub_080718A0;
static EntityAction sub_0807193C;
static EntityAction sub_08071990;
static EntityAction sub_08071A4C;

// PLAYER_PUSH
static EntityAction sub_08071AB0;
static EntityAction sub_08071AF0;
static EntityAction sub_08071B60;

// PLAYER_MINISHDIE
static EntityAction sub_08071BDC;
static EntityAction sub_08071CAC;
static EntityAction sub_08071D04;
static EntityAction sub_08071D80;

// PLAYER_08071DB8
static EntityAction sub_08071DD0;
static EntityAction sub_08071E04;
static EntityAction sub_08071E74;

// PLAYER_EMPTYBOTTLE
static EntityAction sub_08071EB0;
static EntityAction sub_08071F14;

// PLAYER_FROZEN
static EntityAction sub_08071F50;
static EntityAction sub_08071F80;

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
static EntityAction sub_080722DC;
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
static EntityAction sub_08072650;
static EntityAction sub_080726F4;

// PLAYER_INHOLE
static EntityAction sub_08072970;
static EntityAction sub_08072A60;
static EntityAction sub_08072ACC;
static EntityAction sub_08072B5C;
static EntityAction sub_08072C48;

// PLAYER_08072C9C
static EntityAction sub_08072CC0;
static EntityAction sub_08072CFC;
static EntityAction sub_08072D54;
static EntityAction sub_08072F14;

// PLAYER_08072F34
static EntityAction sub_08072F94;
static EntityAction sub_08073094;

// PLAYER_USEENTRANCE
EntityAction sub_080731D8;
EntityAction sub_080732D0;
EntityAction sub_0807332C;
EntityAction sub_080733BC;

static void sub_080717F8(Entity*);
static void ResetPlayerPriority();
static void sub_080728AC(Entity*);
static void BreakOut();

extern void RespawnPlayer();
extern void sub_080797EC();
extern void sub_08079E08();
extern void sub_08078F60();
extern void sub_0806F948();
extern void sub_08077698();
extern void DisplayEzloMessage();
extern void sub_08079258();
extern void sub_0807A298();
extern u32 sub_08079B24();
extern void sub_08079708();
extern void sub_080792D8();
extern Entity* CreatePlayerBomb();
extern void sub_080791BC();
extern u32 sub_0806F854();
extern u32 sub_08019840();
extern void sub_08079744();
extern void sub_0807AE20();
extern u32 sub_0807A894();
extern u32 sub_080797C4();
extern u32 sub_0807AC54();
extern void sub_0800892E();
extern void sub_08078F24();
extern void sub_0807B068();
extern u32 sub_080001DA();
extern u32 sub_0807A2F8();
extern u32 CheckIsOverworld();
extern u32 sub_0806F730();
extern u32 sub_08007DD6();
extern u32 GetSurfaceCalcType();
extern void sub_08074808();

extern ScreenTransitionData gUnk_0813AB58;

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
        [PLAYER_080728AC] = sub_080728AC,
        [PLAYER_INHOLE] = PlayerInHole,
        [PLAYER_08072C9C] = sub_08072C9C,
        [PLAYER_08074C44] = sub_08074C44,
        [PLAYER_08072F34] = sub_08072F34,
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
    gPlayerState.animation = 0x100;
#endif
    sub_0806FDA0(this);
    LoadSwapGFX(this, 1, 2);
    InitAnimationForceUpdate(this, 2);
    if (this->collisionLayer == 0) {
        sub_08016A30(this);
    }

    if (IsItemEquipped(0x10) != 2) {
        sub_08077728();
    }
    sub_0807A108();
    sub_0807AEE4();

    if (sub_08078EFC() == 0) {
        sub_0807921C();
        sub_0807A1B8();
        if (gPlayerState.swimState != 0) {
            Entity* ent;
            gPlayerState.swimState = 1;
            sub_08079938();
            gPlayerState.field_0xa8 = 7;
            sub_0807ACCC(this);
            ent = FindEntity(0x6, 0xf, 0x6, 0xb, 0x0);
            if (ent != NULL) {
                DeleteEntity(ent);
            }
        }
    }
}

// PlayerState.flags need to be 100% before this one can reasonably be done
static ASM_FUNC("asm/non_matching/player/PlayerNormal.inc", void PlayerNormal(Entity* this));

static void sub_08070BEC(Entity* this, u32 r0) {
    if (r0 & 1)
        sub_080797EC();
    else
        sub_08079938();

    if (r0 & 2)
        sub_08079E08();
}

static void PlayerFall(Entity* this) {
    static EntityAction* const sPlayerFallStates[] = {
        sub_08070C3C,
        sub_08070CB4,
    };

    gPlayerState.field_0xd = 0xFF;
    gPlayerState.pushedObject = 0x80;
    gPlayerState.field_0xa8 = 10;

    sPlayerFallStates[this->subAction](this);
}

static void sub_08070C3C(Entity* this) {
    sub_08004168(this);

    gPlayerState.flags |= PL_BUSY | PL_DROWNING;
    gPlayerState.flags &= ~PL_BURNING;

    gPlayerState.jumpStatus = 0;

    if ((gPlayerState.flags & PL_MINISH) != 0)
        gPlayerState.animation = 0x1ba;
    else if ((gPlayerState.flags & 8) != 0)
        gPlayerState.animation = 0x458;
    else
        gPlayerState.animation = 0x1b8;

    this->subAction++;
    COLLISION_OFF(this);
    this->spritePriority.b1 = 0;
    ResetPlayer();
    sub_0807A108();
    SoundReq(SFX_PLY_VO7);
    SoundReq(SFX_FALL_HOLE);
}

static void sub_08070CB4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->frame & 0x80) != 0) {
        if ((gSave.stats.health != 0) && ((gPlayerState.flags & 0x8000) != 0)) {
            gPlayerState.flags &= ~(PL_BUSY | PL_DROWNING);
            this->spriteSettings.draw = 0;
        } else {
            gPlayerState.flags &= ~(PL_DROWNING | 0x8000);
            RespawnPlayer();
            gPlayerState.field_0xa = 0;
            this->iframes = 32;
            ModHealth(-2);
        }
    }
}

static void PlayerBounce(Entity* this) {
    static EntityAction* const sPlayerBounceStates[] = {
        sub_08070D38,
        sub_08070DC4,
        sub_08070E7C,
    };
    sPlayerBounceStates[this->subAction](this);
}

static void sub_08070D38(Entity* this) {
    COLLISION_OFF(this);
    this->direction = DirectionTurnAround(Direction8FromAnimationState(AnimationStateWalk(this->animationState)));
    this->speed = 0x100;
    this->knockbackDuration = 0;
    this->subAction++;
    this->actionDelay = gPlayerState.field_0x38;
    this->spriteIndex = 1;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        this->zVelocity = 0x20000;
        gPlayerState.animation = 0x114;
        sub_08080964(16, 0);
    } else {
        gPlayerState.animation = 0xc18;
        this->zVelocity = 0x18000;
    }

    gPlayerState.jumpStatus = 0x80;
    SoundReq(SFX_14C);
    ResetPlayer();
    sub_08078F60();
}

// minor regalloc
static NONMATCH("asm/non_matching/player/sub_08070DC4.inc", void sub_08070DC4(Entity* this)) {
    UpdateAnimationSingleFrame(this);
    sub_080085B0(this);
    sub_08079E08();
    sub_0807A1B8();

    if (sub_08078EFC() || sub_08003FC4(this, 0x2000))
        return;

    gPlayerState.jumpStatus = 0;

    if (sub_08078EFC() || sub_08079D48())
        return;

    if (gPlayerState.swimState != 0) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
        return;
    }

    if (--this->actionDelay != 0xFF) {
        this->zVelocity = 0x10000;
        return;
    }

    COLLISION_ON(this);

    if ((gPlayerState.field_0x14 == 0) && sub_08008B22()) {
        gPlayerState.field_0x10[1] = 7;
        sub_08079938();
        sub_080791BC();
        return;
    }

    this->spriteIndex = 1;
    this->actionDelay = 8;
    this->subAction++;

    if ((gPlayerState.flags & PL_MINISH) == 0)
        gPlayerState.animation = 0x100;
}
END_NONMATCH

static void sub_08070E7C(Entity* this) {
    if (--this->actionDelay == 0) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

static void sub_08070E9C(Entity* this) {
    static EntityAction* const gUnk_0811BA74[] = {
        sub_08070EDC,
        sub_08070f24,
    };

    if (sub_08078EFC() != 0) {
        MessageClose();
    } else {
        gPlayerState.field_0x27[0] = 4;
        gPlayerState.field_0xa8 = 0x13;
        sub_0807A1B8();
        gUnk_0811BA74[this->subAction](this);
    }
}

static void sub_08070EDC(Entity* this) {
    this->updatePriority = PRIO_MESSAGE;

    if ((gMessage.doTextBox & 0x7f) != 0)
        this->subAction = 1;

    if ((gPlayerState.flags & PL_MINISH) == 0)
        sub_08079938();
    else
        gPlayerState.animation = 0xc18;
}

static void sub_08070f24(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->updatePriority = this->updatePriorityPrev;
        sub_080791D0();
    }
}

static void PlayerItemGet(Entity* this) {
    static EntityAction* const sPlayerItemGetStates[] = {
        sub_08070FA4,
        sub_08071020,
        sub_08071038,
    };

    Entity* child;
    u8* temp;

    gPlayerState.field_0xa8 = 0x15;
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

static void sub_08070FA4(Entity* this) {
    this->spriteSettings.flipX = FALSE;
    this->animationState = IdleSouth;

    gPlayerState.flags |= PL_BUSY;
    gPlayerState.jumpStatus = 0;

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
    sub_08078F60();
}

static void sub_08071020(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame != 0)
        this->subAction = 2;
}

static void sub_08071038(Entity* this) {
    UpdateAnimationSingleFrame(this);

    if (sub_08078EFC() || (gMessage.doTextBox & 0x7f))
        return;

    if (this->frame & 0x80) {
        this->child = NULL;
        this->knockbackDuration = 0;
        this->iframes = 248;
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

static void PlayerJump(Entity* this) {
    static EntityAction* const sPlayerJumpStates[] = {
        sub_080710A8,
        sub_08071130,
        sub_08071208,
    };

    gPlayerState.field_0xa8 = 0xb;
    sPlayerJumpStates[this->subAction](this);
}

static void sub_080710A8(Entity* this) {
    u32 temp;

    this->subAction++;

    gPlayerState.flags |= PL_BUSY;
    gPlayerState.flags &= ~(PL_BURNING | 0x800);

    gPlayerState.playerAction = 0;

    if ((gPlayerState.heldObject | gPlayerState.field_0x1a[1]) == 0) {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            ResetPlayer();

            if (gPlayerState.flags & PL_NO_CAP) {
                gPlayerState.animation = 0x420;
            } else {
                gPlayerState.animation = 0x810;
            }
        }
    }

    gPlayerState.field_0x1d[1] = 0;
    this->direction = Direction8FromAnimationState(AnimationStateWalk(this->animationState));

    temp = sub_08079FC4(1);
    asm("lsl r0, r0, #0x4");
    this->zVelocity = (temp - 4) * 64 * 64;

    this->speed = 256;
    sub_0807A108();
    SoundReq(SFX_PLY_JUMP);
    SoundReq(SFX_PLY_VO4);
}

static void sub_08071130(Entity* this) {

    if (sub_08078EFC(this))
        return;

    if (gPlayerState.field_0x1a[1] == 0) {
        UpdateAnimationSingleFrame(this);

        if (this->frame & 1)
            return;
    }

    sub_0806F69C(this);

    if (sub_08003FC4(this, 0x2000))
        return;

    gPlayerState.jumpStatus = 0;
    sub_0800455E(this);

    if (*(Entity**)&this->field_0x74 != NULL)
        sub_0800455E(*(Entity**)&this->field_0x74);

    sub_08008790(this, 7);

    if (gPlayerState.field_0x14)
        return;

    sub_0807A1B8();

    if (sub_08078EFC())
        return;

    if ((sub_08079D48() == 0) || (gPlayerState.swimState != 0)) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
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
    sub_08078F60();
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
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

static void PlayerDrown(Entity* this) {
    static EntityAction* const sPlayerDrownStates[] = {
        sub_0807127C,
        sub_080712F0,
    };

    gPlayerState.field_0xa8 = 0x16;
    gPlayerState.flags |= PL_DROWNING;
    COLLISION_OFF(this);
    sPlayerDrownStates[this->subAction](this);
}

static void sub_0807127C(Entity* this) {
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
    gPlayerState.flags &= ~0x4;
    RespawnPlayer();
}

static void PlayerUsePortal(Entity* this) {
    static EntityAction* const sPlayerUsePortalStates[] = {
        PortalJumpOnUpdate, PortalStandUpdate,  PortalActivateInit, PortalActivateUpdate,
        PortalShrinkInit,   PortalShrinkUpdate, PortalEnterUpdate,  PortalUnknownUpdate,
    };

    gPlayerState.field_0xa8 = 0xe;
    sPlayerUsePortalStates[this->subAction](this);

    // probably a switch
    if ((this->subAction == 7) || (this->subAction < 3))
        return;

    if ((gPlayerState.flags & PL_USE_PORTAL) == 0)
        return;

    if ((gInput.newKeys & (B_BUTTON | R_BUTTON)) == 0)
        return;

    if (CheckIsDungeon() || gArea.curPortalType == 3) {
        this->subAction = 7;
        this->actionDelay = 30;
        DoFade(7, 16);
        SoundReq(SFX_F8);
    } else {
        sub_0804ACF8();
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
        this->speed = 256;
        sub_08079E08();
    }

    sub_08073904(this);
    UpdateAnimationSingleFrame(this);

    if (gPlayerState.jumpStatus == 0) {
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
            this->speed = 256;
            this->action = 9;
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
    sub_08079938();
}

static void PortalActivateInit(Entity* this) {
    gRoomControls.cameraTarget = NULL;
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
    gPlayerState.flags |= 0x80;
    SoundReq(SFX_PLY_SHRINKING);
}

static const u8 gUnk_0811BABC[] = {
    1, 1, 1, 1, 2, 4, 8, 16,
};

// horrible
static ASM_FUNC("asm/non_matching/player/PortalShrinkUpdate.inc", void PortalShrinkUpdate(Entity* this));

static void PortalEnterUpdate(Entity* this) {
    if (this->actionDelay == 0) {
        if (sub_08003FC4(this, 0x2000))
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
    sub_080500F4(0x10);
}

static void sub_080717F8(Entity* this) {
    static const s16 sOffsets[] = {
        0, -22, 22, 0, 0, 22, -22, 0,
    };

    u32 x;
    u32 y;
    this->animationState = gArea.curPortalExitDirection << 1;
    this->x.HALF.HI = gArea.curPortalX + sOffsets[gArea.curPortalExitDirection * 2];
    this->y.HALF.HI = gArea.curPortalY + sOffsets[gArea.curPortalExitDirection * 2 + 1];
    gArea.unk1A = 0xb4;
    gUnk_02034490[0] = 0;
    this->action = 9;
    this->subAction = 0;
    gPlayerState.flags = (gPlayerState.flags & ~PL_USE_PORTAL) | 0x80;
    sub_0805EC60(this);
    ResetPlayerEventPriority();
}

static void PlayerTalkEzlo(Entity* this) {
    static EntityAction* const sPlayerTalkEzloStates[] = {
        sub_080718A0,
        sub_0807193C,
        sub_08071990,
        sub_08071A4C,
    };

    if (sub_08078EFC()) {
        MessageClose();
        ResetPlayerPriority();
    } else {
        gPlayerState.field_0xa8 = 0x13;
        COLLISION_OFF(this);
        sPlayerTalkEzloStates[this->subAction](this);
    }
}

static void sub_080718A0(Entity* this) {
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

    if (gPlayerState.jumpStatus == 0) {
        this->subAction++;

        if (this->animationState == IdleEast)
            gPlayerState.animation = 0x3ca;
        else
            gPlayerState.animation = 0x3c6;

        this->spriteSettings.flipX = 0;
        return;
    }

    if (!sub_08003FC4(this, 0x2000))
        gPlayerState.jumpStatus = 0;
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
            ResetPlayerPriority();
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
        ResetPlayerPriority();
        sub_0807921C();
    }
}

static void ResetPlayerPriority(void) {
    gPriorityHandler.sys_priority = 0;
    gPlayerEntity.updatePriority = gPlayerEntity.updatePriorityPrev;
}

static void PlayerPush(Entity* this) {
    static EntityAction* const sPlayerPushStates[] = {
        sub_08071AB0,
        sub_08071AF0,
        sub_08071B60,
    };

    gPlayerState.field_0xa8 = 0x19;
    sPlayerPushStates[this->subAction](this);
}

static void sub_08071AB0(Entity* this) {
    u32 speed;

    this->subAction++;
    gPlayerState.flags |= PL_BUSY;
    if (this->type == 1) {
        this->speed = 0;
        this->actionDelay = 0;
        this->field_0xf = 1;
    } else {
        this->speed = (gPlayerState.flags & PL_MINISH) ? 64 : 128;
    }
    sub_08071AF0(this);
}

static void sub_08071AF0(Entity* this) {
    typedef struct {
        u8 frame;
        u16 speed;
    } PushFrame;

    static const PushFrame sPushFrames[] = { { 5, 0x0 },   { 1, 0x100 }, { 5, 0x0 },   { 1, 0x100 }, { 2, 0x0 },
                                             { 1, 0x100 }, { 2, 0x0 },   { 1, 0x100 }, { 3, 0x0 },   { 1, 0x100 },
                                             { 8, 0x60 },  { 8, 0x60 },  { 8, 0x60 },  { 8, 0x40 },  { 0xFF, 0x0 } };

    gPlayerState.field_0x80 = 0;
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
    sub_08079E08();
}

static void sub_08071B60(Entity* this) {
    gPlayerState.pushedObject = 2;
    gPlayerState.flags &= ~0x1;
    this->type = 0;
    this->knockbackDuration = 0;
    sub_080728AC(this);
    this->field_0xf = 6;
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        gPlayerState.animation = 0x104;
        this->spriteIndex = 3;
        InitAnimationForceUpdate(this, (this->animationState >> 1) + 0x3c);
    }
}

static void PlayerMinishDie(Entity* this) {
    static EntityAction* const sPlayerMinishDieStates[] = {
        sub_08071BDC,
        sub_08071CAC,
        sub_08071D04,
        sub_08071D80,
    };

    COLLISION_OFF(this);
    sPlayerMinishDieStates[this->subAction](this);
    gPlayerState.field_0xa8 = 0x12;
}

static void sub_08071BDC(Entity* this) {
    u32 temp;

    if (gPlayerState.flags & (0x10 | 0x100))
        return;

    if (sub_08003FC4(this, 0x2000)) {
        if (gPlayerState.flags & PL_NO_CAP)
            gPlayerState.animation = 0x420;
        else
            gPlayerState.animation = 0x810;
        return;
    }

    gPlayerState.playerAction = 0;
    if (gPlayerState.flags & PL_MINISH) {
        if ((u8)(gPlayerState.field_0x10[2] - 8) < 3) {
            sub_0807A298(this);
            RespawnPlayer();
            this->action = 10;
        }
        temp = 0xc1a;
    } else {
        temp = (gPlayerState.flags & 8) ? 0x459 : 0x1bc;
    }
    gPlayerState.animation = temp;

    gPlayerState.flags &= ~(0x1000000 | 0x200000 | 0x40000 | 0x800 | 0x400 | 0x100 | PL_BUSY);
    this->subAction = 1;
    this->animationState = IdleSouth;
    this->spritePriority.b1 = 1;
    this->spriteSettings.draw = 3;
    gPlayerState.jumpStatus = 0;
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
            temp = (gPlayerState.flags & 8) ? 0x45a : 0x2bd;
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
        gPlayerState.jumpStatus = 1;
        gPlayerState.swimState = 0;
        return;
    }

    gScreenTransition.field_0x4[1] = 1;
}

static void sub_08071D80(Entity* this) {
    UpdateAnimationSingleFrame(this);
    gPlayerState.field_0x14 = 1;
    sub_08073904(this);
    if ((gPlayerState.jumpStatus & 7) == 3) {
        gPlayerState.jumpStatus = 0;
        this->iframes = 226;
        ResetPlayerEventPriority();
        sub_080791D0();
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
        gPlayerState.animation = 0x100;
    } else {
        this->subAction = 1;
        gPlayerState.animation = 0x114;
    }
}

static void sub_08071E04(Entity* this) {
    if ((this->z.WORD != 0) && (gPlayerState.field_0x14 == '\0')) {
        sub_0807A1B8();
        if (gPlayerState.field_0x10[2] == 1) {
            gPlayerState.field_0x10[1] = 7;
            gPlayerState.flags |= 0x200;
            sub_080791BC();
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
        sub_080791BC();
}

static void sub_08071E74(Entity* this) {
    u32 temp;

    sub_08003FC4(this, 0x2000);
    sub_08079E08();
    temp = this->actionDelay--;
    if (temp == 0)
        sub_080791BC();
}

static void PlayerEmptyBottle(Entity* this) {
    static EntityAction* const sPlayerEmptyBottleStates[] = {
        sub_08071EB0,
        sub_08071F14,
    };

    sPlayerEmptyBottleStates[this->subAction](this);
}

static void sub_08071EB0(Entity* this) {
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

static void sub_08071F14(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        gPlayerState.field_0x2c = NULL;
        sub_0807921C();
    }
}

static void PlayerFrozen(Entity* this) {
    static EntityAction* const sPlayerFrozenStates[] = {
        sub_08071F50,
        sub_08071F80,
    };

    sPlayerFrozenStates[this->subAction](this);
}

static void sub_08071F50(Entity* this) {
    COLLISION_OFF(this);
    this->actionDelay = 120;
    this->subAction++;
    gPlayerState.animation = 0x294;
    sub_08077B20();
    SoundReq(SFX_195);
}

static void sub_08071F80(Entity* this) {
    if (sub_08003FC4(this, 0x2000) == 0) {
        UpdateSpriteForCollisionLayer(this);
        gPlayerState.jumpStatus = 0;
        if (gPlayerState.field_0x14 == 0) {
            if (sub_08079D48() == 0) {
                BreakOut(this);
                return;
            }
        }
    }
    if (sub_08079B24() == 0) {
        sub_08079708(this);
    } else {
        if (gPlayerState.flags & 0x800) {
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
    BreakOut(this);
}

static void BreakOut(Entity* this) {
    this->iframes = 160;
    this->knockbackDuration = 0;
    COLLISION_ON(this);
    this->spriteOffsetX = 0;
    gPlayerState.flags &= ~(0x800 | PL_BUSY);
    CreateFx(this, FX_ICE, 0);
    sub_080791BC();
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
    sub_080791BC();
}

static void sub_080720DC(Entity* this) {
    static EntityAction* const gUnk_0811BB60[] = {
        sub_08072100,
        sub_08072168,
    };

    if (sub_08078EFC() == 0)
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
    i = (u16)sub_0806F854(this, 0, -12) ? 0x4000 : 0x2000;
    sub_08003FC4(this, i);
    if (gPlayerState.field_0x3a) {
        sub_0806F69C(this);
    } else {
        sub_08079E08();
    }
    gPlayerState.field_0xd = this->direction;
    sub_08019840();
    if (--this->actionDelay == 0xff) {
        this->knockbackDuration = 0;
        COLLISION_ON(this);
        UpdateSpriteForCollisionLayer(this);
        sub_080791BC();
    }
}

static void PlayerPull(Entity* this) {
    static EntityAction* const sPlayerPullStates[] = {
        sub_08072214,
        sub_08072260,
    };

    gPlayerState.field_0xa8 = 0x1a;
    sPlayerPullStates[this->subAction](this);
    gUnk_0200AF00.filler25[9] = 8;
}

static void sub_08072214(Entity* this) {
    this->subAction = 1;
    this->speed = 128;
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
    gPlayerState.field_0x80 = 0;
    sub_08079E08();
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0) {
        gPlayerState.flags &= ~PL_BUSY;
        if ((gPlayerState.flags & PL_NO_CAP) == 0) {
            gPlayerState.animation = 0x34c;
        } else {
            gPlayerState.animation = 0x944;
        }
        this->knockbackDuration = 0;
        sub_080791BC();
    }
}

static void PlayerLava(Entity* this) {
    static EntityAction* const sPlayerLavaStates[] = {
        sub_080722DC,
        sub_08072354,
        sub_080723D0,
        sub_0807240C,
    };

    gPlayerState.field_0xa8 = 10;
    sPlayerLavaStates[this->subAction](this);
}

static void sub_080722DC(Entity* this) {
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
    if (sub_08003FC4(this, 0x2000))
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
        sub_08079E08();
    } else {
        this->iframes = 60;
        ModHealth(-8);
        sub_080791D0();
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
    sub_0807A108();
    if (sub_080002B8(this) != 0x29) {
        if ((gPlayerState.field_0x82[7] == 0) && (gPlayerState.swimState != 0)) {
            sub_0807AE20(this);
        }
        if (gRoomControls.unk2 == 0) {
            this->updatePriority = this->updatePriorityPrev;
            sub_080728AC(this);
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
    if (gRoomControls.unk2 == 0) {
        if (sub_0807A894(this) == 0x29) {
            sub_08079E08();
            if (sub_080797C4() != 0) {
                gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
                gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
                this->updatePriority = this->updatePriorityPrev;
                sub_080728AC(this);
            } else {
                UpdateAnimationSingleFrame(this);
            }
        } else {
            gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
            gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
            this->updatePriority = this->updatePriorityPrev;
            sub_080728AC(this);
        }
    }
    if ((gPlayerState.field_0x82[7] == 0) && (gPlayerState.swimState != 0)) {
        sub_0807AE20(this);
    }
}

static void PlayerRoll(Entity* this) {
    static EntityAction* const sPlayerRollStates[] = {
        sub_08072650,
        sub_080726F4,
    };

    gPlayerState.field_0xa8 = 9;
    sPlayerRollStates[this->subAction](this);
}

static void sub_08072650(Entity* this) {
    u32 temp;

    if ((gPlayerState.flags & 0x200000) == 0) {
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

static void sub_080726F4(Entity* this) {
    if (((gPlayerState.flags & (PL_ROLLING | 0x80000)) != PL_ROLLING) ||
        (!(gPlayerState.flags & 0x200000) && (this->iframes != 0) && (this->bitfield & 0x80))) {
        gPlayerState.flags &= ~PL_ROLLING;
        if (!sub_08078EFC())
            sub_080728AC(this);
        return;
    }

    this->direction = Direction8FromAnimationState(AnimationStateIdle(this->animationState));
    if (((gPlayerState.flags & PL_MINISH) == 0) && (--this->actionDelay == 0xff)) {
        CreateFx(&gPlayerEntity, FX_DASH, 0x40);
        this->actionDelay = 4;
    }
    if ((gPlayerState.flags & 2) == 0) {
        sub_0807A1B8();
    }
    if (sub_08078EFC()) {
        gPlayerState.flags &= ~PL_ROLLING;
        return;
    }

    if ((gPlayerState.flags & 0x80000) != 0) {
        gPlayerState.flags &= ~PL_ROLLING;
        return;
    }

    if (sub_0807AC54(this)) {
        return;
    }

    if (gPlayerState.flags & (0x200 | 0x40 | 0x10)) {
        gPlayerState.flags &= ~PL_ROLLING;
        sub_080728AC(this);
        return;
    }

    if (gPlayerState.field_0x10[2] == 0x17) {
        sub_0800892E(this);
    } else {
        switch (this->frame & 0xf) {
            case 0:
                if ((this->frame & 0xf) == 0) {
                    this->speed = 0x200;
                }
                break;
            case 1:
                this->speed += 0x20;
                break;
            case 2:
                this->speed = 0x300;
                break;
            case 3:
                this->speed = 0;
                break;
        }
        sub_08078F24();
        sub_08079E08();
    }
    if (((this->frame & 0x10) == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) {
        *(u8*)&this->hurtType = 0;
    }
    if ((this->frame & 0x40) != 0) {
        sub_08077698(this);
    }
    if (((this->frame & 0x80) != 0) || (gPlayerState.field_0x3[1] != 0)) {
        sub_080791D0();
    }
    if ((this->frame & 0x80) != 0) {
        gPlayerState.flags &= ~(0x200000 | PL_ROLLING);
    }
    UpdateAnimationSingleFrame(this);
}

static void sub_080728AC(Entity* this) {
    sub_08079938();
    if (gPlayerState.flags & PL_MINISH)
        sub_0807B068(this);
    else
        sub_08078F60();

    if (gPlayerState.swimState != 0)
        this->speed = 0;
    if (!(gPlayerState.flags & 0x40))
        gPlayerEntity.spriteSettings.draw = 3;
    if (!(gPlayerState.flags & PL_MINISH))
        gPlayerEntity.spritePriority.b1 = 1;

    if (!(gRoomControls.unk6 & 4)) {
        if ((gPlayerState.flags & 0x40))
            COLLISION_ON(this);
        sub_080791D0();
    }
    if (!(gPlayerState.flags & 2)) {
        sub_0807A1B8();
    }
}

static void PlayerInHole(Entity* this) {
    static EntityAction* const sPlayerInHoleStates[] = {
        sub_08072970, sub_08072A60, sub_08072ACC, sub_08072B5C, sub_08072C48,
    };

    gPlayerState.field_0xa8 = 0x17;
    sPlayerInHoleStates[this->subAction](this);
}

static void sub_08072970(Entity* this) {
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
        sub_08072A60(this);
        SoundReq(0x81);
    }
}

static void sub_08072A60(Entity* this) {
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
        this->zVelocity = 0x1a000;
        this->speed = 120;
        this->spritePriority.b0 = 4;
        this->spritePriority.b1 = 1;
        gPlayerState.jumpStatus = 0x41;
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
        gPlayerState.jumpStatus = 0x41;
        sub_0806F854(this, 0, -12);
        sub_0807921C();
        return;
    }

    if (!CheckIsOverworld()) {
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
    sub_0806F69C(this);
    if (sub_08003FC4(this, 0x2000))
        return;

    sub_08008790(this, 7);
    if (gPlayerState.field_0x14) {
        if (sub_08008B22()) {
            gPlayerState.field_0x10[1] = 7;
            if (!(gPlayerState.flags & PL_MINISH)) {
                sub_080791BC();
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
    gPlayerState.field_0xa8 = 0x11;
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
        sub_0806F69C(this);
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
    u32 iVar3;

    UpdateAnimationSingleFrame(this);
    sub_0806F854(this, 0, -12);
    if (this->actionDelay != 0) {
        sub_0806F69C(this);
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
                    sub_08079E08();
                } else {
                    sub_0806F69C(this);
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
            sub_0806F69C(this);
        } else {
            sub_08079E08();
        }
        this->actionDelay = 0;
    }

    this->actionDelay = bVar1;
    if (!sub_08003FC4(this, 0x2000)) {
        COLLISION_ON(this);
        if (this->collisionLayer == 1) {
            sub_0800455E(this);
        } else {
            sub_08004542(this);
        }
        sub_08008790(this, 7);
        if (gPlayerState.field_0x14 != 0) {
            if (sub_08008B22() == 0) {
                gPlayerState.field_0x10[1] = 7;
                if (!(gPlayerState.flags & PL_MINISH)) {
                    sub_080791BC();
                }
            }
        } else {
            if ((gPlayerState.flags & 8)) {
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

static void sub_08072F34(Entity* this) {
    static EntityAction* const gUnk_0811BBE4[] = {
        sub_08072F94,
        sub_08073094,
    };

    if (!sub_08078EFC()) {
        gPlayerState.field_0xa8 = 0x18;
        gPlayerState.field_0x10[2] = GetSurfaceCalcType(this, 0, 0);
        gUnk_0811BBE4[this->subAction](this);
        if (this->knockbackDuration != 0) {
            sub_080792D8();
            if (this->knockbackDuration == 0) {
                this->action = 0x1d;
                this->subAction = 0;
                this->y.HALF.LO = 0;
                gPlayerState.animation = 0x2cf;
            }
        }
    }
}

static void sub_08072F94(Entity* this) {
    u32 bVar1;

    switch (gPlayerState.field_0x10[2]) {
        default:
            sub_0807921C();
            break;
        case 0x1E:
        case 0x2A ... 0x2C:
            this->spritePriority.b1 = 0;
            bVar1 = gPlayerState.field_0xd;
            if ((gPlayerState.field_0xd & 0x80) == 0) {
                this->direction = gPlayerState.field_0xd;
                if ((gPlayerState.field_0xd == 8) || (gPlayerState.field_0xd == 0x18)) {
                    if (gPlayerState.field_0x10[2] == 0x1e) {
                        return;
                    }
                    if ((this->frame & 0x10)) {
                        gPlayerState.animation = 0x2d4;
                    } else {
                        gPlayerState.animation = 0x2d5;
                    }
                    sub_08073094(this);
                } else {
                    if ((gPlayerState.field_0x10[2] == 0x1e) && ((bVar1 & 7) != 0)) {
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
    sub_08079E08();
    if (!sub_08019840()) {
        gPlayerState.pushedObject ^= 0x80;
        if ((gPlayerState.field_0x10[2] != 0x2a) && (gPlayerState.field_0x10[2] != 0x2c)) {
            sub_0807A1B8();
        }

        if (sub_08078EFC() == 0) {
            switch (gPlayerState.field_0x10[2]) {
                case 0x2a:
                case 0x2c:
                    this->knockbackDuration = 0;
                    gPlayerState.flags |= 0x20000000;
                    UpdateAnimationSingleFrame(this);
                    if ((this->frame & 0x40) != 0) {
                        sub_0807A1B8();
                        if (!sub_08078EFC()) {
                            this->subAction--;
                        }
                    }
                    break;
                case 0x19:
                    sub_08074808(this);
                    sub_080791D0();
                    break;
                default:
                    sub_0807921C();
                    break;
                case 0x1e:
                case 0x2b:
                    UpdateAnimationSingleFrame(this);
                    if ((this->frame & 0x40) != 0) {
                        sub_0807A1B8();
                        if (!sub_08078EFC()) {
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

    gPlayerState.field_0xa8 = 0x1c;
    RequestPriorityDuration(NULL, 8);
    sPlayerUseEntranceStates[this->subAction](this);
}
