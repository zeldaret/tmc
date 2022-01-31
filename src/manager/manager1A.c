#include "global.h"
#include "manager.h"
#include "flags.h"
#include "room.h"
#include "screen.h"
#include "common.h"
#include "object.h"
#include "functions.h"

typedef struct {
    Manager manager;
    s16 unk_20;
    s16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u8 unk_28[8];
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    u16 unk_36;
    u8 unk_38[7];
    u8 unk_3f;
} Manager1A;

extern void (*const gUnk_08108668[])(Manager1A*);

extern u8 gGlobalGfxAndPalettes[];

void Manager1A_Main(Manager1A* this) {
    gUnk_08108668[this->manager.action](this);
}

typedef struct struct_08108764 {
    u8 unk_00;
    u8 unk_01; // area ID?
    u8 unk_02; // room ID?
    u8 unk_03; // layer?
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0a;
    u8 unk_0b;
    struct {
        u32 unk_00;
        u16 unk_04;
        u16 unk_06;
        u16 unk_08;
        u16 unk_0a;
    } * unk_0c;
    struct {
        u8 unk_00;
        u8 unk_01;
        u8 unk_02[2];
        u16 unk_04;
        u16 unk_06;
    } * unk_10;
} struct_08108764;

extern struct_08108764 gUnk_08108764[];

u32 sub_0805B1CC(Manager1A*);
void sub_0805B210(Manager1A*);
void sub_0805B2B0(Manager1A*);
void sub_0805B328(Manager1A*);

void sub_0805B048(Manager1A* this) {
    struct_08108764* tmp;
    Entity* obj;
    SetDefaultPriority((Entity*)&this->manager, PRIO_PLAYER_EVENT);
    MemClear(&this->unk_20, 0x20);
    this->manager.action = 1;
    this->unk_3f = gRoomControls.room;
    tmp = &gUnk_08108764[this->manager.unk_0a];
    if (!tmp->unk_0a) {
        this->unk_20 = gRoomControls.origin_x;
        this->unk_22 = gRoomControls.origin_y;
        this->unk_24 = gRoomControls.width;
        this->unk_26 = gRoomControls.height;
    } else {
        this->unk_20 = (tmp->unk_08 << 4) + gRoomControls.origin_x;
        this->unk_22 = (tmp->unk_09 << 4) + gRoomControls.origin_y;
        this->unk_24 = (tmp->unk_0a << 4);
        this->unk_26 = (tmp->unk_0b << 4);
    }
    this->manager.unk_0b = tmp->unk_0c != 0;
    if (this->manager.unk_0b) {
        this->manager.unk_10 |= 0x20;
        this->unk_34 = tmp->unk_0c->unk_04;
        this->unk_36 = tmp->unk_0c->unk_06;
        this->unk_30 = tmp->unk_0c->unk_08;
        this->unk_32 = tmp->unk_0c->unk_0a;
        sub_0805BC4C();
        sub_0805B2B0(this);
        sub_0805B328(this);
        RegisterTransitionManager(this, sub_0805B328, 0);
    }
    if (!tmp->unk_10)
        return;
    obj = CreateObject(OBJECT_28, tmp->unk_10->unk_00, tmp->unk_10->unk_01);
    if (obj) {
        obj->x.HALF.HI = tmp->unk_10->unk_04 + gRoomControls.origin_x;
        obj->y.HALF.HI = tmp->unk_10->unk_06 + gRoomControls.origin_y;
    }
    if (this->manager.unk_0a != 0xa || CheckLocalFlag(0x4B))
        return;
    obj = CreateObject(OBJECT_28, 3, 3);
    if (obj) {
        obj->x.HALF.HI = tmp->unk_10->unk_04 + gRoomControls.origin_x;
        obj->y.HALF.HI = tmp->unk_10->unk_06 + gRoomControls.origin_y;
    }
}

void sub_0805B168(Manager1A* this) {
    if (sub_0805B1CC(this)) {
        sub_0805B210(this);
        DeleteThisEntity();
        return;
    }
    sub_0805B2B0(this);
    if (gRoomControls.reload_flags == 1) {
        this->manager.unk_0d = 1;
        return;
    }
    if (!this->manager.unk_0d)
        return;
    this->manager.unk_0d = 0;
    if (this->unk_3f == gRoomControls.room)
        return;
    if (this->manager.unk_0b) {
        gScreen.lcd.displayControl &= ~0x800;
    }
    DeleteThisEntity();
}

u32 sub_0805B1CC(Manager1A* this) {
    u32 re = 0;
    if (CheckPlayerProximity(this->unk_20, this->unk_22, this->unk_24, this->unk_26)) {
        if ((gPlayerState.flags & PL_DROWNING) && (gPlayerState.flags & PL_BUSY)) {
            gPlayerState.flags |= 0x8000;
        } else if (gPlayerState.flags & 0x8000) {
            re = 1;
        }
    }
    return re;
}

void sub_0805B210(Manager1A* this) {
    struct_08108764* tmp;
    gRoomTransition.transitioningOut = 1;
    gRoomTransition.type = TRANSITION_CUT;
    gRoomTransition.player_status.start_anim = 4;
    tmp = &gUnk_08108764[this->manager.unk_0a];
    gRoomTransition.player_status.area_next = tmp->unk_01;
    gRoomTransition.player_status.room_next = tmp->unk_02;
    gRoomTransition.player_status.layer = tmp->unk_03;
    if (gPlayerState.flags & PL_MINISH) {
        gRoomTransition.player_status.spawn_type = PL_SPAWN_DROP_MINISH;
    } else {
        gRoomTransition.player_status.spawn_type = PL_SPAWN_DROP;
    }
    switch (tmp->unk_00) {
        case 0:
            gRoomTransition.player_status.start_pos_x = tmp->unk_04;
            gRoomTransition.player_status.start_pos_y = tmp->unk_06;
            break;
        case 1:
            gRoomTransition.player_status.start_pos_x = gPlayerEntity.x.HALF.HI - gRoomControls.origin_x + tmp->unk_04;
            gRoomTransition.player_status.start_pos_y = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y + tmp->unk_06;
            break;
        case 2:
            gRoomTransition.player_status.start_pos_x = tmp->unk_04;
            gRoomTransition.player_status.start_pos_y = tmp->unk_06;
            gRoomTransition.player_status.spawn_type = PL_SPAWN_DROP_MINISH;
            break;
    }
}

void sub_0805B2B0(Manager1A* this) {
    s32 tmp, tmp2;
    if (!this->manager.unk_0b)
        return;
    tmp = (this->unk_30 - gRoomControls.scroll_x) / 4;
    tmp2 = (this->unk_32 - gRoomControls.scroll_y) / 4;
    if (tmp < -12) {
        tmp = -12;
    }
    if (tmp > 12) {
        tmp = 12;
    }
    if (tmp2 < -12) {
        tmp2 = -12;
    }
    if (tmp2 > 12) {
        tmp2 = 12;
    }
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gRoomControls.bg3OffsetX.HALF.HI = gRoomControls.scroll_x + this->unk_34 + tmp;
    gScreen.bg3.xOffset = gRoomControls.scroll_x + this->unk_34 + tmp;
    gRoomControls.bg3OffsetY.HALF.HI = gRoomControls.scroll_y + this->unk_36 + tmp2;
    gScreen.bg3.yOffset = gRoomControls.scroll_y + this->unk_36 + tmp2;
}

void sub_0805B328(Manager1A* this) {
    struct_08108764* tmp;
    if (!this->manager.unk_0b)
        return;
    tmp = &gUnk_08108764[this->manager.unk_0a];
    LoadResourceAsync(&gGlobalGfxAndPalettes[tmp->unk_0c->unk_00], 0x0600F000, 0x800);
    gScreen.bg3.control = 0x1E07;
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.bg3.xOffset = gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.bg3OffsetY.HALF.HI;
    gScreen.controls.layerFXControl &= ~0x8;
}

void sub_0805B390(u32 unk1) {
    Manager* tmp = GetEmptyManager();
    if (!tmp)
        return;
    tmp->type = 0x9;
    tmp->subtype = 0x1A;
    tmp->unk_0a = unk1;
    AppendEntityToList((Entity*)tmp, 6);
}
