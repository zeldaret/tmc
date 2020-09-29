
	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _08029EE0 @ =gUnk_080CCDC8
	adds r1, r1, r0
	str r1, [sp]
	bl Random
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	subs r1, #1
	mov sl, r1
	bl Random
	adds r1, r0, #0
	movs r0, #0xf
	ands r0, r1
	movs r1, #3
	bl __modsi3
	mov sb, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08029EE4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	mov r8, r0
	movs r2, #0x3f
	ands r0, r2
	mov r8, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	movs r7, #0
_08029E72:
	ldr r0, [sp]
	add r0, sb
	ldrb r4, [r0]
	lsrs r0, r4, #3
	lsls r0, r0, #1
	ldr r1, _08029EE8 @ =gUnk_080B4488
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, r8
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r6, r5, #0
	adds r6, #0x74
	cmp r0, #0
	bne _08029EA6
	str r4, [sp, #4]
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	subs r0, r1, r0
	subs r1, r4, r1
	cmp r0, r1
	bne _08029EBA
_08029EA6:
	mov r0, sb
	add r0, sl
	adds r0, #3
	movs r1, #3
	bl __modsi3
	mov sb, r0
	adds r7, #1
	cmp r7, #2
	bls _08029E72
_08029EBA:
	cmp r7, #3
	bne _08029EC0
	ldr r4, [sp, #4]
_08029EC0:
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	cmp r0, r1
	beq _08029ECA
	strb r1, [r6]
_08029ECA:
	strb r4, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08029F0C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029EE0: .4byte gUnk_080CCDC8
_08029EE4: .4byte gRoomControls
_08029EE8: .4byte gUnk_080B4488

	.syntax divided
