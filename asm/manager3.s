	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080576C0
sub_080576C0: @ 0x080576C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080576EC
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x38]
	ldr r2, _080576E8 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	subs r0, #0x20
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x3a]
	ldrh r1, [r2, #8]
	adds r0, r0, r1
	subs r0, #0x20
	str r0, [r4, #0x24]
	b _080577AA
	.align 2, 0
_080576E8: .4byte gRoomControls
_080576EC:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	movs r2, #0x40
	movs r3, #0x40
	bl sub_0806FBFC
	cmp r0, #0
	beq _080577A8
	ldr r5, _08057738 @ =gArea
	ldr r0, [r4, #0x20]
	adds r0, #0x20
	strh r0, [r5, #0x12]
	ldr r1, [r4, #0x24]
	ldr r2, _0805773C @ =gUnk_08107C6C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x20
	adds r1, r1, r0
	strh r1, [r5, #0x14]
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r5, #0x16]
	ldrb r0, [r4, #0xa]
	strb r0, [r5, #0x17]
	movs r0, #0x14
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08057740
	movs r0, #1
	strb r0, [r5, #0x18]
	movs r0, #5
	strb r0, [r5, #0x17]
	b _080577AA
	.align 2, 0
_08057738: .4byte gArea
_0805773C: .4byte gUnk_08107C6C
_08057740:
	ldr r2, _08057758 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805775C
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0805775C
	movs r0, #2
	strb r0, [r5, #0x18]
	b _0805776A
	.align 2, 0
_08057758: .4byte gLinkState
_0805775C:
	bl sub_08057810
	cmp r0, #0
	beq _0805776A
	ldr r1, _080577A0 @ =gArea
	movs r0, #3
	strb r0, [r1, #0x18]
_0805776A:
	ldrh r0, [r4, #0x38]
	ldrh r1, [r4, #0x3a]
	ldrb r2, [r4, #0xe]
	bl sub_080002C0
	cmp r0, #0x3d
	bne _080577AA
	ldrh r0, [r4, #0x38]
	ldr r2, _080577A4 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	ldrh r1, [r4, #0x3a]
	ldrh r2, [r2, #8]
	adds r1, r1, r2
	ldrb r2, [r4, #0xe]
	bl sub_080577AC
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080577AA
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0xa9
	lsls r0, r0, #1
	bl PlaySFX
	b _080577AA
	.align 2, 0
_080577A0: .4byte gArea
_080577A4: .4byte gRoomControls
_080577A8:
	strb r0, [r4, #0xf]
_080577AA:
	pop {r4, r5, pc}

	thumb_func_start sub_080577AC
sub_080577AC: @ 0x080577AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	bl Random
	adds r5, r0, #0
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	bne _08057808
	movs r0, #0xf
	movs r1, #0x26
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08057808
	lsrs r3, r5, #8
	movs r0, #0xf
	ands r3, r0
	lsrs r2, r5, #0x10
	ands r2, r0
	cmp r2, #4
	ble _080577E6
	rsbs r2, r2, #0
_080577E6:
	lsrs r0, r5, #0x18
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080577F2
	rsbs r3, r3, #0
_080577F2:
	adds r0, r6, r3
	strh r0, [r4, #0x2e]
	adds r0, r7, r2
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	mov r1, r8
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_08057808:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08057810
sub_08057810: @ 0x08057810
	push {lr}
	ldr r2, _08057848 @ =gLinkState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08057850
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057850
	ldr r0, _0805784C @ =gArea
	ldrb r0, [r0, #0x17]
	cmp r0, #6
	beq _08057850
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _08057850
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #1
	bgt _08057850
	cmp r0, #0
	blt _08057850
	movs r0, #1
	b _08057852
	.align 2, 0
_08057848: .4byte gLinkState
_0805784C: .4byte gArea
_08057850:
	movs r0, #0
_08057852:
	pop {pc}
