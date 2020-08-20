	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GyorgFemale
GyorgFemale: @ 0x08046134
	push {lr}
	ldr r2, _08046148 @ =gUnk_080D1A64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08046148: .4byte gUnk_080D1A64

	thumb_func_start sub_0804614C
sub_0804614C: @ 0x0804614C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08046248 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x3d
	bhi _08046244
	movs r0, #0x22
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r4, #0
	strb r4, [r1, #0xa]
	str r6, [r1, #0x50]
	ldr r0, [r6, #0x64]
	str r1, [r0, #0x14]
	movs r0, #0x63
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	ldr r0, [r6, #0x64]
	str r1, [r0, #0x10]
	movs r0, #0x61
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #4
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #5
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #0x61
	movs r1, #7
	bl CreateEnemy
	adds r1, r0, #0
	str r6, [r1, #0x50]
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r2, [r6, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r6, #0x1b]
	ldrb r0, [r6, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r6, #0x19]
	adds r0, r6, #0
	adds r0, #0x38
	movs r5, #2
	strb r5, [r0]
	adds r0, #0x40
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r6, #0
	adds r1, #0x70
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0804624C @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _08046250 @ =gUnk_02002F00
	adds r1, r4, #0
	bl _DmaZero
	adds r0, r6, #0
	movs r1, #0
	bl sub_0804660C
	adds r0, r6, #0
	bl sub_080464C0
	ldr r0, _08046254 @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x38
	strb r5, [r1]
	bl UpdateSpriteForCollisionLayer
	ldr r1, _08046258 @ =sub_08046498
	adds r0, r6, #0
	movs r2, #0
	bl sub_08052D74
_08046244:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046248: .4byte gEntCount
_0804624C: .4byte gUnk_02019EE0
_08046250: .4byte gUnk_02002F00
_08046254: .4byte gPlayerEntity
_08046258: .4byte sub_08046498

	thumb_func_start sub_0804625C
sub_0804625C: @ 0x0804625C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08046286
	movs r1, #0x7f
	ands r1, r2
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r3]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_0804660C
	b _0804629A
_08046286:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804629A
	movs r0, #0xbf
	ands r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_080464C0
_0804629A:
	bl sub_080465C8
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r3, #0x38
	ands r3, r1
	cmp r3, #0
	beq _080462D6
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7a
	movs r2, #0
	strh r1, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	b _0804632A
_080462D6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08046302
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x70
	movs r1, #0
	movs r0, #0x3c
	strh r0, [r2]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7a
	strh r3, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	b _0804632A
_08046302:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804632A
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804632A
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046634
_0804632A:
	pop {r4, pc}

	thumb_func_start sub_0804632C
sub_0804632C: @ 0x0804632C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080465C8
	adds r0, r4, #0
	bl sub_080466A8
	adds r3, r4, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	adds r2, r0, #1
	movs r5, #0
	strh r2, [r3]
	lsls r1, r2, #0x10
	ldr r0, _08046360 @ =0x059F0000
	cmp r1, r0
	bls _08046364
	movs r0, #0
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #3
	b _08046388
	.align 2, 0
_08046360: .4byte 0x059F0000
_08046364:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _08046374
	adds r0, r4, #0
	bl sub_08046668
	b _0804638A
_08046374:
	movs r0, #0xa5
	lsls r0, r0, #3
	cmp r1, r0
	bne _0804638A
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #5
	strb r5, [r0]
	adds r0, #2
_08046388:
	strb r5, [r0]
_0804638A:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080463B8
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080463B8
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08046634
_080463B8:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r1, [r0]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0
	bne _080463E0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	adds r0, #8
	strb r2, [r0]
_080463E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080463E4
sub_080463E4: @ 0x080463E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080465C8
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	movs r5, #0
	strh r0, [r1]
	ldr r2, _0804643C @ =0x0000FFFF
	adds r6, r2, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08046410
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08046634
_08046410:
	adds r0, r4, #0
	bl sub_080466A8
	adds r3, r4, #0
	adds r3, #0x7a
	ldrh r0, [r3]
	adds r2, r0, #1
	strh r2, [r3]
	adds r0, r2, #0
	ands r0, r6
	ldr r1, _08046440 @ =0x0000059F
	cmp r0, r1
	bls _08046444
	movs r0, #0
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #3
	b _08046468
	.align 2, 0
_0804643C: .4byte 0x0000FFFF
_08046440: .4byte 0x0000059F
_08046444:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _08046454
	adds r0, r4, #0
	bl sub_08046668
	b _0804646A
_08046454:
	movs r0, #0xa5
	lsls r0, r0, #3
	cmp r1, r0
	bne _0804646A
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #5
	strb r5, [r0]
	adds r0, #2
_08046468:
	strb r5, [r0]
_0804646A:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08046494
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strb r2, [r0]
	adds r0, #8
	strb r2, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_08046494:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08046498
sub_08046498: @ 0x08046498
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080464B8 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _080464BC @ =gUnk_02002F00
	adds r1, r4, #0
	bl _DmaZero
	adds r0, r5, #0
	bl sub_080464C0
	pop {r4, r5, pc}
	.align 2, 0
_080464B8: .4byte gUnk_02019EE0
_080464BC: .4byte gUnk_02002F00

	thumb_func_start sub_080464C0
sub_080464C0: @ 0x080464C0
	push {r4, r5, r6, lr}
	ldr r1, _08046508 @ =gUnk_080D1A74
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080197D4
	bl sub_08046518
	movs r6, #0x20
	ldr r4, _0804650C @ =gUnk_02019EE0
	ldr r0, _08046510 @ =0x00003260
	adds r5, r4, r0
_080464DE:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl sub_0801D66C
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r5, r0
	adds r4, #0x40
	subs r6, #1
	cmp r6, #0
	bne _080464DE
	ldr r0, _0804650C @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	ldr r1, _08046514 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046508: .4byte gUnk_080D1A74
_0804650C: .4byte gUnk_02019EE0
_08046510: .4byte 0x00003260
_08046514: .4byte gUnk_02000070

	thumb_func_start sub_08046518
sub_08046518: @ 0x08046518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080465AC @ =gUnk_02010654
	ldr r2, _080465B0 @ =0xFFFFBCB0
	adds r0, r1, r2
	ldr r3, _080465B4 @ =0xFFFFECB0
	adds r2, r1, r3
	ldr r7, _080465B8 @ =0x00006658
	adds r7, r1, r7
	str r7, [sp, #4]
	ldr r3, _080465BC @ =0xFFFFD658
	adds r6, r1, r3
	movs r1, #0x10
_0804653A:
	movs r5, #0x10
	movs r7, #0x80
	adds r7, r7, r0
	mov sl, r7
	adds r3, r2, #0
	adds r3, #0x80
	str r3, [sp]
	ldr r7, [sp, #4]
	adds r7, #0x40
	mov r8, r7
	movs r3, #0x40
	adds r3, r3, r6
	mov sb, r3
	subs r1, #1
	mov ip, r1
	adds r3, r0, #0
	adds r3, #0x20
	adds r4, r2, #0
	adds r4, #0x20
_08046560:
	ldrh r0, [r3]
	strh r0, [r4]
	ldrh r0, [r3]
	lsls r0, r0, #1
	ldr r7, _080465AC @ =gUnk_02010654
	adds r0, r0, r7
	ldrh r1, [r0]
	ldr r0, [sp, #4]
	adds r2, r0, r5
	ldr r7, _080465C0 @ =gUnk_080B37A0
	adds r0, r1, r7
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, r6, r5
	ldr r0, _080465C4 @ =gUnk_080B3E80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	subs r3, #2
	subs r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08046560
	mov r0, sl
	ldr r2, [sp]
	mov r1, r8
	str r1, [sp, #4]
	mov r6, sb
	mov r1, ip
	cmp r1, #0
	bne _0804653A
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080465AC: .4byte gUnk_02010654
_080465B0: .4byte 0xFFFFBCB0
_080465B4: .4byte 0xFFFFECB0
_080465B8: .4byte 0x00006658
_080465BC: .4byte 0xFFFFD658
_080465C0: .4byte gUnk_080B37A0
_080465C4: .4byte gUnk_080B3E80

	thumb_func_start sub_080465C8
sub_080465C8: @ 0x080465C8
	push {r4, lr}
	ldr r3, _080465FC @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r1, _08046600 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #3
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #3
	ldr r1, _08046604 @ =gUnk_02019EE0
	lsls r0, r0, #7
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _080465F8
	ldr r1, _08046608 @ =gPlayerState
	movs r0, #1
	strb r0, [r1, #0x14]
_080465F8:
	pop {r4, pc}
	.align 2, 0
_080465FC: .4byte gPlayerEntity
_08046600: .4byte gRoomControls
_08046604: .4byte gUnk_02019EE0
_08046608: .4byte gPlayerState

	thumb_func_start sub_0804660C
sub_0804660C: @ 0x0804660C
	push {r4, lr}
	strb r1, [r0, #0x14]
	lsrs r1, r1, #5
	lsls r1, r1, #1
	ldr r2, _0804662C @ =gUnk_080D1A84
	adds r1, r1, r2
	ldr r3, _08046630 @ =gRoomControls
	ldrh r2, [r3, #6]
	ldrh r4, [r1]
	adds r2, r2, r4
	strh r2, [r0, #0x2e]
	ldrh r2, [r3, #8]
	ldrh r1, [r1, #2]
	adds r2, r2, r1
	strh r2, [r0, #0x32]
	pop {r4, pc}
	.align 2, 0
_0804662C: .4byte gUnk_080D1A84
_08046630: .4byte gRoomControls

	thumb_func_start sub_08046634
sub_08046634: @ 0x08046634
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #0
	bne _08046650
	ldr r4, _0804664C @ =gUnk_080D1AF4
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	b _0804665A
	.align 2, 0
_0804664C: .4byte gUnk_080D1AF4
_08046650:
	bl Random
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
_0804665A:
	ldrb r2, [r5, #0x14]
	lsrs r2, r2, #3
	adds r0, r1, #0
	movs r1, #0
	bl sub_080A1ED0
	pop {r4, r5, pc}

	thumb_func_start sub_08046668
sub_08046668: @ 0x08046668
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080466A0
	adds r5, r4, #0
	adds r5, #0x78
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080466A0
	bl Random
	ldr r2, _080466A4 @ =gUnk_080D1AF8
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r1, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x7f
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080467DC
_080466A0:
	pop {r4, r5, pc}
	.align 2, 0
_080466A4: .4byte gUnk_080D1AF8

	thumb_func_start sub_080466A8
sub_080466A8: @ 0x080466A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r2, [r0]
	cmp r2, #0
	beq _0804674C
	adds r0, #1
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4, #0xe]
	adds r5, r0, #0
	cmp r1, #0
	bne _080466D0
	subs r0, #5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080466D0
	movs r0, #4
	strb r0, [r4, #0xe]
_080466D0:
	ldrb r0, [r5]
	bl sub_08000E62
	cmp r0, #2
	bls _0804674C
	movs r0, #0
	strb r0, [r4, #0xe]
	strb r0, [r5]
	adds r7, r4, #0
	adds r7, #0x78
	subs r0, #1
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r7]
	adds r0, #0x28
	bl PlaySFX
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r0, [r5]
	cmp r0, #0
	beq _08046746
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bhi _0804671E
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_0804671E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08046730
	strb r0, [r7]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0xa5
	lsls r0, r0, #3
	b _08046744
_08046730:
	adds r1, r4, #0
	adds r1, #0x7f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046746
	movs r0, #1
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x87
	lsls r0, r0, #3
_08046744:
	strh r0, [r1]
_08046746:
	adds r0, r4, #0
	bl sub_080467DC
_0804674C:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _080467CC
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080467CC
	subs r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080467CC
	adds r2, r4, #0
	adds r2, #0x80
	adds r3, r4, #0
	adds r3, #0x7d
	ldrb r0, [r2]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r2]
	strb r5, [r3]
	adds r0, r4, #0
	bl sub_080467DC
	ldr r0, [r4, #0x64]
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080467CC
	ldr r2, _080467D8 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x3e
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x2c
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080467CC
	ldr r0, [r4, #0x64]
	ldrh r0, [r0, #0x38]
	strh r0, [r2, #0x2e]
	ldr r0, [r4, #0x64]
	ldrh r0, [r0, #0x3a]
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_080467CC:
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080467D8: .4byte gPlayerEntity

	thumb_func_start sub_080467DC
sub_080467DC: @ 0x080467DC
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x64]
	movs r2, #0
	adds r0, #0x18
_080467E6:
	stm r0!, {r2}
	adds r1, #1
	cmp r1, #7
	bls _080467E6
	pop {pc}
