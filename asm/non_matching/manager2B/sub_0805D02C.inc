	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldrh r0, [r6, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D046
	bl DeleteThisEntity
_0805D046:
	ldr r0, _0805D0BC @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _0805D0B0
	ldrb r0, [r6, #0xa]
	bl GetCurrentRoomProperty
	adds r5, r0, #0
	movs r7, #0
	movs r0, #0x36
	adds r0, r0, r6
	mov sl, r0
	ldr r1, _0805D0C0 @ =gRoomControls
	mov r8, r1
	movs r0, #0x20
	adds r0, r0, r6
	mov sb, r0
_0805D068:
	ldrh r1, [r5, #4]
	movs r0, #0xa0
	adds r2, r7, #0
	bl CreateObject
	adds r4, r0, #0
	mov r1, r8
	ldrh r0, [r1, #6]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	mov r1, r8
	ldrh r0, [r1, #8]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	str r6, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A30
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	adds r7, #1
	adds r5, #6
	cmp r7, #3
	bls _0805D068
	movs r0, #0
	movs r1, #1
	strb r1, [r6, #0xc]
	movs r1, #0x3c
	strb r1, [r6, #0xf]
	mov r1, sl
	strb r0, [r1]
_0805D0B0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D0BC: .4byte gEntCount
_0805D0C0: .4byte gRoomControls
	.syntax divided
