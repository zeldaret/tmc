#include "entity.h"
#include "npc.h"

extern void sub_0806FFBC(Entity*, u32, u32, u32);

static const SpriteLoadData gUnk_081146D0[] = {
    { 0, 0x61, 0x4 }, { 0x800, 0x61, 0x4 }, { 0x1000, 0x61, 0x4 }, { 0x1800, 0x61, 0x4 }, { 0, 0, 0 },
};

void NPC58(Entity* this) {
    s32 sVar1;
    s32 uVar2;
    s32 uVar4;
    Entity* entity;

    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_081146D0) == 0) {
            return;
        }
        this->action += 1;
        this->spriteSettings.draw = 2;
        this->spriteRendering.b3 = 0;
        this->spritePriority.b0 = 0;
        this->spriteOrientation.flipY = 1;
        this->x.HALF.HI = 0x78;
        this->y.HALF.HI = 0x10;
    }
    entity = this->parent;
    if (entity != NULL) {
        sVar1 = *(s16*)&entity->field_0x68.HWORD;
        uVar2 = (s32)sVar1 / 600;
        this->field_0x68.HWORD = uVar2;
        uVar4 = (s32)sVar1 % 600;
        this->field_0x6a.HWORD = uVar4 / 0x3c;
        uVar4 = uVar4 % 0x3c;
        uVar2 = uVar4 / 6;
        this->field_0x6c.HWORD = uVar2;
        if (entity->next == NULL) {
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }
}

void NPC58_Head(Entity* this) {
    this->frameIndex = 0xff;
    SetExtraSpriteFrame(this, 0, (s16)this->field_0x68.HWORD);
    SetExtraSpriteFrame(this, 1, (s16)this->field_0x6a.HWORD);
    SetExtraSpriteFrame(this, 2, (s16)this->field_0x6c.HWORD);
    SetExtraSpriteFrame(this, 3, 10);
    sub_0806FFBC(this, 0, 0xfffffff4, 0);
    sub_0806FFBC(this, 1, 0xfffffffc, 0);
    sub_0806FFBC(this, 2, 0xc, 0);
    sub_0807000C(this);
}
