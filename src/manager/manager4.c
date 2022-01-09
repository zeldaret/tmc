#include "global.h"
#include "asm.h"
#include "player.h"
#include "room.h"
#include "manager.h"
#include "structures.h"
#include "functions.h"

extern void (*gUnk_08107C70[])(Manager*);

void Manager4_Main(Manager* this) {
    gUnk_08107C70[this->action](this);
}

extern void sub_080805F8(void);

extern DiggingCaveEntrance* sub_08057AA8(DiggingCaveEntrance*, int);

void sub_0805786C(Manager* this) {
    DiggingCaveEntrance* tmp;
    u8 room;
    u8 area;
    u16 uVar = 0x81 << 7;
    sub_080805F8();
    if (gUnk_03004030.unk_08 != 0) {
        if (gUnk_03004030.unk_00 == 0) {
            gUnk_03004030.unk_0a = 0xFF;
            room = gRoomControls.room;
            tmp = diggingCaveEntrances[gRoomControls.area];
            tmp = sub_08057AA8(tmp, room);
            if (tmp != 0) {
                room = tmp->target_room;
                tmp = diggingCaveEntrances[tmp->target_area];
                tmp = sub_08057AA8(tmp, room);
                if (tmp != 0) {
                    gUnk_03004030.unk_00 = tmp;
                }
            }
        }
        room = gRoomControls.room;
        tmp = diggingCaveEntrances[gRoomControls.area];
        uVar = 0x81 << 7;
        for (tmp = sub_08057AA8(tmp, room); tmp != 0; tmp = sub_08057AA8(tmp, room)) {
            SetTile(uVar, tmp->unk_00 + 0x3F, 1);
            SetTile(uVar, tmp->unk_00 + 0x40, 1);
            SetTile(uVar, tmp->unk_00 + 0x41, 1);
            tmp++;
        }
    }
    this->action = 1;
}

extern u32 sub_0805795C(Manager*, DiggingCaveEntrance*);

void sub_08057920(Manager* this) {
    DiggingCaveEntrance* tmp;
    u8 room;
    room = gRoomControls.room;
    for (tmp = diggingCaveEntrances[gRoomControls.area];
         (tmp = sub_08057AA8(tmp, room)) != 0 && !sub_0805795C(this, tmp); tmp++)
        ;
}

void sub_08057A18(Manager*, DiggingCaveEntrance*);

u32 sub_0805795C(Manager* this, DiggingCaveEntrance* entr) {
    u16 offsetX, offsetY, offsetX2, offsetY2;
    u32 tmp, tmp2;
    if (gUnk_03004030.unk_08) {
        offsetX = gPlayerEntity.x.HALF.HI - gRoomControls.origin_x;
        offsetY = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y;
        offsetX2 = (entr->unk_00 & 0x3F) * 16 + 8;
        offsetY2 = ((entr->unk_00 & 0xFC0) >> 6) * 16 + 0x18;
        tmp = offsetX - offsetX2;
        if (tmp + 0x18 > 0x30 || offsetY - offsetY2 + 8 > 0x10U)
            return 0;
        if (offsetY < offsetY2 && tmp + 0xC <= 0x18)
            return 0;
        sub_08057A18(this, entr);
        return 1;
    } else {
        if (COORD_TO_TILE(&gPlayerEntity) != entr->unk_00)
            return 0;
        offsetY2 = gRoomControls.origin_y + ((entr->unk_00 >> 6) << 4) + 6;
        if (gPlayerEntity.y.HALF.HI >= offsetY2)
            return 0;
        sub_08057A18(this, entr);
        return 1;
    }
}

extern void sub_08080930(u32);

#ifdef EU
ASM_FUNC("asm/non_matching/eu/sub_08057A18.inc", void sub_08057A18(Manager* this, DiggingCaveEntrance* entr))
#else
void sub_08057A18(Manager* this, DiggingCaveEntrance* entr) {
    u16 tmp;
    SetInitializationPriority();
    gUnk_03004030.unk_0a = gUnk_03004030.unk_09;
    gUnk_03004030.unk_09 = gRoomControls.area;
    gRoomTransition.player_status.area_next = entr->target_area;
    gRoomTransition.player_status.room_next = entr->target_room;
    gRoomControls.area = entr->target_area;
    gRoomControls.room = entr->target_room;
    gUnk_03004030.unk_00 = entr;
    gUnk_03004030.unk_04 = gPlayerEntity.x.HALF.HI - gRoomControls.origin_x - ((entr->unk_00 & 0x3F) * 16);
    gUnk_03004030.unk_06 = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y - ((entr->unk_00 & 0xFC0) >> 2);
    tmp = gUnk_03004030.unk_08;
    if (!tmp) {
        if ((entr->target_room | 0x80) != gUnk_03004030.unk_0b) {
            gUnk_02034480.unk_00 = gUnk_03004030.unk_08;
        }
        gUnk_03004030.unk_0b = entr->target_room | 0x80;
    }
    sub_08080930(entr->unk_03);
    DeleteManager(this);
}
#endif

DiggingCaveEntrance* sub_08057AA8(DiggingCaveEntrance* entr, int room) {
    for (; entr->unk_00 != 0xFFFF; entr++) {
        if (entr->source_room == room)
            return entr;
    }
    return 0;
}
