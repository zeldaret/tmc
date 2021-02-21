#include "global.h"
#include "entity.h"
#include "sprite.h"
#include "player.h"

extern void DeleteThisEntity();
extern u32 LoadExtraSpriteData(Entity*, SpriteLoadData*);
extern SpriteLoadData gUnk_08110CA8[];
extern void sub_0805E3A0(Entity*, u32);
extern void sub_0807DD64(Entity*);
extern u32 GetFacingDirection(Entity*, Entity*);
extern void sub_0806F118(Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern u32 UpdateFuseInteraction(Entity*);
extern void SetSpriteSubEntryOffsetData2(Entity*, u32, u32);
extern void sub_0807000C(Entity*);
extern u32 sub_0806F5A4();

void Carpenter(Entity* this) {
    if (*(u32*)&this->cutsceneBeh == 0) {
        DeleteThisEntity();
    }
    switch (this->action) {
        case 0:
            if (!LoadExtraSpriteData(this, gUnk_08110CA8 + this->entityType.form * 4))
                break;
            this->action = 1;
            this->field_0x68.HALF.HI = 0;
            sub_0805E3A0(this, 2);
            sub_0807DD64(this);

        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4 +
                                              (this->entityType.form * 8));
                sub_0806F118(this);
            } else {
                sub_0807DDAC(this, 0);
                sub_0807DDE4(this);
                GetNextFrame(this);
            }
            break;
        case 2:
            if (!UpdateFuseInteraction(this))
                break;
            this->action = 1;
            InitializeAnimation(this, this->field_0x68.HALF.HI);
            break;
    }
}

void Carpenter_Head(Entity* this) {
    if ((this->entityType).form < 2) {
        SetExtraSpriteFrame(this, 0, this->frames.all & 0xffffff7f);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetExtraSpriteFrame(this, 2, this->frameSpriteSettings & 0x3f);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        SetSpriteSubEntryOffsetData2(this, 1, 2);
        sub_0807000C(this);
    } else {
        SetExtraSpriteFrame(this, 0, this->frames.all & 0xffffff7f);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    }
}

void sub_080672b0(Entity* this, u32 param_2) {
    InitializeAnimation(this, *(u32*)(param_2 + 4) + (this->animationState >> 1) + this->entityType.form * 8);
}
