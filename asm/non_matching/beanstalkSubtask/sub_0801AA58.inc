	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r0, #0x38
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	bl GetLayerByIndex
	ldr r2, _0801AAF0 @ =gUnk_080B4488
	lsrs r1, r7, #3
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r5, r1
	ldr r2, _0801AAF4 @ =0x00002004
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AA94
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _0801AB00
_0801AA94:
	movs r0, #7
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AB00
	movs r3, #0
	strb r7, [r4, #0x15]
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801AAF8 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, _0801AAFC @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x30]
	strb r7, [r6, #0x15]
	movs r0, #1
	b _0801AB02
	.align 2, 0
_0801AAF0: .4byte gUnk_080B4488
_0801AAF4: .4byte 0x00002004
_0801AAF8: .4byte gRoomControls
_0801AAFC: .4byte gPlayerState
_0801AB00:
	movs r0, #0
_0801AB02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
