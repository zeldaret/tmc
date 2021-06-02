	.syntax unified
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
	.syntax divided
