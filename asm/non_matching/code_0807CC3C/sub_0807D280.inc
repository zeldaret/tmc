
	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0807D2B0 @ =gRoomControls
	movs r0, #0xa
	ldrsh r2, [r1, r0]
	ldrh r0, [r1, #6]
	subs r3, r2, r0
	movs r0, #0xc
	ldrsh r2, [r1, r0]
	ldrh r0, [r1, #8]
	subs r4, r2, r0
	ldrb r0, [r1, #0x10]
	mov r8, r1
	cmp r0, #1
	beq _0807D330
	cmp r0, #1
	bgt _0807D2B4
	cmp r0, #0
	beq _0807D2BA
	b _0807D404
	.align 2, 0
_0807D2B0: .4byte gRoomControls
_0807D2B4:
	cmp r0, #2
	beq _0807D3A0
	b _0807D404
_0807D2BA:
	mov r2, r8
	ldrh r1, [r2, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _0807D2C8
	b _0807D462
_0807D2C8:
	movs r2, #0x1c
	asrs r3, r3, #4
	mov sb, r3
	movs r3, #0x40
	adds r3, r3, r5
	mov ip, r3
	ldr r4, _0807D328 @ =0x040000D4
	ldr r7, _0807D32C @ =0x80000020
	movs r0, #0xe8
	lsls r0, r0, #3
	adds r3, r5, r0
	subs r0, #0x80
	adds r1, r5, r0
_0807D2E2:
	str r1, [r4]
	str r3, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #8]
	subs r3, #0x40
	subs r1, #0x40
	subs r2, #1
	cmp r2, #0
	bgt _0807D2E2
	mov r1, r8
	ldrh r0, [r1, #0x20]
	lsrs r0, r0, #4
	subs r0, #1
	ldrh r1, [r1, #0x18]
	lsrs r1, r1, #2
	subs r0, r0, r1
	lsls r0, r0, #8
	mov r2, sb
	lsls r1, r2, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	ldr r0, _0807D328 @ =0x040000D4
	str r6, [r0]
	str r5, [r0, #4]
	ldr r2, _0807D32C @ =0x80000020
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r6, r3
	str r1, [r0]
	mov r1, ip
	b _0807D3F0
	.align 2, 0
_0807D328: .4byte 0x040000D4
_0807D32C: .4byte 0x80000020
_0807D330:
	mov r2, r8
	ldrh r3, [r2, #0x18]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0807D33E
	b _0807D462
_0807D33E:
	asrs r7, r4, #4
	movs r0, #0x3c
	adds r0, r0, r5
	mov sb, r0
	cmp r3, #0
	beq _0807D36A
	ldr r4, _0807D398 @ =0x040000D4
	ldr r1, _0807D39C @ =0x8000001E
	mov ip, r1
	adds r3, r5, #4
	adds r1, r5, #0
	movs r2, #0x15
_0807D356:
	str r3, [r4]
	str r1, [r4, #4]
	mov r0, ip
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r3, #0x40
	adds r1, #0x40
	subs r2, #1
	cmp r2, #0
	bge _0807D356
_0807D36A:
	lsls r1, r7, #8
	mov r2, r8
	ldrh r0, [r2, #0x18]
	lsrs r0, r0, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r6, r6, r1
	mov r5, sb
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x15
_0807D382:
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	adds r5, #0x40
	adds r6, r6, r1
	subs r2, #1
	cmp r2, #0
	bge _0807D382
	b _0807D462
	.align 2, 0
_0807D398: .4byte 0x040000D4
_0807D39C: .4byte 0x8000001E
_0807D3A0:
	mov r0, r8
	ldrh r1, [r0, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807D462
	lsls r2, r1, #0x10
	cmp r2, #0
	beq _0807D3C2
	ldr r1, _0807D3F8 @ =0x040000D4
	adds r0, r5, #0
	adds r0, #0x80
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0807D3FC @ =0x800003C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0807D3C2:
	lsrs r0, r2, #0x12
	lsls r0, r0, #8
	asrs r1, r3, #4
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	ldr r0, _0807D3F8 @ =0x040000D4
	str r6, [r0]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r5, r2
	str r1, [r0, #4]
	ldr r2, _0807D400 @ =0x80000020
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r6, r3
	str r1, [r0]
	movs r3, #0xa8
	lsls r3, r3, #3
	adds r1, r5, r3
_0807D3F0:
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	b _0807D462
	.align 2, 0
_0807D3F8: .4byte 0x040000D4
_0807D3FC: .4byte 0x800003C0
_0807D400: .4byte 0x80000020
_0807D404:
	mov r0, r8
	ldrh r1, [r0, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _0807D462
	movs r2, #0
	asrs r7, r4, #4
	mov ip, r5
_0807D416:
	movs r1, #0x1d
	mov r3, ip
	adds r3, #0x3a
_0807D41C:
	ldrh r0, [r3]
	strh r0, [r3, #4]
	subs r3, #2
	subs r1, #1
	cmp r1, #0
	bge _0807D41C
	movs r1, #0x40
	add ip, r1
	adds r2, #1
	cmp r2, #0x15
	ble _0807D416
	lsls r0, r7, #8
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	lsrs r1, r1, #4
	subs r1, #1
	ldrh r2, [r2, #0x18]
	lsrs r2, r2, #2
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x15
_0807D450:
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	adds r5, #0x40
	adds r6, r6, r1
	subs r2, #1
	cmp r2, #0
	bge _0807D450
_0807D462:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
