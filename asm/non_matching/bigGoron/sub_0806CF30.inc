	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0806CF5E
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	ldrh r1, [r5, #0x2e]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0806D0B0
	adds r0, r5, #0
	bl sub_0807DD64
	b _0806CF6C
_0806CF5E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
_0806CF6C:
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	beq _0806CFD4
	cmp r0, #2
	bgt _0806D000
	cmp r0, #0
	blt _0806D000
	ldr r0, _0806CFCC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806D000
	ldr r0, _0806CFD0 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldrh r3, [r5, #0x2e]
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	adds r4, r0, #0
	cmp r2, r1
	bge _0806CFA8
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	subs r0, #0x20
	cmp r0, r1
	bge _0806CFA8
	subs r0, r3, #1
	strh r0, [r5, #0x2e]
_0806CFA8:
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	ldrh r2, [r5, #0x2e]
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	cmp r1, r0
	ble _0806D000
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r0, #0x20
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	cmp r0, r1
	ble _0806D000
	adds r0, r2, #1
	strh r0, [r5, #0x2e]
	b _0806D000
	.align 2, 0
_0806CFCC: .4byte gUnk_030010A0
_0806CFD0: .4byte gLinkEntity
_0806CFD4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D000
	bl Random
	adds r4, r0, #0
	ldr r1, _0806D008 @ =gUnk_081140CC
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySFX
	movs r0, #7
	ands r4, r0
	lsls r4, r4, #4
	adds r4, #0x80
	strb r4, [r5, #0xe]
_0806D000:
	adds r0, r5, #0
	bl sub_0806D02C
	pop {r4, r5, pc}
	.align 2, 0
_0806D008: .4byte gUnk_081140CC
	.syntax divided