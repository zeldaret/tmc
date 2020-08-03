#include "global.h"
#include "entity.h"
#include "link.h"
#include "functions.h"


typedef struct {
    u8 unk[12];
} struct_0811BE48;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
} UnkItemStruct;

Entity* sub_08077C94(ItemBehavior*, u32);
void* sub_08077C54(UnkItemStruct* unk);
Entity* CreatePlayerBomb(ItemBehavior*, u32);
extern Entity* sub_0805E744();
extern void sub_0805EA2C(Entity*, u32);

extern struct_0811BE48 gUnk_0811BE48[];

void sub_08077B98(UnkItemStruct* unk)
{
  if ((gLinkState.field_0x2c == NULL) || (gLinkState.field_0x2c[9] != 1)) {
    gLinkState.field_0x2c = sub_08077C54(unk);
  }
}

void sub_08077BB8(UnkItemStruct* unk)
{
  u8* temp = sub_08077C54(unk);
  if (temp != NULL) {
    temp[0x10] = 0x20;
  }
  gLinkState.field_0x2c = temp;
}

Entity* sub_08077BD4(ItemBehavior *beh)
{  
  if (sub_08077C94(beh, gUnk_0811BE48[beh->behaviorID].unk[3]) != 0) {
      return NULL;
  }
  else {
     return CreatePlayerBomb(beh, gUnk_0811BE48[beh->behaviorID].unk[3]);
  }
}

Entity * sub_08077C0C(ItemBehavior *beh, u32 arg1)
{
  u8 bVar1;
  Entity *pEVar3;
  
  bVar1 = gUnk_0811BE48[arg1].unk[3];

  if (sub_08077C94(beh, bVar1) != 0) {
    return NULL;
  }
  else {
    return CreatePlayerBomb(beh, bVar1);
  }
}

Entity * CreatePlayerBomb(ItemBehavior *beh, u32 subtype)
{
  Entity *pEVar1;
  
  pEVar1 = CreatePlayerItem(subtype, 0, 0, beh->behaviorID);
  if (pEVar1 != NULL) {
    *(ItemBehavior **)&pEVar1->parent = beh;
  }
  return pEVar1;
}

void* sub_08077C54(UnkItemStruct* unk)
{
  Entity *item;
  
  item = sub_0805E744();
  if (item != NULL) {
    item->entityType.subtype = gUnk_0811BE48[unk->field_0x1].unk[3];
    item->entityType.type = 8;
    item->flags = 0xa0;
    item->parent = (Entity*)unk;
    item->field_0x68.HALF.LO = unk->field_0x1;
    sub_0805EA2C(item, 2);
  }
  return item;
}

Entity* sub_08077C94(ItemBehavior* arg0, u32 arg1)
{
  Entity* iVar1;
  
  iVar1 = sub_0805EB00(8, gUnk_0811BE48[arg1].unk[3], 2);
  if (iVar1 == NULL) {
    return NULL;
  }
  return iVar1;
}

Entity * CreatePlayerItem(u32 subtype, u32 form, u32 parameter, u32 unk)
{
  Entity *ent;
  
  ent = GetEmptyEntity();
  if (ent != NULL) {
    ent->flags = 0x80;
    (ent->entityType).type = 8;
    (ent->entityType).subtype = subtype;
    (ent->entityType).form = form;
    (ent->entityType).parameter = parameter;
    ent->field_0x68.HALF.LO = unk;
    sub_0805EA2C(ent, 2);
  }
  return ent;
}

Entity * sub_08077CF8(u32 subtype, u32 form, u32 parameter, u32 unk)
{
  Entity *ent;
  
  ent = sub_0805E744();
  if (ent != NULL) {
    ent->flags = 0x80;
    (ent->entityType).type = 8;
    (ent->entityType).subtype = subtype;
    (ent->entityType).form = form;
    (ent->entityType).parameter = parameter;
    ent->field_0x68.HALF.LO = unk;
    sub_0805EA2C(ent, 2);
  }
  return ent;
}

NAKED
void sub_08077D38(ItemBehavior *beh, u32 arg1) {
    asm(".include \"asm/non_matching/sub_08077D38.inc\"");
}