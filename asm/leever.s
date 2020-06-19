	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Leever
Leever: @ 0x0801FC08
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801FC24 @ =gUnk_080CA49C
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_0801FC24: .4byte gUnk_080CA49C

	thumb_func_start sub_0801FC28
sub_0801FC28: @ 0x0801FC28
	push {lr}
	ldr r2, _0801FC3C @ =gUnk_080CA4B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801FC3C: .4byte gUnk_080CA4B4

	thumb_func_start sub_0801FC40
sub_0801FC40: @ 0x0801FC40
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0801FC5C
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801FC6E
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
	b _0801FC6E
_0801FC5C:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FC6E
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0801FC6E:
	ldr r1, _0801FC78 @ =gUnk_080CA49C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0801FC78: .4byte gUnk_080CA49C

	thumb_func_start sub_0801FC7C
sub_0801FC7C: @ 0x0801FC7C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0801FC8E
	adds r0, r1, #0
	bl sub_0804A7D4
	b _0801FC98
_0801FC8E:
	adds r0, r1, #0
	movs r1, #0xf1
	movs r2, #0
	bl CreateDeathFx
_0801FC98:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FC9C
sub_0801FC9C: @ 0x0801FC9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_0801FCB0
sub_0801FCB0: @ 0x0801FCB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FD28
	bl Random
	movs r1, #0x1f
	ands r1, r0
	adds r0, r5, #0
	bl sub_0801FE68
	cmp r0, #0
	beq _0801FD1C
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r0, _0801FD14 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r4, r0, #0
	bl Random
	ldr r2, _0801FD18 @ =gUnk_080CA4C8
	movs r1, #1
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	b _0801FD28
	.align 2, 0
_0801FD14: .4byte gUnk_020000B0
_0801FD18: .4byte gUnk_080CA4C8
_0801FD1C:
	bl Random
	movs r1, #0x18
	ands r0, r1
	adds r0, #8
	strb r0, [r5, #0xe]
_0801FD28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801FD2C
sub_0801FD2C: @ 0x0801FD2C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FD66
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FD54
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0xb4
	b _0801FD5A
_0801FD54:
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x6e
_0801FD5A:
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0801FD7C
_0801FD66:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FD7C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_0801FD7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FD80
sub_0801FD80: @ 0x0801FD80
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FED4
	adds r0, r4, #0
	bl GetNextFrame
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801FDB2
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0801FDB2:
	pop {r4, pc}

	thumb_func_start sub_0801FDB4
sub_0801FDB4: @ 0x0801FDB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FED4
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FDE0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0xf4
	ands r0, r1
	strb r0, [r4, #0x18]
_0801FDE0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FDE4
sub_0801FDE4: @ 0x0801FDE4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r7, _0801FE04 @ =gUnk_020000B0
	ldr r0, [r7]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080002D4
	cmp r0, #0
	beq _0801FE34
	b _0801FE5C
	.align 2, 0
_0801FE04: .4byte gUnk_020000B0
_0801FE08:
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r1, r0, #0
	ands r4, r1
	adds r0, r4, #0
	adds r0, #8
	strh r0, [r6, #0x2e]
	ands r5, r1
	adds r0, r5, #0
	adds r0, #8
	strh r0, [r6, #0x32]
	ldr r0, _0801FE30 @ =gUnk_020000B0
	ldr r0, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #1
	b _0801FE5E
	.align 2, 0
_0801FE30: .4byte gUnk_020000B0
_0801FE34:
	ldr r0, [r7]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080002BC
	adds r3, r0, #0
	ldr r1, _0801FE60 @ =gUnk_080CA4CA
	ldrh r0, [r1]
	ldr r2, _0801FE64 @ =0x0000FFFF
	cmp r0, r2
	beq _0801FE5C
_0801FE4E:
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, r3
	beq _0801FE08
	ldrh r0, [r1]
	cmp r0, r2
	bne _0801FE4E
_0801FE5C:
	movs r0, #0
_0801FE5E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801FE60: .4byte gUnk_080CA4CA
_0801FE64: .4byte 0x0000FFFF

	thumb_func_start sub_0801FE68
sub_0801FE68: @ 0x0801FE68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FE82
_0801FE7E:
	movs r0, #0
	b _0801FEC4
_0801FE82:
	ldr r0, _0801FECC @ =gUnk_020000B0
	ldr r0, [r0]
	ldr r5, [r0, #0x2c]
	ldr r4, [r0, #0x30]
	ldr r1, _0801FED0 @ =gSineTable
	lsls r0, r6, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0xb
	mov sb, r0
	lsls r0, r6, #4
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xb
	mov r8, r0
	movs r6, #0
_0801FEA8:
	add r5, sb
	mov r2, r8
	subs r4, r4, r2
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	adds r0, r7, #0
	bl sub_0801FDE4
	cmp r0, #0
	beq _0801FE7E
	adds r6, #1
	cmp r6, #7
	bls _0801FEA8
	movs r0, #1
_0801FEC4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801FECC: .4byte gUnk_020000B0
_0801FED0: .4byte gSineTable

	thumb_func_start sub_0801FED4
sub_0801FED4: @ 0x0801FED4
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
