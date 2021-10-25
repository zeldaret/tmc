	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ABE48 @ =0xFFFF0000
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x36]
	subs r0, #0xa0
	strh r0, [r4, #0x36]
	ldr r3, _080ABE4C @ =gRoomControls
	ldrh r2, [r3, #6]
	ldr r1, _080ABE50 @ =0x00007FF0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r3, #8]
	ands r1, r0
	orrs r1, r2
	strh r1, [r4, #0x32]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080ABE54
	adds r1, #0x10
	b _080ABE56
	.align 2, 0
_080ABE48: .4byte 0xFFFF0000
_080ABE4C: .4byte gRoomControls
_080ABE50: .4byte 0x00007FF0
_080ABE54:
	adds r1, #0xc0
_080ABE56:
	movs r0, #0xe0
	ands r0, r5
	lsrs r0, r0, #1
	adds r0, r1, r0
	strh r0, [r4, #0x2e]
	movs r0, #0xf
	ands r5, r0
	lsls r0, r5, #4
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08004168
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABE84 @ =0x0000012D
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_080ABE84: .4byte 0x0000012D
	.syntax divided
