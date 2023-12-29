/**
 * @file miscManager.c
 * @ingroup Managers
 *
 * @brief Various different functionalities selected with paramA/unk_0a.
 */
#include "manager/miscManager.h"
#include "area.h"
#include "common.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "message.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

void MiscManager_Type0(MiscManager*);
void MiscManager_Type1(MiscManager*);
void MiscManager_Type3(MiscManager*);
void MiscManager_Type4(MiscManager*);
void MiscManager_Type5(MiscManager*);
void MiscManager_Type6(MiscManager*);
void MiscManager_Type7(MiscManager*);
void MiscManager_Type8(MiscManager*);
void MiscManager_Type9(MiscManager*);
void MiscManager_TypeA(MiscManager*);
void MiscManager_TypeB(MiscManager*);
void MiscManager_TypeC(MiscManager*);
void MiscManager_TypeD(MiscManager*);
#ifndef EU
void MiscManager_TypeE(MiscManager*);
#endif
#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void MiscManager_TypeF(MiscManager*);
#endif

// clang-format off
void (*const MiscManager_Types[])(MiscManager*) = {
    MiscManager_Type0,
    MiscManager_Type1,
    MiscManager_Type1, // dup
    MiscManager_Type3,
    MiscManager_Type4,
    MiscManager_Type5,
    MiscManager_Type6,
    MiscManager_Type7,
    MiscManager_Type8,
    MiscManager_Type9,
    MiscManager_TypeA,
    MiscManager_TypeB,
    MiscManager_TypeC,
    MiscManager_TypeD,
#ifndef EU
    MiscManager_TypeE,
#endif
#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
    MiscManager_TypeF,
#endif
};
// clang-format on

typedef struct {
    u16 x;
    u16 y;
    u16 width;
    u16 height;
    u16 unk_08;
} PACKED __attribute__((aligned(2))) MiscManager_HelperStruct;

const MiscManager_HelperStruct gUnk_08108354[] = {
    { 0xF0, 0xB0, 0xF0, 0xB0, 0x100 },
    { 0x188, 0x190, 0x28, 0x30, 0x100 },
    { 0xF0, 0x340, 0xF0, 0xB0, 0x80 },
    { 0x180, 0x278, 0x60, 0x38, 0x80 },
};

const u32 gUnk_08108354_terminator = 0xFFFF; // terminator for the previous array

extern u16 script_PlayerAtDarkNut1[];
extern u16 script_PlayerAtDarkNut2[];
extern u16 script_PlayerAtDarkNut3[];
extern u16 script_PlayerAtMadderpillar[];

u16* const gUnk_08108380[] = {
    script_PlayerAtDarkNut1,
    script_PlayerAtDarkNut2,
    script_PlayerAtDarkNut3,
    script_PlayerAtMadderpillar,
};

void sub_08058F44(u32, u32, u32);
void sub_08058F84(u32, u32);
void sub_08059064(MiscManager*);
void sub_080592EC(MiscManager*);
void sub_0805930C(MiscManager*);
u32 sub_080593CC(MiscManager*);

// to be moved to headers
extern EntityData gUnk_080F4B88[];

void MiscManager_Main(MiscManager* this) {
    MiscManager_Types[super->type](this);
}

void MiscManager_Type0(MiscManager* this) {
    if (super->action == 0)
        super->action = 1;
    if (!CheckRoomFlag(super->type2))
        return;
    sub_08058F44(0x128, 0x68, super->type2 + 1);
    sub_08058F44(0x158, 0x68, super->type2 + 2);
    sub_08058F44(0x128, 0x98, super->type2 + 3);
    sub_08058F44(0x158, 0x98, super->type2 + 4);
    SoundReq(SFX_124);
    DeleteThisEntity();
}

void sub_08058F44(u32 x, u32 y, u32 flag) {
    if (CheckRoomFlag(flag))
        return;
    if (sub_080B1A48(x, y, 1) != 0x61)
        return;
    SetTileType(0x26, ((x >> 4) & 0x3F) | (((y >> 4) & 0x3F) << 6), 1);
    sub_08058F84(x, y);
}

void sub_08058F84(u32 x, u32 y) {
    Entity* particle = CreateObject(DIRT_PARTICLE, 0, 0);
    if (!particle)
        return;
    particle->x.HALF.HI = gRoomControls.origin_x + x;
    particle->y.HALF.HI = gRoomControls.origin_y + y;
}

void MiscManager_Type1(MiscManager* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            if (super->type == 1) {
                super->subAction = 7;
                super->subtimer = 6;
            } else {
                super->subAction = 8;
                super->subtimer = 2;
            }
            if (CheckFlags(this->flags)) {
                DeleteManager(super);
            }
            break;
        case 1:
            if (CheckFlags(this->flags)) {
                super->action = 2;
                super->timer = 120;
                RequestPriorityDuration((Entity*)this, 240);
                sub_08059064(this);
            }
            break;
        case 2:
            if (super->timer == 90) {
                SetPlayerControl(2);
                PutAwayItems();
            }
            if (super->timer == 60) {
                gPlayerEntity.animationState = super->subtimer;
            }
            if (!--super->timer) {
                super->action = 3;
                MenuFadeIn(5, super->subAction);
            }
            break;
        default:
            SetFlag(this->flags);
            SetPlayerControl(1);
            DeleteThisEntity();
    }
}

void sub_08059064(MiscManager* this) {
    Entity* tmp;
    tmp = CreateObject(GROUND_ITEM, ITEM_SMALL_KEY, 0);
    if (!tmp)
        return;
    tmp->timer = 2;
    tmp->x.HALF.HI = this->unk_38 + gRoomControls.origin_x;
    tmp->y.HALF.HI = this->unk_3a + gRoomControls.origin_y;
}

void MiscManager_Type3(MiscManager* this) {
    u32 tmp = 0;
    if (super->action == 0) {
        super->action = 1;
        if (CheckLocalFlag(0x60)) {
            tmp = 1;
        } else {
            SetLocalFlag(0x5F);
        }
    } else {
        if (CheckLocalFlag(0x60)) {
            ClearLocalFlag(0x5F);
            tmp = 1;
        }
    }
    if (tmp) {
        LoadRoomEntityList(gUnk_080F4B88);
        DeleteManager(super);
    }
}

void MiscManager_Type4(MiscManager* this) {
    if (super->action == 0) {
        super->action = 1;
        SetDefaultPriority((Entity*)this, PRIO_PLAYER_EVENT);
    }
    if (CheckLocalFlag(0x6c)) {
        if (CheckLocalFlag(0x4b)) {
            SetLocalFlag(0x4a);
        } else {
            ClearLocalFlag(0x4a);
        }
    } else {
        ClearLocalFlag(0x4a);
    }
}

void MiscManager_Type5(MiscManager* this) {
    switch (super->action) {
        default:
            if (!--super->timer) {
                CreateDustAt(this->unk_38, this->unk_3a, super->type2);
                RestorePrevTileEntity(((this->unk_38 >> 4) & 0x3f) | ((this->unk_3a >> 4) & 0x3f) << 6, super->type2);
                SoundReq(SFX_TASK_COMPLETE);
                DeleteThisEntity();
            }
            break;
        case 0:
            if (CheckFlags(this->flags)) {
                DeleteThisEntity();
            }
            super->action = 1;
            SetTileType(0x365, ((this->unk_38 >> 4) & 0x3f) | ((this->unk_3a >> 4) & 0x3f) << 6, super->type2);
            break;
        case 1:
            if (CheckFlags(this->flags)) {
                RequestPriorityDuration((Entity*)this, 75);
                super->timer = 45;
                super->action++;
            }
    }
}

void MiscManager_Type6(MiscManager* this) {
    if (super->action == 0) {
        super->action = 1;
        super->type2 = CheckFlags(this->flags);
        if (super->type2) {
            gRoomVars.lightLevel = this->unk_3a;
        } else {
            gRoomVars.lightLevel = this->unk_38;
        }
    } else {
        u32 tmp = CheckFlags(this->flags);
        if (super->type2 != tmp) {
            super->type2 = tmp;
            if (tmp) {
                gRoomVars.lightLevel = this->unk_3a;
            } else {
                gRoomVars.lightLevel = this->unk_38;
            }
        }
    }
}

void MiscManager_Type7(MiscManager* this) {
    const MiscManager_HelperStruct* data;
    gRoomVars.lightLevel = 0;

    for (data = gUnk_08108354; data->x != 0xFFFF; data++) {
        if (CheckPlayerInRegion(data->x, data->y, data->width, data->height)) {
            gRoomVars.lightLevel = data->unk_08;
        }
    }
    if (super->action == 0) {
        super->action = 1;
        gArea.lightLevel = gRoomVars.lightLevel;
    }
}

void sub_08059278(void) {
    MiscManager* tmp;
    tmp = (MiscManager*)FindEntityByID(MANAGER, MISC_MANAGER, 0x6);
    if (tmp) {
        MiscManager_Main(tmp);
    }
}

void MiscManager_Type8(MiscManager* this) {
    super->action = 1;
    gRoomControls.camera_target = &gPlayerEntity;
}

void MiscManager_Type9(MiscManager* this) {
    if (super->action == 0) {
        super->action = 1;
        if (CheckFlags(this->flags)) {
            sub_080592EC(this);
            DeleteThisEntity();
        }
    } else {
        if (CheckFlags(this->flags)) {
            sub_080592EC(this);
            sub_0805930C(this);
#ifndef EU
            SoundReq(SFX_16E);
#endif
            DeleteThisEntity();
        }
    }
}

void sub_080592EC(MiscManager* this) {
    SetDirtTile(((this->unk_38 >> 4) & 0x3F) | (((this->unk_3a >> 4) & 0x3F) << 6));
}

void sub_0805930C(MiscManager* this) {
    Entity* tmp;
#ifdef EU
    tmp = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION2, 0x0);
#else
    tmp = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION2, 0x40);
#endif
    if (!tmp)
        return;
    tmp->x.HALF.HI = this->unk_38 + gRoomControls.origin_x;
    tmp->y.HALF.HI = this->unk_3a + gRoomControls.origin_y;
    tmp->collisionLayer = 1;
}

void SetDirtTile(u32 tile) {
    SetTileType(CUT_GRASS, tile, 1);
    SetTileType(0, tile, 2);
    SetTileType(0, tile - 0x40, 2);
}

void MiscManager_TypeA(MiscManager* this) {
    super->action = 1;
    if (this->unk_3c == gTextRender.curToken.textIndex) {
        SetFlag(this->flags);
        DeleteThisEntity();
    }
}

void MiscManager_TypeB(MiscManager* this) {
    if (sub_080593CC(this)) {
        if (++super->timer >= 8) {
            sub_080806BC(this->unk_38 - gRoomControls.origin_x, this->unk_3a - gRoomControls.origin_y, 0xFF, 0xA);
        }
    } else {
        super->timer = 0;
    }
}

bool32 sub_080593CC(MiscManager* this) {
    if (!(gPlayerState.flags & PL_MINISH) && gPlayerState.swim_state != 0 && gPlayerEntity.animationState == 0 &&
        (gPlayerState.playerInput.heldInput & PLAYER_INPUT_ANY_DIRECTION) == PLAYER_INPUT_UP) {
        return EntityWithinDistance(&gPlayerEntity, this->unk_38, this->unk_3a + 0xC, 6);
    }
    return FALSE;
}

void MiscManager_TypeC(MiscManager* this) {
    Entity* tmp;
    if (CheckFlags(this->flags)) {
        DeleteThisEntity();
    }
    if (!CheckFlags(this->unk_3c))
        return;
    tmp = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION, 0);
    if (!tmp)
        return;
    tmp->collisionLayer = 2;
    tmp->x.HALF.HI = this->unk_38 + gRoomControls.origin_x;
    tmp->y.HALF.HI = this->unk_3a + gRoomControls.origin_y;
    EnqueueSFX(SFX_1B0);
    DeleteThisEntity();
}

void MiscManager_TypeD(MiscManager* this) {
    if (!CheckFlags(this->flags)) {
        SetPlayerControl(3);
        if (gRoomControls.reload_flags)
            return;
        if (gRoomVars.field_0x0) {
            StartPlayerScript(gUnk_08108380[gRoomControls.scroll_direction]);
        } else {
            StartPlayerScript(gUnk_08108380[gPlayerEntity.animationState >> 1]);
        }
    }
    DeleteThisEntity();
}

#ifndef EU
void MiscManager_TypeE(MiscManager* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            // fall through
        case 1:
            if (!GetInventoryValue(ITEM_FOURSWORD))
                return;
            if (CheckLocalFlagByBank(FLAG_BANK_10, LV6SOTO_01_CAP_0))
                return;
            super->action = 2;
            SetNextAreaHint(TEXT_INDEX(TEXT_EZLO, 0xf));
            break;
        case 2:
        default:
            if (gArea.unk28.textBaseIndex != 0xFF) {
                DeleteThisEntity();
            }
            if (CheckLocalFlagByBank(FLAG_BANK_10, LV6SOTO_01_CAP_0)) {
                sub_0801855C();
                DeleteThisEntity();
            }
    }
}
#endif

#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void MiscManager_TypeF(MiscManager* this) {
    SetDefaultPriority((Entity*)this, PRIO_PLAYER_EVENT);
    if (gPlayerEntity.action == PLAYER_TALKEZLO) {
        DeleteThisEntity();
    }
    gInput.heldKeys |= SELECT_BUTTON;
}
#endif
