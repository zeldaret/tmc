#define NENT_DEPRECATED
#include "entity.h"
#include "message.h"
#include "kinstone.h"
#include "common.h"
#include "functions.h"

// typedef struct {
//     Entity base;
//     u8 filler[0x18];
//     u16 tilePos;
// } Object81Entity;

extern void sub_080ADDD8(u32, u32);
void sub_080838DC(Entity*);
void sub_08083A40(Entity*);
void Object9_Init(Entity*);
void Object9_Action1(Entity*);
void Object9_Action2(Entity*);

#ifdef EU
static const s32 gUnk_0811F744[] = {
    0x00027940,
    0x00027B40,
    0x00027D40,
    0x00027F40,
};
#else
static const s32 gUnk_0811F744[] = {
    0x00027980,
    0x00027B80,
    0x00027D80,
    0x00027F80,
};
#endif

void Object9(Entity* this) {
    static void (*const gUnk_0811F754[])(Entity*) = {
        Object9_Init,
        Object9_Action1,
        Object9_Action2,
    };

    u32 uVar2 = gPlayerState.field_0x27[0] > 0;

    switch (gFuseInfo._0) {
        case 0:
        case 1:
        case 2:
            if ((gMessage.doTextBox & 0x7f) != 0) {
                default:
                    if (gUnk_03003DF0.unk_4[3] == 50) {
                        if (CheckKinstoneFused(0x32) == 0) {
                            uVar2 = 0;
                            break;
                        }
                    }
                    uVar2 = 1;
            }
            break;
    }

    if (uVar2) {
        sub_080838DC(this);
    }
    gUnk_0811F754[this->action](this);
}

void sub_080838DC(Entity* this) {
    this->spriteSettings.draw = 0;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 0;
    this->spritePriority.b0 = 0;
    this->timer = 4;
    this->child = NULL;
    this->action = 0;
}

void Object9_Init(Entity* this) {
    if (this->spriteAnimation[0] != 1) {
        LoadSwapGFX(this, 1, 1);
        this->spriteVramOffset -= 0x10;
#ifdef EU
        sub_080ADDD8(1, 0x10277e0);
#else
        sub_080ADDD8(1, 0x1027820);
#endif
        sub_080838DC(this);
    }
    this->action = 1;
    this->flags |= ENT_PERSIST;
    SetDefaultPriority(this, 6);
}

void Object9_Action1(Entity* this) {
    if (this->timer) {
        this->timer--;
    } else {
        if ((*(Entity**)(gUnk_03003DF0.unk_4 + 8) != NULL) && ((u8)(gUnk_03003DF0.unk_4[3] - 1) < 100)) {
            this->child = *(Entity**)(gUnk_03003DF0.unk_4 + 8);
            this->interactType = gUnk_03003DF0.unk_3;
            sub_08083A40(this);
        }
    }
}

void Object9_Action2(Entity* this) {
    u32 bVar1;
    u32 bVar2;
    u32 bVar3;
    u32 temp;
    u32 temp2;
    struct_080C9CBC* ptr;

    if ((this->type != 1) &&
        (((u8)(gUnk_03003DF0.unk_4[3] - 1) >= 100 || (this->child != *(Entity**)(gUnk_03003DF0.unk_4 + 8))))) {
        sub_080838DC(this);
    } else {
        this->x = this->child->x;
        this->y = this->child->y;
        this->z = this->child->z;
        if (this->frame == 1) {
            this->frame = 0;
            if (this->type == 0) {
                bVar2 = gUnk_03003DF0.unk_4[3];
            } else {
                bVar2 = this->type2;
            }
            ptr = gUnk_080C9CBC + bVar2;
            bVar1 = ptr->_5[0];
            bVar3 = bVar1 & 1;
            this->palette.b.b0 = bVar3;
            temp = gUnk_0811F744[bVar1] < 0;
            temp2 = (gUnk_0811F744[bVar1] & 0xffffff) | temp;
            sub_080ADDD8(0, temp2 | 0x1000000);
        }
        GetNextFrame(this);
    }
}

void sub_08083A40(Entity* this) {
    u32 bVar1;

    this->spriteSettings.draw = 1;
    this->action = 2;
    if (this->child->x.HALF.HI > gPlayerEntity.x.HALF.HI) {
        bVar1 = 0;
        this->spriteOffsetX = 8;
    } else {
        bVar1 = 1;
        this->spriteOffsetX = -8;
    }
    this->spriteOffsetY = -18;
    InitializeAnimation(this, bVar1);
    Object9_Action2(this);
}
