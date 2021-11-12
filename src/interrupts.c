#include "global.h"
#include "audio.h"
#include "main.h"
#include "player.h"
#include "structures.h"
#include "save.h"
#include "textbox.h"
#include "functions.h"
#include "object.h"
#include "utils.h"
#include "npc.h"
#include "effects.h"
#include "screen.h"
#include "gba/m4a.h"

extern u8 gUnk_03003DE0;
extern u8 gUnk_03000C30;

extern u16* gUnk_02025EB0;
extern u16* gUnk_0200B650;
extern u8 gUpdateVisibleTiles;
extern u8 gUnk_03003DF0[];
extern u8 gUnk_03003BE0;
extern Entity* gUnk_03004040[3];
extern u16 gUnk_080B2CD8[];
extern u32 gUnk_03000FBC;

extern void sub_080ADD70();
extern void sub_0801C25C();
extern void UpdateDisplayControls();
extern void LoadResources();
extern void FadeMain();
extern void HandlePlayerLife();
extern void DoPlayerAction();
extern void sub_080171F0();
extern void sub_08078FB0();
extern u32 CheckDontUpdate();
extern void DrawEntity();
extern void sub_0807A050();
extern u32 sub_08079B24();
extern void sub_08079708();
extern void CreateSparkle();
extern void sub_080028E0(Entity*);
extern void sub_08078180(void);
extern void sub_0807B0C8(void);
extern void sub_0807A8D8(Entity*);
extern void sub_08077FEC(u32);

void gIntrMain(void);

struct {
    u8 update;
    u8 _0[0x1c];
    struct OamData oam[0x80];
} extern gUnk_03000000;

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
    REG_DISPSTAT = 0x5028;
    REG_IE = 0x2005;
    REG_IME = 1;
}

void VBlankIntr(void) {
    DmaStop(0);
    m4aSoundVSync();
    if (gMain.interruptFlag == 0) {
        DispCtrlSet();
        DmaCopy32(0, &gUnk_03000FBC, &gUnk_02022730, 16);
        gMain.interruptFlag = 1;
    }
    sub_08016BF8();
    INTR_CHECK |= 1;
}

void HBlankIntr(void) {
    REG_DISPSTAT = 0x5028;
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
    if (gUnk_03000000.update && ((gScreen.lcd.displayControl & 0x1000) != 0)) {
        gUnk_03000000.update = 0;
        DmaCopy32(3, &gUnk_03000000.oam, 0x07000000, 0x400);
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
        DmaCopy32(3, bg->tilemap, ((dest << 3) & 0xF800) + 0x06000000, gUnk_080B2CD8[dest >> 14]);
    }
}

ASM_FUNC("asm/dispCtrlSet.s", void DispCtrlSet(void));

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

void PrepNextFrame(void) {
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
        if (gUnk_02025EB0 != NULL)
            // sizeof(BGBuffer) = 0x800, what are we omitting?
            DmaCopy32(3, &gBG1Buffer, VRAM + (*gUnk_02025EB0 & 0x1f00) * 8, 0x5C0);
        if (gUnk_0200B650 != NULL)
            DmaCopy32(3, &gBG2Buffer, VRAM + (*gUnk_0200B650 & 0x1f00) * 8, 0x5C0);
    }
    FadeMain();
}

void PlayerUpdate(Entity* this) {
    if (gSave.stats.effect != 0)
        gPlayerState.flags |= 0x4000;
    else
        gPlayerState.flags &= ~0x4000;

    if (CheckDontUpdate(this) == 0) {
        if ((gPlayerState.flags & 0x80000) != 0) {
            sub_08077B20();
            if ((gPlayerState.flags & 0x200000) != 0) {
                gPlayerState.playerAction = 0x18;
                gPlayerState.flags &= ~0x80000;
                gPlayerState.hurtBlinkSpeed = 0xf0;
                COLLISION_ON(this);
            } else {
                COLLISION_OFF(this);
                gPlayerState.field_0xa8 = 0xf;
            }
        }
        HandlePlayerLife(this);
        DoPlayerAction(this);
        if ((this->height.WORD == 0) && (this->action == 1 || this->action == 9))
            sub_08008790(this, 8);
        sub_080171F0();
    }
    sub_08078FB0(this);
    DrawEntity(this);
    sub_0807A050();
}

// Responsible for some life things like low health beep and initiating the death sequence
#ifdef EU
ASM_FUNC("asm/non_matching/eu/HandlePlayerLife.inc", void HandlePlayerLife(Entity* this));
#else
void HandlePlayerLife(Entity* this) {
    u32 temp;

    gUnk_0200AF00.filler25[10] = 0;
    gUnk_0200AF00.filler25[8] = 0;
    gUnk_0200AF00.filler25[9] = 0;

    if ((gPlayerEntity.bitfield & 0x80) && (gPlayerEntity.iframes > 0))
        SoundReq(SFX_86);

    gPlayerState.flags &= ~(0x2000000 | 0x200);
    if (gPlayerState.flags & 0x400)
        ResetPlayer();
    if ((gPlayerState.flags & 0x400000) && !gPlayerState.field_0xa0[0])
        sub_0807A108();
    if (sub_08079B24() == 0)
        sub_08079708(this);

    gUnk_03003DF0[0] = 0;
    if (gPlayerState.field_0x27[0] != 0)
        gPlayerState.field_0x27[0]--;

    gPlayerState.field_0xa9 = gPlayerState.field_0xa8;
    gPlayerState.field_0xa8 = 0;
    if (gPlayerState.hurtType[0x4a] != 0) {
        gPlayerState.hurtType[0x4a]--;
        return;
    }

    if ((gPlayerState.field_0x8b != 0) || (gMessage.doTextBox & 0x7f))
        return;

    gRoomVars.unk2 = gMessage.doTextBox & 0x7f;
    temp = gSave.stats.maxHealth / 4;
    if (temp > 24)
        temp = 24;
    if (temp < 8)
        temp = 8;

    if (gSave.stats.health <= temp) {
        gRoomVars.unk2 = 1;
        if ((gUnk_0200AF00.filler0[1] == 0) && gScreenTransition.frameCount % 90 == 0) {
            EnqueueSFX(SFX_LOW_HEALTH);
        }
    }

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
#endif

void sub_080171F0(void) {
    if (gPlayerState.field_0x1a[0] != 0)
        ResetPlayer();
    if (gPlayerState.field_0x14 != 0)
        gPlayerState.field_0x14--;
    if (gPlayerEntity.field_0x7a.HWORD != 0)
        gPlayerEntity.field_0x7a.HWORD--;

    gPlayerEntity.bitfield &= ~0x80;
    if (gPlayerEntity.action != 0x14)
        COPY_FLAG_FROM_TO(gPlayerState.flags, 0x2, 0x10000);

    gPlayerState.flags &= ~2;
    sub_080028E0(&gPlayerEntity);

    if (gPlayerState.flags & 0x400000)
        gUnk_0200AF00.filler25[10] = 1;

    sub_08078180();
    gPlayerState.field_0x7 &= ~0x80;
    gPlayerState.field_0xa &= 0xf;
    gPlayerState.keepFacing &= ~0x80;
    gPlayerState.field_0x1a[0] = 0;
    gPlayerState.field_0x80 = 0;
    gPlayerState.field_0xaa = 0;
    MemClear(&gUnk_03003BE0, 0x8c);
    gPlayerEntity.spriteOffsetY = gPlayerState.field_0x3f;
    gPlayerState.field_0x3f = 0;
    sub_0807B0C8();

    if (gPlayerState.flags & 0x400000)
        gUnk_03004040[0]->spriteOffsetY = gUnk_03004040[1]->spriteOffsetY = gUnk_03004040[2]->spriteOffsetY = 0;

    if (gPlayerEntity.action == 0x1d)
        gPlayerState.flags |= 0x20000000;
    else
        gPlayerState.flags &= ~0x20000000;

    sub_0807A8D8(&gPlayerEntity);
    if (gPlayerState.jumpStatus & 0xc0)
        gPlayerEntity.iframes = 0xfe;

    if (gPlayerEntity.action != 0x17) {
        sub_08077FEC(gPlayerEntity.action);
    }
}
