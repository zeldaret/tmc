	thumb_func_start Projectile1F
Projectile1F: @ 0x080ABB8C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABBA4 @ =gUnk_0812A7D4
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABBA4: .4byte gUnk_0812A7D4

	thumb_func_start sub_080ABBA8
sub_080ABBA8: @ 0x080ABBA8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	beq _080ABBC4
	cmp r0, #1
	bgt _080ABBDC
	cmp r0, #0
	bne _080ABBDC
	ldr r0, _080ABBC0 @ =gUnk_0812A7EC
	b _080ABBC6
	.align 2, 0
_080ABBC0: .4byte gUnk_0812A7EC
_080ABBC4:
	ldr r0, _080ABBD8 @ =gUnk_0812A7F8
_080ABBC6:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080ABBEC
	.align 2, 0
_080ABBD8: .4byte gUnk_0812A7F8
_080ABBDC:
	ldr r0, _080ABBF0 @ =gUnk_0812A800
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080ABBEC:
	pop {pc}
	.align 2, 0
_080ABBF0: .4byte gUnk_0812A800

	thumb_func_start sub_080ABBF4
sub_080ABBF4: @ 0x080ABBF4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABC52
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	blt _080ABC52
	cmp r0, #1
	ble _080ABC3E
	cmp r0, #2
	bne _080ABC52
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	beq _080ABC32
	cmp r0, #3
	bgt _080ABC24
	cmp r0, #0
	beq _080ABC2A
	b _080ABC52
_080ABC24:
	cmp r0, #0x14
	beq _080ABC32
	b _080ABC52
_080ABC2A:
	movs r0, #4
	rsbs r0, r0, #0
	bl ModHealth
_080ABC32:
	adds r0, r4, #0
	bl CreateDust
	bl DeleteThisEntity
	b _080ABC52
_080ABC3E:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080ABC52
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	bl DeleteThisEntity
_080ABC52:
	pop {r4, pc}

	thumb_func_start sub_080ABC54
sub_080ABC54: @ 0x080ABC54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080ABC6E
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080ABC6E:
	ldr r0, _080ABC80 @ =gUnk_0812A808
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080ABC80: .4byte gUnk_0812A808

	thumb_func_start sub_080ABC84
sub_080ABC84: @ 0x080ABC84
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_542
nullsub_542: @ 0x080ABC8C
	bx lr
	.align 2, 0

	thumb_func_start sub_080ABC90
sub_080ABC90: @ 0x080ABC90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080ABCBE
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	ldr r0, _080ABCC0 @ =gPlayerEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080ABCBE:
	pop {r4, pc}
	.align 2, 0
_080ABCC0: .4byte gPlayerEntity

	thumb_func_start sub_080ABCC4
sub_080ABCC4: @ 0x080ABCC4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080ABD3C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r0]
	movs r1, #2
	bl GetTileType
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABD40 @ =0x0000014B
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_080ABD3C: .4byte gRoomControls
_080ABD40: .4byte 0x0000014B

	thumb_func_start sub_080ABD44
sub_080ABD44: @ 0x080ABD44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080ABD60
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080ABD60:
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ABD70
sub_080ABD70: @ 0x080ABD70
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetNextFrame
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ABDEE
	movs r0, #0xef
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	strh r1, [r5, #0x24]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080ABDDC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	movs r1, #2
	bl GetTileType
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrh r1, [r1]
	cmp r1, #0x13
	beq _080ABDE4
	ldr r0, _080ABDE0 @ =0x00000315
	cmp r1, r0
	bne _080ABDEE
	ldrh r1, [r4]
	movs r0, #0x6e
	movs r2, #2
	bl SetTileType
	b _080ABDEE
	.align 2, 0
_080ABDDC: .4byte gRoomControls
_080ABDE0: .4byte 0x00000315
_080ABDE4:
	ldrh r1, [r4]
	movs r0, #0x6d
	movs r2, #2
	bl SetTileType
_080ABDEE:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABE00
	bl DeleteThisEntity
_080ABE00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080ABE04
sub_080ABE04: @ 0x080ABE04
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

	thumb_func_start sub_080ABE88
sub_080ABE88: @ 0x080ABE88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _080ABEA6
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080ABEA6:
	pop {r4, pc}

	thumb_func_start sub_080ABEA8
sub_080ABEA8: @ 0x080ABEA8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r0, #0x60
	strb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x68
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0x1c]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080ABEDA
	bl Random
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	strb r0, [r4, #0x15]
	b _080ABEEC
_080ABEDA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldr r1, _080ABEFC @ =0x0000013F
	adds r0, r4, #0
	bl sub_0801D2B4
_080ABEEC:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABF00 @ =0x00000193
	bl SoundReq
	pop {r4, pc}
	.align 2, 0
_080ABEFC: .4byte 0x0000013F
_080ABF00: .4byte 0x00000193

	thumb_func_start sub_080ABF04
sub_080ABF04: @ 0x080ABF04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080ABF14
	bl DeleteThisEntity
_080ABF14:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0
