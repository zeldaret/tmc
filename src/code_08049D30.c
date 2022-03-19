#define NENT_DEPRECATED
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "room.h"

extern Entity* gUnk_020000B0;
extern Entity* (*const gUnk_080D3BE8[])(void);

extern void ReplaceMonitoredEntity(Entity*, Entity*);

void sub_08049DCC(RoomMemory*);
RoomMemory* sub_08049D88(void);

void UpdateRoomTracker(void) {
    gUnk_020354B0 = gRoomMemory;

    do {
        if (gUnk_020354B0->area == gRoomControls.area && gUnk_020354B0->room == gRoomControls.room) {
            sub_08049DCC(gUnk_020354B0);
            return;
        }
        gUnk_020354B0++;

    } while (gUnk_020354B0 < gRoomMemory + 8);
    gUnk_020354B0 = sub_08049D88();
}

RoomMemory* sub_08049D88(void) {
    RoomMemory* r4 = gRoomMemory;
    RoomMemory* r1 = r4 + 1;

    do {
        if (r1->unk_02 > r4->unk_02) {
            r4 = r1;
        }
        r1++;
    } while (r1 < gRoomMemory + 8);

    r4->area = gRoomControls.area;
    r4->room = gRoomControls.room;

    r4->unk_02 = 0xFFFF;
    r4->unk_04 = 0;

    sub_08049DCC(r4);

    return r4;
}

void sub_08049DCC(RoomMemory* rm) {
    RoomMemory* r1 = gRoomMemory;

    do {
        if (r1->unk_02 < rm->unk_02) {
            r1->unk_02++;
        }
        r1++;
    } while (r1 < gRoomMemory + 8);

    rm->unk_02 = 0;
}

Entity* sub_08049DF4(u32 arg0) {
    if (gUnk_020000B0 != NULL) {
        return gUnk_020000B0;
    }
    return gUnk_080D3BE8[arg0]();
}

Entity* sub_08049E18(void) {
    if ((gPlayerState.field_0x3c[0] == 0) && !(gPlayerState.flags & 0x22189b75)) {
        gUnk_020000B0 = &gPlayerEntity;
        return &gPlayerEntity;
    }
    return NULL;
}

Entity* sub_08049E4C(void) {
    if ((gPlayerState.field_0x3c[0] == 0) && !(gPlayerState.flags & 0x22189bf5)) {
        gUnk_020000B0 = &gPlayerEntity;
        return &gPlayerEntity;
    }
    return NULL;
}

Entity* sub_08049E80(void) {
    if ((gPlayerState.field_0x3c[0] != 0) || !(gPlayerState.flags & 0x80)) {
        return NULL;
    }
    gUnk_020000B0 = &gPlayerEntity;
    return &gPlayerEntity;
}

Entity* sub_08049EB0(void) {
    if ((gPlayerState.field_0x3c[0] == 0) && !(gPlayerState.flags & 0x80190)) {
        gUnk_020000B0 = &gPlayerEntity;
        return &gPlayerEntity;
    }
    return NULL;
}

u32 sub_08049EE4(Entity* ent) {
    GenericEntity* genEnt = (GenericEntity*)ent;

    u16 tempLO = genEnt->field_0x70.HALF.LO + 4 * genEnt->field_0x6e.HALF.LO;
    u16 tempHI = genEnt->field_0x70.HALF.HI + 4 * genEnt->field_0x6e.HALF.HI;

    return CalculateDirectionTo(genEnt->base.x.HALF.HI, genEnt->base.y.HALF.HI, tempLO, tempHI);
}

bool32 sub_08049F1C(Entity* entA, Entity* entB, s32 maxDist) {
    if ((entA->collisionLayer & entB->collisionLayer) != 0) {
        s32 xDiff = entB->x.HALF.HI - entA->x.HALF.HI;
        s32 yDiff = entB->y.HALF.HI - entA->y.HALF.HI;
        s32 maxDistSq = maxDist * maxDist;
        s32 distSq = xDiff * xDiff + yDiff * yDiff;

        if (maxDistSq >= distSq) {
            return TRUE;
        }
    }
    return FALSE;
}

bool32 PlayerInRange(Entity* ent, u32 arg1, s32 maxDist) {
    Entity* tempEnt = sub_08049DF4(arg1);
    if (tempEnt == NULL) {
        return FALSE;
    } else {
        return sub_08049F1C(ent, tempEnt, maxDist);
    }
}

u32 sub_08049F84(Entity* ent, s32 arg2) {
    Entity* target = sub_08049DF4(arg2);

    if (target == NULL) {
        return 0xFF;
    } else {
        return GetFacingDirection(ent, target);
    }
}

bool32 sub_08049FA0(Entity* ent) {
    GenericEntity* genEnt = (GenericEntity*)ent;
    u32 temp = 8 * genEnt->field_0x6e.HALF.LO;

    if (temp >= genEnt->base.x.HALF.HI - genEnt->field_0x70.HALF_U.LO) {
        temp = 8 * genEnt->field_0x6e.HALF.HI;
        if (temp >= genEnt->base.y.HALF.HI - genEnt->field_0x70.HALF_U.HI) {
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_08049FDC(Entity* ent, u32 arg1) {
    u32 temp;
    GenericEntity* genEnt = (GenericEntity*)ent;
    GenericEntity* tempEnt = (GenericEntity*)sub_08049DF4(arg1);

    if (tempEnt != NULL) {
        temp = 8 * genEnt->field_0x6e.HALF.LO;
        if (temp >= tempEnt->base.x.HALF.HI - genEnt->field_0x70.HALF_U.LO) {
            temp = 8 * genEnt->field_0x6e.HALF.HI;
            if (temp >= tempEnt->base.y.HALF.HI - genEnt->field_0x70.HALF_U.HI) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

u32 sub_0804A024(Entity* ent, u32 arg1, u32 arg2) {
    Entity* tempEnt = sub_08049DF4(arg1);
    if (tempEnt == NULL) {
        return 0xFF;
    } else {
        return sub_0804A044(ent, tempEnt, arg2);
    }
}

ASM_FUNC("asm/non_matching/code_08048D30/sub_0804A044.s", u32 sub_0804A044(Entity* entA, Entity* entB, u32 arg2));

ASM_FUNC("asm/non_matching/code_08048D30/sub_0804A168.s", void sub_0804A168(void)); // ?

ASM_FUNC("asm/non_matching/code_08048D30/sub_0804A318.s", void sub_0804A318(void)); // ?

bool32 sub_0804A4BC(u8* arg0, u8* arg1, s32 arg2, u32 arg3) {
    while (arg0 != arg1) {
        u8 r0 = *arg0;

        if (r0 != 0) {
            if (r0 > 0xF) {
                return 0;
            }

            r0 &= arg3;
            if (r0 != 0) {
                return FALSE;
            }
        }
        arg0 += arg2;
    }

    return TRUE;
}

void sub_0804A4E4(Entity* entA, Entity* entB) {
    GenericEntity* r5 = (GenericEntity*)entA;
    GenericEntity* r6 = (GenericEntity*)entB;

    r6->field_0x6c.HALF.HI = (r5->field_0x6c.HALF.HI & 0x40) | 4;
    r6->field_0x6c.HALF.LO = r5->field_0x6c.HALF.LO;
    r6->field_0x70.HALF.LO = r5->field_0x70.HALF.LO;
    r6->field_0x70.HALF.HI = r5->field_0x70.HALF.HI;
    r6->field_0x6e.HALF.LO = r5->field_0x6e.HALF.LO;
    r6->field_0x6e.HALF.HI = r5->field_0x6e.HALF.HI;

    CopyPositionAndSpriteOffset(&r5->base, &r6->base);

    if (r5->field_0x6c.HALF.HI & 0x40) {
        ReplaceMonitoredEntity(&r5->base, &r6->base);
    }
}
