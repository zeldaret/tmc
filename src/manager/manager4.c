#include "global.h"
#include "asm.h"
#include "player.h"
#include "room.h"
#include "manager.h"
#include "structures.h"
#include "functions.h"

void Manager4_Main(Manager*);
void sub_0805786C(Manager*);
void sub_08057920(Manager*);

void Manager4_Main(Manager* this) {
    static void (*const actionFuncs[])(Manager*) = {
        sub_0805786C,
        sub_08057920,
    };
    actionFuncs[this->action](this);
}

extern void UpdateIsDiggingCave(void);

extern const DiggingCaveEntrance* sub_08057AA8(const DiggingCaveEntrance*, int);

void sub_0805786C(Manager* this) {
    const DiggingCaveEntrance* tmp;
    u8 room;
    u8 area;
    u16 uVar = 0x81 << 7;
    UpdateIsDiggingCave();
    if (gUnk_03004030.isDiggingCave != 0) {
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

extern u32 sub_0805795C(Manager*, const DiggingCaveEntrance*);

void sub_08057920(Manager* this) {
    const DiggingCaveEntrance* tmp;
    u8 room;
    room = gRoomControls.room;
    for (tmp = diggingCaveEntrances[gRoomControls.area];
         (tmp = sub_08057AA8(tmp, room)) != 0 && !sub_0805795C(this, tmp); tmp++)
        ;
}

void sub_08057A18(Manager*, const DiggingCaveEntrance*);

u32 sub_0805795C(Manager* this, const DiggingCaveEntrance* entr) {
    u16 offsetX, offsetY, offsetX2, offsetY2;
    u32 tmp, tmp2;
    if (gUnk_03004030.isDiggingCave) {
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

void sub_08057A18(Manager* this, const DiggingCaveEntrance* entr) {
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

#ifndef EU
    tmp = gUnk_03004030.isDiggingCave;
    if (!tmp) {
        if ((entr->target_room | 0x80) != gUnk_03004030.unk_0b) {
            gUnk_02034480.unk_00 = gUnk_03004030.isDiggingCave;
        }
        gUnk_03004030.unk_0b = entr->target_room | 0x80;
    }
#endif

    sub_08080930(entr->unk_03);
    DeleteManager(this);
}

const DiggingCaveEntrance* sub_08057AA8(const DiggingCaveEntrance* entr, int room) {
    for (; entr->unk_00 != 0xFFFF; entr++) {
        if (entr->source_room == room)
            return entr;
    }
    return 0;
}

static const DiggingCaveEntrance gUnk_08107C78[] = { { -1, 0, 0, 0, 0 } };
static const DiggingCaveEntrance gUnk_08107C80[] = { { 0x4e5, 0x0, 0x0, 0xc, 0x0, 0xce5 },
                                                     { 0x3df, 0x0, 0x0, 0xc, 0x0, 0xbdf },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107C98[] = { { 0x2c3, 0x4, 0x4, 0x13, 0x0, 0x2c3 },
                                                     { 0x163, 0x5, 0x10, 0x19, 0x1, 0x448 },
                                                     { 0x385, 0x7, 0xa, 0x13, 0x3, 0x385 },
                                                     { 0x390, 0x7, 0xa, 0x13, 0x3, 0x390 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107CC0[] = { { 0x62d, 0x0, 0x2, 0xf, 0x0, 0xa2d },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107CD0[] = { { 0x143, 0x1, 0x6, 0x14, 0x0, 0x643 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107CE0[] = { { 0x95a, 0x0, 0x8, 0x16, 0x0, 0x95a },
                                                     { 0x9ce, 0x0, 0x8, 0x16, 0x0, 0x9ce },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107CF8[] = { { 0x670, 0x0, 0xc, 0x17, 0x0, 0x670 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D08[] = { { 0x15e, 0x0, 0xe, 0x19, 0x1, 0x46e },
                                                     { 0x79e, 0x0, 0x12, 0x19, 0x0, 0x248 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D20[] = { { 0xce5, 0x0, 0x1, 0x0, 0x0, 0x4e5 },
                                                     { 0xbdf, 0x0, 0x1, 0x0, 0x0, 0x3df },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D38[] = { { 0xa2d, 0x0, 0x3, 0x2, 0x0, 0x62d },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D48[] = { { 0x2c3, 0x0, 0x5, 0x3, 0x4, 0x2c3 },
                                                     { 0x385, 0x3, 0xb, 0x3, 0x7, 0x385 },
                                                     { 0x390, 0x3, 0xb, 0x3, 0x7, 0x390 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D68[] = { { 0x643, 0x0, 0x7, 0x6, 0x1, 0x143 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D78[] = { { 0x95a, 0x0, 0x9, 0xa, 0x0, 0x95a },
                                                     { 0x9ce, 0x0, 0x9, 0xa, 0x0, 0x9ce },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107D90[] = { { 0x670, 0x0, 0xd, 0x4, 0x0, 0x670 },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance gUnk_08107DA0[] = { { 0x46e, 0x1, 0xf, 0xb, 0x0, 0x15e },
                                                     { 0x448, 0x1, 0x11, 0x3, 0x5, 0x163 },
                                                     { 0x248, 0x0, 0x13, 0xb, 0x0, 0x79e },
                                                     { -0x1, 0x0, 0x0, 0x0, 0x0, 0x0 } };
static const DiggingCaveEntrance* const diggingCaveEntrances[] = {
    gUnk_08107C80, gUnk_08107C78, gUnk_08107CC0, gUnk_08107C98, gUnk_08107CF8, gUnk_08107C78, gUnk_08107CD0,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107CE0, gUnk_08107D08, gUnk_08107D20, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107D38, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107D48, gUnk_08107D68,
    gUnk_08107C78, gUnk_08107D78, gUnk_08107D90, gUnk_08107C78, gUnk_08107DA0, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
    gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78, gUnk_08107C78,
};
