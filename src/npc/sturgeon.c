#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "object.h"
#include "item.h"

extern u16 gUnk_0810FA54[];

extern SpriteLoadData gUnk_0810FA38;

extern u32 gUnk_0810FA5A;
void sub_08064CC0(Entity* this);

extern void (*const gUnk_0810FA44[])(Entity*);
void sub_08064C9C(Entity* this);

void sub_08064CD8(Entity* this);

void Sturgeon(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) == 0) {
        gUnk_0810FA44[this->action](this);
        sub_0806ED78(this);
    } else {
        if (this->action == 0) {
            if (LoadExtraSpriteData(this, &gUnk_0810FA38) != 0) {
                this->action = 1;
                this->timer = 0;
                sub_0807DD50(this);
            }
        } else {
            u32 tmp = this->action & 0x80;
            if (tmp) {
                if (UpdateFuseInteraction(this) != 0) {
                    this->action = 1;
                }
            } else {
                if (this->interactType == 2) {
                    this->action = this->action | 0xff;
                    this->interactType = tmp;
                    InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                    sub_0806F118(this);
                } else {
                    sub_0807DD94(this, NULL);
                    sub_08064C9C(this);
                }
            }
        }
    }
}

void sub_08064B44(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_0810FA38) != 0) {
        InitializeAnimation(this, 2);
        sub_0806EE04(this, &gUnk_0810FA5A, 0);
        sub_08064CC0(this);
        this->action = 1;
        this->subAction = 0;
        this->spriteSettings.draw = 1;
    }
}

void sub_08064B88(Entity* this) {
    s32 temp;
    s32 temp2;

    switch (this->interactType) {
        case 0:
            temp = sub_0806EE20(this);
            this->animationState = this->knockbackDirection;
            if (temp != 0) {
                InitializeAnimation(this, temp & 0x7f);
            }
            GetNextFrame(this);
            break;
        case 2:
            this->action = 3;
            temp2 = GetAnimationState(this);
            if (temp2 < 0) {
                temp2 = this->animationState;
            }
            this->subtimer = this->animIndex;
            InitializeAnimation(this, temp2);
            this->interactType = 0;
            sub_0806F118(this);
            break;
        case 1:
        default:
            this->action = 2;
            temp2 = GetAnimationState(this);
            if (temp2 < 0) {
                temp2 = this->animationState;
            }
            this->subtimer = this->animIndex;
            InitializeAnimation(this, temp2);
            this->interactType = 0;
            sub_08064CD8(this);
    }
}

void sub_08064C2C(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->action = 1;
        InitializeAnimation(this, (u32)this->subtimer);
    }
}

void sub_08064C50(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
        InitializeAnimation(this, this->subtimer);
    }
}

void Sturgeon_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (u8)this->frame & 0x3f);
    SetExtraSpriteFrame(this, 1, (u32)this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08064C9C(Entity* this) {
    if ((this->timer != 0) && ((gRoomTransition.frameCount & 3U) == 0)) {
        CreateDust(this);
    }
}

void sub_08064CC0(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void sub_08064CD8(Entity* this) {
    u32 flag;
    u32 tmp = 2;
    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        if (CheckLocalFlag(0x73)) {
            tmp = 1;
        } else {
            tmp = 0;
        }
    }
    MessageNoOverlap(gUnk_0810FA54[tmp], this);
}

void sub_08064D08(Entity* this) {
    this->timer = 1;
}

void sub_08064D10(Entity* this) {
    this->timer = 0;
}

void Sturgeon_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_0810FA38) != 0) {
            this->action += 1;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
