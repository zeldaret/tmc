	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start PushableGrave
PushableGrave: @ 0x08097588
	push {lr}
	ldr r2, _0809759C @ =gUnk_081232AC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809759C: .4byte gUnk_081232AC

	thumb_func_start sub_080975A0
sub_080975A0: @ 0x080975A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08097690 @ =gRoomControls
	mov r8, r2
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r6, #0x3f
	ands r5, r6
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r5, #0
	subs r0, #0x41
	adds r7, r4, #0
	adds r7, #0x38
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r5, #0
	subs r0, #0x40
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x6c
	strh r0, [r1]
	adds r0, r5, #0
	subs r0, #0x3f
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x6e
	strh r0, [r1]
	subs r0, r5, #1
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
	ldrb r1, [r7]
	adds r0, r5, #0
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r5, #1
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r7]
	bl GetTileIndex
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0809798C
	cmp r0, #0
	beq _080976A2
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08097694
	ldrh r0, [r4, #0x32]
	subs r0, #0x16
	b _08097698
	.align 2, 0
_08097690: .4byte gRoomControls
_08097694:
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
_08097698:
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080977F4
	b _08097722
_080976A2:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	mov r2, r8
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	ands r5, r6
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r5, [r0]
	ldr r1, _080976FC @ =gUnk_081232DE
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08097704
	ldr r0, _08097700 @ =gUnk_080FD578
	str r0, [r4, #0x48]
	subs r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl SetTile
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl SetTile
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	b _08097722
	.align 2, 0
_080976FC: .4byte gUnk_081232DE
_08097700: .4byte gUnk_080FD578
_08097704:
	ldr r0, _08097728 @ =gUnk_080FD570
	str r0, [r4, #0x48]
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl SetTile
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _08097722
	ldr r0, _0809772C @ =gUnk_081232C0
	ldrb r2, [r7]
	adds r1, r5, #0
	bl sub_0801AF18
_08097722:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08097728: .4byte gUnk_080FD570
_0809772C: .4byte gUnk_081232C0

	thumb_func_start sub_08097730
sub_08097730: @ 0x08097730
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809785C
	cmp r0, #0
	beq _08097744
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl RequestPriorityDuration
_08097744:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08097748
sub_08097748: @ 0x08097748
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	bne _08097774
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809779A
	movs r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x78
	strb r0, [r2, #0xf]
	ldr r1, _08097770 @ =gRoomControls
	str r2, [r1, #0x30]
	movs r0, #2
	strb r0, [r1, #0xe]
	b _0809779A
	.align 2, 0
_08097770: .4byte gRoomControls
_08097774:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809779A
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x60
	strb r0, [r2, #0xe]
	movs r0, #0x14
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	movs r1, #0x60
	bl RequestPriorityDuration
	ldr r0, _0809779C @ =0x0000010F
	bl SoundReq
_0809779A:
	pop {pc}
	.align 2, 0
_0809779C: .4byte 0x0000010F

	thumb_func_start sub_080977A0
sub_080977A0: @ 0x080977A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080977BC
	subs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl LinearMoveUpdate
	adds r0, r4, #0
	bl sub_0800445C
	b _080977E4
_080977BC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080977C8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080977E4
_080977C8:
	movs r0, #0x72
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_080977F4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080977E4
	ldr r0, _080977E8 @ =gRoomControls
	ldr r1, _080977EC @ =gPlayerEntity
	str r1, [r0, #0x30]
	movs r1, #4
	strb r1, [r0, #0xe]
_080977E4:
	pop {r4, pc}
	.align 2, 0
_080977E8: .4byte gRoomControls
_080977EC: .4byte gPlayerEntity

	thumb_func_start nullsub_528
nullsub_528: @ 0x080977F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080977F4
sub_080977F4: @ 0x080977F4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08097854 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r7, _08097858 @ =0x00004022
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r2, [r6]
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetTile
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08097844
	subs r1, r4, #1
	ldrb r2, [r6]
	adds r0, r7, #0
	bl SetTile
_08097844:
	adds r1, r5, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08097852
	bl SetFlag
_08097852:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08097854: .4byte gRoomControls
_08097858: .4byte 0x00004022

	thumb_func_start sub_0809785C
sub_0809785C: @ 0x0809785C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	beq _08097948
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0809786E
	b _08097986
_0809786E:
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	adds r4, r5, #0
	adds r4, #0x68
	adds r6, r5, #0
	adds r6, #0x38
	cmp r0, #0
	bne _08097892
	ldrh r0, [r4]
	ldrb r1, [r6]
	bl GetTileType
	ldr r1, _08097940 @ =0x0000403F
	cmp r0, r1
	bne _08097986
_08097892:
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x40
	strb r0, [r5, #0xe]
	strb r1, [r5, #0xf]
	strb r1, [r5, #0x15]
	strh r0, [r5, #0x24]
	ldrh r4, [r4]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	ldrb r2, [r6]
	adds r1, r4, #0
	bl sub_0807B9B8
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _08097934
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r1, r4, #0
	subs r1, #0x41
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r1, r4, #0
	subs r1, #0x40
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	adds r1, r4, #0
	subs r1, #0x3f
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	subs r1, r4, #1
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #1
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r6]
	bl sub_0807B9B8
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x41
	ldrb r2, [r6]
	bl sub_0807B9B8
_08097934:
	ldr r0, _08097944 @ =0x0000010F
	bl SoundReq
	movs r0, #1
	b _08097988
	.align 2, 0
_08097940: .4byte 0x0000403F
_08097944: .4byte 0x0000010F
_08097948:
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08097986
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	movs r0, #0xf0
	strb r0, [r5, #0xe]
	movs r0, #0x3c
	strb r0, [r5, #0xf]
	strb r4, [r5, #0x15]
	movs r0, #0x40
	strh r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x68
	ldrh r0, [r4]
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_0807BA8C
	ldrh r0, [r4]
	subs r0, #1
	ldrb r1, [r5]
	bl sub_0807BA8C
	movs r0, #1
	b _08097988
_08097986:
	movs r0, #0
_08097988:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809798C
sub_0809798C: @ 0x0809798C
	push {r4, lr}
	adds r1, r0, #0
	movs r4, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0809799E
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _080979AE
_0809799E:
	adds r0, r1, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080979AE
	movs r4, #1
_080979AE:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
