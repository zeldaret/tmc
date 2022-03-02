	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _0807AA5C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807A8F0
	b _0807A9F6
_0807A8F0:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _0807AA60 @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	adds r2, #1
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807AA64 @ =gPlayerEntity
	adds r1, #0x38
	mov sb, r1
	ldrb r1, [r1]
	bl sub_080002EC
	adds r4, r0, #0
	movs r0, #0x20
	mov r8, r0
	ands r4, r0
	cmp r4, #0
	beq _0807A94E
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	adds r2, #1
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A94E:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	subs r1, #2
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r2, sb
	ldrb r1, [r2]
	bl sub_080002EC
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _0807A9A2
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	subs r0, #2
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A9A2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #6]
	adds r1, #2
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	mov r2, sb
	ldrb r1, [r2]
	bl sub_080002EC
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	cmp r4, #0
	beq _0807A9F6
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldrh r0, [r7, #6]
	adds r0, #2
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807A9F6:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _0807AA60 @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0807AA64 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002EC
	adds r4, r0, #0
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0807AA4C
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_0807AAF8
_0807AA4C:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0807AA68
	adds r0, r5, #0
	bl sub_0807AABC
	b _0807AA76
	.align 2, 0
_0807AA5C: .4byte gPlayerState
_0807AA60: .4byte gRoomControls
_0807AA64: .4byte gPlayerEntity
_0807AA68:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0807AA76
	adds r0, r5, #0
	bl sub_0807AA80
_0807AA76:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
