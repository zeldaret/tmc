#include "global.h"
#include "sound.h"
#include "main.h"
#include "player.h"
#include "structures.h"
#include "save.h"
#include "message.h"
#include "functions.h"
#include "screen.h"
#include "gba/m4a.h"
#include "object.h"

extern u8 gUnk_03003DE0;
extern u8 gUnk_03000C30;

extern u8 gUpdateVisibleTiles;
extern u8 gUnk_03003DF0[];
extern Entity gUnk_03003BE0;
extern Entity* gPlayerClones[3];
extern u16 gUnk_080B2CD8[];

extern void sub_080ADD70(void);
extern void sub_0801C25C(void);
extern void UpdateDisplayControls(void);
extern void LoadResources(void);
extern void HandlePlayerLife(Entity*);
extern void DoPlayerAction(Entity*);
extern void sub_080171F0(void);
extern void sub_08078FB0(Entity*);
extern void sub_0807A050(void);
extern u32 sub_08079B24(void);
extern void sub_08079708(Entity*);
extern void CreateSparkle(Entity*);
extern void sub_080028E0(Entity*);
extern void sub_08078180(void);
extern void sub_0807B0C8(void);
extern void sub_0807A8D8(Entity*);
extern void sub_08077FEC(u32);

void gIntrMain(void);

struct {
    u8 ready;
    u16* src;
    u16* dest;
    u32 size;
} extern gUnk_02022730;

void sub_08016CA8(BgSettings* bg);
void sub_08016BF8(void);
void DispCtrlSet(void);

void DummyIntr(void) {
    /* .. */
}

void EnableVBlankIntr(void) {
    INTR_VECTOR = gIntrMain;
    REG_DISPSTAT = DISPSTAT_VCOUNT_INTR | DISPSTAT_VBLANK_INTR | (80 << 8);
    REG_IE = INTR_FLAG_VBLANK | INTR_FLAG_VCOUNT | INTR_FLAG_GAMEPAK;
    REG_IME = 1;
}

void VBlankIntr(void) {
    DmaStop(0);
    m4aSoundVSync();
    if (gMain.interruptFlag == 0) {
        DispCtrlSet();
        DmaCopy32(0, &gScreen._6c, &gUnk_02022730, 16);
        gMain.interruptFlag = 1;
    }
    sub_08016BF8();
    INTR_CHECK |= 1;
}

void HBlankIntr(void) {
    REG_DISPSTAT = DISPSTAT_VCOUNT_INTR | DISPSTAT_VBLANK_INTR | (80 << 8);
    m4aSoundMain();
}

void sub_08016BF8(void) {
    if (gUnk_02022730.ready) {
        const u16* src = gUnk_02022730.src;
        u16* dest = gUnk_02022730.dest;
        s32 size, i = size = gUnk_02022730.size;
        DmaSet(0, src, dest, size);

        i = size & 0x3fff;
        if (i == 0) {
            i = 0x4000;
        }
        do {
            *dest++ = *src++;
        } while (--i > 0);
    }
}

void UpdateDisplayControls(void) {
    if (gOAMControls.field_0x0 && (gScreen.lcd.displayControl & DISPCNT_OBJ_ON)) {
        gOAMControls.field_0x0 = 0;
        DmaCopy32(3, &gOAMControls.oam, OAM, OAM_SIZE);
    }
    sub_08016CA8(&gScreen.bg0);
    sub_08016CA8(&gScreen.bg1);
    sub_08016CA8((BgSettings*)&gScreen.bg2);
    sub_08016CA8((BgSettings*)&gScreen.bg3);
}

void sub_08016CA8(BgSettings* bg) {
    if (bg->updated && bg->tilemap != NULL) {
        u32 dest;
        bg->updated = 0;
        dest = bg->control;
        DmaCopy32(3, bg->tilemap, ((dest << 3) & 0xF800) + VRAM, gUnk_080B2CD8[dest >> 14]);
    }
}

NONMATCH("asm/non_matching/DispCtrlSet.inc", void DispCtrlSet(void)) {
    BgControls* controls;
    u16 tmp = gScreen.lcd.displayControl & gScreen.lcd.displayControlMask;
    REG_DISPCNT = tmp;

    REG_BG0CNT = gScreen.bg0.control;
    REG_BG1CNT = gScreen.bg1.control;
    REG_BG2CNT = gScreen.bg2.control;
    REG_BG3CNT = gScreen.bg3.control;
    REG_BG0HOFS = gScreen.bg0.xOffset;
    REG_BG0VOFS = gScreen.bg0.yOffset;
    REG_BG1HOFS = gScreen.bg1.xOffset;
    REG_BG1VOFS = gScreen.bg1.yOffset;
    REG_BG2HOFS = gScreen.bg2.xOffset;
    REG_BG2VOFS = gScreen.bg2.yOffset;
    REG_BG3HOFS = gScreen.bg3.xOffset;
    REG_BG3VOFS = gScreen.bg3.yOffset;

    controls = &(gScreen.controls);
    REG_BG2PA = controls->bg2.dx;
    REG_BG2PB = controls->bg2.dmx;
    REG_BG2PC = controls->bg2.dy;
    REG_BG2PD = controls->bg2.dmy;
    REG_BG2X_L = controls->bg2.xPointLeastSig;
    REG_BG2X_H = controls->bg2.xPointMostSig;
    REG_BG2Y_L = controls->bg2.yPointLeastSig;
    REG_BG2Y_H = controls->bg2.yPointMostSig;

    REG_BG3PA = controls->bg3.dx;
    REG_BG3PB = controls->bg3.dmx;
    REG_BG3PC = controls->bg3.dy;
    REG_BG3PD = controls->bg3.dmy;
    REG_BG3X_L = controls->bg3.xPointLeastSig;
    REG_BG3X_H = controls->bg3.xPointMostSig;
    REG_BG3Y_L = controls->bg3.yPointLeastSig;
    REG_BG3Y_H = controls->bg3.yPointMostSig;

    REG_WIN0H = controls->window0HorizontalDimensions;
    REG_WIN1H = controls->window1HorizontalDimensions;
    REG_WIN0V = controls->window0VerticalDimensions;
    REG_WIN1V = controls->window1VerticalDimensions;
    REG_WININ = controls->windowInsideControl;
    REG_WINOUT = controls->windowOutsideControl;
    REG_MOSAIC = controls->mosaicSize;
    REG_BLDCNT = controls->layerFXControl;
    REG_BLDALPHA = controls->alphaBlend;
    REG_BLDY = controls->layerBrightness;
}
END_NONMATCH

// Load any resources that were requested with LoadResourceAsync
void LoadResources(void) {
    if (gUnk_03003DE0 != 0) {
        u8* buf = &gUnk_03000C30;
        s32 i = gUnk_03003DE0;
        gUnk_03003DE0 = 0;
        do {
            switch (*buf) {
                case 0:
                    DmaCopy32(3, *(u32*)(buf + 4), *(u32*)(buf + 8), *(u16*)(buf + 2));
                    break;
                case 1:
                    LZ77UnCompVram(*(void**)(buf + 4), *(u8**)(buf + 8));
                    break;
                case 2:
                    DmaFill32(3, *(u32*)(buf + 4), *(u32*)(buf + 8), *(u16*)(buf + 2));
                    break;
            }
            buf += 12;
            i--;
        } while (0 < i);
    }
}

void WaitForNextFrame(void) {
    gMain.interruptFlag = 0;
    VBlankIntrWait();
    do {
        // Our VBlankIntr will set this flag
    } while (gMain.interruptFlag == 0);

    sub_080ADD70();
    sub_0801C25C();
    UpdateDisplayControls();
    LoadResources();

    if (gUpdateVisibleTiles) {
        gUpdateVisibleTiles = 0;
        if (gMapBottom.bgControlPtr != NULL)
            // sizeof(BGBuffer) = 0x800, what are we omitting?
            DmaCopy32(3, &gBG1Buffer, VRAM + (*gMapBottom.bgControlPtr & 0x1f00) * 8, 0x5C0);
        if (gMapTop.bgControlPtr != NULL)
            DmaCopy32(3, &gBG2Buffer, VRAM + (*gMapTop.bgControlPtr & 0x1f00) * 8, 0x5C0);
    }
    FadeVBlank();
}

void PlayerUpdate(Entity* this) {
    if (gSave.stats.effect != 0)
        gPlayerState.flags |= PL_DRUGGED;
    else
        gPlayerState.flags &= ~PL_DRUGGED;

    if (EntityIsDeleted(this) == 0) {
        if (gPlayerState.flags & PL_MOLDWORM_CAPTURED) {
            sub_08077B20();
            if (gPlayerState.flags & PL_MOLDWORM_RELEASED) {
                gPlayerState.queued_action = PLAYER_ROLL;
                gPlayerState.flags &= ~PL_MOLDWORM_CAPTURED;
                gPlayerState.hurtBlinkSpeed = 240;
                COLLISION_ON(this);
            } else {
                COLLISION_OFF(this);
                gPlayerState.framestate = PL_STATE_F;
            }
        }
        HandlePlayerLife(this);
        DoPlayerAction(this);
        if ((this->z.WORD == 0) && (this->action == 1 || this->action == 9))
            sub_08008790(this, 8);
        sub_080171F0();
    }
    sub_08078FB0(this);
    DrawEntity(this);
    sub_0807A050();
}

// Responsible for some life things like low health beep and initiating the death sequence
void HandlePlayerLife(Entity* this) {
    u32 temp;

    gUnk_0200AF00.filler25[10] = 0;
    gUnk_0200AF00.filler25[8] = 0;
    gUnk_0200AF00.filler25[9] = 0;

    if ((gPlayerEntity.bitfield & 0x80) && (gPlayerEntity.iframes > 0))
        SoundReq(SFX_86);

    gPlayerState.flags &= ~(0x2000000 | PL_FALLING);
    if (gPlayerState.flags & PL_BURNING)
        ResetPlayer();
    if ((gPlayerState.flags & PL_CLONING) && !gPlayerState.field_0xa0[0])
        DeleteClones();
    if (sub_08079B24() == 0)
        sub_08079708(this);

    gUnk_03003DF0[0] = 0;
    if (gPlayerState.field_0x27[0] != 0)
        gPlayerState.field_0x27[0]--;

    gPlayerState.framestate_last = gPlayerState.framestate;
    gPlayerState.framestate = PL_STATE_IDLE;
    if (gPlayerState.field_0x82[0x8] != 0) {
        gPlayerState.field_0x82[0x8]--;
        return;
    }

    if ((gPlayerState.controlMode != CONTROL_ENABLED) || (gMessage.doTextBox & 0x7f))
        return;

#ifdef EU
    if ((gUnk_0200AF00.filler0[1] == 0) && gRoomTransition.frameCount % 90 == 0) {
        temp = gSave.stats.maxHealth / 4;
        if (temp > 24)
            temp = 24;
        if (temp < 8)
            temp = 8;

        if (gSave.stats.health <= temp) {
            EnqueueSFX(SFX_LOW_HEALTH);
        }
    }
#else
    gRoomVars.unk2 = gMessage.doTextBox & 0x7f;
    temp = gSave.stats.maxHealth / 4;
    if (temp > 24)
        temp = 24;
    if (temp < 8)
        temp = 8;

    if (gSave.stats.health <= temp) {
        gRoomVars.unk2 = 1;
        if ((gUnk_0200AF00.filler0[1] == 0) && gRoomTransition.frameCount % 90 == 0) {
            EnqueueSFX(SFX_LOW_HEALTH);
        }
    }
#endif

    if (gSave.stats.charm == 0) {
        gSave.stats.charmTimer = 0;
    } else if ((gSave.stats.charmTimer == 0) || --gSave.stats.charmTimer == 0) {
        gSave.stats.charm = 0;
        SoundReq(SFX_ICE_BLOCK_MELT);
    }

    if (gSave.stats.unkB == 0) {
        gSave.stats.unkTimer = 0;
    } else if ((gSave.stats.unkTimer == 0) || (--gSave.stats.unkTimer == 0)) {
        gSave.stats.unkB = 0;
        SoundReq(SFX_140);
    } else if ((gSave.stats.unkTimer & 0xf) == 0) {
        CreateSparkle(this);
    }

    if (gSave.stats.effect == 0) {
        gSave.stats.effectTimer = 0;
    } else if ((gSave.stats.effectTimer == 0) || --gSave.stats.effectTimer == 0) {
        gSave.stats.effect = 0;
    } else if ((gSave.stats.effectTimer & 0x3f) == 0) {
        CreateFx(this, (FX_RED_AURA - 1) + gSave.stats.effect, 0);
    }
}

void sub_080171F0(void) {
    if (gPlayerState.mobility != 0)
        ResetPlayer();
    if (gPlayerState.field_0x14 != 0)
        gPlayerState.field_0x14--;
    if (gPlayerEntity.field_0x7a.HWORD != 0)
        gPlayerEntity.field_0x7a.HWORD--;

    gPlayerEntity.bitfield &= ~0x80;
    if (gPlayerEntity.action != PLAYER_DROWN)
        COPY_FLAG_FROM_TO(gPlayerState.flags, 0x2, 0x10000);

    gPlayerState.flags &= ~PL_FLAGS2;
    sub_080028E0(&gPlayerEntity);

    if (gPlayerState.flags & PL_CLONING)
        gUnk_0200AF00.filler25[10] = 1;

    sub_08078180();
    gPlayerState.field_0x7 &= ~0x80;
    gPlayerState.field_0xa &= 0xf;
    gPlayerState.keepFacing &= ~0x80;
    gPlayerState.mobility = 0;
    gPlayerState.speed_modifier = 0;
    gPlayerState.field_0xaa = 0;
    MemClear(&gUnk_03003BE0, 0x8c);
    gPlayerEntity.spriteOffsetY = gPlayerState.field_0x3f;
    gPlayerState.field_0x3f = 0;
    sub_0807B0C8();

    if (gPlayerState.flags & PL_CLONING)
        gPlayerClones[0]->spriteOffsetY = gPlayerClones[1]->spriteOffsetY = gPlayerClones[2]->spriteOffsetY = 0;

    if (gPlayerEntity.action == PLAYER_CLIMB)
        gPlayerState.flags |= PL_CLIMBING;
    else
        gPlayerState.flags &= ~PL_CLIMBING;

    sub_0807A8D8(&gPlayerEntity);
    if (gPlayerState.jump_status & 0xc0)
        gPlayerEntity.iframes = 0xfe;

    if (gPlayerEntity.action != PLAYER_ROOMTRANSITION) {
        sub_08077FEC(gPlayerEntity.action);
    }
}
