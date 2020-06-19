	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BusinessScrubPrologue
BusinessScrubPrologue: @ 0x08045B88
	push {lr}
	ldr r1, _08045B94 @ =gUnk_080D19FC
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_08045B94: .4byte gUnk_080D19FC

	thumb_func_start sub_08045B98
sub_08045B98: @ 0x08045B98
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _08045BC4 @ =gUnk_080D1A14
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}
	.align 2, 0
_08045BC4: .4byte gUnk_080D1A14

	thumb_func_start sub_08045BC8
sub_08045BC8: @ 0x08045BC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045C2C
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x42
	bne _08045C2C
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08046030
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08045C16
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
_08045C16:
	ldr r0, _08045C30 @ =gLinkState
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _08045C34 @ =0x000001BB
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_08045C2C:
	pop {r4, pc}
	.align 2, 0
_08045C30: .4byte gLinkState
_08045C34: .4byte 0x000001BB

	thumb_func_start nullsub_174
nullsub_174: @ 0x08045C38
	bx lr
	.align 2, 0

	thumb_func_start sub_08045C3C
sub_08045C3C: @ 0x08045C3C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	strb r2, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08046030
	adds r0, r4, #0
	bl sub_08095C48
	ldr r1, _08045CA0 @ =gUnk_08015AC4
	adds r0, r4, #0
	bl StartCutscene
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}
	.align 2, 0
_08045CA0: .4byte gUnk_08015AC4

	thumb_func_start sub_08045CA4
sub_08045CA4: @ 0x08045CA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08045CC0
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08045CD8
_08045CC0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08045F54
	cmp r0, #0
	beq _08045CD8
	adds r0, r4, #0
	bl sub_08045FF0
	strb r5, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
_08045CD8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_24
nullsub_24: @ 0x08045CDC
	bx lr
	.align 2, 0

	thumb_func_start sub_08045CE0
sub_08045CE0: @ 0x08045CE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bls _08045CF0
	b _08045DF8
_08045CF0:
	lsls r0, r0, #2
	ldr r1, _08045CFC @ =_08045D00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045CFC: .4byte _08045D00
_08045D00: @ jump table
	.4byte _08045D14 @ case 0
	.4byte _08045D36 @ case 1
	.4byte _08045D60 @ case 2
	.4byte _08045D9A @ case 3
	.4byte _08045DBC @ case 4
_08045D14:
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045DF8
	strb r6, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	b _08045DB2
_08045D36:
	movs r6, #1
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08045DF8
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #2
	bl sub_08046030
	b _08045DF8
_08045D60:
	movs r6, #1
	adds r0, r4, #0
	bl sub_0804604C
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08045DF8
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08045DF8
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08045DF8
_08045D9A:
	movs r6, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045DF8
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
_08045DB2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046030
	b _08045DF8
_08045DBC:
	movs r6, #2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045DF8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08045F54
	adds r5, r0, #0
	cmp r5, #0
	beq _08045DEC
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	b _08045DF8
_08045DEC:
	adds r0, r4, #0
	bl sub_08045FA0
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
_08045DF8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08045F54
	adds r5, r0, #0
	cmp r5, #0
	bne _08045E12
	adds r0, r4, #0
	bl sub_08045FA0
	strb r5, [r4, #0xd]
	strb r5, [r4, #0xe]
	strb r5, [r4, #0xf]
_08045E12:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08045E14
sub_08045E14: @ 0x08045E14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08045E2C @ =gLinkState
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08045E30
	cmp r0, #1
	beq _08045E70
	b _08045EBA
	.align 2, 0
_08045E2C: .4byte gLinkState
_08045E30:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08045E6A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045EBA
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #5
	bl sub_08046030
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08045EBA
_08045E6A:
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08045EBA
_08045E70:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045EBA
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08046030
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r2, r0, #0
	cmp r2, #0
	beq _08045EBA
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x36]
	subs r0, #0xc
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #2
	bl sub_0805E3A0
_08045EBA:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}

	thumb_func_start sub_08045EC8
sub_08045EC8: @ 0x08045EC8
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08045ED4
sub_08045ED4: @ 0x08045ED4
	push {lr}
	bl sub_08045FA0
	pop {pc}

	thumb_func_start sub_08045EDC
sub_08045EDC: @ 0x08045EDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _08045F00
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #2
	bl sub_08046030
_08045F00:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0804604C
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08045F38
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080954AC
	ldr r0, _08045F34 @ =0x0000018D
	bl sub_08004488
	b _08045F4E
	.align 2, 0
_08045F34: .4byte 0x0000018D
_08045F38:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045F4E
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046030
_08045F4E:
	pop {r4, pc}

	thumb_func_start nullsub_25
nullsub_25: @ 0x08045F50
	bx lr
	.align 2, 0

	thumb_func_start sub_08045F54
sub_08045F54: @ 0x08045F54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08045F90
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x20
	movs r3, #0x20
	bl sub_080041A0
	cmp r0, #0
	bne _08045F90
	cmp r5, #2
	beq _08045F94
	movs r3, #0x50
	cmp r5, #0
	beq _08045F82
	movs r3, #0x58
_08045F82:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	bne _08045F94
_08045F90:
	movs r0, #0
	b _08045F96
_08045F94:
	movs r0, #1
_08045F96:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08045F98
sub_08045F98: @ 0x08045F98
	movs r1, #0x10
	strb r1, [r0, #0x15]
	movs r0, #1
	bx lr

	thumb_func_start sub_08045FA0
sub_08045FA0: @ 0x08045FA0
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r0, r2, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r2, #0
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08045FF0
sub_08045FF0: @ 0x08045FF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08045F98
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046030
	pop {r4, pc}

	thumb_func_start sub_08046030
sub_08046030: @ 0x08046030
	push {lr}
	adds r3, r1, #0
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #3
	ldr r2, _08046048 @ =gUnk_080D1A38
	adds r3, r3, r2
	ldrb r2, [r3]
	orrs r1, r2
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_08046048: .4byte gUnk_080D1A38

	thumb_func_start sub_0804604C
sub_0804604C: @ 0x0804604C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _08046070
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _08046070
	ldr r1, _08046074 @ =gUnk_080D1A3E
	ldrb r0, [r2, #0xe]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x63
	strb r1, [r0]
_08046070:
	pop {pc}
	.align 2, 0
_08046074: .4byte gUnk_080D1A3E

	thumb_func_start sub_08046078
sub_08046078: @ 0x08046078
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08046114 @ =gLinkState
	adds r0, #0x27
	movs r1, #0
	strb r1, [r0]
	ldr r4, _08046118 @ =gUnk_080D1A4E
	ldr r6, _0804611C @ =gRoomControls
	movs r5, #4
_0804608A:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080460AE
	ldrh r0, [r4]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	adds r4, #2
	ldrh r0, [r4]
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	adds r4, #2
_080460AE:
	subs r5, #1
	cmp r5, #0
	bge _0804608A
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08004488
	ldr r0, _08046120 @ =0x000007A2
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08046124 @ =0x000007A3
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08046128 @ =0x000007A5
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804612C @ =0x000007A6
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08046130 @ =0x000007A7
	movs r1, #1
	bl sub_0807BA8C
	adds r0, r7, #0
	movs r1, #0x43
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08046102
	adds r0, r7, #0
	bl CopyPosition
	movs r0, #0xc2
	lsls r0, r0, #1
	bl sub_08004488
_08046102:
	ldr r1, [r7, #0x54]
	cmp r1, #0
	beq _0804610C
	movs r0, #0xff
	strb r0, [r1, #0xc]
_0804610C:
	adds r0, r7, #0
	bl sub_0804AA1C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08046114: .4byte gLinkState
_08046118: .4byte gUnk_080D1A4E
_0804611C: .4byte gRoomControls
_08046120: .4byte 0x000007A2
_08046124: .4byte 0x000007A3
_08046128: .4byte 0x000007A5
_0804612C: .4byte 0x000007A6
_08046130: .4byte 0x000007A7
