	.syntax unified
	push {r4, r5, lr}
	ldr r0, _080A3C9C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A3C78
	b _080A3DA8
_080A3C78:
	ldr r5, _080A3CA0 @ =gMenu
	movs r0, #2
	strb r0, [r5, #1]
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r2, r0, #0x10
	ldr r0, [r5, #0x10]
	subs r4, r2, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _080A3C92
	rsbs r1, r4, #0
_080A3C92:
	ldr r0, _080A3CA4 @ =0x00001FFD
	cmp r1, r0
	bhi _080A3CA8
	str r2, [r5, #0x10]
	b _080A3CDE
	.align 2, 0
_080A3C9C: .4byte gFadeControl
_080A3CA0: .4byte gMenu
_080A3CA4: .4byte 0x00001FFD
_080A3CA8:
	movs r0, #1
	strb r0, [r5, #1]
	adds r0, r4, #0
	bl sub_08000E44
	adds r2, r0, #0
	adds r0, r4, #0
	cmp r0, #0
	bge _080A3CBE
	ldr r1, _080A3D18 @ =0x0001FFFF
	adds r0, r0, r1
_080A3CBE:
	asrs r4, r0, #0x11
	cmp r4, #0
	bge _080A3CC6
	rsbs r4, r4, #0
_080A3CC6:
	cmp r4, #5
	ble _080A3CCC
	movs r4, #5
_080A3CCC:
	ldr r0, _080A3D1C @ =gUnk_081280EE
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080A3D20 @ =0x00000666
	muls r0, r2, r0
	muls r1, r0, r1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
_080A3CDE:
	adds r3, r5, #0
	adds r3, #0x29
	ldrb r2, [r3]
	ldr r0, [r5, #0x10]
	adds r1, r0, #0
	cmp r0, #0
	bge _080A3CF0
	ldr r4, _080A3D24 @ =0x0000FFFF
	adds r1, r0, r4
_080A3CF0:
	asrs r1, r1, #0x10
	cmp r2, r1
	beq _080A3CFE
	strb r1, [r3]
	movs r0, #0x69
	bl SoundReq
_080A3CFE:
	ldr r2, _080A3D28 @ =gInput
	ldrh r1, [r2, #2]
	ldr r0, _080A3D2C @ =0x0000020A
	ands r0, r1
	cmp r0, #0
	beq _080A3D30
	movs r0, #2
	bl SetMenuType
	movs r0, #0x6c
	bl SoundReq
	b _080A3DA8
	.align 2, 0
_080A3D18: .4byte 0x0001FFFF
_080A3D1C: .4byte gUnk_081280EE
_080A3D20: .4byte 0x00000666
_080A3D24: .4byte 0x0000FFFF
_080A3D28: .4byte gInput
_080A3D2C: .4byte 0x0000020A
_080A3D30:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r4, [r0]
	ldrh r1, [r2, #4]
	adds r5, r0, #0
	cmp r1, #0x20
	beq _080A3D56
	cmp r1, #0x20
	bgt _080A3D4C
	cmp r1, #1
	beq _080A3D5E
	cmp r1, #0x10
	beq _080A3D5A
	b _080A3D8A
_080A3D4C:
	cmp r1, #0x40
	beq _080A3D56
	cmp r1, #0x80
	beq _080A3D5A
	b _080A3D8A
_080A3D56:
	subs r4, #1
	b _080A3D8A
_080A3D5A:
	adds r4, #1
	b _080A3D8A
_080A3D5E:
	ldr r2, _080A3DAC @ =gMenu
	ldrb r0, [r2, #1]
	cmp r0, #2
	bne _080A3D8A
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bge _080A3D70
	ldr r1, _080A3DB0 @ =0x0000FFFF
	adds r0, r0, r1
_080A3D70:
	asrs r4, r0, #0x10
	ldr r0, _080A3DB4 @ =gSave
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x2a
	strb r1, [r0]
	movs r0, #3
	bl SetMenuType
_080A3D8A:
	bl sub_080A3B48
	cmp r0, r4
	bgt _080A3D94
	subs r4, r0, #1
_080A3D94:
	cmp r0, #1
	bgt _080A3D9A
	movs r4, #0
_080A3D9A:
	cmp r4, #0
	bge _080A3DA0
	movs r4, #0
_080A3DA0:
	ldrb r0, [r5]
	cmp r0, r4
	beq _080A3DA8
	strb r4, [r5]
_080A3DA8:
	pop {r4, r5, pc}
	.align 2, 0
_080A3DAC: .4byte gMenu
_080A3DB0: .4byte 0x0000FFFF
_080A3DB4: .4byte gSave
	.syntax divided
