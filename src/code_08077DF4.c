#include "global.h"
#include "entity.h"
#include "player.h"
#include "functions.h"

typedef struct {
    u8 b0 : 4;
    u8 b1 : 4;
} PACKED Unk_bitfield;

typedef struct {
    u8 unk[16];
} Unk_struct;

void sub_08077DF4(Entity* ent, u32 arg1) {
    *(u16*)&ent->flags = arg1;
    if ((arg1 & 0xff) > 0xb8) {
        arg1 += (ent->entityType).form >> 1;
    }
    gPlayerEntity.spriteIndex = (short)(arg1 >> 8);
    InitAnimationForceUpdate(&gPlayerEntity, (u8)arg1);
    sub_08077E54(ent);
}

void UpdateItemAnim(Entity* ent) {
    UpdateAnimationSingleFrame(&gPlayerEntity);
    sub_08077E54(ent);
}

void sub_08077E3C(Entity* ent, u32 idx) {
    sub_080042BA(&gPlayerEntity, idx);
    sub_08077E54(ent);
}

void sub_08077E54(Entity* ent) {
    ent->action = gPlayerEntity.animIndex;
    *(u8*)&ent->spriteIndex = gPlayerEntity.frameIndex;
    ent->previousActionFlag = gPlayerEntity.frameDuration;
    ent->actionDelay = gPlayerEntity.frames.all;
}

void sub_08077E78(void* arg0, u32 bits) {
    u8* pbVar1;
    u32 not ;

    if (bits == 0) {
        if (gPlayerState.field_0x2c != NULL) {
            ((Unk_bitfield*)gPlayerState.field_0x2c)[0x11].b0 = 6;
            gPlayerState.field_0x2c = (u8*)bits;
        } else {
            gPlayerState.field_0x2c = (u8*)bits;
        }
    }

    not = (8 >> bits);
    gPlayerState.field_0x3[1] &= ~((u8)((8 >> bits) << 4) | not );
    not = ~not ;
    gPlayerState.field_0xa &= not ;
    gPlayerState.keepFacing &= not ;
    _DmaZero(arg0, 0x1c);
}

u32 sub_08077EC8(Unk_struct* arg0) {

    if ((gPlayerState.field_0x1a[1] & 8) != 0) {
        sub_08077DF4((Entity*)arg0, 0x170);
        arg0->unk[7] = 0x28;
        arg0->unk[4] = 7;
        arg0->unk[15] = 6;
        return 1;
    } else {
        return 0;
    }
}

void sub_08077EFC(ItemBehavior* arg0) {
    sub_08077F24(arg0, (u16)gPlayerState.field_0x90.HALF.LO);
}

void sub_08077F10(ItemBehavior* arg0) {
    sub_08077F24(arg0, (u16)gPlayerState.field_0x90.HALF.HI);
}

NAKED
void sub_08077F24(ItemBehavior* beh, u32 arg1) {
    asm(".include \"asm/non_matching/sub_08077F24.inc\"");
}

void sub_08077F50(ItemBehavior* beh, u32 arg1) {
    sub_08079184();
    sub_08077E78(beh, arg1);
}

u32 sub_08077F64(ItemBehavior* arg0, u32 unk) {
    u32 temp;
    if (gPlayerState.heldObject == 0) {
        sub_08077F50(arg0, unk);
        temp = 0;
    } else {
        temp = 1;
    }
    return temp;
}

void sub_08077F84(void) {
    Entity* obj;

    if (((gPlayerEntity.collisionLayer & 2) == 0) &&
        GetTileTypeByPos(gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI - 0xc, 2) - 0x343U < 4) {
        sub_0807AA80(&gPlayerEntity);
        gPlayerState.jumpStatus |= 8;
        obj = CreateObject(0x44, 0, 0);
        if (obj != NULL) {
            obj->x = gPlayerEntity.x;
            obj->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0xc;
            gPlayerEntity.y.HALF.HI -= 0xc;
        }
    }
}
