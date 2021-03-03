	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, lr}
	bl sub_08056134
	cmp r0, #0
	bne _080560F8
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl Read_02000000
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	blt _080560E4
	cmp r1, #0
	ble _080560E4
	cmp r1, #1
	bne _080560E4
	bl sub_08056134
	cmp r0, #0
	bne _080560F8
_080560E4:
	ldr r0, _08056128 @ =sDefaultSettings
	movs r4, #0x80
	lsls r4, r4, #0x12
	adds r1, r4, #0
	movs r2, #0x10
	bl MemCopy
	adds r0, r4, #0
	bl Write_02000000
_080560F8:
	ldr r2, _0805612C @ =gUnk_02000010
	ldr r1, [r2]
	ldr r0, _08056130 @ =0x4D435A33
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldrb r1, [r2, #4]
	cmp r1, #0
	beq _08056112
	cmp r1, #0xc1
	beq _08056112
	movs r0, #1
_08056112:
	cmp r0, #0
	beq _08056124
	ldr r4, _0805612C @ =gUnk_02000010
	adds r0, r4, #0
	movs r1, #0x20
	bl MemClear32
	ldr r0, _08056130 @ =0x4D435A33
	str r0, [r4]
_08056124:
	pop {r4, pc}
	.align 2, 0
_08056128: .4byte sDefaultSettings
_0805612C: .4byte gUnk_02000010
_08056130: .4byte 0x4D435A33
    .syntax divided
