	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0807BD04 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r2, r0, #4
	mov r8, r1
	cmp r2, #0x40
	bne _0807BC98
	movs r2, #0x3f
_0807BC98:
	ldr r1, _0807BD08 @ =gUnk_02027EB4
	adds r3, r2, r1
	adds r6, r1, #0
	adds r6, #0x3f
	ldr r0, _0807BD0C @ =gUnk_0200D654
	adds r2, r2, r0
	adds r5, r0, #0
	adds r5, #0x3f
	movs r4, #0
	adds r7, r1, #0
	mov ip, r0
	movs r0, #0xff
_0807BCB0:
	strb r0, [r3]
	strb r0, [r6]
	strb r0, [r2]
	strb r0, [r5]
	adds r3, #0x40
	adds r6, #0x40
	adds r2, #0x40
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x3f
	bls _0807BCB0
	mov r0, r8
	ldrh r1, [r0, #0x20]
	ldr r0, _0807BD10 @ =0x0000FFF0
	ands r0, r1
	lsls r0, r0, #2
	adds r3, r0, r7
	movs r1, #0xfc
	lsls r1, r1, #4
	adds r6, r7, r1
	mov r1, ip
	adds r2, r0, r1
	movs r5, #0xfc
	lsls r5, r5, #4
	add r5, ip
	movs r4, #0
	movs r0, #0xff
_0807BCE6:
	strb r0, [r3]
	adds r3, #1
	strb r0, [r6]
	adds r6, #1
	strb r0, [r2]
	adds r2, #1
	strb r0, [r5]
	adds r5, #1
	adds r4, #1
	cmp r4, #0x3f
	bls _0807BCE6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BD04: .4byte gRoomControls
_0807BD08: .4byte gUnk_02027EB4
_0807BD0C: .4byte gUnk_0200D654
_0807BD10: .4byte 0x0000FFF0
	.syntax divided
