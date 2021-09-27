	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805A244 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r2, _0805A248 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r5, _0805A24C @ =gScreen
	ldrh r0, [r1, #0x2a]
	strh r0, [r5, #0x2e]
	ldr r0, [r1, #0x2c]
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldrh r0, [r1, #0x2e]
	strh r0, [r5, #0x30]
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805A240
	ldrh r1, [r4, #0x20]
	lsrs r1, r1, #1
	movs r0, #6
	bl sub_0805A114
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805A240
	ldr r0, _0805A250 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0805A240
	adds r2, r4, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805A254 @ =gUnk_0810859A
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
_0805A240:
	pop {r4, r5, pc}
	.align 2, 0
_0805A244: .4byte gRoomControls
_0805A248: .4byte 0xFFFFF000
_0805A24C: .4byte gScreen
_0805A250: .4byte gMain
_0805A254: .4byte gUnk_0810859A
	.syntax divided
