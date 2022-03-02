	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r1, _080804F0 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r2, [r1, #6]
	subs r0, r0, r2
	str r0, [sp, #0x18]
	ldr r3, [r1, #0x30]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	subs r0, r0, r2
	str r0, [sp, #0x10]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0x3c
	str r0, [sp, #8]
_08080408:
	movs r7, #0
	ldr r1, [sp, #8]
	adds r1, #6
	str r1, [sp, #8]
	adds r2, r1, #0
	muls r2, r1, r2
	mov sl, r2
	lsls r4, r1, #1
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	str r0, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r0, r1
	mov sb, r1
	movs r2, #0
	str r2, [sp, #4]
	rsbs r4, r4, #0
	adds r4, #1
	mov r0, sb
	muls r0, r4, r0
	mov r4, sl
	lsls r5, r4, #1
	adds r4, r0, r5
	ldr r0, [sp, #8]
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r2, r0, #0
	cmp r7, r2
	bgt _08080506
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x20]
	mov r1, sl
	adds r0, r5, r1
	lsls r3, r0, #1
	str r6, [sp, #0x2c]
	ldr r0, [sp, #8]
	lsls r1, r0, #2
	rsbs r1, r1, #0
	adds r1, #4
	mov r8, r1
	rsbs r0, r0, #0
	adds r0, #8
	ldr r1, [sp, #0x10]
	adds r6, r0, r1
	ldr r0, [sp, #8]
	adds r5, r0, r1
	mov r0, r8
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
_0808047A:
	ldr r1, [sp, #0x1c]
	adds r1, #0xa8
	mov ip, r1
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	cmp ip, r0
	ble _080804A0
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _08080496
	movs r0, #1
	orrs r7, r0
_08080496:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804A0
	movs r0, #2
	orrs r7, r0
_080804A0:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	mov ip, r0
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080804C4
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _080804BA
	movs r0, #4
	orrs r7, r0
_080804BA:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804C4
	movs r0, #8
	orrs r7, r0
_080804C4:
	cmp r4, #0
	ble _080804F4
	mov r2, r8
	adds r0, r2, r3
	adds r4, r4, r0
	ldr r0, [sp, #0x2c]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x2c]
	lsls r0, r1, #2
	add r8, r0
	adds r6, #1
	subs r5, #1
	ldr r0, [sp, #0x2c]
	mov r1, sl
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080804F6
	.align 2, 0
_080804F0: .4byte gRoomControls
_080804F4:
	adds r4, r4, r3
_080804F6:
	mov r1, sl
	lsls r0, r1, #2
	adds r3, r3, r0
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r2
	ble _0808047A
_08080506:
	movs r1, #0
	str r1, [sp]
	ldr r2, [sp, #0xc]
	str r2, [sp, #4]
	mov r4, sb
	lsls r6, r4, #1
	lsls r0, r2, #1
	rsbs r0, r0, #0
	adds r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r6, r0
	mov r5, sl
	muls r5, r2, r5
	adds r0, r5, #0
	mov r1, sb
	bl __divsi3
	adds r2, r0, #0
	ldr r0, [sp]
	cmp r0, r2
	bgt _080805E4
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x24]
	mov r1, sb
	adds r0, r6, r1
	lsls r0, r0, #1
	mov r8, r0
	ldr r3, [sp, #0x10]
	adds r3, #8
	ldr r6, [sp, #0x10]
	str r5, [sp, #0x28]
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	rsbs r0, r0, #0
	adds r0, #4
	mov r5, sl
	muls r5, r0, r5
_08080556:
	ldr r0, [sp, #0x1c]
	adds r0, #0xa8
	mov ip, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	cmp ip, r1
	ble _0808057C
	ldr r1, [sp, #0x24]
	cmp r1, r6
	ble _08080572
	movs r0, #0x10
	orrs r7, r0
_08080572:
	ldr r0, [sp, #0x18]
	cmp r0, r3
	bge _0808057C
	movs r0, #0x20
	orrs r7, r0
_0808057C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	subs r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080805A2
	ldr r0, [sp, #0x24]
	cmp r0, r6
	ble _08080598
	movs r0, #0x40
	orrs r7, r0
_08080598:
	ldr r1, [sp, #0x18]
	cmp r1, r3
	bge _080805A2
	movs r0, #0x80
	orrs r7, r0
_080805A2:
	cmp r4, #0
	ble _080805CE
	mov r2, r8
	adds r0, r2, r5
	adds r4, r4, r0
	ldr r0, [sp, #0x28]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0x28]
	lsls r0, r1, #2
	adds r5, r5, r0
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, sb
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080805D0
_080805CE:
	add r4, r8
_080805D0:
	mov r1, sb
	lsls r0, r1, #2
	add r8, r0
	subs r3, #1
	adds r6, #1
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, r2
	ble _08080556
_080805E4:
	cmp r7, #0
	beq _080805EA
	b _08080408
_080805EA:
	ldr r0, [sp, #8]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.syntax divided
