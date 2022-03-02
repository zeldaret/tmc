	.syntax unified
	push {r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r3, #0x32
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	adds r2, r5, #0
	bl sub_0807BEEC
	adds r3, r0, #0
	cmp r3, #0xff
	beq _0807BDB4
	ldr r1, _0807BD68 @ =gRoomControls
	movs r2, #0
	movs r0, #2
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	movs r4, #1
	strh r4, [r1]
	strb r3, [r1, #5]
	strb r5, [r1, #0x10]
	bl GetCurrentRoomInfo
	adds r2, r0, #0
	ldr r1, _0807BD6C @ =gArea
	ldr r3, _0807BD70 @ =0x0000085C
	adds r0, r1, r3
	str r2, [r0]
	ldrb r0, [r1, #0xd]
	ands r4, r0
	cmp r4, #0
	beq _0807BD98
	cmp r5, #1
	beq _0807BD7E
	cmp r5, #1
	blo _0807BD74
	cmp r5, #2
	beq _0807BD86
	cmp r5, #3
	beq _0807BD90
	b _0807BD98
	.align 2, 0
_0807BD68: .4byte gRoomControls
_0807BD6C: .4byte gArea
_0807BD70: .4byte 0x0000085C
_0807BD74:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r2, #6]
	b _0807BD98
_0807BD7E:
	ldrh r0, [r2]
	ldrh r1, [r2, #4]
	adds r0, r0, r1
	b _0807BD96
_0807BD86:
	ldrh r0, [r2, #2]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	strh r0, [r2, #6]
	b _0807BD98
_0807BD90:
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	subs r0, r0, r1
_0807BD96:
	strh r0, [r2, #4]
_0807BD98:
	ldr r2, _0807BDB0 @ =gPlayerEntity
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #0x11]
	bl SetInitializationPriority
	movs r0, #1
	b _0807BDB6
	.align 2, 0
_0807BDB0: .4byte gPlayerEntity
_0807BDB4:
	movs r0, #0
_0807BDB6:
	pop {r4, r5, pc}
	.syntax divided
