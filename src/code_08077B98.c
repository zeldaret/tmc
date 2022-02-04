#include "functions.h"
#include "object.h"
#include "save.h"

typedef struct {
    u8 unk0[4];
    u16 unk4;
    u8 unk6[6];
} struct_0811BE48;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
} UnkItemStruct;

void* sub_08077C54(UnkItemStruct* unk);
Entity* CreatePlayerBomb(ItemBehavior*, u32);
extern Entity* sub_0805E744();

extern struct_0811BE48 gUnk_0811BE48[];

void sub_08077B98(UnkItemStruct* unk) {
    if ((gPlayerState.item == NULL) || (gPlayerState.item->id != 1)) {
        gPlayerState.item = sub_08077C54(unk);
    }
}

void sub_08077BB8(ItemBehavior* beh) {
    UnkItemStruct* unk = (UnkItemStruct*)beh; // @nocheckin
    Entity* temp = sub_08077C54(unk);
    if (temp != NULL) {
        temp->flags = ENT_PERSIST;
    }
    gPlayerState.item = temp;
}

Entity* sub_08077BD4(ItemBehavior* beh) {
    if (sub_08077C94(beh, gUnk_0811BE48[beh->behaviorID].unk0[3]) != 0) {
        return NULL;
    } else {
        return CreatePlayerBomb(beh, gUnk_0811BE48[beh->behaviorID].unk0[3]);
    }
}

Entity* sub_08077C0C(ItemBehavior* beh, u32 arg1) {
    u8 bVar1;
    Entity* pEVar3;

    bVar1 = gUnk_0811BE48[arg1].unk0[3];

    if (sub_08077C94(beh, bVar1) != 0) {
        return NULL;
    } else {
        return CreatePlayerBomb(beh, bVar1);
    }
}

Entity* CreatePlayerBomb(ItemBehavior* beh, u32 subtype) {
    Entity* pEVar1;

    pEVar1 = CreatePlayerItem(subtype, 0, 0, beh->behaviorID);
    if (pEVar1 != NULL) {
        *(ItemBehavior**)&pEVar1->parent = beh;
    }
    return pEVar1;
}

void* sub_08077C54(UnkItemStruct* unk) {
    Entity* item;

    item = sub_0805E744();
    if (item != NULL) {
        item->id = gUnk_0811BE48[unk->field_0x1].unk0[3];
        item->kind = PLAYER_ITEM;
        item->flags = 0xa0;
        item->parent = (Entity*)unk;
        item->field_0x68.HALF.LO = unk->field_0x1;
        AppendEntityToList(item, 2);
    }
    return item;
}

Entity* sub_08077C94(ItemBehavior* arg0, u32 arg1) {
    Entity* iVar1;

    iVar1 = FindEntityByID(8, gUnk_0811BE48[arg1].unk0[3], 2);
    if (iVar1 == NULL) {
        return NULL;
    }
    return iVar1;
}

Entity* CreatePlayerItem(u32 subtype, u32 form, u32 parameter, u32 unk) {
    Entity* ent;

    ent = GetEmptyEntity();
    if (ent != NULL) {
        ent->flags = ENT_COLLIDE;
        ent->kind = PLAYER_ITEM;
        ent->id = subtype;
        ent->type = form;
        ent->type2 = parameter;
        ent->field_0x68.HALF.LO = unk;
        AppendEntityToList(ent, 2);
    }
    return ent;
}

Entity* sub_08077CF8(u32 subtype, u32 form, u32 parameter, u32 unk) {
    Entity* ent;

    ent = sub_0805E744();
    if (ent != NULL) {
        ent->flags = ENT_COLLIDE;
        ent->kind = PLAYER_ITEM;
        ent->id = subtype;
        ent->type = form;
        ent->type2 = parameter;
        ent->field_0x68.HALF.LO = unk;
        AppendEntityToList(ent, 2);
    }
    return ent;
}

void sub_08077D38(ItemBehavior* beh, u32 arg2) {
    u32 r6;
    struct_0811BE48* ptr;

    gPlayerState.field_0xa |= 8 >> arg2;
    gPlayerState.keepFacing |= 8 >> arg2;
    beh->field_0x5[5] = gPlayerEntity.animationState;
    if (beh->stateID == 0) {
        beh->stateID++;
    }

    ptr = &gUnk_0811BE48[beh->behaviorID];
    if (ptr->unk4) {
        if ((gPlayerState.flags & PL_NO_CAP)) {
            switch (beh->behaviorID) {
                case 0x1b:
                    r6 = 0x948;
                    break;
                case 1:
                    r6 = 0x408;
                    break;
                case 0xd:
                    r6 = 0x40c;
                    break;
            }
            sub_08077DF4(beh, r6);
        } else {
            sub_08077DF4(beh, ptr->unk4);
        }
    }

    beh->field_0xf = ptr->unk6[0];
    if (ptr->unk6[1]) {
        gPlayerState.field_0x3[1] |= (8 >> arg2) | ((8 >> arg2) << 4);
    }
}

typedef struct {
    u8 b0 : 4;
    u8 b1 : 4;
} PACKED Unk_bitfield;

typedef struct {
    u8 unk[16];
} Unk_struct;

void sub_08077DF4(ItemBehavior* beh, u32 arg1) {
    Entity* ent = (Entity*)beh; // @nocheckin
    *(u16*)&ent->flags = arg1;
    if ((arg1 & 0xff) > 0xb8) {
        arg1 += ent->type >> 1;
    }
    gPlayerEntity.spriteIndex = (short)(arg1 >> 8);
    InitAnimationForceUpdate(&gPlayerEntity, (u8)arg1);
    sub_08077E54(beh);
}

void UpdateItemAnim(ItemBehavior* beh) {
    UpdateAnimationSingleFrame(&gPlayerEntity);
    sub_08077E54(beh);
}

void sub_08077E3C(ItemBehavior* ent, u32 idx) {
    sub_080042BA(&gPlayerEntity, idx);
    sub_08077E54(ent);
}

void sub_08077E54(ItemBehavior* beh) {
    Entity* ent = (Entity*)beh; // @nocheckin
    ent->action = gPlayerEntity.animIndex;
    *(u8*)&ent->spriteIndex = gPlayerEntity.frameIndex;
    ent->subAction = gPlayerEntity.frameDuration;
    ent->actionDelay = gPlayerEntity.frame;
}

void sub_08077E78(ItemBehavior* arg0, u32 bits) {
    u32 not ;

    if (bits == 0) {
        if (gPlayerState.item != NULL) {
            ((Unk_bitfield*)gPlayerState.item)[0x11].b0 = 6;
            gPlayerState.item = NULL;
        } else {
            gPlayerState.item = NULL;
        }
    }

    not = (8 >> bits);
    gPlayerState.field_0x3[1] &= ~((u8)((8 >> bits) << 4) | not );
    not = ~not ;
    gPlayerState.field_0xa &= not ;
    gPlayerState.keepFacing &= not ;
    MemClear(arg0, 0x1c);
}

u32 sub_08077EC8(ItemBehavior* beh) {
    Unk_struct* arg0 = (Unk_struct*)beh; // @nocheckin

    if ((gPlayerState.sword_state & 8) != 0) {
        sub_08077DF4(beh, 0x170);
        arg0->unk[7] = 0x28;
        arg0->unk[4] = 7;
        arg0->unk[15] = 6;
        return 1;
    } else {
        return 0;
    }
}

bool32 sub_08077EFC(ItemBehavior* arg0) {
    return sub_08077F24(arg0, (u16)gPlayerState.field_0x90);
}

bool32 sub_08077F10(ItemBehavior* arg0) {
    return sub_08077F24(arg0, (u16)gPlayerState.field_0x92);
}

bool32 sub_08077F24(ItemBehavior* beh, u32 arg1) {
    u32 val;
    Stats* stats = &gSave.stats;
    u32 id = beh->behaviorID;
    if (stats->itemButtons[SLOT_A] == id) {
        val = 1;
    } else if (stats->itemButtons[SLOT_B] == id) {
        val = 2;
    } else {
        val = 0;
    }

    return (val & arg1) ? 1 : 0;
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
        gPlayerState.jump_status |= 8;
        obj = CreateObject(OBJECT_44, 0, 0);
        if (obj != NULL) {
            obj->x = gPlayerEntity.x;
            obj->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0xc;
            gPlayerEntity.y.HALF.HI -= 0xc;
        }
    }
}
