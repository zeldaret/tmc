#include "global.h"
#include "entity.h"
#include "room.h"
#include "flags.h"

extern u32* GetLayerByIndex(u32);
extern void sub_08085394(Entity*);
extern void sub_0808543C(Entity*);
extern void sub_08004488(u32);
extern u32 sub_080854A8(Entity*);
extern void SetTile(u32, u32, u32);

extern void (*const gUnk_081205D0[])(Entity*);

extern s8 gUnk_080B4488[][2];
extern u16 gUnk_081205E0[];

void Railtrack(Entity* this) {
    gUnk_081205D0[this->action](this);
}

void sub_080851AC(Entity* this) {
    u32 uVar1;

    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->spritePriority.b0 = 7;
    if ((this->entityType.parameter & 1) != 0) {
        this->field_0x7c.HALF.LO = -1;
    } else {
        this->field_0x7c.HALF.LO = 1;
    }
    this->animationState = this->entityType.parameter & 2;
    if ((this->entityType).form == 3) {
        uVar1 = CheckFlags(this->field_0x86);
        this->field_0x7a.HWORD = uVar1;
        if ((u16)(uVar1 & -1) != 0) {
            this->animationState = (this->animationState + 2) & 3;
            this->action = 3;
        }
    }
    InitializeAnimation(this, this->animationState);
    this->field_0x70.WORD = (u32)GetLayerByIndex(this->collisionLayer) + 4 + (COORD_TO_TILE(this) * 2);
    sub_08085394(this);
}

void sub_08085264(Entity* this) {
    if (CheckFlags(this->field_0x86)) {
        this->action = 2;
        this->field_0xf = 8;
        if (this->entityType.form == 1) {
            ClearFlag(this->field_0x86);
        }
        this->animationState = (this->animationState + *(u8*)&this->field_0x7c) & 3;
        InitializeAnimation(this, this->animationState);
        sub_0808543C(this);
        sub_08004488(0x151);
    }
}

void sub_080852B4(Entity* this) {
    if (--this->field_0xf == 0) {
        this->action = 3;
        this->field_0xf = this->actionDelay;
        this->field_0x7a.HWORD = CheckFlags(this->field_0x86);
        this->animationState = (this->animationState + *(u8*)&this->field_0x7c) & 3;
        InitializeAnimation(this, this->animationState);
        sub_08085394(this);
        sub_08004488(0x151);
    }
}

void sub_08085308(Entity* this) {
    if (sub_080854A8(this) == 0) {
        switch (this->entityType.form) {
            case 0:
            case 1:
                break;
            case 2:
                if (CheckFlags(this->field_0x86) == 0) {
                    this->action = 1;
                    return;
                }
                break;
            case 3:
                if (CheckFlags(this->field_0x86) == *(u16*)&this->field_0x7a) {
                    this->field_0xf = 0xff;
                } else {
                    this->field_0xf = 1;
                }
        }

        if (--this->field_0xf == 0) {
            this->action = 2;
            this->field_0xf = 8;
            this->animationState = (this->animationState + *(u8*)&this->field_0x7c) & 3;
            InitializeAnimation(this, this->animationState);
            sub_0808543C(this);
            sub_08004488(0x151);
        }
    }
}

#if 0
void sub_08085394(Entity *this)
{
    u32 uVar1;
    u16 *layerData;
    u32 iVar3;
    u32 uVar4;
    u8 *pbVar5;

    uVar1 = gUnk_081205E0[this->animationState / 2];
    iVar3 = this->animationState / 2;
    layerData = *(u16 **)&this->field_0x70;
    uVar4 = COORD_TO_TILE(this);
    this->field_0x74.HWORD = layerData[gUnk_080B4488[iVar3]];
    pbVar5 = &this->collisionLayer;
    SetTile(uVar1, uVar4 - iVar3, *pbVar5);
    this->field_0x76 = layerData[0];
    SetTile(uVar1,uVar4, *pbVar5);
    *(u16 *)&this->field_0x78 = layerData[iVar3];
    SetTile(uVar1,uVar4 + iVar3, *pbVar5);
}
#endif

NAKED
void sub_08085394(Entity* this) {
    asm(".include \"asm/non_matching/railtrack/sub_08085394.inc\"");
}

void sub_0808543C(Entity *this)
{
  s8 *cVar1;
  u32 uVar2;
  s8 temp;

  temp = gUnk_080B4488[this->animationState / 2][0];
  uVar2 = COORD_TO_TILE(this);
  SetTile(this->field_0x74.HWORD, uVar2 - temp, this->collisionLayer);
  SetTile(this->field_0x76.HWORD, uVar2, this->collisionLayer);
  SetTile(this->field_0x78.HWORD, uVar2 + temp, this->collisionLayer);
}

u32 sub_080854A8(Entity *this) {
    u16 var0;
    u16* var1;
    s8* var2;

    var0 = gUnk_081205E0[this->animationState / 2];
    var2 = gUnk_080B4488[this->animationState / 2];
    var1 = (u16 *)this->field_0x70.WORD;
    if (var0 != *(var1 - var2[0])) {
        return TRUE;
    }
    if (var0 != *var1) {
        return TRUE;
    }
    if (var0 != *(var1 + var2[0])) {
        return TRUE;
    }

    return FALSE;
}