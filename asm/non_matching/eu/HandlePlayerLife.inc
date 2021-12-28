.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080170E4 @ =gUnk_0200AF00
	adds r2, r0, #0
	adds r2, #0x2f
	movs r1, #0
	strb r1, [r2]
	subs r2, #2
	strb r1, [r2]
	adds r0, #0x2e
	strb r1, [r0]
	ldr r2, _080170E8 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017072
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08017072
	movs r0, #0x86
	bl SoundReq
_08017072:
	ldr r4, _080170EC @ =gPlayerState
	ldr r0, [r4, #0x30]
	ldr r1, _080170F0 @ =0xFDFFFDFF
	ands r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801708A
	bl ResetPlayer
_0801708A:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080170A4
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080170A4
	bl DeleteClones
_080170A4:
	bl sub_08079B24
	cmp r0, #0
	bne _080170B2
	adds r0, r5, #0
	bl sub_08079708
_080170B2:
	ldr r0, _080170F4 @ =gUnk_03003DF0
	movs r4, #0
	strb r4, [r0]
	ldr r2, _080170EC @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #0
	beq _080170C8
	subs r0, #1
	strb r0, [r1]
_080170C8:
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xa9
	strb r0, [r3]
	strb r4, [r1]
	subs r1, #0x1e
	ldrb r0, [r1]
	cmp r0, #0
	beq _080170F8
	subs r0, #1
	strb r0, [r1]
	b _08017222
	.align 2, 0
_080170E4: .4byte gUnk_0200AF00
_080170E8: .4byte gPlayerEntity
_080170EC: .4byte gPlayerState
_080170F0: .4byte 0xFDFFFDFF
_080170F4: .4byte gUnk_03003DF0
_080170F8:
	adds r0, r2, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017104
	b _08017222
_08017104:
	ldr r0, _08017160 @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08017112
	b _08017222
_08017112:
	ldr r0, _08017164 @ =gUnk_0200AF00
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801714E
	ldr r0, _08017168 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #0x5a
	bl __modsi3
	cmp r0, #0
	bne _0801714E
	ldr r2, _0801716C @ =gSave
	adds r0, r2, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r1, r0, #2
	cmp r1, #0x18
	bls _08017138
	movs r1, #0x18
_08017138:
	cmp r1, #7
	bhi _0801713E
	movs r1, #8
_0801713E:
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, r1
	bhi _0801714E
	ldr r0, _08017170 @ =0x0000011F
	bl EnqueueSFX
_0801714E:
	ldr r0, _0801716C @ =gSave
	adds r2, r0, #0
	adds r2, #0xb2
	ldrb r1, [r2]
	cmp r1, #0
	bne _08017174
	adds r0, #0xc4
	strh r1, [r0]
	b _08017192
	.align 2, 0
_08017160: .4byte gMessage
_08017164: .4byte gUnk_0200AF00
_08017168: .4byte gScreenTransition
_0801716C: .4byte gSave
_08017170: .4byte 0x0000011F
_08017174:
	adds r1, r0, #0
	adds r1, #0xc4
	ldrh r0, [r1]
	cmp r0, #0
	beq _08017188
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017192
_08017188:
	movs r0, #0
	strb r0, [r2]
	ldr r0, _080171A4 @ =0x000001B3
	bl SoundReq
_08017192:
	ldr r0, _080171A8 @ =gSave
	adds r3, r0, #0
	adds r3, #0xb3
	ldrb r1, [r3]
	cmp r1, #0
	bne _080171AC
	adds r0, #0xc6
	strh r1, [r0]
	b _080171DC
	.align 2, 0
_080171A4: .4byte 0x000001B3
_080171A8: .4byte gSave
_080171AC:
	adds r2, r0, #0
	adds r2, #0xc6
	ldrh r0, [r2]
	cmp r0, #0
	beq _080171C0
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080171CE
_080171C0:
	movs r0, #0
	strb r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #1
	bl SoundReq
	b _080171DC
_080171CE:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080171DC
	adds r0, r5, #0
	bl CreateSparkle
_080171DC:
	ldr r0, _080171F0 @ =gSave
	adds r3, r0, #0
	adds r3, #0xba
	ldrb r1, [r3]
	cmp r1, #0
	bne _080171F4
	adds r0, #0xc8
	strh r1, [r0]
	b _08017222
	.align 2, 0
_080171F0: .4byte gSave
_080171F4:
	adds r2, r0, #0
	adds r2, #0xc8
	ldrh r0, [r2]
	cmp r0, #0
	beq _08017208
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0801720E
_08017208:
	movs r0, #0
	strb r0, [r3]
	b _08017222
_0801720E:
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _08017222
	ldrb r1, [r3]
	adds r1, #0x55
	adds r0, r5, #0
	movs r2, #0
	bl CreateFx
_08017222:
	pop {r4, r5}
	pop {r0}
	bx r0
.syntax divided
