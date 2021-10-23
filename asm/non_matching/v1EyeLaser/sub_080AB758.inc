	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #6
	movs r7, #0
	movs r4, #0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	ldr r1, _080AB818 @ =gRoomControls
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r1
	cmp r2, r0
	bhi _080AB7B4
	movs r3, #7
_080AB77E:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #7
	bne _080AB798
	adds r0, r5, #0
	movs r1, #4
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x3e
	adds r7, #0x3e
	ldr r3, [sp]
_080AB798:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB77E
_080AB7B4:
	movs r4, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r2, r0, r7
	mov r1, r8
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _080AB802
	movs r3, #3
_080AB7CC:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #3
	bne _080AB7E6
	adds r0, r5, #0
	movs r1, #3
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x1e
	adds r7, #0x1e
	ldr r3, [sp]
_080AB7E6:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB7CC
_080AB802:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080AB81C
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #0xe
	b _080AB830
	.align 2, 0
_080AB818: .4byte gRoomControls
_080AB81C:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080AB830
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #6
_080AB830:
	adds r0, r5, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_080AB844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
