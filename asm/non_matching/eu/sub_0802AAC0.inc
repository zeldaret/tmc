.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AAB4
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802AD1C
_0802AAB4:
	adds r6, r4, #0
	adds r6, #0x81
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802AB38
	ldr r5, [r4, #0x54]
	cmp r5, #0
	bne _0802AAC8
	strb r5, [r6]
	b _0802AB56
_0802AAC8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0802AAD4
	strb r0, [r6]
	str r0, [r4, #0x54]
	b _0802AB56
_0802AAD4:
	ldrb r0, [r5, #0xe]
	mov r8, r0
	cmp r0, #0
	bne _0802AB56
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0802AB24 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #1
	bl sub_080002E0
	cmp r0, #0
	bne _0802AB2C
	ldr r1, _0802AB28 @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #0x10
	bl EntityInRectRadius
	cmp r0, #0
	beq _0802AB56
	ldrb r0, [r5, #0xf]
	cmp r0, #0x50
	bhi _0802AB56
	mov r0, r8
	strb r0, [r6]
	b _0802AB56
	.align 2, 0
_0802AB24: .4byte gRoomControls
_0802AB28: .4byte gPlayerEntity
_0802AB2C:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x13
	bhi _0802AB56
	mov r1, r8
	strb r1, [r6]
	b _0802AB56
_0802AB38:
	movs r1, #4
	strb r1, [r4, #0xc]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0802AB56:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
.syntax divided
