	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x72
	bl GetInventoryValue
	movs r1, #0xc0
	cmp r0, #1
	bne _0807ACF4
	adds r1, #0x40
_0807ACF4:
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0807AD18
	strh r1, [r4, #0x24]
	ldr r0, _0807AD14 @ =gPlayerState
	ldrb r1, [r0, #0xd]
	strb r1, [r4, #0x15]
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0807ADB4
	b _0807AD1E
	.align 2, 0
_0807AD14: .4byte gPlayerState
_0807AD18:
	ldrh r0, [r4, #0x24]
	subs r0, #4
	strh r0, [r4, #0x24]
_0807AD1E:
	ldr r2, _0807AD3C @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807AD40
	adds r0, r4, #0
	bl sub_0807ADB8
	cmp r0, #0
	bne _0807AD74
	adds r0, r4, #0
	bl sub_0807AE20
	b _0807AD74
	.align 2, 0
_0807AD3C: .4byte gPlayerState
_0807AD40:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807AD52
	adds r0, r4, #0
	bl sub_0807ADB8
	b _0807AD74
_0807AD52:
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807ADA0 @ =0x00000163
	bl SoundReq
_0807AD74:
	ldr r0, _0807ADA4 @ =gPlayerState
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807ADA8
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x13
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	b _0807ADB2
	.align 2, 0
_0807ADA0: .4byte 0x00000163
_0807ADA4: .4byte gPlayerState
_0807ADA8:
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
_0807ADB2:
	strb r0, [r2]
_0807ADB4:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
