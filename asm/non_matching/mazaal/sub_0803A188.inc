
    .syntax unified

	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xa]
	cmp r3, #1
	bhi _0803A23E
	ldrb r0, [r4, #0xc]
	cmp r0, #0x2b
	beq _0803A210
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	ble _0803A23E
	adds r0, #4
	ldrb r0, [r0]
	cmp r0, #0x95
	beq _0803A1B2
	cmp r0, #0x8e
	bne _0803A23E
_0803A1B2:
	movs r0, #0x28
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	cmp r3, #0
	bne _0803A1CE
	movs r0, #1
	b _0803A1D0
_0803A1CE:
	movs r0, #2
_0803A1D0:
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x7d
	strb r1, [r0]
	adds r0, #3
	ldrb r2, [r0]
	ldrb r1, [r4, #0xa]
	adds r3, r0, #0
	cmp r1, #0
	bne _0803A1E8
	movs r0, #1
	b _0803A1EA
_0803A1E8:
	movs r0, #2
_0803A1EA:
	orrs r0, r2
	strb r0, [r3]
	ldr r2, [r4, #0x54]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r2, [r4, #0x74]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, _0803A20C @ =0x00000127
	bl SoundReq
	b _0803A23E
	.align 2, 0
_0803A20C: .4byte 0x00000127
_0803A210:
	ldr r2, [r4, #0x54]
	adds r3, r4, #0
	adds r3, #0x3d
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r2, [r4, #0x74]
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #9
	bl InitAnimationForceUpdate
	ldr r0, _0803A248 @ =0x00000127
	bl SoundReq
_0803A23E:
	ldr r1, _0803A24C @ =gUnk_080CFC14
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0803A248: .4byte 0x00000127
_0803A24C: .4byte gUnk_080CFC14

    .syntax divided
