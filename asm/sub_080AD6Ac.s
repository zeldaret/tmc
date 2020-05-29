	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080AD6AC
sub_080AD6AC: @ 0x080AD6AC
	push {r4, r5, r6, lr}
	ldr r4, _080AD6C0 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _080AD724
	cmp r0, #1
	bgt _080AD6C4
	cmp r0, #0
	beq _080AD6CA
	b _080AD76A
	.align 2, 0
_080AD6C0: .4byte gUnk_02000080
_080AD6C4:
	cmp r0, #2
	beq _080AD758
	b _080AD76A
_080AD6CA:
	ldr r6, _080AD718 @ =gUnk_03000FD0
	ldrb r5, [r6]
	cmp r5, #0
	bne _080AD76A
	ldrb r1, [r4, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AD6E4
	ldr r1, _080AD71C @ =gLCDControls
	ldrh r0, [r1, #0x18]
	adds r0, #1
	strh r0, [r1, #0x18]
_080AD6E4:
	bl sub_080AD84C
	cmp r0, #2
	beq _080AD6F4
	ldr r0, _080AD71C @ =gLCDControls
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _080AD76A
_080AD6F4:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080AD71C @ =gLCDControls
	strh r5, [r1, #0x18]
	ldr r0, _080AD720 @ =0x00000C09
	strh r0, [r1, #0x14]
	movs r0, #0x40
	str r0, [r6, #4]
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0xf8
	bl PlaySFX
	b _080AD76A
	.align 2, 0
_080AD718: .4byte gUnk_03000FD0
_080AD71C: .4byte gLCDControls
_080AD720: .4byte 0x00000C09
_080AD724:
	ldr r1, _080AD754 @ =gUnk_03000FD0
	ldrb r5, [r1]
	cmp r5, #0
	bne _080AD76A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x5a
	strh r0, [r4, #8]
	movs r0, #0xb4
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD76A
	strh r5, [r1, #0x2e]
	movs r0, #0x48
	strh r0, [r1, #0x32]
	b _080AD76A
	.align 2, 0
_080AD754: .4byte gUnk_03000FD0
_080AD758:
	bl sub_080AD84C
	cmp r0, #0
	beq _080AD76A
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	movs r0, #0x3c
	strh r0, [r4, #8]
_080AD76A:
	pop {r4, r5, r6, pc}
