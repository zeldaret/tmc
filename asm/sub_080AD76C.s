	.include "asm/macros.inc"
	
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080AD76C
sub_080AD76C: @ 0x080AD76C
	push {lr}
	ldr r1, _080AD780 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	cmp r0, #1
	beq _080AD7B4
	cmp r0, #1
	bgt _080AD784
	cmp r0, #0
	beq _080AD78A
	b _080AD80E
	.align 2, 0
_080AD780: .4byte gUnk_02000080
_080AD784:
	cmp r0, #2
	beq _080AD7DC
	b _080AD80E
_080AD78A:
	ldr r0, _080AD7AC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD82A
	movs r0, #1
	strb r0, [r1, #6]
	ldr r2, _080AD7B0 @ =gLCDControls
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xf6
	bl PlaySFX
	b _080AD82A
	.align 2, 0
_080AD7AC: .4byte gUnk_03000FD0
_080AD7B0: .4byte gLCDControls
_080AD7B4:
	ldr r0, [r1, #0x2c]
	adds r0, #0x10
	str r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080AD7D6
	str r2, [r1, #0x2c]
	movs r0, #0x28
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #6
	movs r1, #0x10
	bl DoFade
_080AD7D6:
	bl sub_080AD670
	b _080AD82A
_080AD7DC:
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AD82A
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0xbd
	movs r1, #0
	movs r2, #0
	bl CreateObject
	movs r0, #6
	movs r1, #0x10
	bl DoFade
	movs r0, #0xf8
	bl PlaySFX
	b _080AD82A
_080AD80E:
	ldr r0, _080AD82C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD82A
	bl sub_080AD84C
	cmp r0, #0
	beq _080AD82A
	ldr r0, _080AD830 @ =gUnk_02000080
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r1, #0x3c
	strh r1, [r0, #8]
_080AD82A:
	pop {pc}
	.align 2, 0
_080AD82C: .4byte gUnk_03000FD0
_080AD830: .4byte gUnk_02000080
