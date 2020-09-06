
    .syntax unified

    .text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r0, _08025A20 @ =gUnk_080CC090
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1]
	mov r0, sl
	adds r0, #0x38
	ldrb r0, [r0]
	mov sb, r0
	ldr r3, _08025A24 @ =gRoomControls
	mov r1, sl
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	adds r0, #8
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r2, r1, #0
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r1, sl
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	adds r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08025996:
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, [sp]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldr r1, [sp, #4]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r0, r4, #0x10
	str r0, [sp, #8]
	asrs r4, r4, #0x10
	lsrs r1, r5, #0x10
	str r1, [sp, #0xc]
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r0, r0, r4
	mov r8, r0
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	subs r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sb
	str r3, [sp, #0x10]
	bl sub_080002D4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	bl sub_080002D4
	ldr r3, [sp, #0x10]
	orrs r6, r3
	orrs r4, r6
	orrs r4, r0
	lsls r4, r4, #0x18
	cmp r4, #0
	beq _08025A28
	adds r7, #2
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x7f
	bne _08025996
	movs r0, #0
	b _08025A44
	.align 2, 0
_08025A20: .4byte gUnk_080CC090
_08025A24: .4byte gRoomControls
_08025A28:
	ldr r2, _08025A50 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r2, #8]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	mov r1, sl
	adds r1, #0x7e
	strh r0, [r1]
	movs r0, #1
_08025A44:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08025A50: .4byte gRoomControls

    .syntax divided
