#include "global.h"
#include "entity.h"
#include "npc.h"

extern void InitializeAnimation(Entity *, u32);

extern void sub_0806ED78(Entity *);

extern void (*gUnk_081126E8[])();
extern void sub_0806ACC4(Entity *);

extern u32 LoadExtraSpriteData(Entity *, SpriteLoadData *);
extern SpriteLoadData gUnk_08112674[];

void TownMinish(Entity *this)
{
    if ((this->flags & 2) == 0) {
        (*gUnk_081126E8[this->action])(this);
        sub_0806ED78(this);
    }
    else {
        sub_0806ACC4(this);
    }
}

void sub_0806ABFC(Entity *this)
{
    u8 animationState;

    SpriteLoadData* SpriteLoadData = &gUnk_08112674[this->entityType.parameter1 << 2];
    if (!LoadExtraSpriteData(this, SpriteLoadData))
    {
        return;
    }

    InitializeAnimation(this, 2);
    this->action = 1;
    this->field_0x6a.HALF.LO = this->parameter3;

    this->animationState = this->field_0x6a.HALF.LO << 1;
    animationState = this->animationState;
    this->field_0x69 = animationState << 2;

    this->parameter3 = 0;
}

// Not matching yet, not 100% sure it's functionally identical
/*void sub_0806AC3C(Entity *this) {
    if (this->field_0x58 <= 3) {
        s32 unk;
        u8 field_0x69;

        Entity *link = &gLinkEntity;
        if (sub_080041A0(this, link, 0x18, 0x18)) {
            unk = sub_080045C4(this, link) & (u8)0x1e;
        }
        else {
            unk = this->animationState << 2;
        }

        field_0x69 = this->field_0x69;

        if (unk != field_0x69) {
            s32 temp;

            if (((unk - field_0x69) & 0x1f) <= 0xf) {
                field_0x69--;
            }
            else {
                field_0x69++;
            }

            temp = field_0x69;
            this->field_0x69 = temp & 0x1f;
        }

        if (!(this->field_0x69 & 7)) {
            this->animationState = sub_0806F5B0(this->field_0x69);
            UpdateSprite(this, (this->animationState >> 1) ^ 2);
        }
    }

    sub_080042B8(this);
}*/
