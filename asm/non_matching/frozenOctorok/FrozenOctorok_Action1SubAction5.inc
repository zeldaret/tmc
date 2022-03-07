	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0809CA04 @ =gRoomTransition
	ldr r1, [r0]
	movs r2, #2
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0809CA08
	adds r2, r4, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #8
	b _0809CA16
	.align 2, 0
_0809CA04: .4byte gRoomTransition
_0809CA08:
	adds r2, r4, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
_0809CA16:
	strh r0, [r1]
	adds r5, r2, #0
	ldr r0, [r7]
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _0809CA30
	adds r0, r4, #0
	movs r1, #0x87
	movs r2, #2
	movs r3, #0
	bl CreateObjectWithParent
_0809CA30:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _0809CA92
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	strb r1, [r0]
	ldr r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, #2
	ldrb r2, [r2]
	rsbs r2, r2, #0
	bl LinearMoveAngle
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	movs r2, #0x48
	bl sub_0806FC80
	cmp r0, #0
	beq _0809CAC4
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0xc4
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xed
	bl SoundReq
	b _0809CAC4
_0809CA92:
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r7]
	ands r0, r6
	cmp r0, #1
	beq _0809CAB4
	cmp r0, #1
	blo _0809CAAC
	cmp r0, #2
	beq _0809CAAC
	cmp r0, #3
	beq _0809CABC
	b _0809CAC4
_0809CAAC:
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #0
	b _0809CAC2
_0809CAB4:
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #0xfc
	b _0809CAC2
_0809CABC:
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #4
_0809CAC2:
	strb r1, [r0]
_0809CAC4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
