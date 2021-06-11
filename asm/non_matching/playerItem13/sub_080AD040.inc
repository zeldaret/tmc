	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	beq _080AD050
	bl DeleteThisEntity
_080AD050:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD064
	movs r0, #0
	str r0, [r4, #0x34]
_080AD064:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080AD06E
	b _080AD220
_080AD06E:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD088
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x15]
	strb r1, [r2]
_080AD088:
	ldr r2, _080AD0B0 @ =gUnk_081320C4
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x74
	bne _080AD0B4
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AD0C8
	.align 2, 0
_080AD0B0: .4byte gUnk_081320C4
_080AD0B4:
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0x24
	beq _080AD0C8
	cmp r0, #0x26
	beq _080AD0C8
	adds r0, r4, #0
	bl sub_080AF00C
_080AD0C8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080AD0D8
	b _080AD202
_080AD0D8:
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x30]
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x34]
	str r0, [r5, #0x34]
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x11
	bhi _080AD0FC
	cmp r0, #0x10
	bhs _080AD104
	cmp r0, #0xd
	beq _080AD104
	b _080AD14E
_080AD0FC:
	cmp r0, #0x13
	beq _080AD104
	cmp r0, #0x5a
	bne _080AD14E
_080AD104:
	cmp r5, r4
	bne _080AD146
	cmp r0, #0x11
	bhi _080AD116
	cmp r0, #0x10
	bhs _080AD12C
	cmp r0, #0xd
	beq _080AD120
	b _080AD142
_080AD116:
	cmp r0, #0x13
	beq _080AD138
	cmp r0, #0x5a
	beq _080AD126
	b _080AD142
_080AD120:
	adds r0, r4, #0
	movs r1, #0
	b _080AD130
_080AD126:
	adds r0, r4, #0
	movs r1, #0xc
	b _080AD130
_080AD12C:
	adds r0, r4, #0
	movs r1, #0xb
_080AD130:
	movs r2, #0
	bl CreateFx
	b _080AD142
_080AD138:
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
_080AD142:
	movs r0, #4
	b _080AD148
_080AD146:
	movs r0, #3
_080AD148:
	strb r0, [r5, #0xd]
	bl DeleteThisEntity
_080AD14E:
	ldr r0, [r4, #0x54]
	cmp r0, r4
	bne _080AD178
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	beq _080AD1DA
	cmp r0, #0xf
	bne _080AD16A
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r2, #0x80
	bl CreateFx
	b _080AD1DA
_080AD16A:
	ldrb r1, [r4, #0xb]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _080AD1DA
_080AD178:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080AD188
	adds r0, r5, #0
	bl sub_080AD32C
	cmp r0, #0
	beq _080AD1E0
_080AD188:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _080AD196
	movs r0, #0x82
	lsls r0, r0, #1
	bl SoundReq
_080AD196:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #3
	strb r0, [r5, #0xd]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080AD1DA:
	bl DeleteThisEntity
	b _080AD26E
_080AD1E0:
	movs r0, #0x82
	lsls r0, r0, #1
	bl SoundReq
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x24]
	b _080AD26E
_080AD202:
	adds r0, r4, #0
	bl sub_0800451C
	adds r0, r4, #0
	bl sub_0806F8DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	b _080AD26E
_080AD220:
	ldr r1, _080AD240 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080AD244
	movs r0, #0x79
	bl SoundReq
	adds r0, r4, #0
	bl sub_080AD27C
	b _080AD26E
	.align 2, 0
_080AD240: .4byte gPlayerEntity
_080AD244:
	ldr r0, _080AD270 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD25A
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD26E
_080AD25A:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r5, [r4, #0x20]
_080AD26E:
	pop {r4, r5, pc}
	.align 2, 0
_080AD270: .4byte gPlayerState
	.syntax divided
