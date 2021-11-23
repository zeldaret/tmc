	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ItemForSale
ItemForSale: @ 0x08081814
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08081850 @ =gUnk_0811EE28
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _08081838
	adds r0, r4, #0
	bl sub_08080CB4
_08081838:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bgt _0808184E
	cmp r0, #1
	blt _0808184E
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0808184E
	adds r0, r4, #0
	bl sub_0800445C
_0808184E:
	pop {r4, pc}
	.align 2, 0
_08081850: .4byte gUnk_0811EE28

	thumb_func_start sub_08081854
sub_08081854: @ 0x08081854
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r3, [r4, #0x16]
.ifdef EU
	adds r0, r4, #0x0
	movs r1, #0x6
	bl sub_0805E3A0
.endif
	str r4, [r4, #0x54]
	adds r0, r4, #0
	bl sub_08081A5C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808188E
	cmp r0, #1
	beq _08081898
	b _0808189C
_0808188E:
	ldr r0, _08081894 @ =gUnk_080FD328
	b _0808189A
	.align 2, 0
_08081894: .4byte gUnk_080FD328
_08081898:
	ldr r0, _080818A0 @ =gHitbox_5
_0808189A:
	str r0, [r4, #0x48]
_0808189C:
	pop {r4, pc}
	.align 2, 0
_080818A0: .4byte gHitbox_5

	thumb_func_start sub_080818A4
sub_080818A4: @ 0x080818A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xd]
	cmp r2, #0
	beq _080818C0
	movs r1, #2
	strb r1, [r4, #0xc]
	ldr r0, _080818BC @ =gUnk_0200AF00
	adds r0, #0x2f
	strb r1, [r0]
	b _08081920
	.align 2, 0
_080818BC: .4byte gUnk_0200AF00
_080818C0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x36
	bne _080818F0
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08081920
	strb r2, [r1]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _080818E8 @ =gRoomVars
	movs r0, #1
	str r0, [r1, #0x68]
	ldr r1, _080818EC @ =gPlayerState
	movs r0, #7
	strb r0, [r1, #0xc]
	b _08081920
	.align 2, 0
_080818E8: .4byte gRoomVars
_080818EC: .4byte gPlayerState
_080818F0:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08081920
	strb r2, [r1]
	movs r0, #1
	strb r0, [r4, #0xd]
	bl sub_08078B48
	bl ResetPlayer
	ldr r1, _08081924 @ =gPlayerState
	movs r0, #4
	strb r0, [r1, #5]
	ldr r0, _08081928 @ =gPlayerEntity
	str r4, [r0, #0x74]
	ldr r0, _0808192C @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #2
	strb r1, [r0]
	bl MessageClose
_08081920:
	pop {r4, pc}
	.align 2, 0
_08081924: .4byte gPlayerState
_08081928: .4byte gPlayerEntity
_0808192C: .4byte gUnk_0200AF00

	thumb_func_start sub_08081930
sub_08081930: @ 0x08081930
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08081968 @ =gUnk_0200AF00
	adds r6, r0, #0
	adds r6, #0x2f
	movs r0, #2
	strb r0, [r6]
	ldr r3, _0808196C @ =gPlayerEntity
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	subs r0, #6
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r5, _08081970 @ =gPlayerState
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0808195E
	ldr r0, [r3, #0x74]
	cmp r4, r0
	beq _08081974
_0808195E:
	adds r0, r4, #0
	bl sub_080819B4
	b _080819AC
	.align 2, 0
_08081968: .4byte gUnk_0200AF00
_0808196C: .4byte gPlayerEntity
_08081970: .4byte gPlayerState
_08081974:
	bl sub_080784E4
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08081998
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _08081998
	movs r0, #7
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _080819AC
_08081998:
	ldr r0, _080819B0 @ =gPlayerState
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x98
	ands r0, r1
	cmp r0, #0
	beq _080819AC
	adds r0, r4, #0
	bl sub_080819B4
_080819AC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080819B0: .4byte gPlayerState

	thumb_func_start sub_080819B4
sub_080819B4: @ 0x080819B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08081A48 @ =gRoomVars
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080819D4
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _080819D0
	adds r0, #0x20
	ldrb r1, [r5, #0xf]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
_080819D0:
	bl DeleteThisEntity
_080819D4:
	ldr r0, _08081A4C @ =gPlayerState
	movs r2, #0
	strb r2, [r0, #5]
	ldr r4, _08081A50 @ =gPlayerEntity
	str r2, [r4, #0x74]
	ldr r1, _08081A54 @ =gUnk_0200AF00
	ldr r3, _08081A48 @ =gRoomVars
	strb r2, [r3, #6]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	adds r1, #0x2f
	strb r2, [r1]
	strb r2, [r3, #7]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r3, _08081A58 @ =gRoomControls
	ldrh r0, [r3, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x2e]
	movs r6, #0x82
	ldrh r0, [r3, #8]
	ldrh r3, [r6, r5]
	adds r0, r0, r3
	strh r0, [r5, #0x32]
	str r2, [r5, #0x34]
	movs r3, #1
	strb r3, [r5, #0xc]
	strb r1, [r5, #0xd]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r5, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r5, #0
	bl sub_08081A5C
	pop {r4, r5, r6, pc}
	.align 2, 0
_08081A48: .4byte gRoomVars
_08081A4C: .4byte gPlayerState
_08081A50: .4byte gPlayerEntity
_08081A54: .4byte gUnk_0200AF00
_08081A58: .4byte gRoomControls

	thumb_func_start sub_08081A5C
sub_08081A5C: @ 0x08081A5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080787D8
	adds r2, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08081A7A
	ldr r0, _08081A7C @ =gUnk_03003DF0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xa]
_08081A7A:
	pop {r4, pc}
	.align 2, 0
_08081A7C: .4byte gUnk_03003DF0

	thumb_func_start sub_08081A80
sub_08081A80: @ 0x08081A80
	push {lr}
	adds r2, r0, #0
	ldr r0, _08081A98 @ =gRoomVars
	ldr r0, [r0, #0x68]
	cmp r0, #0
	bne _08081A9C
	bl sub_08081AB0
	bl DeleteThisEntity
	b _08081AAC
	.align 2, 0
_08081A98: .4byte gRoomVars
_08081A9C:
	cmp r0, #2
	bne _08081AAC
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	bl sub_08081AB0
_08081AAC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08081AB0
sub_08081AB0: @ 0x08081AB0
	push {lr}
	ldr r1, _08081AC4 @ =gRoomVars
	movs r0, #0
	str r0, [r1, #0x68]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	bl sub_08078A90
	pop {pc}
	.align 2, 0
_08081AC4: .4byte gRoomVars
