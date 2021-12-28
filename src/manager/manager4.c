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
    u8 roomID;
    u8 areaID;
    u16 uVar = 0x81 << 7;
    sub_080805F8();
    if (gUnk_03004030.unk_08 != 0) {
        if (gUnk_03004030.unk_00 == 0) {
            gUnk_03004030.unk_0a = 0xFF;
            roomID = gRoomControls.roomID;
            tmp = diggingCaveEntrances[gRoomControls.areaID];
            tmp = sub_08057AA8(tmp, roomID);
            if (tmp != 0) {
                roomID = tmp->target_roomID;
                tmp = diggingCaveEntrances[tmp->target_areaID];
                tmp = sub_08057AA8(tmp, roomID);
                if (tmp != 0) {
                    gUnk_03004030.unk_00 = tmp;
                }
            }
        }
        roomID = gRoomControls.roomID;
        tmp = diggingCaveEntrances[gRoomControls.areaID];
        uVar = 0x81 << 7;
        for (tmp = sub_08057AA8(tmp, roomID); tmp != 0; tmp = sub_08057AA8(tmp, roomID)) {
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
    u8 roomID;
    roomID = gRoomControls.roomID;
    for (tmp = diggingCaveEntrances[gRoomControls.areaID];
         (tmp = sub_08057AA8(tmp, roomID)) != 0 && !sub_0805795C(this, tmp); tmp++)
        ;
}

void sub_08057A18(Manager*, DiggingCaveEntrance*);

u32 sub_0805795C(Manager* this, DiggingCaveEntrance* entr) {
    u16 offsetX, offsetY, offsetX2, offsetY2;
    u32 tmp, tmp2;
    if (gUnk_03004030.unk_08) {
        offsetX = gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX;
        offsetY = gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY;
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
        offsetY2 = gRoomControls.roomOriginY + ((entr->unk_00 >> 6) << 4) + 6;
        if (gPlayerEntity.y.HALF.HI >= offsetY2)
            return 0;
        sub_08057A18(this, entr);
        return 1;
    }
}

extern void sub_08080930();

#ifdef EU
ASM_FUNC("asm/non_matching/eu/sub_08057A18.inc", void sub_08057A18(Manager* this, DiggingCaveEntrance* entr))
#else
void sub_08057A18(Manager* this, DiggingCaveEntrance* entr) {
    u16 tmp;
    SetInitializationPriority();
    gUnk_03004030.unk_0a = gUnk_03004030.unk_09;
    gUnk_03004030.unk_09 = gRoomControls.areaID;
    gScreenTransition.player_status.area_next = entr->target_areaID;
    gScreenTransition.player_status.room_next = entr->target_roomID;
    gRoomControls.areaID = entr->target_areaID;
    gRoomControls.roomID = entr->target_roomID;
    gUnk_03004030.unk_00 = entr;
    gUnk_03004030.unk_04 = gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX - ((entr->unk_00 & 0x3F) * 16);
    gUnk_03004030.unk_06 = gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY - ((entr->unk_00 & 0xFC0) >> 2);
    tmp = gUnk_03004030.unk_08;
    if (!tmp) {
        if ((entr->target_roomID | 0x80) != gUnk_03004030.unk_0b) {
            gUnk_02034480.unk_00 = gUnk_03004030.unk_08;
        }
        gUnk_03004030.unk_0b = entr->target_roomID | 0x80;
    }
    sub_08080930(entr->unk_03);
    DeleteManager(this);
}
#endif

DiggingCaveEntrance* sub_08057AA8(DiggingCaveEntrance* entr, int roomID) {
    for (; entr->unk_00 != 0xFFFF; entr++) {
        if (entr->source_roomID == roomID)
            return entr;
    }
    return 0;
}
