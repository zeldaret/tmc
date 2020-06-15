	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Gleerok
Gleerok: @ 0x0802D018
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802D030 @ =gUnk_080CD748
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802D030: .4byte gUnk_080CD748

	thumb_func_start sub_0802D034
sub_0802D034: @ 0x0802D034
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0802D0F4
	cmp r0, #1
	bgt _0802D04C
	cmp r0, #0
	beq _0802D104
	b _0802D148
_0802D04C:
	cmp r0, #2
	bne _0802D148
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	bne _0802D090
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xe]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x74
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	ldr r1, _0802D088 @ =gScreen
	ldrb r2, [r2]
	adds r0, r1, #0
	adds r0, #0x68
	strh r2, [r0]
	adds r1, #0x66
	ldr r0, _0802D08C @ =0x00001442
	strh r0, [r1]
	movs r0, #0xf6
	bl PlaySFX
	b _0802D148
	.align 2, 0
_0802D088: .4byte gScreen
_0802D08C: .4byte 0x00001442
_0802D090:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802D0D2
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _0802D0EC @ =gScreen
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _0802D0D2
	ldr r0, _0802D0F0 @ =gLinkEntity
	bl sub_0807AABC
	bl DeleteThisEntity
_0802D0D2:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802D148
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D148
	movs r0, #0xf7
	bl PlaySFX
	b _0802D148
	.align 2, 0
_0802D0EC: .4byte gScreen
_0802D0F0: .4byte gLinkEntity
_0802D0F4:
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0804A7D4
	b _0802D148
_0802D104:
	ldr r5, _0802D14C @ =gLinkState
	movs r0, #1
	strb r0, [r5, #0x14]
	ldr r1, _0802D150 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802D128
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xfa
	strb r0, [r1]
_0802D128:
	ldr r1, _0802D154 @ =gUnk_080CD75C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802E518
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802D148:
	pop {r4, r5, pc}
	.align 2, 0
_0802D14C: .4byte gLinkState
_0802D150: .4byte gLinkEntity
_0802D154: .4byte gUnk_080CD75C

	thumb_func_start sub_0802D158
sub_0802D158: @ 0x0802D158
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r0, _0802D16C @ =gUnk_02034490
	strb r1, [r0]
	movs r0, #7
	movs r1, #8
	bl DoFade
	pop {pc}
	.align 2, 0
_0802D16C: .4byte gUnk_02034490

	thumb_func_start sub_0802D170
sub_0802D170: @ 0x0802D170
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0802D1F0 @ =gUnk_03000FD0
	ldrb r3, [r0]
	cmp r3, #0
	bne _0802D216
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0802D1FC
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #0x10
	strb r1, [r0, #1]
	ldr r0, [r4]
	strb r1, [r0, #0x19]
	ldr r0, [r4]
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	cmp r0, #0
	bne _0802D216
	ldr r0, [r4]
	bl sub_0802EA88
	cmp r0, #0
	bne _0802D216
	movs r0, #2
	strb r0, [r5, #0xc]
	ldr r2, _0802D1F4 @ =gLinkEntity
	ldr r4, _0802D1F8 @ =gRoomControls
	ldrh r0, [r4, #6]
	adds r0, #0x98
	movs r1, #0
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #8]
	adds r0, #0xd8
	strh r0, [r2, #0x32]
	strb r1, [r2, #0x14]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r2, r6]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #2
	bl sub_0807BA8C
	str r5, [r4, #0x30]
	movs r0, #6
	movs r1, #8
	bl DoFade
	b _0802D216
	.align 2, 0
_0802D1F0: .4byte gUnk_03000FD0
_0802D1F4: .4byte gLinkEntity
_0802D1F8: .4byte gRoomControls
_0802D1FC:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x80
	strb r3, [r0]
	adds r2, r5, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r0, [r2]
	strb r3, [r0, #0x19]
_0802D216:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802D218
sub_0802D218: @ 0x0802D218
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	adds r1, r0, #0
	cmp r1, #0
	bne _0802D254
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x7c
	movs r0, #0xb4
	strh r0, [r2]
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	ldrh r3, [r2]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #2
	bl CreateObjectWithParent
_0802D254:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802D258
sub_0802D258: @ 0x0802D258
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802D276
	adds r0, r5, #0
	bl sub_0802E1D0
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _0802D288
	strb r0, [r5, #0xc]
	b _0802D334
_0802D276:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802D288
	adds r0, r5, #0
	movs r1, #0x4e
	bl InitializeAnimation
_0802D288:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0802D2B4
	ldr r1, _0802D2B0 @ =gUnk_080CD774
	ldrb r0, [r5, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r1, [r5, #0xf]
	movs r0, #0x3f
	ands r0, r1
	adds r0, #2
	strb r0, [r5, #0xf]
	b _0802D2B8
	.align 2, 0
_0802D2B0: .4byte gUnk_080CD774
_0802D2B4:
	subs r0, #1
	strb r0, [r5, #0xe]
_0802D2B8:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bhi _0802D2D0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802D2E4
_0802D2D0:
	adds r4, r5, #0
	adds r4, #0x84
	cmp r0, #0xff
	beq _0802D2E4
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA68
_0802D2E4:
	ldr r5, _0802D338 @ =gUnk_030010A0
	ldr r0, [r5]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0802D2F8
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_0802D2F8:
	ldr r0, [r5]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802D32E
	bl Random
	movs r1, #5
	ands r1, r0
	ldr r0, [r4]
	lsls r1, r1, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _0802D32E
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802D32E:
	ldr r0, [r4]
	bl sub_0802E768
_0802D334:
	pop {r4, r5, pc}
	.align 2, 0
_0802D338: .4byte gUnk_030010A0

	thumb_func_start sub_0802D33C
sub_0802D33C: @ 0x0802D33C
	push {r4, r5, r6, r7, lr}
	adds r0, #0x84
	ldr r6, [r0]
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r7, #0
_0802D34A:
	ldm r5!, {r0}
	bl DeleteEntity
	adds r4, #1
	cmp r4, #3
	bls _0802D34A
	lsls r1, r4, #2
	adds r1, r7, r1
	ldr r0, [r1]
	adds r0, #0x45
	movs r3, #0
	strb r3, [r0]
	ldr r1, [r1]
	adds r1, #0x6d
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r6, #0x50]
	adds r0, #0x45
	strb r3, [r0]
	ldr r0, [r6, #0x50]
	strb r3, [r0, #0xb]
	ldr r3, [r6, #0x50]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	bl DeleteThisEntity
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802D394
sub_0802D394: @ 0x0802D394
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D3B4 @ =gUnk_080CD7B8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_0802D3B4: .4byte gUnk_080CD7B8

	thumb_func_start sub_0802D3B8
sub_0802D3B8: @ 0x0802D3B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0802D3DE
	ldr r2, _0802D3F4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0802D3F8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802D3FC @ =gLinkEntity
	bl sub_0807AABC
	bl DeleteThisEntity
_0802D3DE:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D3EA
	b _0802D63C
_0802D3EA:
	lsls r0, r0, #2
	ldr r1, _0802D400 @ =_0802D404
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D3F4: .4byte gScreen
_0802D3F8: .4byte 0x0000FDFF
_0802D3FC: .4byte gLinkEntity
_0802D400: .4byte _0802D404
_0802D404: @ jump table
	.4byte _0802D420 @ case 0
	.4byte _0802D544 @ case 1
	.4byte _0802D58C @ case 2
	.4byte _0802D5A8 @ case 3
	.4byte _0802D5EC @ case 4
	.4byte _0802D5F6 @ case 5
	.4byte _0802D61A @ case 6
_0802D420:
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #0xb
	strb r2, [r0]
	subs r0, #7
	strb r2, [r0]
	movs r0, #0x96
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_0802EB9C
	movs r0, #0x54
	bl sub_0801D8E0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r5, #0
	bne _0802D470
	adds r0, r4, #0
	bl sub_0804A7D4
	bl DeleteThisEntity
_0802D470:
	ldr r0, [r7]
	str r0, [r4, #0x64]
	movs r6, #0
	movs r0, #0
	mov r8, r0
_0802D47A:
	movs r0, #0x24
	movs r1, #1
	bl CreateEnemy
	str r0, [r4, #0x54]
	adds r3, r6, #1
	cmp r0, #0
	beq _0802D4D6
	strb r3, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x38
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldrh r2, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	lsls r2, r6, #2
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r4, #0x54]
	str r1, [r0]
	adds r2, r5, r2
	movs r0, #0x10
	strb r0, [r2, #1]
	mov r0, r8
	strb r0, [r2, #0x19]
	adds r0, r5, #0
	adds r0, #0x35
	mov r1, r8
	strb r1, [r0]
_0802D4D6:
	adds r6, r3, #0
	cmp r6, #4
	bls _0802D47A
	movs r0, #0x24
	movs r1, #2
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r4, #0x54]
	cmp r2, #0
	beq _0802D52E
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	movs r3, #0
	strh r0, [r1, #0x2e]
	ldr r2, [r4, #0x54]
	adds r1, r6, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x50]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r3, [r0]
	adds r0, #8
	strb r3, [r0]
_0802D52E:
	ldr r0, _0802D540 @ =gLinkState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x4c
	bl InitializeAnimation
	b _0802D63C
	.align 2, 0
_0802D540: .4byte gLinkState
_0802D544:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D55C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
_0802D55C:
	ldr r1, _0802D588 @ =gUnk_080CD7C4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x24
	bl InitializeAnimation
	b _0802D63C
	.align 2, 0
_0802D588: .4byte gUnk_080CD7C4
_0802D58C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0802D63C
_0802D5A8:
	ldr r0, _0802D5E8 @ =gUnk_080CD884
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x4f
	bl InitializeAnimation
	b _0802D63C
	.align 2, 0
_0802D5E8: .4byte gUnk_080CD884
_0802D5EC:
	adds r0, r4, #0
	movs r1, #0x2c
	bl InitAnimationForceUpdate
	b _0802D63C
_0802D5F6:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x2d
	bl InitAnimationForceUpdate
	b _0802D63C
_0802D61A:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x50
	bl InitializeAnimation
_0802D63C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802D648
	adds r0, r4, #0
	bl sub_0802D86C
_0802D648:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802D650
sub_0802D650: @ 0x0802D650
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802D670 @ =gUnk_080CD7E4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x84
	ldr r0, [r4]
	bl sub_0802E7E4
	pop {r4, pc}
	.align 2, 0
_0802D670: .4byte gUnk_080CD7E4

	thumb_func_start sub_0802D674
sub_0802D674: @ 0x0802D674
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0802D6B4 @ =gUnk_02034490
	movs r7, #1
	strb r7, [r0]
	ldr r5, _0802D6B8 @ =gLinkEntity
	ldr r6, [r5, #0x34]
	cmp r6, #0
	bne _0802D6EC
	ldr r0, [r4, #0x7c]
	cmp r0, #0x96
	bne _0802D692
	ldr r0, _0802D6BC @ =0x00000127
	bl PlaySFX
_0802D692:
	ldr r0, [r4, #0x7c]
	subs r1, r0, #1
	str r1, [r4, #0x7c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802D6C4
	strb r7, [r4, #0xd]
	movs r0, #0x5a
	str r0, [r4, #0x7c]
	ldr r0, _0802D6C0 @ =gRoomControls
	str r4, [r0, #0x30]
	ldr r0, _0802D6BC @ =0x00000127
	bl PlaySFX
	b _0802D6EC
	.align 2, 0
_0802D6B4: .4byte gUnk_02034490
_0802D6B8: .4byte gLinkEntity
_0802D6BC: .4byte 0x00000127
_0802D6C0: .4byte gRoomControls
_0802D6C4:
	cmp r1, #0x3c
	bhi _0802D6DC
	cmp r1, #0x3c
	bne _0802D6D8
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_080A2CFC
_0802D6D8:
	strb r6, [r5, #0x14]
	b _0802D6EC
_0802D6DC:
	cmp r1, #0x59
	bhi _0802D6E4
	movs r0, #2
	b _0802D6EA
_0802D6E4:
	cmp r1, #0x77
	bhi _0802D6EC
	movs r0, #6
_0802D6EA:
	strb r0, [r5, #0x14]
_0802D6EC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802D6F0
sub_0802D6F0: @ 0x0802D6F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x7c]
	subs r0, #1
	str r0, [r2, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D712
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #0x5a
	str r0, [r2, #0x7c]
	movs r0, #0x96
	movs r1, #0
	bl sub_08080964
_0802D712:
	pop {pc}

	thumb_func_start sub_0802D714
sub_0802D714: @ 0x0802D714
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	subs r0, #1
	str r0, [r4, #0x7c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D77A
	adds r0, r4, #0
	adds r0, #0x84
	ldr r5, [r0]
	movs r1, #0
	movs r3, #0
	movs r2, #0x10
	adds r0, r5, #0
_0802D734:
	strh r3, [r0, #0x18]
	strb r2, [r0, #1]
	adds r0, #4
	adds r1, #1
	cmp r1, #5
	bls _0802D734
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x4d
	bl InitializeAnimation
	movs r0, #0x24
	movs r1, #5
	bl CreateEnemy
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0802D774
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x38]
	adds r0, #0x84
	str r5, [r0]
_0802D774:
	ldr r1, [r5, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
_0802D77A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802D77C
sub_0802D77C: @ 0x0802D77C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802D7B0 @ =gUnk_030010A0
	ldr r4, [r0]
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne _0802D7AC
	adds r0, r5, #0
	bl sub_0802E430
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _0802D7AC
	strb r4, [r5, #0xf]
	strb r4, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
_0802D7AC:
	pop {r4, r5, pc}
	.align 2, 0
_0802D7B0: .4byte gUnk_030010A0

	thumb_func_start sub_0802D7B4
sub_0802D7B4: @ 0x0802D7B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r3, r0, #0
	cmp r3, #0
	bne _0802D82C
	ldr r4, _0802D7FC @ =gUnk_080CD7F8
	ldrb r2, [r5, #0xf]
	adds r0, r2, r4
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802D810
	strb r3, [r5, #0xf]
	strb r3, [r5, #0xe]
	movs r2, #1
	strb r2, [r5, #0xc]
	strb r3, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r1, _0802D800 @ =gRoomControls
	ldr r0, _0802D804 @ =gLinkEntity
	str r0, [r1, #0x30]
	ldr r0, _0802D808 @ =gLinkState
	adds r0, #0x8b
	strb r2, [r0]
	ldr r0, _0802D80C @ =gUnk_02034490
	strb r3, [r0]
	movs r0, #0x2e
	bl PlaySFX
	b _0802D868
	.align 2, 0
_0802D7FC: .4byte gUnk_080CD7F8
_0802D800: .4byte gRoomControls
_0802D804: .4byte gLinkEntity
_0802D808: .4byte gLinkState
_0802D80C: .4byte gUnk_02034490
_0802D810:
	strb r1, [r5, #0xe]
	adds r0, r2, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0xf]
	adds r0, #2
	strb r0, [r5, #0xf]
	ldr r0, _0802D828 @ =0x00000127
	bl PlaySFX
	b _0802D830
	.align 2, 0
_0802D828: .4byte 0x00000127
_0802D82C:
	subs r0, #1
	strb r0, [r5, #0xe]
_0802D830:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bhi _0802D848
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802D85C
_0802D848:
	adds r4, r5, #0
	adds r4, #0x84
	cmp r0, #0xff
	beq _0802D85C
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA68
_0802D85C:
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
_0802D868:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802D86C
sub_0802D86C: @ 0x0802D86C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D878
	b _0802DB7E
_0802D878:
	lsls r0, r0, #2
	ldr r1, _0802D884 @ =_0802D888
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D884: .4byte _0802D888
_0802D888: @ jump table
	.4byte _0802DB64 @ case 0
	.4byte _0802D8A4 @ case 1
	.4byte _0802D8CE @ case 2
	.4byte _0802DA54 @ case 3
	.4byte _0802D94C @ case 4
	.4byte _0802D9A2 @ case 5
	.4byte _0802D9F8 @ case 6
_0802D8A4:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D8CE
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D8BE
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802D8C6
_0802D8BE:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802D8CC
_0802D8C6:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802D8CC:
	strb r0, [r4, #0x10]
_0802D8CE:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D8DE
	b _0802DB7E
_0802D8DE:
	ldr r0, [r4, #0x50]
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D918
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802D906
	adds r0, r4, #0
	bl sub_0801D230
	adds r0, r4, #0
	movs r1, #0xc9
	bl sub_0801D040
	b _0802D918
_0802D906:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0801D230
	adds r0, r4, #0
	movs r1, #0xca
	bl sub_0801D040
_0802D918:
	ldr r0, [r4, #0x50]
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D924
	b _0802DB7E
_0802D924:
	ldr r1, _0802D944 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #8
	movs r3, #8
	bl sub_080041A0
	cmp r0, #0
	bne _0802D936
	b _0802DB7E
_0802D936:
	ldr r0, _0802D948 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfc
	strb r1, [r0]
	b _0802DB7E
	.align 2, 0
_0802D944: .4byte gLinkEntity
_0802D948: .4byte gLinkState
_0802D94C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D95E
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _0802DB7E
_0802D95E:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r2, r0, #0
	cmp r2, #0
	beq _0802D970
	b _0802DB7E
_0802D970:
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	movs r1, #1
	strb r1, [r0]
	strb r2, [r4, #0xe]
_0802D97A:
	ldrb r3, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x67
	movs r2, #0
	bl CreateObjectWithParent
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0802D97A
	movs r0, #0xa8
	lsls r0, r0, #1
	bl PlaySFX
_0802D99C:
	bl DeleteThisEntity
	b _0802DB7E
_0802D9A2:
	ldr r0, _0802D9F4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D9B8
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802D9B8
	b _0802DB7E
_0802D9B8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802D9CE
	b _0802DB7E
_0802D9CE:
	movs r0, #0x24
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802D9F4: .4byte gUnk_030010A0
_0802D9F8:
	ldr r0, _0802DA50 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DA0E
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _0802DA0E
	b _0802DB7E
_0802DA0E:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802DA24
	b _0802DB7E
_0802DA24:
	movs r0, #0x24
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802D99C
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
	ldr r2, [r1]
	ldr r0, [r4, #0x54]
	str r0, [r2, #0x38]
	adds r0, #0x84
	ldr r1, [r1]
	str r1, [r0]
	b _0802D99C
	.align 2, 0
_0802DA50: .4byte gUnk_030010A0
_0802DA54:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DA96
	subs r0, r1, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802DA96
	adds r5, r4, #0
	adds r5, #0x75
	ldrb r0, [r5]
	adds r0, #2
	strb r0, [r5]
	ldr r7, _0802DAD4 @ =gUnk_080CD884
	ldrb r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r6]
	cmp r0, #0
	beq _0802DA96
	adds r0, r4, #0
	bl sub_0801D230
	ldrb r0, [r5]
	adds r0, #1
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D040
_0802DA96:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802DAD8
	ldrb r2, [r6]
	cmp r2, #0
	bne _0802DAD8
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1d
	bne _0802DB20
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x50]
	movs r0, #4
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x50]
	strb r2, [r0, #0xb]
	ldr r0, [r4, #0x50]
	adds r0, #0x7b
	strb r2, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	bl PlaySFX
	b _0802DB20
	.align 2, 0
_0802DAD4: .4byte gUnk_080CD884
_0802DAD8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldrb r1, [r4, #0xe]
	adds r3, r0, #0
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _0802DB20
	adds r0, r1, #0
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DB08
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bls _0802DB1A
	movs r0, #0x28
	b _0802DB18
_0802DB08:
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _0802DB1A
	movs r0, #0x30
_0802DB18:
	strb r0, [r4, #0x1e]
_0802DB1A:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0xe]
_0802DB20:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ble _0802DB7E
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _0802DB7E
	movs r0, #0x24
	movs r1, #4
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DB7E
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x38]
	adds r0, #0x84
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	b _0802D99C
_0802DB64:
	ldr r1, _0802DB80 @ =gUnk_080CD810
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E7E4
_0802DB7E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802DB80: .4byte gUnk_080CD810

	thumb_func_start sub_0802DB84
sub_0802DB84: @ 0x0802DB84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0802DBB0 @ =gLinkEntity
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r2, [r1]
	ldrb r1, [r2, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0802DBB4
	movs r0, #1
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	b _0802DC1A
	.align 2, 0
_0802DBB0: .4byte gLinkEntity
_0802DBB4:
	ldrb r0, [r2, #1]
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	ble _0802DBCE
	movs r3, #0
	ldrb r1, [r5, #0xe]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xe]
	b _0802DBD2
_0802DBCE:
	movs r3, #1
	strb r3, [r5, #0xe]
_0802DBD2:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802DBF0
	cmp r0, #1
	bgt _0802DBE6
	cmp r0, #0
	beq _0802DBEC
	b _0802DBF8
_0802DBE6:
	cmp r0, #2
	beq _0802DBF4
	b _0802DBF8
_0802DBEC:
	movs r0, #0x30
	b _0802DBF6
_0802DBF0:
	movs r0, #0x40
	b _0802DBF6
_0802DBF4:
	movs r0, #0x50
_0802DBF6:
	strh r0, [r5, #0x24]
_0802DBF8:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r2, [r5, r1]
	movs r1, #5
	bl sub_0802EA48
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
	adds r0, r5, #0
	bl sub_0802EBC4
_0802DC1A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802DC1C
sub_0802DC1C: @ 0x0802DC1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0802DC40 @ =gLinkEntity
	bl sub_080045C4
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	subs r3, r0, r3
	movs r0, #0x1f
	ands r3, r0
	cmp r3, #0x10
	bls _0802DC44
	cmp r3, #0x1d
	bhi _0802DC54
	b _0802DC48
	.align 2, 0
_0802DC40: .4byte gLinkEntity
_0802DC44:
	cmp r3, #2
	bls _0802DC54
_0802DC48:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldr r1, [r1]
	ldr r1, [r1, #0x50]
	strb r0, [r1, #0xe]
	b _0802DCDE
_0802DC54:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0802DC6A
	subs r0, r1, #1
	strb r0, [r6]
	adds r4, r5, #0
	adds r4, #0x84
	b _0802DCC6
_0802DC6A:
	ldrb r0, [r5, #0xe]
	movs r3, #0
	cmp r0, #1
	bne _0802DC74
	movs r3, #1
_0802DC74:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	ldr r1, [r4]
	ldrh r0, [r1]
	ldrh r1, [r1, #0x14]
	movs r2, #4
	bl sub_0802EA18
	cmp r0, #0
	beq _0802DCC6
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0802DCAC
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	subs r0, #4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xff
	orrs r0, r1
	strh r0, [r2, #0x14]
	b _0802DCBA
_0802DCAC:
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	adds r1, #4
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #8
	strh r1, [r0, #0x14]
_0802DCBA:
	ldrb r0, [r5, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0xe]
	movs r0, #0xc
	strb r0, [r6]
_0802DCC6:
	adds r0, r5, #0
	bl sub_0802E9B0
	ldr r0, [r4]
	bl sub_0802E768
	adds r0, r5, #0
	bl sub_0802E518
	adds r0, r5, #0
	bl sub_0802EBC4
_0802DCDE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802DCE0
sub_0802DCE0: @ 0x0802DCE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r0, [r5]
	ldr r1, [r0, #0x50]
	ldrb r0, [r1, #0xe]
	cmp r0, #0xc
	beq _0802DD44
	ldr r1, _0802DD1C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldr r2, [r5]
	ldrb r1, [r2, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0802DD20
	ldr r1, [r2, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0802DDD0
	.align 2, 0
_0802DD1C: .4byte gLinkEntity
_0802DD20:
	ldrb r0, [r2, #0x15]
	ldrb r1, [r4, #0x15]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802DD32
	movs r3, #0
_0802DD32:
	adds r0, r2, #0
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	ldr r0, [r5]
	bl sub_0802E768
	b _0802DDD0
_0802DD44:
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _0802DD74
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DD6E
	movs r2, #4
	strb r2, [r1]
	ldr r1, [r5]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	strb r2, [r0, #0xf]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	b _0802DDD0
_0802DD6E:
	subs r0, #1
	strb r0, [r1]
	b _0802DDD0
_0802DD74:
	ldrb r6, [r1, #0xf]
	cmp r6, #0
	bne _0802DDD0
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0802DDB2
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	strb r0, [r1, #0x15]
	ldr r2, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	ldr r1, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x54]
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x54]
_0802DDB2:
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	strb r6, [r0, #0xe]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DDC8
	movs r0, #1
	strb r0, [r1]
	b _0802DDD0
_0802DDC8:
	strb r6, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0802EB9C
_0802DDD0:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802DDD8
sub_0802DDD8: @ 0x0802DDD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, #0x76
	ldrb r0, [r0]
	movs r7, #4
	cmp r0, #0
	beq _0802DE06
	movs r7, #6
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802DE06
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0802DE06
	movs r7, #0xc
_0802DE06:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0802DE2E
	cmp r0, #0
	bge _0802DE12
	b _0802DF9A
_0802DE12:
	cmp r0, #2
	ble _0802DE18
	b _0802DF9A
_0802DE18:
	adds r6, r5, #0
	adds r6, #0x84
	cmp r0, #1
	beq _0802DEFE
	adds r0, r5, #0
	adds r0, #0x76
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0802DE76
	b _0802DE6C
_0802DE2E:
	adds r6, r5, #0
	adds r6, #0x84
	ldr r0, [r6]
	bl sub_0802EA88
	cmp r0, #0
	beq _0802DE3E
	b _0802DF9A
_0802DE3E:
	movs r4, #1
	strb r4, [r5, #0xb]
	strb r0, [r5, #0xf]
	bl Random
	ands r0, r4
	cmp r0, #0
	bne _0802DE58
	strb r0, [r5, #0x15]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	adds r0, r0, r7
	b _0802DE60
_0802DE58:
	strb r4, [r5, #0x15]
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	subs r0, r0, r7
_0802DE60:
	movs r1, #0x1f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x7a
	strb r0, [r1]
	b _0802DF9A
_0802DE6C:
	movs r2, #1
	movs r0, #2
	mov r8, r0
	movs r4, #1
	b _0802DE7E
_0802DE76:
	movs r2, #2
	movs r1, #6
	mov r8, r1
	movs r4, #0
_0802DE7E:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	ldr r0, [r0, #0x50]
	ldrb r0, [r0, #0xf]
	adds r6, r1, #0
	cmp r0, #1
	bne _0802DEC4
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _0802DEC4
	ldr r0, [r6]
	ldrb r0, [r0, #0x15]
	strb r0, [r1, #0x15]
	ldr r2, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	ldr r1, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r5, #0x54]
	ldr r0, [r6]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #0x54]
_0802DEC4:
	adds r1, r5, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802DEF4
	strb r4, [r1]
	ldr r1, [r6]
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	mov r1, r8
	strb r1, [r0, #0xf]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0802DEF8
	strb r2, [r5, #0xf]
	b _0802DEF8
_0802DEF4:
	subs r0, #1
	strb r0, [r1]
_0802DEF8:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0802DF0C
_0802DEFE:
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x40
	bl sub_0802EA48
	b _0802DF2E
_0802DF0C:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802DF22
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x20
	bl sub_0802EA48
	b _0802DF2E
_0802DF22:
	ldr r0, [r6]
	ldrb r3, [r5, #0x15]
	movs r1, #5
	movs r2, #0x10
	bl sub_0802EA48
_0802DF2E:
	adds r4, r6, #0
	ldr r0, [r4]
	bl sub_0802E768
	adds r2, r5, #0
	adds r2, #0x7a
	ldr r1, [r4]
	ldrb r0, [r2]
	ldrb r1, [r1, #0x15]
	cmp r0, r1
	bne _0802DF9A
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0802DF8A
	movs r0, #2
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0x15]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0x15]
	adds r3, r0, #0
	cmp r3, #1
	bne _0802DF6C
	lsls r0, r7, #1
	ldrb r1, [r2]
	subs r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r2]
	strb r3, [r5, #0xe]
	b _0802DF80
_0802DF6C:
	lsls r0, r7, #1
	ldrb r1, [r2]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0xe]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xe]
_0802DF80:
	ldr r0, [r6]
	ldr r1, [r0, #0x50]
	movs r0, #0xc
	strb r0, [r1, #0xe]
	b _0802DF9A
_0802DF8A:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldr r1, [r6]
	ldr r1, [r1, #0x50]
	strb r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_0802EB9C
_0802DF9A:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802DFA8
sub_0802DFA8: @ 0x0802DFA8
	push {lr}
	ldr r2, _0802DFBC @ =gUnk_080CD828
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802DFBC: .4byte gUnk_080CD828

	thumb_func_start sub_0802DFC0
sub_0802DFC0: @ 0x0802DFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _0802DFF8
	cmp r1, #4
	bls _0802DFDC
	movs r0, #0
	b _0802DFDE
_0802DFDC:
	movs r0, #1
_0802DFDE:
	strb r0, [r5, #0x15]
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldrb r3, [r5, #0x15]
	movs r1, #0
	movs r2, #0x20
	bl sub_0802EA48
	ldr r0, [r4]
	bl sub_0802EA88
	b _0802E026
_0802DFF8:
	adds r0, r2, #0
	bl sub_0802EA88
	cmp r0, #0
	bne _0802E026
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802E026
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	ldr r0, _0802E030 @ =0x00000127
	bl PlaySFX
_0802E026:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r4, r5, pc}
	.align 2, 0
_0802E030: .4byte 0x00000127

	thumb_func_start sub_0802E034
sub_0802E034: @ 0x0802E034
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802E04A
	movs r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0
	b _0802E058
_0802E04A:
	movs r0, #3
	strb r0, [r4, #0x15]
	ldr r1, _0802E078 @ =gUnk_080CD840
	ldrb r0, [r5, #1]
	lsrs r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
_0802E058:
	ldrb r1, [r5, #0x19]
	cmp r0, r1
	beq _0802E07C
	ldrb r3, [r4, #0x15]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_0802EA68
	adds r0, r5, #0
	movs r1, #0x40
	movs r2, #2
	bl sub_0802EB08
	b _0802E0B0
	.align 2, 0
_0802E078: .4byte gUnk_080CD840
_0802E07C:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #2
	bl sub_0802EB08
	cmp r0, #0
	bne _0802E0B0
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _0802E0A6
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #0
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #4
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	strb r2, [r0, #0xe]
_0802E0A6:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r5, #0x19]
_0802E0B0:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, r5, pc}

	thumb_func_start sub_0802E0B8
sub_0802E0B8: @ 0x0802E0B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x32]
	subs r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0800445C
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0802E0F4
	ldr r1, _0802E128 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802E0F4
	ldr r0, _0802E12C @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfa
	strb r1, [r0]
_0802E0F4:
	ldr r0, _0802E130 @ =gUnk_080CD844
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r5, [r3]
	movs r6, #0x7f
	adds r1, r6, #0
	ands r1, r5
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	blo _0802E158
	cmp r5, #1
	bls _0802E134
	movs r0, #0
	strb r0, [r2]
	strb r0, [r4, #0xc]
	bl sub_08078B48
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
	b _0802E1CA
	.align 2, 0
_0802E128: .4byte gLinkEntity
_0802E12C: .4byte gLinkState
_0802E130: .4byte gUnk_080CD844
_0802E134:
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0x78
	bls _0802E158
	movs r0, #0x78
	strh r0, [r1]
_0802E158:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _0802E18C @ =0xFFFF0000
	adds r5, r0, #0
	cmp r1, r2
	bne _0802E190
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x4e
	bl InitializeAnimation
	b _0802E1C4
	.align 2, 0
_0802E18C: .4byte 0xFFFF0000
_0802E190:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E1B2
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802E1B2
	ldr r0, _0802E1CC @ =0x00000127
	bl PlaySFX
_0802E1B2:
	ldrh r0, [r5]
	cmp r0, #0x77
	bhi _0802E1C4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_0802E1C4:
	adds r0, r4, #0
	bl sub_0802E518
_0802E1CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802E1CC: .4byte 0x00000127

	thumb_func_start sub_0802E1D0
sub_0802E1D0: @ 0x0802E1D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E1F6
	adds r0, r5, #0
	bl sub_08004274
_0802E1F6:
	ldrb r0, [r4]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0802E218
	ldr r1, _0802E280 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_0806FC80
	cmp r0, #0
	beq _0802E218
	ldr r0, _0802E284 @ =gLinkState
	movs r1, #1
	strb r1, [r0, #0x14]
	adds r0, #0x3f
	movs r1, #0xfa
	strb r1, [r0]
_0802E218:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E2F0
	movs r4, #0
	mov r2, r8
	adds r2, #0x30
	adds r7, r5, #0
	adds r7, #0x7c
	ldr r0, _0802E288 @ =gScreen
	mov sb, r0
	movs r1, #0x66
	add r1, sb
	mov sl, r1
_0802E23A:
	adds r1, r2, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802E2EA
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0802E2F0
	mov r1, r8
	ldr r0, [r1, #0x3c]
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
	cmp r4, #5
	bne _0802E2F0
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E28C
	movs r0, #0xf0
	strh r0, [r7]
	movs r1, #0
	bl sub_08080964
	b _0802E2E4
	.align 2, 0
_0802E280: .4byte gLinkEntity
_0802E284: .4byte gLinkState
_0802E288: .4byte gScreen
_0802E28C:
	adds r4, r7, #0
	strh r6, [r4]
	movs r0, #0x7c
	adds r0, r0, r5
	mov r8, r0
	adds r6, r5, #0
	adds r6, #0x74
	adds r7, r5, #0
	adds r7, #0x75
_0802E29E:
	ldrh r3, [r4]
	adds r0, r5, #0
	movs r1, #0x67
	movs r2, #1
	bl CreateObjectWithParent
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0802E29E
	movs r0, #0
	strb r0, [r6]
	movs r0, #0x10
	strb r0, [r7]
	movs r0, #0xb
	mov r1, r8
	strh r0, [r1]
	ldrb r1, [r6]
	ldrb r0, [r7]
	lsls r0, r0, #8
	orrs r1, r0
	mov r0, sb
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #2
	mov r1, sl
	strh r0, [r1]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
_0802E2E4:
	movs r0, #5
	strb r0, [r5, #0xb]
	b _0802E2F0
_0802E2EA:
	adds r4, #1
	cmp r4, #5
	bls _0802E23A
_0802E2F0:
	adds r0, r5, #0
	bl sub_0802E518
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802E300
sub_0802E300: @ 0x0802E300
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802E31E
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r5, r1, #0
	b _0802E35E
_0802E31E:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x7c
	cmp r0, #0x10
	beq _0802E35E
	ldrh r0, [r5]
	cmp r0, #0
	beq _0802E364
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E40C
	movs r0, #0xb
	strh r0, [r5]
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, _0802E3A0 @ =gScreen
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
_0802E35E:
	ldrh r0, [r5]
	cmp r0, #0
	bne _0802E40C
_0802E364:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E3A4
	adds r3, r4, #0
	adds r3, #0x75
	ldrb r0, [r3]
	cmp r0, #0x10
	beq _0802E3A4
	movs r0, #0xb
	strh r0, [r5]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _0802E3A0 @ =gScreen
	ldrb r1, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #8
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	b _0802E428
	.align 2, 0
_0802E3A0: .4byte gScreen
_0802E3A4:
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r5, [r0]
	ldr r1, _0802E408 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	lsls r0, r0, #3
	movs r2, #0
	adds r6, r4, #0
	adds r6, #0x80
	movs r3, #0
	adds r1, r5, #0
_0802E3CA:
	strh r3, [r1, #0x18]
	strb r0, [r1, #1]
	adds r1, #4
	adds r2, #1
	cmp r2, #5
	bls _0802E3CA
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	strb r1, [r6]
	adds r0, r4, #0
	movs r1, #0x4d
	bl InitializeAnimation
	movs r0, #0x24
	movs r1, #5
	bl CreateEnemy
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0802E400
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x38]
	adds r0, #0x84
	str r5, [r0]
_0802E400:
	ldr r1, [r5, #0x50]
	movs r0, #0x18
	strb r0, [r1, #0xe]
	b _0802E422
	.align 2, 0
_0802E408: .4byte gLinkEntity
_0802E40C:
	ldr r0, _0802E42C @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802E422
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #3
	bl sub_0804A98C
_0802E422:
	adds r0, r4, #0
	bl sub_0802E518
_0802E428:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802E42C: .4byte gUnk_030010A0

	thumb_func_start sub_0802E430
sub_0802E430: @ 0x0802E430
	push {lr}
	ldr r2, _0802E444 @ =gUnk_080CD848
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802E444: .4byte gUnk_080CD848

	thumb_func_start sub_0802E448
sub_0802E448: @ 0x0802E448
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x84
	ldr r6, [r0]
	movs r5, #5
_0802E452:
	adds r0, r6, #0
	adds r0, #0x30
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802E46E
	ldr r0, [r6, #0x3c]
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
	movs r0, #0x7d
	bl PlaySFX
_0802E46E:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0802E48A
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0802E490
	cmp r5, #0
	bne _0802E490
	movs r0, #1
	strb r0, [r7, #0xb]
	b _0802E490
_0802E48A:
	subs r5, #1
	cmp r5, #0
	bge _0802E452
_0802E490:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #9
	bhi _0802E4A6
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0x40
	movs r3, #3
	bl sub_0802EA68
_0802E4A6:
	adds r0, r7, #0
	bl sub_08004274
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0802E768
	adds r0, r7, #0
	bl sub_0802E518
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E4C0
sub_0802E4C0: @ 0x0802E4C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802E510
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _0802E50A
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802E502
	adds r0, r4, #0
	adds r0, #0x76
	strb r2, [r0]
	adds r1, #2
	movs r0, #3
	strb r0, [r1]
_0802E502:
	adds r0, r4, #0
	bl sub_0802EBC4
	b _0802E510
_0802E50A:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0802E510:
	adds r0, r4, #0
	bl sub_0802E518
	pop {r4, pc}

	thumb_func_start sub_0802E518
sub_0802E518: @ 0x0802E518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	adds r0, #0x84
	ldr r0, [r0]
	mov sb, r0
	ldr r1, [r0, #0x3c]
	ldr r0, [r1, #0x50]
	bl CopyPosition
	mov r0, sb
	ldr r1, [r0, #0x3c]
	ldrb r0, [r0, #1]
	strb r0, [r1, #0x15]
	mov r1, sb
	ldrb r6, [r1, #1]
	cmp r6, #0x10
	bls _0802E54C
	movs r0, #0xf
	eors r6, r0
	adds r6, #1
	ands r6, r0
_0802E54C:
	cmp r6, #0x10
	bne _0802E552
	movs r6, #0xf
_0802E552:
	mov r2, sb
	ldr r1, [r2, #0x3c]
	movs r0, #0xf
	eors r6, r0
	adds r0, r6, #0
	adds r0, #0x12
	lsls r0, r0, #8
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x3c]
	bl sub_0806F69C
	movs r6, #0
	movs r0, #0x3c
	add r0, sb
	mov sl, r0
	mov r1, sb
	adds r1, #0x30
	str r1, [sp, #4]
	ldr r2, [sp]
	adds r2, #0x80
	str r2, [sp, #8]
	movs r7, #0x80
	lsls r7, r7, #1
_0802E580:
	lsls r0, r6, #2
	add r0, sl
	ldr r0, [r0]
	adds r1, r6, #1
	mov r8, r1
	lsls r4, r1, #2
	mov r2, sl
	adds r5, r2, r4
	ldr r1, [r5]
	bl CopyPosition
	add r4, sb
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	ldr r1, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #4]
	adds r6, r1, r6
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	adds r1, r0, #0
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r2, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	adds r0, #0x80
	ldr r1, _0802E644 @ =gUnk_080C9160
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0806FA04
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	mov r6, r8
	cmp r6, #4
	bls _0802E580
	mov r1, sb
	ldr r0, [r1, #0x50]
	ldrb r1, [r0, #0xe]
	adds r2, r0, #0
	cmp r1, #0x18
	bne _0802E662
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	lsls r7, r0, #2
	mov r0, sb
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xc
	bls _0802E648
	adds r7, #3
	b _0802E64C
	.align 2, 0
_0802E644: .4byte gUnk_080C9160
_0802E648:
	lsrs r0, r1, #0x1a
	adds r7, r7, r0
_0802E64C:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x18
	cmp r0, r1
	beq _0802E6E8
	adds r0, r2, #0
	bl InitAnimationForceUpdate
	b _0802E6E8
_0802E662:
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802E688
	mov r0, sb
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	mov r0, sb
	ldr r2, [r0, #0x50]
	ldrb r1, [r2, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r0, r7, #2
	ldrb r2, [r2, #0xe]
	adds r7, r0, r2
	b _0802E6CA
_0802E688:
	ldr r0, [sp]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802E6C0
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r3, [r0]
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r2, r0, #3
	adds r0, r2, #0
	adds r0, #0x2f
	cmp r3, r0
	bne _0802E6BA
	ldr r0, [sp]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r7, r3, #0
	cmp r0, #0
	beq _0802E6CA
_0802E6BA:
	adds r7, r2, #0
	adds r7, #0x28
	b _0802E6CA
_0802E6C0:
	mov r2, sb
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x2f
_0802E6CA:
	mov r0, sb
	ldr r1, [r0, #0x50]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E6E2
	adds r0, r1, #0
	adds r1, r7, #0
	bl InitAnimationForceUpdate
	b _0802E6E8
_0802E6E2:
	adds r0, r1, #0
	bl UpdateAnimationSingleFrame
_0802E6E8:
	movs r6, #0
_0802E6EA:
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802E72E
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	lsls r5, r6, #2
	mov r2, sl
	adds r0, r2, r5
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r7, r7, #2
	adds r4, r6, #1
	lsls r0, r4, #2
	add r0, sb
	ldrb r0, [r0, #0x19]
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r7, r1
	adds r1, r5, #0
	b _0802E73E
_0802E72E:
	lsls r1, r6, #2
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x48
	adds r4, r6, #1
_0802E73E:
	mov r2, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E756
	adds r0, r1, #0
	adds r1, r7, #0
	bl InitializeAnimation
_0802E756:
	adds r6, r4, #0
	cmp r6, #4
	bls _0802E6EA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0802E768
sub_0802E768: @ 0x0802E768
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r6, #0x1f
_0802E770:
	lsls r3, r2, #2
	adds r0, r4, r3
	ldrb r1, [r0, #1]
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r4, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r6
	adds r5, r2, #0
	cmp r0, #0x10
	ble _0802E790
	cmp r0, #0x1e
	bgt _0802E798
	adds r1, #1
	b _0802E796
_0802E790:
	cmp r0, #1
	ble _0802E798
	subs r1, #1
_0802E796:
	ands r1, r6
_0802E798:
	adds r0, r4, r3
	strb r1, [r0, #1]
	ldrb r1, [r0, #0x19]
	lsls r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0x10
	ble _0802E7B6
	cmp r0, #0x1d
	bgt _0802E7BE
	adds r1, #1
	b _0802E7BC
_0802E7B6:
	cmp r0, #2
	ble _0802E7BE
	subs r1, #1
_0802E7BC:
	ands r1, r2
_0802E7BE:
	adds r0, r4, r3
	strb r1, [r0, #0x19]
	adds r2, r5, #0
	cmp r2, #4
	bls _0802E770
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802E7CC
sub_0802E7CC: @ 0x0802E7CC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r0, #0
	adds r2, #0x3c
	adds r2, r2, r1
	ldr r3, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0x14]
	ldr r0, [r2]
	ldrb r0, [r0, #0x14]
	bx lr

	thumb_func_start sub_0802E7E4
sub_0802E7E4: @ 0x0802E7E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E8D0
	movs r6, #0
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r0, #0x30
	add r0, ip
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
_0802E818:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r6, #1
	mov r1, r8
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E852
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E860
_0802E852:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E860:
	adds r5, #1
	cmp r5, #5
	bls _0802E818
	movs r5, #0
	movs r2, #7
	mov sb, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
_0802E872:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bhi _0802E8BA
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E8BA:
	cmp r5, #4
	bls _0802E872
	mov r1, ip
	ldr r0, [r1, #0x38]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _0802E9A4
_0802E8D0:
	movs r6, #5
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r2, #0x30
	add r2, ip
	mov r8, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov sb, r1
_0802E8EA:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	subs r6, #1
	mov r2, r8
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E924
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E932
_0802E924:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E932:
	adds r5, #1
	cmp r5, #5
	bls _0802E8EA
	movs r5, #0
	movs r0, #7
	mov sb, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov r8, r1
_0802E944:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bls _0802E98C
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E98C:
	cmp r5, #4
	bls _0802E944
	mov r1, ip
	ldr r2, [r1, #0x38]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802E9A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802E9B0
sub_0802E9B0: @ 0x0802E9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802E9D0 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_080041DC
	lsrs r2, r0, #4
	cmp r2, #0x5f
	bgt _0802E9D4
	movs r2, #0xa
	b _0802E9EA
	.align 2, 0
_0802E9D0: .4byte gLinkEntity
_0802E9D4:
	adds r1, r2, #0
	subs r1, #0x60
	cmp r1, #0
	bge _0802E9DE
	adds r1, #3
_0802E9DE:
	asrs r1, r1, #2
	movs r0, #0xa
	subs r2, r0, r1
	cmp r2, #3
	bgt _0802E9EA
	movs r2, #4
_0802E9EA:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r2, r0
	beq _0802EA10
	cmp r2, r0
	ble _0802EA04
	ldrh r0, [r3, #0x2c]
	adds r0, #0x20
	b _0802EA08
_0802EA04:
	ldrh r0, [r3, #0x2c]
	subs r0, #0x20
_0802EA08:
	ldr r2, _0802EA14 @ =0x00001FFF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3, #0x2c]
_0802EA10:
	pop {r4, pc}
	.align 2, 0
_0802EA14: .4byte 0x00001FFF

	thumb_func_start sub_0802EA18
sub_0802EA18: @ 0x0802EA18
	push {lr}
	adds r3, r2, #0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	subs r1, r1, r0
	ldr r0, _0802EA40 @ =0x00001FFF
	ands r1, r0
	lsls r3, r3, #8
	subs r2, r2, r3
	cmp r1, r2
	blo _0802EA44
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, r2
	cmp r1, r0
	bhi _0802EA44
	movs r0, #0
	b _0802EA46
	.align 2, 0
_0802EA40: .4byte 0x00001FFF
_0802EA44:
	movs r0, #1
_0802EA46:
	pop {pc}

	thumb_func_start sub_0802EA48
sub_0802EA48: @ 0x0802EA48
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	bne _0802EA52
	rsbs r2, r2, #0
_0802EA52:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r1, r1, r2
	ldr r3, _0802EA64 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0802EA64: .4byte 0x00001FFF

	thumb_func_start sub_0802EA68
sub_0802EA68: @ 0x0802EA68
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #2
	bne _0802EA72
	rsbs r2, r2, #0
_0802EA72:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r1, [r0, #0x18]
	adds r1, r1, r2
	ldr r3, _0802EA84 @ =0x00001FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0, #0x18]
	pop {r4, pc}
	.align 2, 0
_0802EA84: .4byte 0x00001FFF

	thumb_func_start sub_0802EA88
sub_0802EA88: @ 0x0802EA88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r3, #0
_0802EA90:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #1]
	ldrb r3, [r1, #1]
	cmp r0, r3
	beq _0802EAC2
	movs r6, #1
	ldrb r0, [r1, #1]
	ldrb r1, [r4, #1]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #1
	cmp r0, #0x10
	ble _0802EAB6
	movs r3, #0
_0802EAB6:
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl sub_0802EA48
	b _0802EAC8
_0802EAC2:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EA90
_0802EAC8:
	movs r3, #0
	movs r4, #0x1f
_0802EACC:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #1]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EAEE
	cmp r0, #0x1e
	bgt _0802EAF6
	adds r3, #1
	b _0802EAF4
_0802EAEE:
	cmp r0, #1
	ble _0802EAF6
	subs r3, #1
_0802EAF4:
	ands r3, r4
_0802EAF6:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #1]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EACC
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802EB08
sub_0802EB08: @ 0x0802EB08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0
	mov r8, r0
	movs r3, #0
_0802EB1A:
	lsls r0, r3, #2
	adds r4, r5, r0
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r1, r5, r0
	ldrb r0, [r4, #0x19]
	ldrb r3, [r1, #0x19]
	cmp r0, r3
	beq _0802EB4E
	movs r0, #1
	mov r8, r0
	ldrb r0, [r1, #0x19]
	ldrb r1, [r4, #0x19]
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r3, #2
	cmp r0, #0x10
	ble _0802EB42
	movs r3, #3
_0802EB42:
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_0802EA68
	b _0802EB54
_0802EB4E:
	adds r3, r2, #0
	cmp r3, #4
	bls _0802EB1A
_0802EB54:
	movs r3, #0
	movs r4, #0x1f
	rsbs r6, r7, #0
	ands r6, r4
_0802EB5C:
	adds r2, r3, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldrb r1, [r0, #0x19]
	lsls r0, r3, #2
	adds r0, r5, r0
	ldrb r0, [r0, #0x19]
	subs r0, r1, r0
	ands r0, r4
	adds r3, r1, #0
	adds r1, r2, #0
	cmp r0, #0x10
	ble _0802EB7E
	cmp r6, r0
	ble _0802EB86
	adds r3, #1
	b _0802EB84
_0802EB7E:
	cmp r7, r0
	bge _0802EB86
	subs r3, #1
_0802EB84:
	ands r3, r4
_0802EB86:
	lsls r0, r1, #2
	adds r0, r5, r0
	strb r3, [r0, #0x19]
	adds r3, r1, #0
	cmp r3, #4
	bls _0802EB5C
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802EB9C
sub_0802EB9C: @ 0x0802EB9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802EBBC @ =gUnk_080CD850
	bl sub_080028F4
	ldr r1, _0802EBC0 @ =gUnk_080CD854
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	adds r4, #0x75
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0802EBBC: .4byte gUnk_080CD850
_0802EBC0: .4byte gUnk_080CD854

	thumb_func_start sub_0802EBC4
sub_0802EBC4: @ 0x0802EBC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _0802EC66
	ldr r1, _0802EC18 @ =gUnk_080CD86C
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080028F4
	ldr r2, _0802EC1C @ =gUnk_080CD878
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0x75
	ldrb r0, [r1]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0802EC60
	strb r6, [r2]
	ldrb r1, [r5]
	cmp r1, #0
	bne _0802EC20
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #3
	strb r0, [r1]
	b _0802EC56
	.align 2, 0
_0802EC18: .4byte gUnk_080CD86C
_0802EC1C: .4byte gUnk_080CD878
_0802EC20:
	bl Random
	adds r1, r0, #0
	movs r5, #1
	ands r1, r5
	adds r3, r4, #0
	adds r3, #0x76
	ldrb r0, [r3]
	cmp r1, r0
	beq _0802EC3E
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x77
	strb r5, [r0]
	b _0802EC56
_0802EC3E:
	adds r2, r4, #0
	adds r2, #0x77
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802EC54
	eors r1, r5
	strb r5, [r2]
_0802EC54:
	strb r1, [r3]
_0802EC56:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xb]
	b _0802EC6A
_0802EC60:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _0802EC6A
_0802EC66:
	subs r0, #1
	strb r0, [r1]
_0802EC6A:
	pop {r4, r5, r6, pc}
