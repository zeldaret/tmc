	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806BDAC
sub_0806BDAC: @ 0x0806BDAC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806BDE6
	cmp r0, #1
	bgt _0806BDC0
	cmp r0, #0
	beq _0806BDC6
	b _0806BE3A
_0806BDC0:
	cmp r0, #2
	beq _0806BE26
	b _0806BE3A
_0806BDC6:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806BE3A
_0806BDE6:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806BE1C
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806BE18 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _0806BE3A
	.align 2, 0
_0806BE18: .4byte gLinkEntity
_0806BE1C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806BE3A
_0806BE26:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806BE3A
	movs r0, #1
	strb r0, [r4, #0xc]
_0806BE3A:
	pop {r4, pc}

	thumb_func_start sub_0806BE3C
sub_0806BE3C: @ 0x0806BE3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806BE54
sub_0806BE54: @ 0x0806BE54
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806BE7A
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #2
	bl LoadAnimation
	b _0806BE80
_0806BE7A:
	adds r0, r2, #0
	bl sub_080042B8
_0806BE80:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BE84
sub_0806BE84: @ 0x0806BE84
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r5, #1
	movs r0, #0x69
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806BEA6
	movs r5, #0
	movs r0, #0x69
	bl SetLocalFlag
	movs r0, #1
	str r0, [r4, #0x14]
_0806BEA6:
	movs r0, #0x3c
	bl GetInventoryValue
	cmp r0, #1
	bls _0806BEB2
	movs r5, #2
_0806BEB2:
	ldr r0, _0806BEC4 @ =gUnk_08113344
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806BEC4: .4byte gUnk_08113344

	thumb_func_start sub_0806BEC8
sub_0806BEC8: @ 0x0806BEC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	str r4, [r5, #0x14]
	movs r0, #0x3c
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BEE2
	movs r4, #1
	str r4, [r5, #0x14]
	b _0806BEE8
_0806BEE2:
	cmp r0, #1
	bls _0806BEE8
	movs r4, #2
_0806BEE8:
	ldr r0, _0806BEF8 @ =gUnk_0811334A
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806BEF8: .4byte gUnk_0811334A

	thumb_func_start sub_0806BEFC
sub_0806BEFC: @ 0x0806BEFC
	push {lr}
	movs r0, #0xbf
	lsls r0, r0, #1
	ldr r1, _0806BF2C @ =0x0000058E
	movs r2, #1
	bl SetTileType
	ldr r0, _0806BF30 @ =0x0000017F
	ldr r1, _0806BF34 @ =0x0000058F
	movs r2, #1
	bl SetTileType
	movs r0, #0xc0
	lsls r0, r0, #1
	ldr r1, _0806BF38 @ =0x000005CE
	movs r2, #1
	bl SetTileType
	ldr r0, _0806BF3C @ =0x00000181
	ldr r1, _0806BF40 @ =0x000005CF
	movs r2, #1
	bl SetTileType
	pop {pc}
	.align 2, 0
_0806BF2C: .4byte 0x0000058E
_0806BF30: .4byte 0x0000017F
_0806BF34: .4byte 0x0000058F
_0806BF38: .4byte 0x000005CE
_0806BF3C: .4byte 0x00000181
_0806BF40: .4byte 0x000005CF

	thumb_func_start sub_0806BF44
sub_0806BF44: @ 0x0806BF44
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r3, _0806BF78 @ =gRoomControls
	movs r5, #0xa
	ldrsh r1, [r3, r5]
	subs r0, r0, r1
	adds r0, #0x10
	ldr r1, _0806BF7C @ =0x0000010F
	cmp r0, r1
	bhi _0806BF76
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	adds r0, #0x18
	cmp r0, #0xcf
	bhi _0806BF76
	movs r0, #1
	str r0, [r4, #0x14]
_0806BF76:
	pop {r4, r5, pc}
	.align 2, 0
_0806BF78: .4byte gRoomControls
_0806BF7C: .4byte 0x0000010F
