	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850A6
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080850A8 @ =gScreen
	mov ip, r0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r1, #0x60
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf
	strh r0, [r1]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	ldr r3, _080850AC @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	subs r1, #0x18
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #8
	adds r0, #0x18
	ands r0, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r1, r0, #0
	subs r1, #0x18
	ands r1, r2
	lsls r1, r1, #8
	adds r0, #0x18
	ands r0, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x5c
	strh r1, [r0]
_080850A6:
	pop {r4, pc}
	.align 2, 0
_080850A8: .4byte gScreen
_080850AC: .4byte gRoomControls
	.syntax divided
