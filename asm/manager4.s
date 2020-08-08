	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057854
sub_08057854: @ 0x08057854
	push {lr}
	ldr r2, _08057868 @ =gUnk_08107C70
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08057868: .4byte gUnk_08107C70

	thumb_func_start sub_0805786C
sub_0805786C: @ 0x0805786C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_080805F8
	ldr r6, _080578D4 @ =gUnk_03004030
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _08057914
	ldr r0, [r6]
	cmp r0, #0
	bne _080578C0
	movs r0, #0xff
	strb r0, [r6, #0xa]
	ldr r0, _080578D8 @ =gRoomControls
	ldrb r5, [r0, #5]
	ldr r7, _080578DC @ =gUnk_08107DC0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	beq _080578C0
	ldrb r5, [r4, #5]
	ldrb r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	beq _080578C0
	str r4, [r6]
_080578C0:
	ldr r0, _080578D8 @ =gRoomControls
	ldrb r5, [r0, #5]
	ldr r1, _080578DC @ =gUnk_08107DC0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0x81
	lsls r6, r6, #7
	b _08057906
	.align 2, 0
_080578D4: .4byte gUnk_03004030
_080578D8: .4byte gRoomControls
_080578DC: .4byte gUnk_08107DC0
_080578E0:
	ldrh r1, [r4]
	adds r1, #0x3f
	adds r0, r6, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r4]
	adds r1, #0x40
	adds r0, r6, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r4]
	adds r1, #0x41
	adds r0, r6, #0
	movs r2, #1
	bl SetTile
	adds r4, #8
_08057906:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	bne _080578E0
_08057914:
	movs r0, #1
	mov r1, r8
	strb r0, [r1, #0xc]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08057920
sub_08057920: @ 0x08057920
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08057934 @ =gRoomControls
	ldrb r5, [r0, #5]
	ldr r1, _08057938 @ =gUnk_08107DC0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	b _0805793E
	.align 2, 0
_08057934: .4byte gRoomControls
_08057938: .4byte gUnk_08107DC0
_0805793C:
	adds r4, #8
_0805793E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08057AA8
	adds r4, r0, #0
	cmp r4, #0
	beq _08057958
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805795C
	cmp r0, #0
	beq _0805793C
_08057958:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805795C
sub_0805795C: @ 0x0805795C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080579BC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080579C8
	ldr r1, _080579C0 @ =gPlayerEntity
	ldr r3, _080579C4 @ =gRoomControls
	ldrh r2, [r1, #0x2e]
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r3, [r6]
	movs r1, #0x3f
	ands r1, r3
	lsls r1, r1, #4
	adds r1, #8
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r3
	lsls r0, r0, #0xe
	movs r3, #0xc0
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	subs r2, r2, r1
	adds r0, r2, #0
	adds r0, #0x18
	cmp r0, #0x30
	bhi _08057A14
	subs r0, r4, r3
	adds r0, #8
	cmp r0, #0x10
	bhi _08057A14
	cmp r4, r3
	bhs _08057A00
	adds r0, r2, #0
	adds r0, #0xc
	cmp r0, #0x18
	bls _08057A14
	b _08057A00
	.align 2, 0
_080579BC: .4byte gUnk_03004030
_080579C0: .4byte gPlayerEntity
_080579C4: .4byte gRoomControls
_080579C8:
	ldr r3, _08057A0C @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _08057A10 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r1, #0x3f
	ands r4, r1
	movs r0, #0x32
	ldrsh r5, [r3, r0]
	ldrh r2, [r2, #8]
	subs r0, r5, r2
	asrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	ldrh r1, [r6]
	cmp r4, r1
	bne _08057A14
	lsrs r0, r4, #6
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r0, #6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r5, r3
	bge _08057A14
_08057A00:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08057A18
	movs r0, #1
	b _08057A16
	.align 2, 0
_08057A0C: .4byte gPlayerEntity
_08057A10: .4byte gRoomControls
_08057A14:
	movs r0, #0
_08057A16:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08057A18
sub_08057A18: @ 0x08057A18
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	bl sub_0805E5A8
	ldr r6, _08057A94 @ =gUnk_03004030
	ldrb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldr r3, _08057A98 @ =gRoomControls
	ldrb r0, [r3, #4]
	strb r0, [r6, #9]
	ldr r1, _08057A9C @ =gScreenTransition
	ldrb r0, [r5, #4]
	strb r0, [r1, #0xc]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0xd]
	ldrb r0, [r5, #4]
	strb r0, [r3, #4]
	ldrb r0, [r5, #5]
	strb r0, [r3, #5]
	str r5, [r6]
	ldr r4, _08057AA0 @ =gPlayerEntity
	ldrh r1, [r4, #0x2e]
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	ldrh r2, [r5]
	movs r0, #0x3f
	ands r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r6, #4]
	ldrh r1, [r4, #0x32]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	ldrh r2, [r5]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r2
	lsrs r0, r0, #2
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrb r1, [r6, #8]
	cmp r1, #0
	bne _08057A86
	ldrb r0, [r5, #5]
	movs r2, #0x80
	orrs r0, r2
	ldrb r3, [r6, #0xb]
	cmp r0, r3
	beq _08057A80
	ldr r0, _08057AA4 @ =gUnk_02034480
	strh r1, [r0]
_08057A80:
	ldrb r0, [r5, #5]
	orrs r0, r2
	strb r0, [r6, #0xb]
_08057A86:
	ldrb r0, [r5, #3]
	bl sub_08080930
	adds r0, r7, #0
	bl sub_0805E900
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057A94: .4byte gUnk_03004030
_08057A98: .4byte gRoomControls
_08057A9C: .4byte gScreenTransition
_08057AA0: .4byte gPlayerEntity
_08057AA4: .4byte gUnk_02034480

	thumb_func_start sub_08057AA8
sub_08057AA8: @ 0x08057AA8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	ldr r3, _08057AC0 @ =0x0000FFFF
	cmp r0, r3
	beq _08057ACC
_08057AB4:
	ldrb r0, [r2, #2]
	cmp r0, r1
	bne _08057AC4
	adds r0, r2, #0
	b _08057ACE
	.align 2, 0
_08057AC0: .4byte 0x0000FFFF
_08057AC4:
	adds r2, #8
	ldrh r0, [r2]
	cmp r0, r3
	bne _08057AB4
_08057ACC:
	movs r0, #0
_08057ACE:
	pop {pc}
