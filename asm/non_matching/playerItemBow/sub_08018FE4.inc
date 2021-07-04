	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	bne _08018FF6
	b _080190FC
_08018FF6:
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x6a
	str r0, [r4, #0x74]
	ldrb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x40
	strb r0, [r1]
	movs r0, #0xa6
	strh r0, [r4, #0x12]
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0xe
	bne _08019026
	movs r0, #0x80
	lsls r0, r0, #3
	b _0801902A
_08019026:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801902A:
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r2, _0801905C @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	subs r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #2
	bne _08019060
	movs r0, #1
	b _08019062
	.align 2, 0
_0801905C: .4byte gPlayerEntity
_08019060:
	movs r0, #0
_08019062:
	strb r0, [r4, #0xb]
	ldrb r1, [r5, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080190F8 @ =gUnk_080B3E40
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r3, r0]
	ldrh r5, [r5, #0x32]
	adds r0, r0, r5
	strh r0, [r4, #0x32]
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r3, #3]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #6]
	adds r5, r4, #0
	adds r5, #0x58
	strb r0, [r5]
	movs r0, #4
	ldrsb r0, [r3, r0]
	str r0, [r4, #0x6c]
	movs r0, #5
	ldrsb r0, [r3, r0]
	str r0, [r4, #0x70]
	ldr r0, [r3, #8]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0801766C
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _080190E8
	ldrb r0, [r5]
	adds r0, #6
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0
	strh r0, [r1]
_080190E8:
	ldrb r1, [r5]
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0xfc
	bl SoundReq
	b _08019178
	.align 2, 0
_080190F8: .4byte gUnk_080B3E40
_080190FC:
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldr r2, _08019168 @ =gUnk_080B3E40
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #2]
	ands r1, r3
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0801916C @ =gPlayerState
	str r4, [r0, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08019170
	movs r0, #0x3c
	str r0, [r4, #0x78]
	ldrb r1, [r4, #0xa]
	movs r0, #0x43
	movs r2, #1
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08019172
	adds r0, r4, #0
	bl CopyPosition
	b _08019172
	.align 2, 0
_08019168: .4byte gUnk_080B3E40
_0801916C: .4byte gPlayerState
_08019170:
	str r5, [r4, #0x78]
_08019172:
	adds r0, r4, #0
	bl sub_0801917C
_08019178:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
