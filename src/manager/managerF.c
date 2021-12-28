#include "global.h"
#include "manager.h"
#include "flags.h"
#include "sound.h"
#include "room.h"
#include "player.h"
#include "functions.h"
#include "area.h"
#include "message.h"
#include "utils.h"
#include "tiles.h"
#include "object.h"
#include "item.h"

void sub_08058EE4(ManagerF*);
void sub_08058FB0(ManagerF*);
void sub_08059094(ManagerF*);
void sub_080590E0(ManagerF*);
void sub_08059124(ManagerF*);
void sub_080591CC(ManagerF*);
void sub_08059220(ManagerF*);
void sub_08059290(ManagerF*);
void sub_080592A4(ManagerF*);
void sub_08059368(ManagerF*);
void sub_0805938C(ManagerF*);
void sub_08059424(ManagerF*);
void sub_0805947C(ManagerF*);
#ifndef EU
void sub_080594DC(ManagerF*);
#endif
#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void sub_08059548(ManagerF*);
#endif

// clang-format off
void (*const gUnk_08108314[])(ManagerF*) = {
    sub_08058EE4,
    sub_08058FB0,
    sub_08058FB0, // dup
    sub_08059094,
    sub_080590E0,
    sub_08059124,
    sub_080591CC,
    sub_08059220,
    sub_08059290,
    sub_080592A4,
    sub_08059368,
    sub_0805938C,
    sub_08059424,
    sub_0805947C,
#ifndef EU
    sub_080594DC,
#endif
#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
    sub_08059548,
#endif
};
// clang-format on

typedef struct {
    u16 x;
    u16 y;
    u16 width;
    u16 height;
    u16 unk_08;
} PACKED __attribute__((aligned(2))) ManagerF_HelperStruct;

const ManagerF_HelperStruct gUnk_08108354[] = {
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
void sub_08059064(ManagerF*);
void sub_080592EC(ManagerF*);
void sub_0805930C(ManagerF*);
u32 sub_080593CC(ManagerF*);

// to be moved to headers
extern EntityData gUnk_080F4B88[];

void sub_08058ECC(ManagerF* this) {
    gUnk_08108314[this->manager.unk_0a](this);
}

void sub_08058EE4(ManagerF* this) {
    if (!this->manager.action)
        this->manager.action = 1;
    if (!CheckRoomFlag(this->manager.unk_0b))
        return;
    sub_08058F44(0x128, 0x68, this->manager.unk_0b + 1);
    sub_08058F44(0x158, 0x68, this->manager.unk_0b + 2);
    sub_08058F44(0x128, 0x98, this->manager.unk_0b + 3);
    sub_08058F44(0x158, 0x98, this->manager.unk_0b + 4);
    SoundReq(0x124);
    DeleteThisEntity();
}

void sub_08058F44(u32 unk0, u32 unk1, u32 unk2) {
    if (CheckRoomFlag(unk2))
        return;
    if (sub_080002A8(unk0, unk1, 1) != 0x61)
        return;
    SetTileType(0x26, ((unk0 >> 4) & 0x3F) | (((unk1 >> 4) & 0x3F) << 6), 1);
    sub_08058F84(unk0, unk1);
}

void sub_08058F84(u32 unk0, u32 unk1) {
    Entity* tmp;
    tmp = CreateObject(OBJECT_21, 0, 0);
    if (!tmp)
        return;
    tmp->x.HALF.HI = gRoomControls.roomOriginX + unk0;
    tmp->y.HALF.HI = gRoomControls.roomOriginY + unk1;
}

void sub_08058FB0(ManagerF* this) {
    switch (this->manager.action) {
        case 0:
            this->manager.action = 1;
            if (this->manager.unk_0a == 1) {
                this->manager.unk_0d = 7;
                this->manager.unk_0f = 6;
            } else {
                this->manager.unk_0d = 8;
                this->manager.unk_0f = 2;
            }
            if (CheckFlags(this->unk_3e)) {
                DeleteManager(&this->manager);
            }
            break;
        case 1:
            if (CheckFlags(this->unk_3e)) {
                this->manager.action = 2;
                this->manager.unk_0e = 120;
                RequestPriorityDuration((Entity*)this, 0xF0);
                sub_08059064(this);
            }
            break;
        case 2:
            if (this->manager.unk_0e == 90) {
                SetPlayerControl(2);
                sub_08077B20();
            }
            if (this->manager.unk_0e == 60) {
                gPlayerEntity.animationState = this->manager.unk_0f;
            }
            if (!--this->manager.unk_0e) {
                this->manager.action = 3;
                MenuFadeIn(5, this->manager.unk_0d);
            }
            break;
        default:
            SetFlag(this->unk_3e);
            SetPlayerControl(1);
            DeleteThisEntity();
    }
}

void sub_08059064(ManagerF* this) {
    Entity* tmp;
    tmp = CreateObject(GROUND_ITEM, ITEM_SMALL_KEY, 0);
    if (!tmp)
        return;
    tmp->actionDelay = 2;
    tmp->x.HALF.HI = this->unk_38 + gRoomControls.roomOriginX;
    tmp->y.HALF.HI = this->unk_3a + gRoomControls.roomOriginY;
}

void sub_08059094(ManagerF* this) {
    u32 tmp = 0;
    if (!this->manager.action) {
        this->manager.action = 1;
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
        DeleteManager(&this->manager);
    }
}

void sub_080590E0(ManagerF* this) {
    if (!this->manager.action) {
        this->manager.action = 1;
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

void sub_08059124(ManagerF* this) {
    switch (this->manager.action) {
        default:
            if (!--this->manager.unk_0e) {
                CreateDustAt(this->unk_38, this->unk_3a, this->manager.unk_0b);
                sub_0807BA8C(((this->unk_38 >> 4) & 0x3f) | ((this->unk_3a >> 4) & 0x3f) << 6, this->manager.unk_0b);
                SoundReq(0xcd);
                DeleteThisEntity();
            }
            break;
        case 0:
            if (CheckFlags(this->unk_3e)) {
                DeleteThisEntity();
            }
            this->manager.action = 1;
            SetTileType(0x365, ((this->unk_38 >> 4) & 0x3f) | ((this->unk_3a >> 4) & 0x3f) << 6, this->manager.unk_0b);
            break;
        case 1:
            if (CheckFlags(this->unk_3e)) {
                RequestPriorityDuration((Entity*)this, 0x4b);
                this->manager.unk_0e = 0x2d;
                this->manager.action++;
            }
    }
}

void sub_080591CC(ManagerF* this) {
    if (!this->manager.action) {
        this->manager.action = 1;
        this->manager.unk_0b = CheckFlags(this->unk_3e);
        if (this->manager.unk_0b) {
            gRoomVars.lightLevel = this->unk_3a;
        } else {
            gRoomVars.lightLevel = this->unk_38;
        }
    } else {
        u32 tmp = CheckFlags(this->unk_3e);
        if (this->manager.unk_0b != tmp) {
            this->manager.unk_0b = tmp;
            if (tmp) {
                gRoomVars.lightLevel = this->unk_3a;
            } else {
                gRoomVars.lightLevel = this->unk_38;
            }
        }
    }
}

void sub_08059220(ManagerF* this) {
    const ManagerF_HelperStruct* data;
    gRoomVars.lightLevel = 0;

    for (data = gUnk_08108354; data->x != 0xFFFF; data++) {
        if (CheckPlayerInRegion(data->x, data->y, data->width, data->height)) {
            gRoomVars.lightLevel = data->unk_08;
        }
    }
    if (!this->manager.action) {
        this->manager.action = 1;
        gArea.unk_0a = gRoomVars.lightLevel;
    }
}

void sub_08059278() {
    ManagerF* tmp;
    tmp = (ManagerF*)FindEntityByID(0x9, 0xF, 0x6);
    if (tmp) {
        sub_08058ECC(tmp);
    }
}

void sub_08059290(ManagerF* this) {
    this->manager.action = 1;
    gRoomControls.cameraTarget = &gPlayerEntity;
}

void sub_080592A4(ManagerF* this) {
    if (!this->manager.action) {
        this->manager.action = 1;
        if (CheckFlags(this->unk_3e)) {
            sub_080592EC(this);
            DeleteThisEntity();
        }
    } else {
        if (CheckFlags(this->unk_3e)) {
            sub_080592EC(this);
            sub_0805930C(this);
#ifndef EU
            SoundReq(0x16E);
#endif
            DeleteThisEntity();
        }
    }
}

void sub_080592EC(ManagerF* this) {
    SetDirtTile(((this->unk_38 >> 4) & 0x3F) | (((this->unk_3a >> 4) & 0x3F) << 6));
}

void sub_0805930C(ManagerF* this) {
    Entity* tmp;
#ifdef EU
    tmp = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION2, 0x0);
#else
    tmp = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION2, 0x40);
#endif
    if (!tmp)
        return;
    tmp->x.HALF.HI = this->unk_38 + gRoomControls.roomOriginX;
    tmp->y.HALF.HI = this->unk_3a + gRoomControls.roomOriginY;
    tmp->collisionLayer = 1;
}

void SetDirtTile(u32 tile) {
    SetTileType(CUT_GRASS, tile, 1);
    SetTileType(0, tile, 2);
    SetTileType(0, tile - 0x40, 2);
}

void sub_08059368(ManagerF* this) {
    this->manager.action = 1;
    if (this->unk_3c == gTextRender.curToken.textIndex) {
        SetFlag(this->unk_3e);
        DeleteThisEntity();
    }
}

void sub_0805938C(ManagerF* this) {
    if (sub_080593CC(this)) {
        if (++this->manager.unk_0e >= 8) {
            sub_080806BC(this->unk_38 - gRoomControls.roomOriginX, this->unk_3a - gRoomControls.roomOriginY, 0xFF, 0xA);
        }
    } else {
        this->manager.unk_0e = 0;
    }
}

u32 sub_080593CC(ManagerF* this) {
    if (!(gPlayerState.flags & PL_MINISH) && gPlayerState.swimState != 0 && gPlayerEntity.animationState == 0 &&
        (gPlayerState.field_0x90 & 0xF00) == 0x400) {
        return sub_0806FCB8(&gPlayerEntity, this->unk_38, this->unk_3a + 0xC, 6);
    }
    return 0;
}

void sub_08059424(ManagerF* this) {
    Entity* tmp;
    if (CheckFlags(this->unk_3e)) {
        DeleteThisEntity();
    }
    if (!CheckFlags(this->unk_3c))
        return;
    tmp = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION, 0);
    if (!tmp)
        return;
    tmp->collisionLayer = 2;
    tmp->x.HALF.HI = this->unk_38 + gRoomControls.roomOriginX;
    tmp->y.HALF.HI = this->unk_3a + gRoomControls.roomOriginY;
    EnqueueSFX(0x1B0);
    DeleteThisEntity();
}

void sub_0805947C(ManagerF* this) {
    if (!CheckFlags(this->unk_3e)) {
        SetPlayerControl(3);
        if (gRoomControls.unk2)
            return;
        if (gRoomVars.field_0x0) {
            StartPlayerScript(gUnk_08108380[gRoomControls.unk_10]);
        } else {
            StartPlayerScript(gUnk_08108380[gPlayerEntity.animationState >> 1]);
        }
    }
    DeleteThisEntity();
}

#ifndef EU
void sub_080594DC(ManagerF* this) {
    switch (this->manager.action) {
        case 0:
            this->manager.action = 1;
            // fall through
        case 1:
            if (!GetInventoryValue(6))
                return;
            if (CheckLocalFlagByBank(0x8c0, 0x85))
                return;
            this->manager.action = 2;
            sub_080186C0(0xB0F);
            break;
        case 2:
        default:
            if (gArea.inventoryGfxIdx != 0xFF) {
                DeleteThisEntity();
            }
            if (CheckLocalFlagByBank(0x8c0, 0x85)) {
                sub_0801855C();
                DeleteThisEntity();
            }
    }
}
#endif

#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void sub_08059548(ManagerF* this) {
    SetDefaultPriority((Entity*)this, PRIO_PLAYER_EVENT);
    if (gPlayerEntity.action == 0x16) {
        DeleteThisEntity();
    }
    gInput.heldKeys |= 0x4;
}
#endif
