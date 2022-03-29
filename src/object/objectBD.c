/**
 * @file objectBD.c
 * @ingroup Objects
 *
 * @brief ObjectBD object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

void sub_080A2274(Entity*);
void sub_080A22B0(Entity*);
void sub_080A22C4(Entity*);
void sub_080A2340(Entity*);

typedef struct {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u8 unk_6;
    u8 pad;
} struct_08125014;

const struct_08125014 gUnk_08125014[] = {
    { 120, 48, 16, 4, 0 }, { 136, 81, 22, 3, 0 }, { 190, 20, 25, 2, 0 }, { 192, 81, 26, 2, 0 }, { 32, 104, 27, 3, 0 },
};

void ObjectBD(Entity* this) {
    static void (*const gUnk_0812503C[])(Entity*) = {
        sub_080A2274, sub_080A22B0, sub_080A22B0, sub_080A22B0, sub_080A22C4,
    };
    gUnk_0812503C[this->type](this);
}

void sub_080A2274(Entity* this) {
    u32 addr;
    u32 type;

    if (this->action == 0) {
        sub_080A2340(this);
        CreateObject(OBJECT_BD, 1, 0);
        addr = 0x02000000; // TODO write to 0x2000007
        if (*(u8*)(addr + 7) == 1) {
            type = 2;
        } else {
            type = 3;
        }
        CreateObject(OBJECT_BD, type, 0);
        CreateObject(OBJECT_BD, 4, 0);
    }
}

void sub_080A22B0(Entity* this) {
    if (this->action == 0) {
        sub_080A2340(this);
    }
}

NONMATCH("asm/non_matching/objectBD/sub_080A22C4.inc", void sub_080A22C4(Entity* this)) {
    u8 bVar1;
    u8 uVar2;
    s16 sVar3;
    u32 uVar4;
    u32 tmp1, tmp2, tmp3, tmp4;

    switch (this->action) {
        case 0:
            sub_080A2340(this);
            this->timer = 8;
            this->subtimer = 0;
            this->subAction = this->frameIndex;
            this->speed = (Random() & 3) * 0x10 + 0x1e;
            break;
        case 1:
            if (--this->speed != 0) {
                return;
            }
            this->speed = (Random() & 7) * 0x10 + 0x1e;
            this->action = 2;
            break;
        default:
            if (--this->timer != 0) {
                return;
            }
            this->timer = 8;
            this->subtimer = tmp2 = (this->subtimer + 1) & 3;
            tmp3 = this->subAction;
            tmp1 = tmp3 + tmp2;
            this->frameIndex = tmp1;
            if (tmp3 * 0x1000000 != tmp1 * 0x1000000) {
                return;
            }
            this->action = 1;
            break;
    }
}
END_NONMATCH

void sub_080A2340(Entity* this) {
    const struct_08125014* ptr;
    ptr = &gUnk_08125014[this->type];
    this->x.HALF.HI = ptr->unk_0;
    this->y.HALF.HI = ptr->unk_2;
    this->frameIndex = ptr->unk_4;
    this->spritePriority.b0 = ptr->unk_6;
    this->spriteRendering.b3 = 1;
    this->spriteOrientation.flipY = 1;
    this->spriteSettings.draw = 2;
    this->action = 1;
}
