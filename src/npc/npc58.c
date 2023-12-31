/**
 * @file npc58.c
 * @ingroup NPCs
 *
 * @brief NPC 58
 */
#include "entity.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s16 unk_68;
    /*0x6a*/ s16 unk_6a;
    /*0x6c*/ s16 unk_6c;
} NPC58Entity;

extern void sub_0806FFBC(Entity*, u32, u32, u32);

static const SpriteLoadData gUnk_081146D0[] = {
    { 0, 0x61, 0x4 }, { 0x800, 0x61, 0x4 }, { 0x1000, 0x61, 0x4 }, { 0x1800, 0x61, 0x4 }, { 0, 0, 0 },
};

void NPC58(NPC58Entity* this) {
    s32 sVar1;
    s32 uVar2;
    s32 uVar4;
    GenericEntity* entity;

    if (super->action == 0) {
        if (!LoadExtraSpriteData(super, gUnk_081146D0)) {
            return;
        }
        super->action++;
        super->spriteSettings.draw = 2;
        super->spriteRendering.b3 = 0;
        super->spritePriority.b0 = 0;
        super->spriteOrientation.flipY = 1;
        super->x.HALF.HI = 0x78;
        super->y.HALF.HI = 0x10;
    }
    entity = (GenericEntity*)super->parent;
    if (entity != NULL) {
        sVar1 = *(s16*)&entity->field_0x68.HWORD;
        uVar2 = (s32)sVar1 / 600;
        this->unk_68 = uVar2;
        uVar4 = (s32)sVar1 % 600;
        this->unk_6a = uVar4 / 0x3c;
        uVar4 = uVar4 % 0x3c;
        uVar2 = uVar4 / 6;
        this->unk_6c = uVar2;
        if (entity->base.next == NULL) {
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }
}

void NPC58_Head(NPC58Entity* this) {
    super->frameIndex = 0xff;
    SetExtraSpriteFrame(super, 0, this->unk_68);
    SetExtraSpriteFrame(super, 1, this->unk_6a);
    SetExtraSpriteFrame(super, 2, this->unk_6c);
    SetExtraSpriteFrame(super, 3, 10);
    sub_0806FFBC(super, 0, -12, 0);
    sub_0806FFBC(super, 1, -4, 0);
    sub_0806FFBC(super, 2, 0xc, 0);
    sub_0807000C(super);
}
