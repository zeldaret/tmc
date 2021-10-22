	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _080A78E8 @ =gPlayerState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A78FC
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	strb r0, [r4, #0x1e]
	ldr r0, _080A78EC @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A78F0
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #0xb1
	b _080A78F2
	.align 2, 0
_080A78E8: .4byte gPlayerState
_080A78EC: .4byte gScreenTransition
_080A78F0:
	ldrb r1, [r4, #0x1e]
_080A78F2:
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A7912
_080A78FC:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _080A7912
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A7912:
	ldr r2, _080A792C @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080A7930
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080A7958
	.align 2, 0
_080A792C: .4byte gPlayerState
_080A7930:
	ldrb r1, [r6, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7946
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	movs r0, #1
	eors r2, r0
	b _080A794C
_080A7946:
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
_080A794C:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_080A7958:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov r8, r2
	adds r5, r4, #0
	adds r5, #0x3d
	cmp r0, #0
	beq _080A7A1C
	adds r3, r6, #0
	adds r3, #0x3d
	ldrb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7980
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A79AE
_080A7980:
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r0, [r2]
	movs r1, #0
	strb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r0, [r5]
	adds r3, r6, #0
	adds r3, #0x3e
	strb r0, [r3]
	movs r3, #0x42
	adds r3, r3, r4
	mov ip, r3
	ldrb r0, [r3]
	adds r3, r6, #0
	adds r3, #0x42
	strb r0, [r3]
	mov r0, ip
	strb r1, [r0]
	strb r1, [r5]
	strb r1, [r2]
	adds r5, r2, #0
_080A79AE:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A79C4
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A79C4:
	ldrb r0, [r7, #0x1b]
	cmp r0, #0
	beq _080A7A1C
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x43
	beq _080A79E6
	cmp r1, #0x43
	bgt _080A79E0
	cmp r1, #0xd
	beq _080A79E6
	b _080A7A08
_080A79E0:
	cmp r1, #0x44
	bne _080A7A08
	b _080A7A1C
_080A79E6:
	ldrb r1, [r7, #0x1b]
	movs r0, #8
	orrs r0, r1
	strb r0, [r7, #0x1b]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r7, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A7A1C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A7A08:
	ldrb r0, [r7, #0x1b]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _080A7A1C
	strb r1, [r7, #0x1b]
	strb r1, [r7, #4]
	str r1, [r7, #0x2c]
	bl DeleteThisEntity
_080A7A1C:
	adds r1, r5, #0
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _080A7A36
	cmp r2, #0
	ble _080A7A32
	subs r0, #1
	strb r0, [r1]
	b _080A7A36
_080A7A32:
	adds r0, #1
	strb r0, [r5]
_080A7A36:
	adds r0, r4, #0
	bl sub_080A7A54
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7A4C
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A7A4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
