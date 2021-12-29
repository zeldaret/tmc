	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805ACF0
	b _0805AD32
_0805ACD0:
	ldrb r0, [r4, #0xb]
	subs r0, r5, r0
	lsls r0, r0, #4
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	ldr r2, _0805ACEC @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrh r1, [r3, #6]
	orrs r0, r1
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	b _0805AD34
	.align 2, 0
_0805ACEC: .4byte gRoomControls
_0805ACF0:
	movs r0, #0x7f
	ands r0, r1
	subs r5, r0, #1
	ldr r6, _0805AD3C @ =gEntityLists + 48
	ldr r4, [r6, #4]
	cmp r4, r6
	beq _0805AD32
	ldr r0, _0805AD40 @ =0x00001609
	mov r8, r0
	ldr r0, _0805AD44 @ =0x0000FFFF
	adds r7, r0, #0
_0805AD06:
	ldrh r0, [r4, #8]
	ands r0, r7
	cmp r0, r8
	bne _0805AD2C
	ldrb r1, [r4, #0xb]
	cmp r1, r5
	bgt _0805AD2C
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	adds r0, r1, r0
	cmp r0, r5
	ble _0805AD2C
	ldrb r0, [r4, #0xa]
	bl GetCurrentRoomProperty
	adds r3, r0, #0
	cmp r3, #0
	bne _0805ACD0
_0805AD2C:
	ldr r4, [r4, #4]
	cmp r4, r6
	bne _0805AD06
_0805AD32:
	movs r0, #0
_0805AD34:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805AD3C: .4byte gEntityLists + 48
_0805AD40: .4byte 0x00001609
_0805AD44: .4byte 0x0000FFFF
	.syntax divided
