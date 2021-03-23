	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile14
Projectile14: @ 0x080AA400
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AA418 @ =gUnk_08129FB8
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AA418: .4byte gUnk_08129FB8

	thumb_func_start sub_080AA41C
sub_080AA41C: @ 0x080AA41C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080AA44C
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r2, #0x1e]
	strb r0, [r2, #0x1c]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080AA446
	adds r0, r2, #0
	bl sub_080AA494
	b _080AA44C
_080AA446:
	adds r0, r2, #0
	bl sub_080AA534
_080AA44C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AA450
sub_080AA450: @ 0x080AA450
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _080AA462
	adds r0, r1, #0
	bl sub_080AA464
_080AA462:
	pop {pc}

	thumb_func_start sub_080AA464
sub_080AA464: @ 0x080AA464
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AA474
	adds r0, r4, #0
	bl sub_080AA544
_080AA474:
	movs r0, #0x21
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080AA48A
	adds r0, r4, #0
	bl CopyPosition
_080AA48A:
	adds r0, r4, #0
	bl DeleteEntity
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AA494
sub_080AA494: @ 0x080AA494
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	bl GetTileTypeByEntity
	adds r2, r0, #0
	ldr r1, _080AA4A4 @ =gUnk_08129FD0
	b _080AA4AA
	.align 2, 0
_080AA4A4: .4byte gUnk_08129FD0
_080AA4A8:
	adds r4, #1
_080AA4AA:
	ldrh r0, [r1]
	cmp r0, #0
	beq _080AA4B6
	adds r1, #2
	cmp r0, r2
	bne _080AA4A8
_080AA4B6:
	ldrh r0, [r5, #0x24]
	bl CheckFlags
	cmp r0, #0
	beq _080AA4EE
	cmp r4, #4
	bne _080AA4EA
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080AA52C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_080AA654
_080AA4EA:
	bl DeleteThisEntity
_080AA4EE:
	strb r4, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AA530 @ =0x00004068
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080AA52C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA52C: .4byte gRoomControls
_080AA530: .4byte 0x00004068

	thumb_func_start sub_080AA534
sub_080AA534: @ 0x080AA534
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #3
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}

	thumb_func_start sub_080AA544
sub_080AA544: @ 0x080AA544
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #8
	bhi _080AA618
	ldr r0, _080AA5E8 @ =gUnk_08129FF8
	mov sb, r0
	movs r1, #0x2e
	ldrsh r2, [r6, r1]
	ldr r1, _080AA5EC @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	ldrb r0, [r6, #0xb]
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r2, r0
	movs r4, #0
	movs r5, #0
	movs r0, #0x38
	adds r0, r0, r6
	mov r8, r0
_080AA58E:
	mov r1, sb
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2]
	bl sub_080002C8
	cmp r0, #0x3e
	bne _080AA5AC
	adds r5, #1
_080AA5AC:
	adds r4, #1
	cmp r4, #8
	bls _080AA58E
	cmp r5, #8
	bne _080AA5F4
	movs r4, #0
	ldr r5, _080AA5F0 @ =gUnk_08129FD0
_080AA5BA:
	ldrh r0, [r5]
	mov r3, sb
	adds r1, r3, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, r7, r1
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	adds r5, #2
	adds r4, #1
	cmp r4, #8
	bls _080AA5BA
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080AA654
	ldrh r0, [r6, #0x24]
	bl SetFlag
	b _080AA648
	.align 2, 0
_080AA5E8: .4byte gUnk_08129FF8
_080AA5EC: .4byte gRoomControls
_080AA5F0: .4byte gUnk_08129FD0
_080AA5F4:
	ldr r2, _080AA614 @ =gUnk_08129FE4
	ldrb r1, [r6, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	add r1, sb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, r7, r1
	mov r4, r8
	ldrb r2, [r4]
	bl sub_0807B7D8
	b _080AA648
	.align 2, 0
_080AA614: .4byte gUnk_08129FE4
_080AA618:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _080AA650 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r6, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	ldrh r0, [r6, #0x24]
	bl SetFlag
_080AA648:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AA650: .4byte gRoomControls

	thumb_func_start sub_080AA654
sub_080AA654: @ 0x080AA654
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #0x68
	ldr r0, _080AA688 @ =gUnk_0812A004
	adds r1, r4, #0
	movs r2, #0x10
	bl MemCopy
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #8]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl LoadRoomEntity
	pop {r4, r5, pc}
	.align 2, 0
_080AA688: .4byte gUnk_0812A004
