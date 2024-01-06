/**
 * @file manager29.c
 * @ingroup Managers
 *
 * @brief Unused? Not yet encountered.
 */
#include "manager/manager29.h"
#include "asm.h"
#include "flags.h"
#include "functions.h"

bool32 sub_0805CF80(Manager29* this);
void sub_0805CBD0(Manager29* this);
void sub_0805CC3C(Manager29* this);

void Manager29_Main(Manager29* this) {
    if (super->action == 0) {
        sub_0805CBD0(this);
        if (CheckFlags(this->unk_3e)) {
            sub_0805CC3C(this);
            DeleteManager(this);
        }
    } else if (sub_0805CF80(this)) {
        SetFlag(this->unk_3e);
        DeleteManager(this);
    }
}

void sub_0805CBD0(Manager29* this) {
    MapLayer* mapLayer;

    super->action = 1;
    this->unk_38 = (this->unk_38 >> 4 & 0x3fU) | (((this->unk_3a << 0x10) >> 0x14 & 0x3fU) << 6);
    this->unk_3a = (this->unk_3c >> 4 & 0x3f) | (((this->unk_36 + this->unk_37 * 0x100) >> 4 & 0x3fU) << 6);
    this->unk_3c = GetTileTypeAtTilePos(this->unk_38, this->layer);
    mapLayer = GetLayerByIndex(this->layer);
    this->unk_28 = (u16*)mapLayer->tileTypes;
    this->unk_2c = &mapLayer->mapData[(s16)this->unk_3a];
}

void sub_0805CC3C(Manager29* this) {
    s32 iVar2;
    u32 iVar3;
    u32 uVar4;

    iVar3 = this->unk_38;
    iVar2 = (short)this->unk_3a;

    if (this->layer == 1) {
        uVar4 = 0x321;
    } else {
        uVar4 = 0x322;
    }

    switch (super->type) {
        default:
            sub_0807B7D8(uVar4, iVar3, this->layer);
            sub_0807B7D8(0x365, iVar2, this->layer);
            break;
        case 1:
            sub_0807B7D8(uVar4, iVar3, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 1, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x40, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x41, this->layer);
            sub_0807B7D8(this->unk_3c, iVar2, this->layer);
            sub_0807B7D8(0x36f, iVar2 + 1, this->layer);
            sub_0807B7D8(0x370, iVar2 + 0x40, this->layer);
            sub_0807B7D8(0x371, iVar2 + 0x41, this->layer);
            break;

        case 2:
            sub_0807B7D8(uVar4, iVar3, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 1, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 2, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x40, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x41, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x42, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x80, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x81, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x82, this->layer);
            sub_0807B7D8(this->unk_3c, iVar2, this->layer);
            sub_0807B7D8(0x372, iVar2 + 1, this->layer);
            sub_0807B7D8(0x36f, iVar2 + 2, this->layer);
            sub_0807B7D8(0x374, iVar2 + 0x40, this->layer);
            sub_0807B7D8(0x376, iVar2 + 0x41, this->layer);
            sub_0807B7D8(0x375, iVar2 + 0x42, this->layer);
            sub_0807B7D8(0x370, iVar2 + 0x80, this->layer);
            sub_0807B7D8(0x373, iVar2 + 0x81, this->layer);
            sub_0807B7D8(0x371, iVar2 + 0x82, this->layer);
            break;

        case 3:
            sub_0807B7D8(uVar4, iVar3, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 1, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 2, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 3, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x40, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x41, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x42, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x43, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x80, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x81, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x82, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0x83, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0xc0, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0xc1, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0xc2, this->layer);
            sub_0807B7D8(uVar4, iVar3 + 0xc3, this->layer);
            sub_0807B7D8(this->unk_3c, iVar2, this->layer);
            sub_0807B7D8(0x372, iVar2 + 1, this->layer);
            sub_0807B7D8(0x372, iVar2 + 2, this->layer);
            sub_0807B7D8(0x36f, iVar2 + 3, this->layer);
            sub_0807B7D8(0x374, iVar2 + 0x40, this->layer);
            sub_0807B7D8(0x376, iVar2 + 0x41, this->layer);
            sub_0807B7D8(0x376, iVar2 + 0x42, this->layer);
            sub_0807B7D8(0x375, iVar2 + 0x43, this->layer);
            sub_0807B7D8(0x374, iVar2 + 0x80, this->layer);
            sub_0807B7D8(0x376, iVar2 + 0x81, this->layer);
            sub_0807B7D8(0x376, iVar2 + 0x82, this->layer);
            sub_0807B7D8(0x375, iVar2 + 0x83, this->layer);
            sub_0807B7D8(0x370, iVar2 + 0xc0, this->layer);
            sub_0807B7D8(0x373, iVar2 + 0xc1, this->layer);
            sub_0807B7D8(0x373, iVar2 + 0xc2, this->layer);
            sub_0807B7D8(0x371, iVar2 + 0xc3, this->layer);
            break;
    }
}

bool32 sub_0805CF80(Manager29* this) {
    s32 sVar1;
    u32 uVar2;

    sVar1 = this->unk_28[this->unk_2c[0]];
    uVar2 = 0;
    if ((((sVar1 == 0x365) || (sVar1 == 0x369)) || (sVar1 == 0x36a)) ||
        (((sVar1 == 0x36b || (sVar1 == 0x36d)) || (sVar1 == 0x36c)))) {
        uVar2 = 1;
    }

    return uVar2;
}
