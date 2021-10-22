	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076EE4 @ =gPlayerState
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076EE8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	b _08076F60
	.align 2, 0
_08076EE4: .4byte gPlayerState
_08076EE8:
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076F50
	ldrb r0, [r4, #7]
	cmp r0, #0xef
	bls _08076EFC
	movs r0, #3
	b _08076F0E
_08076EFC:
	adds r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _08076F0C
	movs r0, #2
	b _08076F0E
_08076F0C:
	movs r0, #1
_08076F0E:
	strb r0, [r5, #0x1d]
	ldr r0, _08076F1C @ =gPlayerEntity
	ldrb r0, [r0, #0xd]
	cmp r0, #0x1b
	bne _08076F24
	ldr r1, _08076F20 @ =0x00000524
	b _08076F36
	.align 2, 0
_08076F1C: .4byte gPlayerEntity
_08076F20: .4byte 0x00000524
_08076F24:
	ldr r0, _08076F44 @ =gPlayerState
	ldrb r1, [r0, #0xd]
	movs r0, #0x80
	ands r0, r1
	movs r1, #0xa3
	lsls r1, r1, #3
	cmp r0, #0
	beq _08076F36
	subs r1, #0x14
_08076F36:
	ldrh r0, [r4, #0x10]
	cmp r1, r0
	beq _08076F48
	adds r0, r4, #0
	bl sub_08077DF4
	b _08076F60
	.align 2, 0
_08076F44: .4byte gPlayerState
_08076F48:
	adds r0, r4, #0
	bl UpdateItemAnim
	b _08076F60
_08076F50:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	movs r0, #8
	asrs r0, r6
	ldrb r1, [r5, #0xa]
	orrs r0, r1
	strb r0, [r5, #0xa]
_08076F60:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
