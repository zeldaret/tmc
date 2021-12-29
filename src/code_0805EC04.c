#include "entity.h"
#include "player.h"
#include "structures.h"

bool32 sub_0805EC04(Entity* this) {
    u32 i = 1;
    OAMSettings* temp = &gUnk_03000000;
    u32 j = 1;
    for (; i < 0x20; i++) {
        if (temp->unk[i].unk6 == 0) {
            temp->unk[i].unk6 = j;
            this->spriteOrientation.b1 = i;
            this->spriteRendering.b0 |= j;
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0805EC60(Entity* this) {
    u8 temp;
    OAMSettings* temp2;

    if (this->spriteRendering.b0 != 0) {
        this->spriteRendering.b0 = 0;
        temp = this->spriteOrientation.b1;
        this->spriteOrientation.b1 = 0;
        temp2 = &gUnk_03000000;
        temp2->unk[temp].unk6 = 0;
    }
}

ASM_FUNC("asm/non_matching/sub_0805EC9C.inc", bool32 sub_0805EC9C(Entity* ent, u32 param_2, u32 param_3, u32 param_4))

void sub_0805ECEC(int param_1, u32 param_2, u32 param_3, u32 param_4) {
    u16* temp;

    gUnk_03000000.unk[0].unk7 = 1;

    temp = &gUnk_03000000.unk[param_1].unk0;
    temp[0] = param_2;
    temp[1] = param_3;
    temp[2] = param_4;
}

void sub_0805ED14(u32 param_1) {
    gPlayerState.field_0x9c = param_1;
    gPlayerState.field_0x98 = 0;
    gPlayerState.field_0x9a = 0;
}
