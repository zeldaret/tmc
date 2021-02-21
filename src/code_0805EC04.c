#include "entity.h"
#include "player.h"

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u8 unk6;
    u8 unk7;
} VStruct;

typedef struct {
    u8 filler[0x420];
    VStruct unk[0x100];
} UStruct;

extern UStruct gUnk_03000000;

bool32 sub_0805EC04(Entity* this) {
    u32 i = 1;
    UStruct* temp = &gUnk_03000000;
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
    UStruct* temp2;

    if (this->spriteRendering.b0 != 0) {
        this->spriteRendering.b0 = 0;
        temp = this->spriteOrientation.b1;
        this->spriteOrientation.b1 = 0;
        temp2 = &gUnk_03000000;
        temp2->unk[temp].unk6 = 0;
    }
}

NAKED
bool32 sub_0805EC9C(Entity* ent, u32 param_2, u32 param_3, u32 param_4) {
    asm_unified("\
	push {r4, r5, r6, r7, lr} \n\
	adds r4, r0, #0 \n\
	adds r5, r1, #0 \n\
	adds r6, r2, #0 \n\
	adds r7, r3, #0 \n\
	ldrb r0, [r4, #0x1b] \n\
	lsls r0, r0, #0x1a \n\
	lsrs r0, r0, #0x1b \n\
	cmp r0, #0 \n\
	bne _0805ECBE \n\
	adds r0, r4, #0 \n\
	bl sub_0805EC04 \n\
	cmp r0, #0 \n\
	bne _0805ECBE \n\
	movs r0, #0 \n\
	b _0805ECE0 \n\
_0805ECBE: \n\
	ldr r1, _0805ECE4 @ =gUnk_03000000 \n\
	ldr r0, _0805ECE8 @ =0x00000427 \n\
	adds r2, r1, r0 \n\
	movs r0, #1 \n\
	strb r0, [r2] \n\
	ldrb r0, [r4, #0x1b] \n\
	lsls r0, r0, #0x1a \n\
	lsrs r0, r0, #0x1b \n\
	lsls r0, r0, #3 \n\
	movs r2, #0x84 \n\
	lsls r2, r2, #3 \n\
	adds r1, r1, r2 \n\
	adds r0, r0, r1 \n\
	strh r5, [r0] \n\
	strh r6, [r0, #2] \n\
	strh r7, [r0, #4] \n\
	movs r0, #1 \n\
_0805ECE0: \n\
	pop {r4, r5, r6, r7, pc} \n\
	.align 2, 0 \n\
_0805ECE4: .4byte gUnk_03000000 \n\
_0805ECE8: .4byte 0x00000427 \n\
    ");
}

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