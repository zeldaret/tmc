#include "asm.h"
#include "common.h"
#include "effects.h"
#include "fade.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "kinstone.h"
#include "manager/bombableWallManager.h"
#include "menu.h"
#include "message.h"
#include "object.h"
#include "room.h"
#include "save.h"
#include "screen.h"
#include "sound.h"

extern void (*const gUnk_080FEEB8[])(void);

extern void sub_0801876C(u32, u32);

extern u8 gUpdateVisibleTiles;
void sub_08055B70(u32, u32, u32, u32);

extern void sub_08054974(u32, u32);

extern void (*const gUnk_080FEEC8[])(void);

void sub_080553E0(u32);

extern void (*const gUnk_080FEF34[])(void);

extern EntityData gUnk_080FEED4[];

extern void (*const gUnk_080FEF3C[])(void);

extern void sub_0804B0E8(u32, u32);

extern void (*const gUnk_080FF120[])(void);

extern EntityData* gUnk_080FF108[];

extern void (*const gUnk_080FF148[])(void);

extern EntityData gUnk_080FF128[];

extern void (*const gUnk_080FF174[])(void);

extern EntityData gUnk_080FF154[];

extern void (*const gUnk_080FF1CC[])(void);

extern EntityData gUnk_080FF17C[];

extern void (*const gUnk_080FF1F4[])(void);

extern const s16 gUnk_080FF1D4[];

extern const u16 gUnk_080FF204[];

extern void (*const gUnk_080FF228[])(void);

extern void (*const gUnk_080FF238[])(void);

extern void (*const gUnk_080FF254[])(void);

extern void (*const gUnk_080FF284[])(void);

extern const EntityData gUnk_080FF264[];

extern void (*const gUnk_080FF28C[])(void);

extern void sub_08054A14(u32);

extern const EntityData gUnk_080FEE48[];

extern void (*const gUnk_080FF2B8[])(void);

extern const EntityData gUnk_080FF298[];

extern void (*const gUnk_080FF300[])(void);

extern const EntityData gUnk_080FF2C0[];

extern void (*const gUnk_080FF328[])(void);

extern const EntityData gUnk_080FF308[];

extern void (*const gUnk_080FF330[])(void);

void sub_08055994(void);

extern void (*const gUnk_080FF35C[])(void);

extern const EntityData gUnk_080FF33C[];

extern void (*const gUnk_080FF36C[])(void);

extern const EntityData gUnk_080FED18[];

extern const EntityData gUnk_080FF378[];

extern void (*const gUnk_080FF3F4[])(void);

void sub_08054C04(void) {
    gUnk_080FEEB8[gMenu.overlayType]();
}

void sub_08054C20(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    sub_0801876C(gMenu.field_0x4, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08054C58(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void sub_08054C88(void) {
    if (gFadeControl.active == 0) {
        sub_08054974(gMenu.field_0x4, 0);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08054CC0(void) {
    if ((gFadeControl.active == 0) && (--gMenu.transitionTimer == 0)) {
        gMenu.menuType++;
    }
}

void sub_08054CE8(void) {
    gUnk_080FEEC8[gMenu.overlayType]();
}

void sub_08054D04(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08054D3C(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08054D74(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08054D90(void) {
    gUnk_080FEF34[gMenu.overlayType]();
}

void sub_08054DAC(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList(gUnk_080FEED4);
    sub_0805B4D0(2);
    sub_0806D0B0(NULL);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_484(void) {
}

void sub_08054E00(void) {
    gUnk_080FEF3C[gMenu.overlayType]();
}

void sub_08054E1C(void) {
    u8* ptr = gMenu.field_0xc;
    sub_0804B0B0(ptr[2], ptr[3]);
    sub_0804B0E8(ptr[2], ptr[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08054E5C(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
        gMenu.transitionTimer = 0xb4;
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        sub_080553E0(gMenu.field_0x4);
        sub_0801876C(gMenu.field_0x4, 1);
    }
}

void sub_08054E9C(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08054EB8(Entity* this, ScriptExecutionContext* context) {
    BombableWallManager* manager = (BombableWallManager*)GetEmptyManager();
    if (manager != NULL) {
        manager->base.kind = MANAGER;
        manager->base.id = BOMBABLE_WALL_MANAGER;
        manager->x = this->x.HALF.HI - gRoomControls.origin_x;
        manager->y = (this->y.HALF.HI - gRoomControls.origin_y) - 0x10;
        manager->field_0x35 = 1;
#if defined(EU) || defined(JP) || defined(DEMO_JP)
        manager->field_0x3e = 0x77;
#else
        manager->field_0x3e = 0x79;
#endif
        AppendEntityToList((Entity*)manager, 6);
    }
}

void sub_08054EFC(Entity* this) {
    Entity* effect;
    u32 tmp = COORD_TO_TILE(this) - 0x40;
    SetTile(0x4074, tmp, 1);
    this->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(this);
    effect = CreateFx(this, FX_BIG_EXPLOSION, 0);
    if (effect != NULL) {
        effect->y.HALF.HI -= 0x10;
        SortEntityBelow(this, effect);
    }
    SoundReq(SFX_ITEM_BOMB_EXPLODE);
}

void sub_08054F64(Entity* this, ScriptExecutionContext* context) {
    u32 tmp = this->type2;
    if ((gActiveScriptInfo.syncFlags & tmp) != tmp) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.syncFlags &= ~tmp;
        gActiveScriptInfo.flags |= 1;
    }
}

void sub_08054F90(void) {
    gUnk_080FF120[gMenu.overlayType]();
}

void sub_08054FAC(void) {
    u8* ptr;
    u32 tmp;

    ptr = gMenu.field_0xc;
    LoadRoomEntityList(gUnk_080FF108[ptr[1]]);
    if (ptr[1] != 0) {
        tmp = 3;
    } else {
        tmp = 0;
    }
    sub_08055B70(gMenu.field_0x4, tmp, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
    gMenu.field_0xa = 0;
    if (CheckLocalFlagByBank(FLAG_BANK_4, 0x77) && (ptr[2] == 0x2f)) {
        gMenu.field_0xa = 1;
    }
}

void sub_08055014(void) {
    if (gMenu.field_0xa != 0) {
        gMenu.field_0xa = 0;
        SetTileType(0x74, 0x407, 1);
    }
}

void sub_08055038(void) {
    gUnk_080FF148[gMenu.overlayType]();
}

void sub_08055054(void) {
    LoadRoomEntityList(gUnk_080FF128);
    sub_08055B70(gMenu.field_0x4, 2, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_0805508C(void) {
}

void sub_08055090(void) {
}

void sub_08055094(void) {
    gUnk_080FF174[gMenu.overlayType]();
}

void sub_080550B0(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList(gUnk_080FF154);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_487(void) {
}

void sub_080550F8(void) {
    gUnk_080FF1CC[gMenu.overlayType]();
}

void sub_08055114(void) {
    LoadRoomEntityList(gUnk_080FF17C);
    if (gSave.global_progress != 9) {
        sub_08018C58(0xdb4);
    }
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_488(void) {
}

void sub_08055168(void) {
    gUnk_080FF1F4[gMenu.overlayType]();
}

void sub_08055184(void) {
    const s16* ptr = &gUnk_080FF1D4[(gMenu.field_0xc[1] & 0xf) * 3];
    LoadGfxGroup(ptr[0]);
    gScreen.bg3.xOffset = ptr[1];
    gScreen.bg3.yOffset = ptr[2];
    gScreen.bg3.control = 0x1e05;
    gScreen.controls.layerFXControl = 0x3648;
    gScreen.controls.alphaBlend = 0x10;
    gScreen.lcd.displayControl |= 0x800;
    sub_0801876C(gMenu.field_0x4, 1);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gMenu.storyPanelIndex = 0;
    gMenu.transitionTimer = 0x3c;
    gMenu.field_0xa = 0;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055224(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
    }
}

void sub_0805524C(void) {
    if (gMenu.storyPanelIndex == 0) {
        gMenu.transitionTimer--;
        if (gMenu.transitionTimer == 0) {
            u32 tmp = gMenu.storyPanelIndex;
            gMenu.storyPanelIndex = tmp + 1;
            SoundReq(SFX_EVAPORATE);
        }
    } else if ((gRoomTransition.frameCount & 7U) == 0) {
        if (gUnk_080FF204[gMenu.field_0xa] != 0xffff) {
            gScreen.controls.alphaBlend = gUnk_080FF204[gMenu.field_0xa++];
        } else {
            gScreen.lcd.displayControl &= 0xf7ff;
            gScreen.controls.alphaBlend = 0x1000;
            gMenu.transitionTimer = 0x78;
            gMenu.overlayType++;
#ifndef EU
            SoundReq(SFX_SECRET_BIG);
#endif
        }
    }
}

void sub_080552E0(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_080552FC(void) {
    gUnk_080FF228[gMenu.overlayType]();
}

void sub_08055318(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    sub_0801876C(gMenu.field_0x4, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055350(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void sub_08055380(void) {
    if (gFadeControl.active == 0) {
        sub_08054974(gMenu.field_0x4, 0);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_080553B8(void) {
    if ((gFadeControl.active == 0) && (--gMenu.transitionTimer == 0)) {
        gMenu.menuType++;
    }
}

void sub_080553E0(u32 param_1) {
    u8* ptr = gMenu.field_0xc;
    Entity* effect = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION2, 0);
    if (effect != NULL) {
        effect->x.HALF.HI = *(s16*)(ptr + 8) + gRoomControls.origin_x;
        effect->y.HALF.HI = *(s16*)(ptr + 10) + gRoomControls.origin_y;
    }
}

void sub_08055414(void) {
    gUnk_080FF238[gMenu.overlayType]();
}

void sub_08055430(void) {
    sub_0804B0E8(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055468(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void sub_08055498(void) {
    if (gFadeControl.active == 0) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_080554D4(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_080554FC(void) {
    extern void (*const gUnk_080FF248[])(void);
    gUnk_080FF248[gMenu.overlayType]();
}

void sub_08055518(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055548(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0xb4;
    }
}

void sub_08055580(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_0805559C(void) {
    gUnk_080FF254[gMenu.overlayType]();
}

void sub_080555B8(void) {
    u8* ptr = gMenu.field_0xc;
    SetLocalFlagByBank(gLocalFlagBanks[gMenu.field_0xc[0x11]], (u32) * (u16*)(gMenu.field_0xc + 0x12));
    sub_0804B0E8(ptr[2], ptr[3]);
    LoadGfxGroup(0x11);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_0805560C(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
    }
}

void sub_08055634(void) {
    u8* ptr = gMenu.field_0xc;
    Entity* obj = CreateObject(BEANSTALK, 0, 0);
    if (obj != NULL) {
        obj->x.HALF.HI = gRoomControls.origin_x + *(s16*)(ptr + 8);
        obj->y.HALF.HI = gRoomControls.origin_y + *(s16*)(ptr + 10);
    }
    gMenu.overlayType++;
    gMenu.transitionTimer = 0x186;
}

void sub_08055674(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055690(void) {
    gUnk_080FF284[gMenu.overlayType]();
}

void sub_080556AC(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList((EntityData*)gUnk_080FF264);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_489(void) {
}

void sub_080556F4(void) {
    gUnk_080FF28C[gMenu.overlayType]();
}

void sub_08055710(void) {
    Entity* entity;

    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    entity = LoadRoomEntity((EntityData*)gUnk_080FEE48);
    if (entity != NULL) {
        entity->type2 = 2;
        entity->field_0x86.HWORD = 0x80ff;
    }
    sub_08054A14(gMenu.field_0x4);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_0805576C(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055798(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_080557B4(void) {
    gUnk_080FF2B8[gMenu.overlayType]();
}

void sub_080557D0(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_0804B0B0((u32)gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList((EntityData*)gUnk_080FF298);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_490(void) {
}

void sub_08055818(void) {
    gUnk_080FF300[gMenu.overlayType]();
}

void sub_08055834(void) {
    LoadRoomEntityList((EntityData*)gUnk_080FF2C0);
    if (gSave.global_progress != 9) {
        sub_08018C58(0xdb4);
    }
    sub_08055B70(gMenu.field_0x4, 1, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_491(void) {
}

void sub_08055888(void) {
    gUnk_080FF328[gMenu.overlayType]();
}

void sub_080558A4(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList((EntityData*)gUnk_080FF308);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void nullsub_492(void) {
}

void sub_080558EC(void) {
    gUnk_080FF330[gMenu.overlayType]();
}

void sub_08055908(void) {
    u8* ptr = gMenu.field_0xc;
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    sub_0804B0E8(ptr[2], ptr[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055948(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        sub_08055994();
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055978(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055994(void) {
    u32 layer;
    TileEntity* ptr = &gUnk_080FEAC8[gMenu.field_0x4];
    if ((ptr->_6 & 1) != 0) {
        layer = 2;
    } else {
        layer = 1;
    }
    SetTileType(0x73, (*(u16*)(gMenu.field_0xc + 8) >> 4 & 0x3f) | (*(u16*)(gMenu.field_0xc + 10) >> 4 & 0x3f) << 6,
                layer);
    sub_080553E0((u32)gMenu.field_0x4);
    SoundReq(SFX_SECRET_BIG);
}

void sub_080559E0(void) {
    gUnk_080FF35C[gMenu.overlayType]();
}

void sub_080559FC(void) {
    if (gMenu.field_0xc[1] != 0) {
        LoadRoomEntityList((EntityData*)gUnk_080FF33C);
    }
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055A3C(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void sub_08055A6C(void) {
    if (gFadeControl.active == 0) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055AA8(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055AD0(void) {
    gUnk_080FF36C[gMenu.overlayType]();
}

void sub_08055AEC(void) {
    Entity* entity;
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    entity = LoadRoomEntity((EntityData*)&gUnk_080FED18[gMenu.field_0xc[1]]);
    if (entity != NULL) {
        entity->type2 = 1;
    }
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055B38(void) {
    if (gFadeControl.active == 0) {
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055B54(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055B70(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    u8* ptr = gMenu.field_0xc;
    Entity* entity = LoadRoomEntity((EntityData*)&gUnk_080FF378[param_2]);
    if (entity != NULL) {
        entity->x.HALF.HI = *(s16*)(ptr + 8) + param_3 + gRoomControls.origin_x;
        entity->y.HALF.HI = *(s16*)(ptr + 10) + param_4 + gRoomControls.origin_y;
    }
}

void sub_08055BB0(void) {
    extern void (*const gUnk_080FF3C8[])(void);
    gUnk_080FF3C8[gMenu.overlayType]();
}

void sub_08055BCC(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    sub_0801876C(gMenu.field_0x4, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055C04(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void sub_08055C34(void) {
    u8* ptr;
    Entity* entity;
    if (gFadeControl.active == 0) {
        ptr = gMenu.field_0xc;
        sub_080553E0((u32)gMenu.field_0x4);
        if ((ptr[1] & 0x80) != 0) {
            sub_08054974(gMenu.field_0x4, 0);
        } else {
            entity = FindEntity(OBJECT, TREE_THORNS, 6, 0, ptr[1] & 0x80);
            if (entity != NULL) {
                DeleteEntity(entity->child);
                DeleteEntity(entity);
            }
        }
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055CB0(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055CD8(void) {
    extern void (*const gUnk_080FF3E8[])(void);
    gUnk_080FF3E8[gMenu.overlayType]();
}

void sub_08055CF4(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055D2C(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055D64(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055D80(void) {
    gUnk_080FF3F4[gMenu.overlayType]();
}

void sub_08055D9C(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void sub_08055DC0(void) {
    if (gFadeControl.active == 0) {
        MessageFromTarget(TEXT_INDEX(TEXT_EMPTY, 0x01));
        gMenu.overlayType++;
        gMenu.transitionTimer = 0x78;
    }
}

void sub_08055DEC(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
