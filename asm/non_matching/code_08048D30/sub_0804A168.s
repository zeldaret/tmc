    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0804A248
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r0, #4
	movs r0, #0xf
	mov sl, r0
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	movs r7, #5
	cmp r0, #7
	bhi _0804A19E
	movs r7, #0xa
_0804A19E:
	ldr r3, _0804A240 @ =gRoomControls
	mov r8, r3
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	mov ip, r3
	mov r2, ip
	subs r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	mov r3, ip
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A244 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	bne _0804A1EC
	b _0804A308
_0804A1EC:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r2, r0, #4
	mov r3, sl
	eors r7, r3
	mov r0, r8
	ldrh r1, [r0, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	mov r4, r8
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	subs r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A244 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r0, #0x10
	b _0804A30A
	.align 2, 0
_0804A240: .4byte gRoomControls
_0804A244: .4byte 0x00002004
_0804A248:
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r0, #4
	adds r0, r2, #0
	movs r1, #0xf
	ands r0, r1
	movs r7, #5
	cmp r0, #7
	bhi _0804A25C
	movs r7, #0xa
_0804A25C:
	ldr r3, _0804A300 @ =gRoomControls
	mov r8, r3
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	mov sl, r3
	mov r2, sl
	adds r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	mov r3, sl
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A304 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	rsbs r2, r2, #0
	mov sl, r2
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	adds r2, r0, #4
	movs r0, #0xf
	eors r7, r0
	mov r3, r8
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	adds r2, r3, #0
	adds r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r4, sb
	movs r2, #0x32
	ldrsh r4, [r4, r2]
	subs r2, r4, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r3, _0804A304 @ =0x00002004
	adds r0, r0, r3
	adds r0, r5, r0
	adds r1, r1, r3
	adds r1, r5, r1
	mov r2, sl
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r0, #0
	b _0804A30A
	.align 2, 0
_0804A300: .4byte gRoomControls
_0804A304: .4byte 0x00002004
_0804A308:
	movs r0, #0xff
_0804A30A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided
