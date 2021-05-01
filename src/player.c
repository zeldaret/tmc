#include "global.h"
#include "audio.h"
#include "entity.h"
#include "player.h"
#include "textbox.h"
#include "utils.h"
#include "area.h"
#include "save.h"
#include "game.h"
#include "functions.h"
#include "object.h"

static void (*const sPlayerActions[])(Entity*);
extern void (*const gUnk_0811BA60[])(Entity*);
extern void (*const gUnk_0811BA68[])(Entity*);
extern void (*const gUnk_0811BA74[])(Entity*);
extern void (*const gUnk_0811BA7C[])(Entity*);
extern void (*const gUnk_0811BA88[])(Entity*);
extern void (*const gUnk_0811BA94[])(Entity*);
extern void (*const gUnk_0811BA9C[])(Entity*);
extern void (*const gUnk_0811BAD4[])(Entity*);
extern void (*const gUnk_0811BAE4[])(Entity*);
extern void (*const gUnk_0811BB3C[])(Entity*);

extern void RespawnPlayer();
extern void sub_080797EC();
extern void sub_08079E08();
extern void sub_08078F60();
extern void sub_0806F948();
extern void sub_08077698();
extern void sub_0805E544();
extern void sub_080717F8();
extern void DoExitTransition();
extern void UnfreezeTime();
extern void sub_08071A6C();
extern void sub_08052BB8();
extern void sub_08079258();
extern void sub_08071AF0();
extern void sub_080728AC();
extern void sub_0807A298();
extern u32 sub_08079B24();
extern void sub_08079708();
extern void sub_080792D8();
extern Entity* CreatePlayerBomb();
extern void sub_08072008();
extern void sub_080791BC();
extern void sub_08072168();
extern u32 sub_0806F854();
extern u32 sub_08019840();
extern void sub_08072260();
extern void sub_08079744();
extern void sub_0807AE20();
extern u32 sub_0807A894();
extern u32 sub_080797C4();
extern u32 Random();
extern u32 sub_0807AC54();
extern void sub_0800892E();
extern void sub_08078F24();
extern void sub_0807B068();
extern u32 sub_080001DA();
extern void sub_08072A60();
extern u32 sub_0807A2F8();
extern u32 sub_08052620();
extern u32 sub_0806F730();
extern u32 sub_08007DD6();
extern u32 sub_0807A1E8();
extern void sub_08073094();
extern void sub_08074808();
extern void sub_0805E4E0();

typedef struct {
    u8 frame;
    u8 dummy;
    u16 speed;
} PushFrames;

extern PushFrames gUnk_0811BAF0[];

extern Hitbox gUnk_08114F88;
extern ScreenTransitionData gUnk_0813AB58;

void DoPlayerAction(Entity* this) {
    sPlayerActions[this->action](this);
}

void PlayerInit(Entity* this) {
    Entity* ent;

    gPlayerState.field_0x0[0] = 0xff;
    gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
    gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
    this->flags |= 0x80;
    this->spritePriority.b0 = 0xc;
    this->spritePriority.b1 = 1;
    this->spriteSettings.b.shadow = 1;
    this->field_0x16 = 0x20;
    this->flags2 = 8;
    this->damageType = 0x79;
    this->hitbox = &gUnk_08114F88;
    this->spriteIndex = 1;
    gPlayerState.field_0x8 = 0x100;
    sub_0806FDA0(this);
    sub_080AE008(this, 1, 2);
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
ASM_FUNC("asm/non_matching/player/sub_08070794.s", void PlayerNormal(Entity* this))

void sub_08070BEC(Entity* this, u32 r0) {
    if (r0 & 1)
        sub_080797EC();
    else
        sub_08079938();

    if (r0 & 2)
        sub_08079E08();
}

void PlayerFall(Entity* this) {
    gPlayerState.field_0xd = 0xFF;
    gPlayerState.pushedObject = 0x80;
    gPlayerState.field_0xa8 = 10;

    gUnk_0811BA60[this->subAction](this);
}

void sub_08070C3C(Entity* this) {
    sub_08004168(this);

    gPlayerState.flags.all |= 0x1 | 0x4;
    gPlayerState.flags.all &= ~0x400;

    gPlayerState.jumpStatus = 0;

    if ((gPlayerState.flags.all & 0x80) != 0)
        gPlayerState.field_0x8 = 0x1ba;
    else if ((gPlayerState.flags.all & 8) != 0)
        gPlayerState.field_0x8 = 0x458;
    else
        gPlayerState.field_0x8 = 0x1b8;

    this->subAction++;
    this->flags &= ~0x80;
    this->spritePriority.b1 = 0;
    ResetPlayer();
    sub_0807A108();
    SoundReq(SFX_PLY_VO7);
    SoundReq(SFX_FALL_HOLE);
}

void sub_08070CB4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        if ((gSave.stats.health != 0) && ((gPlayerState.flags.all & 0x8000) != 0)) {
            gPlayerState.flags.all &= ~(0x1 | 0x4);
            this->spriteSettings.b.draw = 0;
        } else {
            gPlayerState.flags.all &= ~(0x4 | 0x8000);
            RespawnPlayer();
            gPlayerState.field_0xa = 0;
            this->iframes = 32;
            ModHealth(-2);
        }
    }
}

void PlayerBounce(Entity* this) {
    gUnk_0811BA68[this->subAction](this);
}

void sub_08070D38(Entity* this) {
    this->flags &= ~0x80;
    this->direction = ((this->animationState & 0xe) << 2) ^ 0x10;
    this->speed = 0x100;
    this->field_0x42 = 0;
    this->subAction++;
    this->actionDelay = gPlayerState.field_0x38;
    this->spriteIndex = 1;

    if ((gPlayerState.flags.all & 0x80) == 0) {
        this->field_0x20 = 0x20000;
        gPlayerState.field_0x8 = 0x114;
        sub_08080964(16, 0);
    } else {
        gPlayerState.field_0x8 = 0xc18;
        this->field_0x20 = 0x18000;
    }

    gPlayerState.jumpStatus = 0x80;
    SoundReq(SFX_14C);
    ResetPlayer();
    sub_08078F60();
}

// minor regalloc
NONMATCH("asm/non_matching/player/sub_08070DC4.s", void sub_08070DC4(Entity* this)) {
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
        this->field_0x20 = 0x10000;
        return;
    }

    this->flags |= 0x80;

    if ((gPlayerState.field_0x14 == 0) && sub_08008B22()) {
        gPlayerState.field_0x10[1] = 7;
        sub_08079938();
        sub_080791BC();
        return;
    }

    this->spriteIndex = 1;
    this->actionDelay = 8;
    this->subAction++;

    if ((gPlayerState.flags.all & 0x80) == 0)
        gPlayerState.field_0x8 = 0x100;
}
END_NONMATCH

void sub_08070E7C(Entity* this) {
    u8 timer = --this->actionDelay;

    if (timer == 0) {
        gPlayerState.jumpStatus = timer;
        sub_080791D0();
    }
}

void sub_08070E9C(Entity* this) {
    if (sub_08078EFC() != 0) {
        sub_08056360();
    } else {
        gPlayerState.field_0x27[0] = 4;
        gPlayerState.field_0xa8 = 0x13;
        sub_0807A1B8();
        gUnk_0811BA74[this->subAction](this);
    }
}

void sub_08070EDC(Entity* this) {
    this->scriptedScene = 2;

    if ((gTextBox.doTextBox & 0x7f) != 0)
        this->subAction = 1;

    if ((gPlayerState.flags.all & 0x80) == 0)
        sub_08079938();
    else
        gPlayerState.field_0x8 = 0xc18;
}

void sub_08070f24(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->scriptedScene = this->scriptedScene2;
        sub_080791D0();
    }
}

void PlayerItemGet(Entity* this) {
    Entity* child;
    u8* temp; // todo: retype

    gPlayerState.field_0xa8 = 0x15;
    this->flags &= ~(0x80);
    gUnk_0811BA7C[this->subAction](this);

    child = this->attachedEntity;
    if (child != NULL) {
        PositionEntityOnTop(this, child);
        temp = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        child->spriteOffsetX = *temp;
        child->spriteOffsetY = temp[1];
    }
}

void sub_08070FA4(Entity* this) {
    u16 temp;

    this->spriteSettings.b.flipX = FALSE;
    this->animationState = 4;

    gPlayerState.flags.all |= 1;
    gPlayerState.jumpStatus = 0;

    if ((gPlayerState.flags.all & 0x80) == 0) {
        if (gPlayerState.flags.all & 0x8) {
            if (sub_080542AC(gPlayerState.field_0x38)) {
                temp = 0x45e;
            } else {
                temp = 0x45b;
            }
        } else {
            if (sub_080542AC(gPlayerState.field_0x38)) {
                temp = 0x2e0;
            } else {
                temp = 0x1b9;
            }
        }
        gPlayerState.field_0x8 = temp;
    }

    this->subAction = 1;
    ResetPlayer();
    sub_08078F60();
}

void sub_08071020(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all != 0)
        this->subAction = 2;
}

void sub_08071038(Entity* this) {

    UpdateAnimationSingleFrame(this);

    if (sub_08078EFC() || (gTextBox.doTextBox & 0x7f))
        return;

    if (this->frames.all & 0x80) {
        this->attachedEntity = 0;
        this->field_0x42 = 0;
        this->iframes = 248;
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

void PlayerJump(Entity* this) {
    gPlayerState.field_0xa8 = 0xb;
    gUnk_0811BA88[this->subAction](this);
}

void sub_080710A8(Entity* this) {
    u32 temp;

    this->subAction++;

    gPlayerState.flags.all |= 1;
    gPlayerState.flags.all &= ~(0x400 | 0x800);

    gPlayerState.playerAction = 0;

    if ((gPlayerState.heldObject | gPlayerState.field_0x1a[1]) == 0) {
        if ((gPlayerState.flags.all & 0x80) == 0) {
            ResetPlayer();

            if ((gPlayerState.flags.all & 0x8) != 0) {
                gPlayerState.field_0x8 = 0x420;
            } else {
                gPlayerState.field_0x8 = 0x810;
            }
        }
    }

    gPlayerState.field_0x1d[1] = 0;
    this->direction = ((this->animationState & 0xe) << 2);

    temp = sub_08079FC4(1);
    asm("lsl r0, r0, #0x4");
    this->field_0x20 = (temp - 4) * 64 * 64;

    this->speed = 256;
    sub_0807A108();
    SoundReq(SFX_PLY_JUMP);
    SoundReq(SFX_PLY_VO4);
}

void sub_08071130(Entity* this) {

    if (sub_08078EFC(this))
        return;

    if (gPlayerState.field_0x1a[1] == 0) {
        UpdateAnimationSingleFrame(this);

        if (this->frames.all & 1)
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

    if (((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) && ((gPlayerState.flags.all & 0x80) == 0)) {
        if (gPlayerState.flags.all & 0x8) {
            gPlayerState.field_0x8 = 0x424;
        } else {
            gPlayerState.field_0x8 = 0x820;
        }
        this->animIndex = 0xff;
    }

    this->subAction++;
    sub_08078F60();
    this->field_0x42 = 0;
    SoundReq(SFX_PLY_LAND);
}

void sub_08071208(Entity* this) {
    if ((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) {
        if ((gPlayerState.flags.all & 0x80) == 0) {
            UpdateAnimationSingleFrame(this);
        }
    }

    if (--this->actionDelay == 0xff) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

void PlayerDrown(Entity* this) {
    gPlayerState.field_0xa8 = 0x16;
    gPlayerState.flags.all |= 4;
    this->flags &= ~0x80;
    gUnk_0811BA94[this->subAction](this);
}

void sub_0807127C(Entity* this) {
    this->subAction = 1;
    this->spritePriority.b1 = 0;

    if (gPlayerState.flags.all & 0x80) {
        this->actionDelay = 0x3c;
        gPlayerState.field_0x8 = 0xc19;
        SoundReq(SFX_WATER_SPLASH);
    } else {
        if ((gPlayerState.flags.all & 0x10000) == 0)
            sub_08004168(this);

        CreateFx(this, 11, 0);

        if ((gPlayerState.flags.all & 8) == 0)
            gPlayerState.field_0x8 = 0x72c;
        else
            gPlayerState.field_0x8 = 0x44c;
    }
    ResetPlayer();
}

void sub_080712F0(Entity* this) {
    u32 temp;

    UpdateAnimationSingleFrame(this);

    temp = FALSE;

    if ((gPlayerState.flags.all & 0x80) != 0) {
        if (--this->actionDelay == 0)
            temp = TRUE;
    } else if ((this->frames.all & 0x80) != 0) {
        if (this->animIndex != 0xce)
            gPlayerState.field_0x8 = 0x2ce;
        else
            temp = TRUE;
    }

    if (temp == FALSE)
        return;

    this->field_0x42 = 0;
    this->iframes = 32;
    this->spritePriority.b1 = 1;
    this->spriteSettings.b.draw = FALSE;
    gPlayerState.flags.all &= ~0x4;
    RespawnPlayer();
}

static void PlayerUsePortal(Entity* this) {
    gPlayerState.field_0xa8 = 0xe;
    gUnk_0811BA9C[this->subAction](this);

    // probably a switch
    if ((this->subAction == 7) || (this->subAction < 3))
        return;

    if ((gPlayerState.flags.all & 0x20) == 0)
        return;

    if ((gInput.newKeys & (0x100 | 0x2)) == 0)
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

void PortalJumpOnUpdate(Entity* this) {
    u16 x;
    u16 y;

    this->flags &= ~0x80;
    this->field_0x42 = 0;

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
        gPlayerState.flags.all |= 0x20;
        this->subAction = 1;
        this->animationState = 4;
        this->spriteSettings.b.flipX = FALSE;
        if (gArea.curPortalType == 4) {
            gPlayerState.field_0x8 = 0x52c;
        }
    }

    this->actionDelay = 8;

    if (gArea.curPortalType != 3) {
        this->spritePriority.b0 = 3;
    }
}

void PortalStandUpdate(Entity* this) {
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
            this->animationState = this->direction >> 2;
            this->field_0x20 = 0x20000;
            this->speed = 256;
            this->action = 9;
            this->subAction = 7;
            this->field_0xf = 0;
            gPlayerState.field_0x8 = (gPlayerState.flags.all & 8) ? 0x41C : 0x80C;
            gPlayerState.flags.all &= ~0x20;
            return;
        }
        this->direction = gPlayerState.field_0xd;
    } else {
        this->actionDelay = 8;
    }

    if (gArea.curPortalType == 4) {
        if (this->frames.all == 0) {
            UpdateAnimationSingleFrame(this);
            return;
        }
    } else {
        sub_08077698(this);
    }
    sub_08079938();
}

void PortalActivateInit(Entity* this) {
    gRoomControls.cameraTarget = NULL;
    gUnk_02034490[0] = 1;
    this->subAction = 3;
    this->field_0xf = 0x1e;
    gPlayerState.field_0x8 = 0x738;
    CreateObjectWithParent(this, 6, 1, 0);
    sub_08077B20();
    sub_0805E544();
}

void PortalActivateUpdate(Entity* this) {
    if (this->field_0xf)
        return;

    UpdateAnimationSingleFrame(this);

    if (gPlayerState.flags.all & 0x80)
        this->subAction = 4;
}

void PortalShrinkInit(Entity* this) {
    this->subAction = 5;
    this->spritePriority.b1 = 0;
    this->field_0xf = 0;
    this->spriteRendering.b0 = 3;
    *(u32*)&this->field_0x80.HWORD = 0x100;
    *(u32*)&this->cutsceneBeh = 0x100;
    sub_0805EC9C(this, 0x100, 0x100, 0);
    gPlayerState.field_0x8 = 0x2c3;
    gPlayerState.flags.all |= 0x80;
    SoundReq(SFX_PLY_SHRINKING);
}

// horrible
ASM_FUNC("asm/non_matching/player/sub_08071634.s", void PortalShrinkUpdate(Entity* this))

void PortalEnterUpdate(Entity* this) {
    if (this->actionDelay == 0) {
        if (sub_08003FC4(this, 0x2000))
            return;

        this->spriteSettings.b.draw = FALSE;

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

void PortalUnknownUpdate(Entity* this) {
    if (gFadeControl.active)
        return;

    if (this->actionDelay != 0) {
        this->actionDelay--;
        return;
    }

    sub_080717F8(this);
    sub_080500F4(0x10);
}

extern s16 gUnk_0811BAC4[];

void sub_080717F8(Entity* this) {
    u32 x;
    u32 y;
    this->animationState = gArea.curPortalExitDirection << 1;
    this->x.HALF.HI = gArea.curPortalX + gUnk_0811BAC4[gArea.curPortalExitDirection * 2];
    this->y.HALF.HI = gArea.curPortalY + gUnk_0811BAC4[gArea.curPortalExitDirection * 2 + 1];
    gArea.unk1A = 0xb4;
    gUnk_02034490[0] = 0;
    this->action = 9;
    this->subAction = 0;
    gPlayerState.flags.all = (gPlayerState.flags.all & ~0x20) | 0x80;
    sub_0805EC60(this);
    UnfreezeTime();
}

void PlayerTalkEzlo(Entity* this) {
    if (sub_08078EFC()) {
        sub_08056360();
        sub_08071A6C();
    } else {
        gPlayerState.field_0xa8 = 0x13;
        this->flags &= ~0x80;
        gUnk_0811BAD4[this->subAction](this);
    }
}

void sub_080718A0(Entity* this) {
    ResetPlayer();
    gUnk_03000B80.filler[0x63] = 0;
    this->iframes = 0;
    gUnk_03003DC0.unk0 = 6;
    this->scriptedScene = 6;

    if (gPlayerState.flags.all & 0x80) {
        this->subAction = 2;
        this->spritePriority.b1 = 0;
        sub_08052BB8();
        return;
    }

    if (gPlayerState.jumpStatus == 0) {
        this->subAction++;

        if (this->animationState == 2)
            gPlayerState.field_0x8 = 0x3ca;
        else
            gPlayerState.field_0x8 = 0x3c6;

        this->spriteSettings.b.flipX = 0;
        return;
    }

    if (!sub_08003FC4(this, 0x2000))
        gPlayerState.jumpStatus = 0;
}

void sub_0807193C(Entity* this) {
    Entity* child;

    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80) {
        this->subAction++;
        child = CreateObjectWithParent(this, OBJECT_6, 0, 0);
        this->attachedEntity = child;
        if (child != NULL) {
            if (this->animationState == 2)
                gPlayerState.field_0x8 = 0x3cc;
            else
                gPlayerState.field_0x8 = 0x3c7;
            sub_08052BB8();
        }
    }
}

void sub_08071990(Entity* this) {
    u32 temp;

    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->subAction++;

        if ((gPlayerState.flags.all & 0x80) == 0) {
            if (this->animationState == 2)
                gPlayerState.field_0x8 = 0x3cd;
            else
                gPlayerState.field_0x8 = 0x3c9;
        } else {
            sub_08071A6C();
            sub_08079258();
        }
        return;
    }

    if (gPlayerState.flags.all & 0x80)
        return;

    if (this->animationState == 2)
        temp = 4;
    else
        temp = 0;

    if (this->attachedEntity->actionDelay != 0) {
        if ((u8)(temp + 200) != this->animIndex) {
            gPlayerState.field_0x8 = temp + 0x3c8;
            return;
        }
    } else {
        if ((u8)(temp + 199) != this->animIndex) {
            gPlayerState.field_0x8 = temp + 0x3c7;
            return;
        }
    }
    UpdateAnimationSingleFrame(this);
}

void sub_08071A4C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80) {
        sub_08071A6C();
        sub_0807921C();
    }
}

void sub_08071A6C(void) {
    gUnk_03003DC0.unk0 = 0;
    gPlayerEntity.scriptedScene = gPlayerEntity.scriptedScene2;
}

void PlayerPush(Entity* this) {
    gPlayerState.field_0xa8 = 0x19;
    gUnk_0811BAE4[this->subAction](this);
}

void sub_08071AB0(Entity* this) {
    u32 speed;

    this->subAction++;
    gPlayerState.flags.all |= 1;
    if (this->type == 1) {
        this->speed = 0;
        this->actionDelay = 0;
        this->field_0xf = 1;
    } else {
        this->speed = (gPlayerState.flags.all & 0x80) ? 64 : 128;
    }
    sub_08071AF0(this);
}

void sub_08071AF0(Entity* this) {
    gPlayerState.field_0x80 = 0;
    UpdateAnimationSingleFrame(this);
    if (this->type == 1) {
        if (--this->field_0xf == 0) {
            if (gUnk_0811BAF0[this->actionDelay].frame != 0xff) {
                this->field_0xf = gUnk_0811BAF0[this->actionDelay].frame;
                this->speed = gUnk_0811BAF0[this->actionDelay].speed;
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

void sub_08071B60(Entity* this) {
    gPlayerState.pushedObject = 2;
    gPlayerState.flags.all &= ~0x1;
    this->type = 0;
    this->field_0x42 = 0;
    sub_080728AC(this);
    this->field_0xf = 6;
    if ((gPlayerState.flags.all & 0x80) == 0) {
        gPlayerState.field_0x8 = 0x104;
        this->spriteIndex = 3;
        InitAnimationForceUpdate(this, (this->animationState >> 1) + 0x3c);
    }
}

extern void (*const gUnk_0811BB2C[])(Entity*);

void PlayerMinishDie(Entity* this) {
    this->flags &= ~0x80;
    gUnk_0811BB2C[this->subAction](this);
    gPlayerState.field_0xa8 = 0x12;
}

void sub_08071BDC(Entity* this) {
    u32 temp;

    if (gPlayerState.flags.all & (0x10 | 0x100))
        return;

    if (sub_08003FC4(this, 0x2000)) {
        if ((gPlayerState.flags.all & 8) != 0)
            gPlayerState.field_0x8 = 0x420;
        else
            gPlayerState.field_0x8 = 0x810;
        return;
    }

    gPlayerState.playerAction = 0;
    if (gPlayerState.flags.all & 0x80) {
        if ((u8)(gPlayerState.field_0x10[2] - 8) < 3) {
            sub_0807A298(this);
            RespawnPlayer();
            this->action = 10;
        }
        temp = 0xc1a;
    } else {
        temp = (gPlayerState.flags.all & 8) ? 0x459 : 0x1bc;
    }
    gPlayerState.field_0x8 = temp;

    gPlayerState.flags.all &= ~(0x1000000 | 0x200000 | 0x40000 | 0x800 | 0x400 | 0x100 | 0x1);
    this->subAction = 1;
    this->animationState = 4;
    this->spritePriority.b1 = 1;
    this->spriteSettings.b.draw = 3;
    gPlayerState.jumpStatus = 0;
    gPlayerState.pushedObject = 0;
    sub_0800451C(this);
    ResetPlayer();
    SoundReq(SFX_PLY_DIE);
}

void sub_08071CAC(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80) {
        u32 temp;
        if ((gPlayerState.flags.all & 0x80) == 0)
            temp = (gPlayerState.flags.all & 8) ? 0x45a : 0x2bd;
        else
            temp = 0xc1b;
        gPlayerState.field_0x8 = temp;

        this->subAction = 2;
        this->actionDelay = 0xf0;
        SoundReq(SFX_PLY_VO7);
    }
}

void sub_08071D04(Entity* this) {
    int idx;
    int deltaHealth;

    UpdateAnimationSingleFrame(this);
    if (this->frames.all == 0)
        return;

    deltaHealth = 0;
    idx = GetBottleContaining(0x28);
    if (idx != 0) {
        gSave.stats.bottles[idx - 1] = 0x20;
        CreateObject(0x40, 0x60, 2);
        deltaHealth = 32;
    }

    if (deltaHealth != 0) {
        ModHealth(deltaHealth);
        this->subAction = 3;
        gPlayerState.field_0x3c[0] = 0;
        this->direction = 0xff;
        this->speed = 0;
        this->field_0x20 = 0x18000;
        gPlayerState.jumpStatus = 1;
        gPlayerState.swimState = 0;
        return;
    }

    gScreenTransition.field_0x4[1] = 1;
}

void sub_08071D80(Entity* this) {
    UpdateAnimationSingleFrame(this);
    gPlayerState.field_0x14 = 1;
    sub_08073904(this);
    if ((gPlayerState.jumpStatus & 7) == 3) {
        gPlayerState.jumpStatus = 0;
        this->iframes = 226;
        UnfreezeTime();
        sub_080791D0();
    }
}

void sub_08071DB8(Entity* this) {
    gUnk_0811BB3C[this->subAction](this);
}

void sub_08071DD0(Entity* this) {
    this->actionDelay = gPlayerState.field_0x38;
    if (gPlayerState.field_0x39 != 0) {
        gPlayerState.field_0x39 = 0;
        this->subAction = 2;
        gPlayerState.field_0x8 = 0x100;
    } else {
        this->subAction = 1;
        gPlayerState.field_0x8 = 0x114;
    }
}

void sub_08071E04(Entity* this) {
    if ((this->height.WORD != 0) && (gPlayerState.field_0x14 == '\0')) {
        sub_0807A1B8();
        if (gPlayerState.field_0x10[2] == 1) {
            gPlayerState.field_0x10[1] = 7;
            gPlayerState.flags.all |= 0x200;
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

void sub_08071E74(Entity* this) {
    u32 temp;

    sub_08003FC4(this, 0x2000);
    sub_08079E08();
    temp = this->actionDelay--;
    if (temp == 0)
        sub_080791BC();
}

extern void (*const gUnk_0811BB48[])(Entity*);

void PlayerEmptyBottle(Entity* this) {
    gUnk_0811BB48[this->subAction](this);
}

void sub_08071EB0(Entity* this) {
    Entity* ent;

    ResetPlayer();
    ent = CreatePlayerBomb(this, 0xe);
    if (ent != NULL) {
        ent->field_0x68.HALF.LO = gPlayerState.field_0x38;
        this->subAction++;
        switch (gPlayerState.field_0x38) {
            case 0x20:
                gPlayerState.field_0x8 = 0x614;
                break;
            case 0x21 ... 0x25:
                gPlayerState.field_0x8 = 0x2df;
                break;
            default:
                gPlayerState.field_0x8 = 0x610;
                sub_0807CAA0(gPlayerState.field_0x38, 2);
                break;
        }
    }
}

void sub_08071F14(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all & 0x80) {
        gPlayerState.field_0x2c = NULL;
        sub_0807921C();
    }
}

extern void (*const gUnk_0811BB50[])(Entity*);

void PlayerFrozen(Entity* this) {
    gUnk_0811BB50[this->subAction](this);
}

void sub_08071F50(Entity* this) {
    this->flags &= ~0x80;
    this->actionDelay = 0x78;
    this->subAction++;
    gPlayerState.field_0x8 = 0x294;
    sub_08077B20();
    SoundReq(SFX_195);
}

void sub_08071F80(Entity* this) {
    if (sub_08003FC4(this, 0x2000) == 0) {
        UpdateSpriteForCollisionLayer(this);
        gPlayerState.jumpStatus = 0;
        if (gPlayerState.field_0x14 == 0) {
            if (sub_08079D48() == 0) {
                sub_08072008(this);
                return;
            }
        }
    }
    if (sub_08079B24() == 0) {
        sub_08079708(this);
    } else {
        if (gPlayerState.flags.all & 0x800) {
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
    sub_08072008(this);
}

void sub_08072008(Entity* this) {
    this->iframes = 160;
    this->field_0x42 = 0;
    this->flags |= 0x80;
    this->spriteOffsetX = 0;
    gPlayerState.flags.all &= ~(0x800 | 0x1);
    CreateFx(this, 0xd, 0);
    sub_080791BC();
}

extern void (*const gUnk_0811BB58[])(Entity*);

void sub_0807204C(Entity* this) {
    gUnk_0811BB58[this->subAction](this);
}

void sub_08072064(Entity* this) {
    this->subAction = 1;
    this->flags &= ~0x80;
    this->actionDelay = gPlayerState.field_0x3a;
    gPlayerState.field_0x8 = gPlayerState.field_0x38 | (gPlayerState.field_0x39 << 8);
    ResetPlayer();
}

void sub_08072098(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->actionDelay != 0)
        if (--this->actionDelay != 0xFF)
            return;
        else
            ;
    else if ((this->frames.all & 0x80) == 0)
        return;

    if (this->currentHealth != 0)
        this->flags |= 0x80;
    sub_080791BC();
}

extern void (*const gUnk_0811BB60[])(Entity*);

void sub_080720DC(Entity* this) {
    if (sub_08078EFC() == 0)
        gUnk_0811BB60[this->subAction](this);
}

void sub_08072100(Entity* this) {
    this->spriteSettings.b.draw = 3;
    this->speed = 0x140;
    this->hitbox = &gUnk_08114F88;
    this->actionDelay = gPlayerState.field_0x38;
    this->subAction = 1;
    this->flags &= ~0x80;
    if (gPlayerState.field_0x39)
        this->direction = 0xff;

    if ((gPlayerState.flags.all & 8)) {
        gPlayerState.field_0x8 = 0x404;
    } else {
        gPlayerState.field_0x8 = 0x104;
    }
    ResetPlayer();
    sub_08072168(this);
}

void sub_08072168(Entity* this) {
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
        this->field_0x42 = 0;
        this->flags |= 0x80;
        UpdateSpriteForCollisionLayer(this);
        sub_080791BC();
    }
}

extern void (*const gUnk_0811BB68[])(Entity*);

void PlayerPull(Entity* this) {
    gPlayerState.field_0xa8 = 0x1a;
    gUnk_0811BB68[this->subAction](this);
    gUnk_0200AF00.filler25[9] = 8;
}

void sub_08072214(Entity* this) {
    this->subAction = 1;
    this->speed = 128;
    this->actionDelay = gPlayerState.field_0x38;
    this->direction = (this->animationState ^ 4) << 2;
    if (!(gPlayerState.flags.all & 8)) {
        gPlayerState.field_0x8 = 0x34c;
    } else {
        gPlayerState.field_0x8 = 0x944;
    }
    gPlayerState.flags.all |= 1;
    sub_08072260(this);
}

void sub_08072260(Entity* this) {
    gPlayerState.field_0x80 = 0;
    sub_08079E08();
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0) {
        gPlayerState.flags.all &= ~0x1;
        if (!(gPlayerState.flags.all & 8)) {
            gPlayerState.field_0x8 = 0x34c;
        } else {
            gPlayerState.field_0x8 = 0x944;
        }
        this->field_0x42 = 0;
        sub_080791BC();
    }
}

extern void (*const gUnk_0811BB70[])(Entity*);

void PlayerLava(Entity* this) {
    gPlayerState.field_0xa8 = 10;
    gUnk_0811BB70[this->subAction](this);
}

void sub_080722DC(Entity* this) {
    Entity* ent;

    this->flags &= ~0x80;
    if (!(gPlayerState.flags.all & 0x80)) {
        this->subAction = 1;
        this->field_0x20 = 0x28000;
        ent = CreateObject(OBJECT_42, 0x80, 0);
        if (ent != NULL) {
            ent->attachedEntity = this;
        }
        gPlayerState.field_0x8 = 0x114;
    } else {
        this->spriteSettings.b.draw = 0;
        this->subAction = 3;
        this->field_0x42 = 10;
    }
    gPlayerState.flags.all |= (0x400 | 0x1);
    ResetPlayer();
    SoundReq(SFX_124);
    SoundReq(SFX_PLY_VO6);
}

void sub_08072354(Entity* this) {
    sub_0806F854(this, 0, -12);
    UpdateAnimationSingleFrame(this);
    sub_08079744(this);
    if (sub_08003FC4(this, 0x2000))
        return;

    this->spritePriority.b1 = 0;
    this->field_0x42 = 0;
    this->subAction = 2;
    this->actionDelay = 0x3c;
    gPlayerState.field_0x8 = 0x2c1;
    gPlayerState.flags.all &= ~0x400;
    UpdateSpriteForCollisionLayer(this);
    CreateFx(this, 0xc, 0);
    SoundReq(SFX_1A6);
}

void sub_080723D0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (--this->actionDelay == 0xff) {
        this->spritePriority.b1 = 1;
        this->iframes = 0x14;
        ModHealth(-2);
        RespawnPlayer();
    }
}

void sub_0807240C(Entity* this) {
    if (--this->field_0x42 == 0xff) {
        this->spriteSettings.b.draw = 3;
        this->iframes = 0x14;
        gPlayerState.flags.all &= ~0x400;
        ModHealth(-2);
        RespawnPlayer();
    }
}

extern void (*const gUnk_0811BB80[])(Entity*);

void sub_08072454(Entity* this) {
    gUnk_0811BB80[this->subAction](this);
}

void sub_0807246C(Entity* this) {
    this->subAction = 1;
    this->actionDelay = gPlayerState.field_0x38;
    gPlayerState.field_0x8 = 0x3c0;
    SoundReq(0x7b);
}

void sub_08072490(Entity* this) {
    if (--this->actionDelay != 0xff) {
        UpdateAnimationSingleFrame(this);
        sub_08079E08();
    } else {
        this->iframes = 60;
        ModHealth(-8);
        sub_080791D0();
    }
}

extern void (*const gUnk_0811BB88[])(Entity*);

void PlayerRoomTransition(Entity* this) {
    gUnk_0811BB88[this->subAction](this);
}

void sub_080724DC(Entity* this) {
    this->field_0x42 = 0;
    sub_0807A108();
    if (sub_080002B8(this) != 0x29) {
        if ((gPlayerState.field_0x82[7] == 0) && (gPlayerState.swimState != 0)) {
            sub_0807AE20(this);
        }
        if (gRoomControls.unk2 == 0) {
            this->scriptedScene = this->scriptedScene2;
            sub_080728AC(this);
        } else if (gPlayerState.field_0x1c == 0) {
            UpdateAnimationSingleFrame(this);
        }
    } else {
        this->spriteSettings.b.draw = 3;
        this->subAction = 1;
        if (gRoomVars.filler[0] == 0) {
            if (gPlayerState.flags.all & 0x80) {
                gPlayerState.field_0x8 = 0xc18;
            } else {
                gPlayerState.field_0x8 = 0x104;
            }
            this->direction = this->animationState << 2;
        }
    }
}

void sub_0807258C(Entity* this) {
    if (gRoomControls.unk2 == 0) {
        if (sub_0807A894(this) == 0x29) {
            sub_08079E08();
            if (sub_080797C4() != 0) {
                gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
                gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
                this->scriptedScene = this->scriptedScene2;
                sub_080728AC(this);
            } else {
                UpdateAnimationSingleFrame(this);
            }
        } else {
            gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
            gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
            this->scriptedScene = this->scriptedScene2;
            sub_080728AC(this);
        }
    }
    if ((gPlayerState.field_0x82[7] == 0) && (gPlayerState.swimState != 0)) {
        sub_0807AE20(this);
    }
}

extern void (*const gUnk_0811BB90[])(Entity*);

void PlayerRoll(Entity* this) {
    gPlayerState.field_0xa8 = 9;
    gUnk_0811BB90[this->subAction](this);
}

void sub_08072650(Entity* this) {
    u32 temp;

    if ((gPlayerState.flags.all & 0x200000) == 0) {
        sub_0806F948(&gPlayerEntity);
        this->direction = this->animationState << 2;
    }
    this->subAction = 1;
    this->actionDelay = 0;
    ResetPlayer();
    temp = gPlayerState.flags.all;
    if (gPlayerState.flags.all & 0x80) {
        this->spritePriority.b1 = 0;
        gPlayerState.field_0x8 = 0xc08;
    } else {
        *(u8*)&this->field_0x40 = 0x1e;
        if (temp & 8) {
            gPlayerState.field_0x8 = 0x438;
        } else {
            gPlayerState.field_0x8 = 0x2ac;
        }
    }
    gPlayerState.flags.all |= 0x40000;
    if (Random() & 1) {
        SoundReq(SFX_PLY_VO5);
    } else {
        SoundReq(SFX_PLY_VO4);
    }
    SoundReq(SFX_7E);
}

void sub_080726F4(Entity* this) {
    if (((gPlayerState.flags.all & (0x40000 | 0x80000)) != 0x40000) ||
        (!(gPlayerState.flags.all & 0x200000) && (this->iframes != 0) && (this->bitfield & 0x80))) {
        gPlayerState.flags.all &= ~0x40000;
        if (!sub_08078EFC())
            sub_080728AC(this);
        return;
    }

    this->direction = (this->animationState & 6) << 2;
    if (((gPlayerState.flags.all & 0x80) == 0) && (--this->actionDelay == 0xff)) {
        CreateFx(&gPlayerEntity, 0x11, 0x40);
        this->actionDelay = 4;
    }
    if ((gPlayerState.flags.all & 2) == 0) {
        sub_0807A1B8();
    }
    if (sub_08078EFC()) {
        gPlayerState.flags.all &= ~0x40000;
        return;
    }

    if ((gPlayerState.flags.all & 0x80000) != 0) {
        gPlayerState.flags.all &= ~0x40000;
        return;
    }

    if (sub_0807AC54(this)) {
        return;
    }

    if (gPlayerState.flags.all & 0x250) {
        gPlayerState.flags.all &= ~0x40000;
        sub_080728AC(this);
        return;
    }

    if (gPlayerState.field_0x10[2] == 0x17) {
        sub_0800892E(this);
    } else {
        switch (this->frames.all & 0xf) {
            case 0:
                if ((this->frames.all & 0xf) == 0) {
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
    if (((this->frames.all & 0x10) == 0) && ((gPlayerState.flags.all & 0x80) == 0)) {
        *(u8*)&this->field_0x40 = 0;
    }
    if ((this->frames.all & 0x40) != 0) {
        sub_08077698(this);
    }
    if (((this->frames.all & 0x80) != 0) || (gPlayerState.field_0x3[1] != 0)) {
        sub_080791D0();
    }
    if ((this->frames.all & 0x80) != 0) {
        gPlayerState.flags.all &= ~(0x200000 | 0x40000);
    }
    UpdateAnimationSingleFrame(this);
}

void sub_080728AC(Entity* this) {
    sub_08079938();
    if (gPlayerState.flags.all & 0x80)
        sub_0807B068(this);
    else
        sub_08078F60();

    if (gPlayerState.swimState != 0)
        this->speed = 0;
    if (!(gPlayerState.flags.all & 0x40))
        gPlayerEntity.spriteSettings.b.draw = 3;
    if (!(gPlayerState.flags.all & 0x80))
        gPlayerEntity.spritePriority.b1 = 1;

    if (!(gRoomControls.unk6 & 4)) {
        if ((gPlayerState.flags.all & 0x40))
            this->flags |= 0x80;
        sub_080791D0();
    }
    if (!(gPlayerState.flags.all & 2)) {
        sub_0807A1B8();
    }
}

extern void (*const gUnk_0811BB98[])(Entity*);

void PlayerInHole(Entity* this) {
    gPlayerState.field_0xa8 = 0x17;
    gUnk_0811BB98[this->subAction](this);
}

void sub_08072970(Entity* this) {
    if (this->currentHealth != 0) {
        this->subAction = 1;
        this->x.HALF.HI = (this->x.HALF.HI & ~0xF) | 8;
        this->y.HALF.HI = (this->y.HALF.HI & ~0XF) | 10;
        this->flags &= ~0x80;
        this->spritePriority.b0 = 7;
        this->spritePriority.b1 = 0;
        this->actionDelay = 0;
        gPlayerState.flags.all |= 0x100000;
        if (gPlayerState.flags.all & 8) {
            gPlayerState.field_0x8 = 0x950;
        } else {
            gPlayerState.field_0x8 = 0x61c;
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

void sub_08072A60(Entity* this) {
    if (this->frames.all & 0x80) {
        if (this->actionDelay == 1) {
            this->subAction = 3;
            this->actionDelay = 0x28;
            this->spritePriority.b1 = 1;
            gPlayerState.field_0x8 = 0x624;
            return;
        }

        this->subAction = 2;
        if (gPlayerState.flags.all & 8) {
            gPlayerState.field_0x8 = 0x954;
        } else {
            gPlayerState.field_0x8 = 0x620;
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_08072ACC(Entity* this) {
    if (gPlayerState.field_0xd == 0xff) {
        this->field_0xf = 0;
    } else if (this->field_0xf > 7) {
        this->flags |= 0x80;
        this->direction = gPlayerState.field_0xd;
        this->field_0x20 = 0x1a000;
        this->speed = 0x78;
        this->spritePriority.b0 = 4;
        this->spritePriority.b1 = 1;
        gPlayerState.jumpStatus = 0x41;
        sub_0807921C();
        sub_0807BA8C(COORD_TO_TILE(this), this->collisionLayer);
    } else {
        this->animationState = gPlayerState.field_0xd >> 2;
        this->field_0xf++;
    }
}

void sub_08072B5C(Entity* this) {
    u32 temp;

    sub_080042BA(this, ((0x28 - this->actionDelay) >> 4) + 1);
    sub_0806F948(this);
    if (this->actionDelay != 0) {
        this->actionDelay--;
        return;
    }

    SetTile(0x4021, COORD_TO_TILE(this), this->collisionLayer);
    this->direction = this->animationState << 2;
    temp = sub_0807A2F8(1);
    if (!temp) {
        this->flags |= 0x80;
        this->spritePriority.b0 = 4;
        this->speed = 0x40;
        this->field_0x20 = 0x39000;
        this->height.WORD--;
        gPlayerState.jumpStatus = 0x41;
        sub_0806F854(this, 0, -12);
        sub_0807921C();
        return;
    }

    if (!sub_08052620()) {
        sub_08004542(this);
    }
    this->subAction++;
    temp <<= 4;
    temp -= 4;
    temp <<= 12;
    this->field_0x20 = temp;
    this->speed = 0x100;
    gPlayerState.field_0x8 = 0x810;
    SoundReq(0x7c);
}

void sub_08072C48(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_0806F69C(this);
    if (sub_08003FC4(this, 0x2000))
        return;

    sub_08008790(this, 7);
    if (gPlayerState.field_0x14) {
        if (sub_08008B22()) {
            gPlayerState.field_0x10[1] = 7;
            if (!(gPlayerState.flags.all & 0x80)) {
                sub_080791BC();
            }
        }
    } else {
        sub_0807921C();
    }
}

extern void (*const gUnk_0811BBAC[])(Entity*);

void sub_08072C9C(Entity* this) {
    gPlayerState.field_0xa8 = 0x11;
    gUnk_0811BBAC[this->subAction](this);
}

void sub_08072CC0(Entity* this) {
    this->subAction = 1;
    this->flags &= ~0x80;
    this->field_0xf = (gPlayerState.field_0x3a >> 2) + 1;
    this->direction = gPlayerState.field_0x39;
    this->speed = 0x400;
    gPlayerState.field_0x8 = 0x524;
    gPlayerState.heldObject = 0;
}

void sub_08072CFC(Entity* this) {
    sub_080042BA(this, 2);
    if (--this->field_0xf != 0xff) {
        sub_0806F69C(this);
        return;
    }

    this->subAction = 2;
    if (gPlayerState.field_0x38 < 8) {
        gPlayerState.field_0x38 = 8;
    }
    this->field_0x20 = gPlayerState.field_0x38 << 0xc;
    this->speed = 0x200;
    gPlayerState.field_0x8 = 0x810;
    this->actionDelay = 5;
    this->field_0xf = 0;
    ResetPlayer();
}

extern const u16* gUnk_0811BBD4[];

NONMATCH("asm/non_matching/player/sub_08072D54.s", void sub_08072D54(Entity* this)) {
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
                if (sub_08007DD6(uVar2, gUnk_0811BBD4[gPlayerEntity.animationState >> 1])) {
                    this->actionDelay = 1;
                    this->field_0xf = 1;
                }
                break;
            case 1:
                if (sub_08007DD6(uVar2, gUnk_0811BBD4[gPlayerEntity.animationState >> 1])) {
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
                if (sub_08007DD6(uVar2, gUnk_0811BBD4[gPlayerEntity.animationState >> 1]) != 0) {
                    this->actionDelay = 1;
                    this->field_0xf = 3;
                }
                break;
            default:
                this->animationState ^= 4;
                if (sub_08007DD6(uVar2, gUnk_0811BBD4[gPlayerEntity.animationState >> 1])) {
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
        this->flags |= 0x80;
        if (this->collisionLayer == 1) {
            sub_0800455E(this);
        } else {
            sub_08004542(this);
        }
        sub_08008790(this, 7);
        if (gPlayerState.field_0x14 != 0) {
            if (!sub_08008B22() != 0) {
                gPlayerState.field_0x10[1] = 7;
                if (!(gPlayerState.flags.all & 0x80)) {
                    sub_080791BC();
                }
            }
        } else {
            if ((gPlayerState.flags.all & 8)) {
                gPlayerState.field_0x8 = 0x424;
            } else {
                gPlayerState.field_0x8 = 0x820;
            }
            this->actionDelay = 6;
            this->subAction = 3;
            this->field_0x42 = 0;
            SoundReq(0x7d);
        }
    }
}
END_NONMATCH

void sub_08072F14(Entity* this) {
    if (--this->actionDelay != 0xff) {
        sub_0807921C();
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

extern void (*const gUnk_0811BBE4[])(Entity*);

void sub_08072F34(Entity* this) {
    if (!sub_08078EFC()) {
        gPlayerState.field_0xa8 = 0x18;
        gPlayerState.field_0x10[2] = sub_0807A1E8(this, 0, 0);
        gUnk_0811BBE4[this->subAction](this);
        if (this->field_0x42 != 0) {
            sub_080792D8();
            if (this->field_0x42 == 0) {
                this->action = 0x1d;
                this->subAction = 0;
                this->y.HALF.LO = 0;
                gPlayerState.field_0x8 = 0x2cf;
            }
        }
    }
}

void sub_08072F94(Entity* this) {
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
                    if ((this->frames.all & 0x10)) {
                        gPlayerState.field_0x8 = 0x2d4;
                    } else {
                        gPlayerState.field_0x8 = 0x2d5;
                    }
                    sub_08073094(this);
                } else {
                    if ((gPlayerState.field_0x10[2] == 0x1e) && ((bVar1 & 7) != 0)) {
                        this->direction = (bVar1 + 8) & 0x10;
                    }
                    if (this->direction & 0x10) {
                        if (this->frames.all & 0x10) {
                            gPlayerState.field_0x8 = 0x2d1;
                        } else {
                            gPlayerState.field_0x8 = 0x2d2;
                        }
                    } else {
                        if (this->frames.all & 0x10) {
                            gPlayerState.field_0x8 = 0x2cf;
                        } else {
                            gPlayerState.field_0x8 = 0x2d0;
                        }
                    }
                }
                this->subAction++;
            } else {
                if (this->frames.all & 0x10) {
                    gPlayerState.field_0x8 = 0x2d4;
                } else {
                    gPlayerState.field_0x8 = 0x2d5;
                }
            }
            break;
    }
}

extern const u16 gUnk_0811BBEC[];

void sub_08073094(Entity* this) {
    this->spritePriority.b1 = 0;
    this->speed = gUnk_0811BBEC[this->frames.all & 0xf];
    sub_08079E08();
    if (!sub_08019840()) {
        gPlayerState.pushedObject = gPlayerState.pushedObject ^ 0x80;
        if ((gPlayerState.field_0x10[2] != 0x2a) && (gPlayerState.field_0x10[2] != 0x2c)) {
            sub_0807A1B8();
        }

        if (sub_08078EFC() == 0) {
            switch (gPlayerState.field_0x10[2]) {
                case 0x2a:
                case 0x2c:
                    this->field_0x42 = 0;
                    gPlayerState.flags.all |= 0x20000000;
                    UpdateAnimationSingleFrame(this);
                    if ((this->frames.all & 0x40) != 0) {
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
                    if ((this->frames.all & 0x40) != 0) {
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

extern void (*const gUnk_0811BBF8[])(Entity*);

void PlayerUseEntrance(Entity *this) {
    gPlayerState.field_0xa8 = 0x1c;
    sub_0805E4E0(NULL, 8);
    gUnk_0811BBF8[this->subAction](this);
}

void PlayerInit(Entity*);
void PlayerNormal(Entity*);
void PlayerInit(Entity*);
void PlayerFall(Entity*);
void PlayerJump(Entity*);
void PlayerPush(Entity*);
void PlayerBounce(Entity*);
void sub_08070E9C(Entity*);
void PlayerItemGet(Entity*);
void PlayerMinish(Entity*);
void PlayerMinishDie(Entity*);
void sub_08071DB8(Entity*);
void PlayerEmptyBottle(Entity*);
void PlayerFrozen(Entity*);
void sub_0807204C(Entity*);
void sub_080720DC(Entity*);
void PlayerPull(Entity*);
void PlayerLava(Entity*);
void PlayerWarp(Entity*);
void sub_08072454(Entity*);
void PlayerDrown(Entity*);
void PlayerUsePortal(Entity*);
void PlayerTalkEzlo(Entity*);
void PlayerRoomTransition(Entity*);
void PlayerRoll(Entity*);
void sub_080728AC(Entity*);
void PlayerInHole(Entity*);
void sub_08072C9C(Entity*);
void sub_08074C44(Entity*);
void sub_08072F34(Entity*);
void PlayerUseEntrance(Entity*);
void PlayerParachute(Entity*);

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
