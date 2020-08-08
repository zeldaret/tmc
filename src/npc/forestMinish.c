#include "global.h"
#include "entity.h"
#include "npc.h"
#include "flags.h"
#include "textbox.h"
#include "player.h"
#include "structures.h"

extern void sub_0805E3A0(Entity*, u32);
extern void StartCutscene(Entity*, void*);
extern void sub_0807DD50(Entity*);
extern void sub_0806F118(Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void sub_080600F0(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_08078784(Entity*, u32);
extern void sub_0807000C(Entity*);
extern void sub_080042BA(Entity*, u32);
extern void sub_08060158(Entity*);
extern u32 CheckKinstoneFused(u32);
extern Entity* sub_0805EB00(u32, u32, u32);
extern void sub_080A29BC(Entity* parent);
extern void DeleteEntity(Entity*);
extern u32 Random(void);
extern void ModBombs(s32);

extern SpriteLoadData gUnk_0810A348;
extern void* gUnk_08109D18[];
extern u8 gUnk_08109C98[];
extern u16 gUnk_0810A354[];
extern u32 gUnk_08109DC8[];
extern u16 gUnk_0810A35A[];
extern u16 gUnk_0810A362[];

void ForestMinish(Entity* this) {
    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_0810A348)) {
                this->action = 1;
                this->spriteSettings.b.draw = TRUE;
                this->field_0x68.HALF.HI = this->animationState = this->actionDelay << 1;
                this->actionDelay = 0;
                sub_0805E3A0(this, 2);
                StartCutscene(this, gUnk_08109D18[this->entityType.parameter]);
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                sub_0807DDAC(this, 0);
                sub_0807DDE4(this);
                if (this->frameDuration != 0xf0) {
                    sub_080600F0(this);
                }
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }
}

void sub_08060090(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void ForestMinish_Head(Entity* this) {
    u32 pbVar1;

    pbVar1 = this->frames.all;
    if (this->frames.all != 0xff) {
        pbVar1 &= -0x81;
    }
    if ((this->frameSpriteSettings & 1) == 0) {
        pbVar1 = 0xff;
    }
    SetExtraSpriteFrame(this, 0, pbVar1);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_080600F0(Entity* this) {
    u32 uVar1;
    u32 uVar2;

    uVar2 = this->field_0x80.HWORD;
    if (this->field_0x80.HWORD < 8) {
        if ((this->field_0x82.HWORD & 1) != 0) {
            uVar2 = (uVar2 & 0xfc) + (this->field_0xf >> 1);
        } else {
            uVar2 = (uVar2 & 0xfc) + (this->animationState >> 1);
            this->field_0xf = this->animationState;
        }
    }
    if (uVar2 != this->animIndex) {
        InitAnimationForceUpdate(this, uVar2);
    }
    if ((this->field_0x82.HWORD & 4) != 0) {
        uVar1 = 2;
    } else {
        uVar1 = 1;
    }
    sub_080042BA(this, uVar1);
}

void sub_0806014C(Entity* this) {
    this->actionDelay = 0;
    sub_08060158(this);
}

#if 0
void sub_08060158(Entity *this)
{
  u8 bVar1;
  u8 bVar2;
  s32 iVar4;
  u32 temp;
  if (this->actionDelay != 0) {
    this->actionDelay--;
  }
  else {
    this->actionDelay = 2;
    iVar4 = sub_0806EDD8(this, 0x20, 0x20);
    if (iVar4 < 0) {
      this->animationState = this->field_0x68.HALF.HI;
      iVar4 = this->field_0x68.HALF.HI << 2;
    }
    temp = (this->animationState >> 1) * 0x20 + (iVar4 >> 1) * 2;
    bVar1 = gUnk_08109C98[temp];
    bVar2 = gUnk_08109C98[temp + 1];
    if ((bVar2 & 0x80) != 0) {
      this->animationState = sub_0806F5B0(iVar4);
    }
    this->frames.all = bVar1;
    this->frameIndex = bVar2 & 0x7f;
    this->frameSpriteSettings = 1;
    this->animIndex = 0;
    this->frameDuration = 0xf0;
  }
}
#endif
NAKED
void sub_08060158(Entity* this) {
    asm(".include \"asm/non_matching/forestMinish/sub_08060158.inc\"");
}

void sub_080601D4(Entity* this) {
    u32 temp;
    u32 uVar2;

    if (CheckGlobalFlag(LV3_CLEAR) == 0) {
        uVar2 = 2;
    } else {
        temp = CheckKinstoneFused(0x17);
        uVar2 = (-temp | temp) >> 0x1f;
    }
    TextboxNoOverlap(gUnk_0810A354[uVar2], this);
}

void sub_08060208(Entity *this)
{
  ShowNPCDialogue(this, &gUnk_08109DC8[this->entityType.parameter * 0x8]);
}

void sub_0806021C(Entity *this)
{
  u32 uVar1;
  u32 uVar2;

  //jabber nut
  uVar1 = GetInventoryValue(0x5B);
  uVar2 = (-uVar1 | uVar1) >> 0x1f;

  //earth element
  if (GetInventoryValue(0x40)) {
    uVar2 = 2;
  }

  //mole mitts
  if (GetInventoryValue(0x13)) {
    uVar2 = 3;
  }
  ShowNPCDialogue(this, gUnk_08109DC8 + this->entityType.parameter * 0x8 + uVar2 * 2);
}

void sub_0806025C(Entity *this)
{
  ShowNPCDialogue(this, &gUnk_08109DC8[this->entityType.parameter * 0x8]);
}

void sub_08060270(Entity *this)
{
  u32 index;

  //flippers
  if (GetInventoryValue(0x46) == 0) {
    index = 1;
    if (CheckGlobalFlag(MIZUKAKI_START) == 0) {
      index = 0;
      SetGlobalFlag(MIZUKAKI_START);
    }
  }
  else {
    index = 3;
    if (CheckLocalFlag(0x76) == 0) {
      index = 2;
      SetLocalFlag(0x76);
    }
  }
  TextboxNoOverlap(gUnk_0810A35A[index], this);
}

void sub_080602BC(Entity *this)
{
  u32 index;
  
    //spin attack
    if (GetInventoryValue(0x48) != 0) {
    index = (Random() & 1) + 2;
    }
  else {
    if (gUnk_02002A40.stats.bombCount < gBombBagSizes[gUnk_02002A40.stats.bombBagType]) {
      index = 1;
    }
    else {
        index = 0;
    }
  }
  TextboxNoOverlap(gUnk_0810A362[index], this);
}

void sub_0806030C(Entity* this, u32 *arg1)
{
    ModBombs(*(arg1 + 1));
}

void sub_08060318(void)
{
  Entity *ent;
  int i;
  
  for (i = 2; i >= 0; i--) {
    ent = sub_0805EB00(8, 2, 2);
    if (ent != NULL) {
      sub_080A29BC(ent);
      DeleteEntity(ent);
    }
  }
}

void sub_08060340(void)
{
  gUnk_02002A40.unk490 = gUnk_02002A40.unk50;
}

u32 sub_08060354(void)
{
  u32 iVar1;
  s32 iVar2;
  
  iVar2 = gUnk_02002A40.unk50 - gUnk_02002A40.unk490;
  if (CheckGlobalFlag(DRUG_1) == 0) {
    if (4 < iVar2) {
      return 0x8444;
    }
  }
  else {
    if (CheckGlobalFlag(DRUG_2) == 0) {
      if (iVar2 > 9) {
        return 0x8444;
      }
    }
    else {
      if (CheckGlobalFlag(DRUG_3) == 0) {
        if (iVar2 > 14) {
        return 0x8444;
      }
      }
    }
  }
  return 0;
}

void ForestMinish_Fusion(Entity *this)
{  
  if (this->action == 0) {
    if (LoadExtraSpriteData(this, &gUnk_0810A348)) {
      this->action++;
      this->spriteSettings.b.draw = TRUE;
      sub_0805E3A0(this, 2);
      InitializeAnimation(this, 6);
    }
  }
  else {
    GetNextFrame(this);
  }
}