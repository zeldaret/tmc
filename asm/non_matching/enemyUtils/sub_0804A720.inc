	.syntax unified
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804A7D0
	ldrb r0, [r2, #9]
	lsls r0, r0, #1
	ldr r1, _0804A76C @ =gUnk_080D3D94
	adds r3, r0, r1
	adds r4, r2, #0
	adds r4, #0x68
	ldrb r1, [r4, #0x16]
	cmp r1, #0
	bne _0804A744
	ldrb r1, [r3]
_0804A744:
	adds r0, r2, #0
	adds r0, #0x6e
	strb r1, [r0]
	adds r5, r0, #0
	ldrb r1, [r4, #0x17]
	cmp r1, #0
	bne _0804A754
	ldrb r1, [r3, #1]
_0804A754:
	adds r0, r2, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r6, r0, #0
	ldrh r1, [r4, #0x1c]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A774
	ldr r0, _0804A770 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r0, r1, r0
	b _0804A784
	.align 2, 0
_0804A76C: .4byte gUnk_080D3D94
_0804A770: .4byte gRoomControls
_0804A774:
	ldrb r0, [r5]
	lsls r1, r0, #2
	movs r5, #0x2e
	ldrsh r0, [r2, r5]
	cmp r0, r1
	blt _0804A78C
	ldrh r0, [r2, #0x2e]
	subs r0, r0, r1
_0804A784:
	adds r1, r2, #0
	adds r1, #0x70
	strh r0, [r1]
	b _0804A792
_0804A78C:
	adds r0, r2, #0
	adds r0, #0x70
	strh r3, [r0]
_0804A792:
	ldrh r1, [r4, #0x1e]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A7A8
	ldr r0, _0804A7A4 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, r1, r0
	b _0804A7B8
	.align 2, 0
_0804A7A4: .4byte gRoomControls
_0804A7A8:
	ldrb r0, [r6]
	lsls r1, r0, #2
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r0, r1
	blt _0804A7C0
	ldrh r0, [r2, #0x32]
	subs r0, r0, r1
_0804A7B8:
	adds r1, r2, #0
	adds r1, #0x72
	strh r0, [r1]
	b _0804A7C6
_0804A7C0:
	adds r0, r2, #0
	adds r0, #0x72
	strh r3, [r0]
_0804A7C6:
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_0804A7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
