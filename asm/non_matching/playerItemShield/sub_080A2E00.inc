	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080A2E90 @ =gPlayerEntity
	mov ip, r0
	mov r1, ip
	adds r1, #0x3d
	ldrb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A2E1A
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A2E40
_080A2E1A:
	adds r5, r4, #0
	adds r5, #0x3d
	ldrb r0, [r5]
	movs r2, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x3e
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x42
	ldrb r1, [r3]
	mov r0, ip
	adds r0, #0x42
	strb r1, [r0]
	strb r2, [r3]
	strb r2, [r5]
_080A2E40:
	ldr r0, _080A2E94 @ =gPlayerState
	ldrb r3, [r0, #3]
	adds r7, r0, #0
	cmp r3, #0
	beq _080A2F20
	ldr r0, [r7, #0x2c]
	cmp r4, r0
	bne _080A2F20
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080A2E9C
	ldr r1, _080A2E98 @ =gUnk_08127240
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	ldr r0, _080A2E90 @ =gPlayerEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0x20
	adds r2, r4, #0
	adds r2, #0x3c
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r3
	strb r0, [r7, #3]
	adds r0, r4, #0
	bl sub_080176E4
	b _080A2F30
	.align 2, 0
_080A2E90: .4byte gPlayerEntity
_080A2E94: .4byte gPlayerState
_080A2E98: .4byte gUnk_08127240
_080A2E9C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A2F30
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x42
	bne _080A2F06
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0xe
	bne _080A2F06
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080A2F06
	ldrb r3, [r5]
	movs r0, #0x15
	movs r1, #0
	movs r2, #0
	bl CreatePlayerItem
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080A2EF4
	movs r0, #1
	strb r0, [r1, #0xf]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
_080A2EF4:
	ldr r1, _080A2F1C @ =gUnk_08127220
	ldrb r0, [r1, #1]
	str r0, [r4, #0x78]
	str r6, [r4, #0x74]
	str r1, [r4, #0x7c]
	ldrb r0, [r7, #3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #3]
_080A2F06:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _080A2F30
	movs r0, #0x8c
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #8
	str r0, [r4, #0x6c]
	b _080A2F30
	.align 2, 0
_080A2F1C: .4byte gUnk_08127220
_080A2F20:
	movs r1, #0
	strb r1, [r7, #3]
	ldr r0, [r7, #0x2c]
	cmp r0, r4
	bne _080A2F2C
	str r1, [r7, #0x2c]
_080A2F2C:
	bl DeleteThisEntity
_080A2F30:
	ldr r6, _080A301C @ =gPlayerEntity
	ldrh r0, [r6, #0x12]
	cmp r0, #1
	beq _080A2F3E
	cmp r0, #4
	beq _080A2F3E
	b _080A3064
_080A2F3E:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x25
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3e
	bls _080A2F4C
	b _080A3064
_080A2F4C:
	ldrb r2, [r6, #0x18]
	movs r1, #0x40
	ands r1, r2
	ldrb r3, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	lsrs r2, r2, #7
	lsls r2, r2, #7
	movs r3, #0x7f
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r2, [r6, #0x1e]
	ldr r1, [r4, #0x70]
	adds r0, r1, #0
	subs r0, #0x25
	adds r0, r2, r0
	adds r5, r4, #0
	adds r5, #0x68
	ldrb r7, [r4, #0x1e]
	cmp r0, r7
	beq _080A2FA2
	adds r0, r1, #0
	adds r0, #0xdb
	adds r0, r2, r0
	strb r0, [r4, #0x1e]
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _080A2F98
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2FA2
_080A2F98:
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A2FA2:
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _080A303E
	ldr r0, _080A301C @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080A303E
	ldr r0, [r4, #0x78]
	subs r3, r0, #1
	str r3, [r4, #0x78]
	cmp r3, #0
	bne _080A303E
	ldr r0, [r4, #0x74]
	adds r0, #1
	str r0, [r4, #0x74]
	lsls r0, r0, #2
	ldr r1, [r4, #0x7c]
	adds r2, r1, r0
	ldrb r0, [r2]
	ldr r7, _080A3020 @ =gPlayerState
	cmp r0, #0xff
	bne _080A2FEC
	ldrb r1, [r7, #3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A2FE8
	ldr r0, _080A3024 @ =gUnk_081271DC
	str r0, [r4, #0x7c]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r7, #3]
_080A2FE8:
	str r3, [r4, #0x74]
	ldr r1, [r4, #0x7c]
_080A2FEC:
	ldr r0, [r4, #0x74]
	lsls r0, r0, #2
	adds r2, r1, r0
	ldrb r0, [r2, #1]
	str r0, [r4, #0x78]
	ldrb r1, [r7, #3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A3028
	ldr r0, _080A301C @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	adds r1, #8
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A303E
	.align 2, 0
_080A301C: .4byte gPlayerEntity
_080A3020: .4byte gPlayerState
_080A3024: .4byte gUnk_081271DC
_080A3028:
	ldr r0, _080A3060 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A303E:
	ldr r1, _080A3060 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x5a
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08078E84
	b _080A3068
	.align 2, 0
_080A3060: .4byte gPlayerEntity
_080A3064:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A3068:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
