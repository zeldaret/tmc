	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809F9DC
sub_0809F9DC: @ 0x0809F9DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809FA9A
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1f
	bhi _0809FA9A
	lsls r0, r0, #2
	ldr r1, _0809FA00 @ =_0809FA04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809FA00: .4byte _0809FA04
_0809FA04: @ jump table
	.4byte _0809FA84 @ case 0
	.4byte _0809FA84 @ case 1
	.4byte _0809FA9A @ case 2
	.4byte _0809FA9A @ case 3
	.4byte _0809FA84 @ case 4
	.4byte _0809FA84 @ case 5
	.4byte _0809FA84 @ case 6
	.4byte _0809FA9A @ case 7
	.4byte _0809FA84 @ case 8
	.4byte _0809FA84 @ case 9
	.4byte _0809FA84 @ case 10
	.4byte _0809FA84 @ case 11
	.4byte _0809FA84 @ case 12
	.4byte _0809FA9A @ case 13
	.4byte _0809FA9A @ case 14
	.4byte _0809FA9A @ case 15
	.4byte _0809FA9A @ case 16
	.4byte _0809FA9A @ case 17
	.4byte _0809FA9A @ case 18
	.4byte _0809FA9A @ case 19
	.4byte _0809FA9A @ case 20
	.4byte _0809FA9A @ case 21
	.4byte _0809FA9A @ case 22
	.4byte _0809FA9A @ case 23
	.4byte _0809FA9A @ case 24
	.4byte _0809FA9A @ case 25
	.4byte _0809FA9A @ case 26
	.4byte _0809FA9A @ case 27
	.4byte _0809FA9A @ case 28
	.4byte _0809FA9A @ case 29
	.4byte _0809FA84 @ case 30
	.4byte _0809FA84 @ case 31
_0809FA84:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _0809FAB4 @ =gLinkEntity
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	movs r1, #0
	movs r2, #0
	bl sub_080A7C00
	bl DeleteThisEntity
_0809FA9A:
	ldr r0, _0809FAB8 @ =gUnk_08124824
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_0809FAB4: .4byte gLinkEntity
_0809FAB8: .4byte gUnk_08124824

	thumb_func_start sub_0809FABC
sub_0809FABC: @ 0x0809FABC
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _0809FAD0
	cmp r0, #2
	beq _0809FADE
	b _0809FAE6
_0809FAD0:
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	ldrh r0, [r3, #0x36]
	adds r0, #8
	strh r0, [r3, #0x36]
	b _0809FAE6
_0809FADE:
	adds r0, r3, #0
	bl sub_0809FECC
	b _0809FB30
_0809FAE6:
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3c
	movs r2, #0x17
	strb r2, [r0]
	adds r1, #8
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #7
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3b
	strb r2, [r0]
	ldr r0, _0809FB34 @ =gUnk_080FD1A8
	str r0, [r3, #0x48]
	movs r0, #1
	strb r0, [r3, #0x1c]
	ldrh r1, [r3, #0x2e]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r3, #0
	movs r1, #3
	bl sub_0805E3A0
	movs r0, #0x9b
	lsls r0, r0, #1
	bl sub_08004488
_0809FB30:
	pop {pc}
	.align 2, 0
_0809FB34: .4byte gUnk_080FD1A8

	thumb_func_start sub_0809FB38
sub_0809FB38: @ 0x0809FB38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	ldr r1, _0809FB60 @ =0xFFFF2000
	adds r0, r0, r1
	str r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809FB74
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0809FB64
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	b _0809FB66
	.align 2, 0
_0809FB60: .4byte 0xFFFF2000
_0809FB64:
	movs r0, #0xf0
_0809FB66:
	strb r0, [r2, #0xe]
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xf]
	movs r0, #0x80
	strh r0, [r2, #0x24]
_0809FB74:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809FB78
sub_0809FB78: @ 0x0809FB78
	push {lr}
	ldr r2, _0809FB8C @ =gUnk_08124840
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809FB8C: .4byte gUnk_08124840

	thumb_func_start sub_0809FB90
sub_0809FB90: @ 0x0809FB90
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xd]
	strb r1, [r0, #0x1d]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	bx lr

	thumb_func_start sub_0809FBA4
sub_0809FBA4: @ 0x0809FBA4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0809FBC8 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0809FBC2
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _0809FBCC
_0809FBC2:
	movs r0, #3
	strb r0, [r2, #0xc]
	b _0809FBD2
	.align 2, 0
_0809FBC8: .4byte gLinkState
_0809FBCC:
	adds r0, r2, #0
	bl sub_0806F4E8
_0809FBD2:
	pop {pc}

	thumb_func_start sub_0809FBD4
sub_0809FBD4: @ 0x0809FBD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809FBFC @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0809FBF4
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0x13
	beq _0809FC00
_0809FBF4:
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0809FC22
	.align 2, 0
_0809FBFC: .4byte gLinkState
_0809FC00:
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0809FC22
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldr r0, _0809FC24 @ =gLinkEntity
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	movs r1, #0
	bl GiveItem
_0809FC22:
	pop {r4, r5, pc}
	.align 2, 0
_0809FC24: .4byte gLinkEntity

	thumb_func_start sub_0809FC28
sub_0809FC28: @ 0x0809FC28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809FCAC
	bl Random
	adds r5, r0, #0
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	ldr r2, _0809FC6C @ =gUnk_0812484C
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0809FE9C
	cmp r0, #0
	beq _0809FC70
	movs r0, #0x1f
	ands r5, r0
	strb r5, [r4, #0x15]
	b _0809FC8A
	.align 2, 0
_0809FC6C: .4byte gUnk_0812484C
_0809FC70:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r4, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r4, #0x15]
_0809FC8A:
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0809FCAC
	movs r0, #0x10
	eors r1, r0
	lsrs r1, r1, #4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0809FCAC:
	adds r0, r4, #0
	bl sub_080AEFB4
	bl sub_0805E40C
	cmp r0, #0
	bne _0809FCF8
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809FCF8
	ldr r0, _0809FCFC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809FCE0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809FCE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
_0809FCE0:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x3b
	bhi _0809FCF8
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0809FCF8:
	pop {r4, r5, pc}
	.align 2, 0
_0809FCFC: .4byte gUnk_030010A0

	thumb_func_start sub_0809FD00
sub_0809FD00: @ 0x0809FD00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	ldrh r1, [r2, #8]
	ldr r0, _0809FD18 @ =0x00000B08
	cmp r1, r0
	beq _0809FD1C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08081404
	b _0809FD44
	.align 2, 0
_0809FD18: .4byte 0x00000B08
_0809FD1C:
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0809FD48 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _0809FD44
	adds r0, r4, #0
	bl sub_0809FECC
	ldrb r0, [r4, #0xa]
	movs r1, #0
	bl GiveItem
_0809FD44:
	pop {r4, pc}
	.align 2, 0
_0809FD48: .4byte gLinkEntity

	thumb_func_start sub_0809FD4C
sub_0809FD4C: @ 0x0809FD4C
	push {lr}
	adds r1, r0, #0
	movs r2, #6
	strb r2, [r1, #0xc]
	movs r0, #0x80
	strb r0, [r1, #0xe]
	strb r2, [r1, #0xf]
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	ldrb r2, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0x18]
	adds r3, r1, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r3]
	adds r2, r1, #0
	adds r2, #0x63
	movs r0, #0xfb
	strb r0, [r2]
	ldr r0, [r1, #0x54]
	bl CopyPosition
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809FD94
sub_0809FD94: @ 0x0809FD94
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x54]
	ldr r2, _0809FE24 @ =gUnk_080C9160
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	cmp r0, #0
	bge _0809FDB4
	ldr r1, _0809FE28 @ =0x0000FFFF
	adds r0, r0, r1
_0809FDB4:
	asrs r0, r0, #0x10
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r5, #0x2e]
	ldrb r0, [r5, #0xe]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	cmp r0, #0
	bge _0809FDD6
	ldr r3, _0809FE28 @ =0x0000FFFF
	adds r0, r0, r3
_0809FDD6:
	asrs r1, r0, #0x10
	ldrh r0, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	ldrb r3, [r5, #0xe]
	adds r0, r3, #0
	adds r0, #8
	strb r0, [r5, #0xe]
	ldrh r0, [r6, #0x36]
	strh r0, [r5, #0x36]
	ldrb r2, [r6, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r6, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	subs r3, #0x39
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #0x7e
	bhi _0809FE2C
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _0809FE3A
	.align 2, 0
_0809FE24: .4byte gUnk_080C9160
_0809FE28: .4byte 0x0000FFFF
_0809FE2C:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
_0809FE3A:
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x63
	cmp r0, #0
	bne _0809FE6C
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x16
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0809FE6C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08081404
_0809FE6C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0809FE8A
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
_0809FE8A:
	adds r1, r5, #0
	adds r1, #0x87
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _0809FE98
	movs r0, #0xa
	strb r0, [r1]
_0809FE98:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809FE9C
sub_0809FE9C: @ 0x0809FE9C
	push {lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #0x48
	cmp r0, #0x90
	bhi _0809FEC8
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #0x30
	cmp r0, #0x60
	bhi _0809FEC8
	movs r0, #1
	b _0809FECA
_0809FEC8:
	movs r0, #0
_0809FECA:
	pop {pc}

	thumb_func_start sub_0809FECC
sub_0809FECC: @ 0x0809FECC
	ldr r1, _0809FEDC @ =gLinkEntity
	str r1, [r0, #0x54]
	movs r2, #0
	movs r1, #5
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0
_0809FEDC: .4byte gLinkEntity
