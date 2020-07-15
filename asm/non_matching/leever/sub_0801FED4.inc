	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FEEA
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
_0801FEEA:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0xf
	adds r1, r2, #0
	ands r1, r0
	lsls r1, r1, #5
	strh r1, [r4, #0x24]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FF28
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801FF4E
	ldr r0, _0801FF24 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	b _0801FF4E
	.align 2, 0
_0801FF24: .4byte gUnk_020000B0
_0801FF28:
	adds r0, r1, #0
	adds r0, #0x40
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801FF4E
	ldr r0, _0801FF58 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0801FF4E:
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0
_0801FF58: .4byte gUnk_020000B0
.syntax divided