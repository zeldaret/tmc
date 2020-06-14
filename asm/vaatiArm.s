	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08042554
sub_08042554: @ 0x08042554
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804256C @ =gUnk_080D1230
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0804256C: .4byte gUnk_080D1230

	thumb_func_start sub_08042570
sub_08042570: @ 0x08042570
	push {lr}
	ldr r2, _08042584 @ =gUnk_080D1248
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08042584: .4byte gUnk_080D1248

	thumb_func_start sub_08042588
sub_08042588: @ 0x08042588
	push {lr}
	ldr r1, _08042594 @ =gUnk_080D1230
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08042594: .4byte gUnk_080D1230

	thumb_func_start nullsub_170
nullsub_170: @ 0x08042598
	bx lr
	.align 2, 0

	thumb_func_start sub_0804259C
sub_0804259C: @ 0x0804259C
	push {lr}
	ldr r2, _080425B0 @ =gUnk_080D125C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080425B0: .4byte gUnk_080D125C

	thumb_func_start sub_080425B4
sub_080425B4: @ 0x080425B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080437DC
	cmp r0, #0
	beq _0804264C
	adds r0, r4, #0
	adds r0, #0x7c
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r5, _08042614 @ =gUnk_030010A0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	movs r6, #1
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0
	beq _08042634
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	cmp r0, r1
	bne _08042620
	adds r0, r4, #0
	bl sub_08043EB8
	adds r0, r4, #0
	bl sub_08043ABC
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r1, [r0]
	ldrb r0, [r4, #0xb]
	adds r0, #2
	asrs r1, r0
	ands r1, r6
	cmp r1, #0
	beq _08042618
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xd]
	b _0804264C
	.align 2, 0
_08042614: .4byte gUnk_030010A0
_08042618:
	movs r0, #8
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0804264C
_08042620:
	adds r0, r4, #0
	bl sub_08044000
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	bl sub_08043A10
	b _0804264C
_08042634:
	strb r6, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldr r2, [r4, #0x64]
	ldr r1, _08042650 @ =gUnk_080D1280
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r0, r4, #0
	bl sub_08042654
_0804264C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08042650: .4byte gUnk_080D1280

	thumb_func_start sub_08042654
sub_08042654: @ 0x08042654
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	lsls r3, r0, #2
	ldr r0, [r6, #0x64]
	adds r2, r0, #0
	adds r2, #0x18
	ldrb r0, [r6, #0xd]
	cmp r0, #4
	bls _0804266A
	b _080427FC
_0804266A:
	lsls r0, r0, #2
	ldr r1, _08042674 @ =_08042678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042674: .4byte _08042678
_08042678: @ jump table
	.4byte _0804268C @ case 0
	.4byte _080426B0 @ case 1
	.4byte _080426E0 @ case 2
	.4byte _08042710 @ case 3
	.4byte _08042740 @ case 4
_0804268C:
	movs r0, #1
	strb r0, [r6, #0xd]
	ldr r1, _080426A8 @ =gUnk_080D1284
	ldrb r0, [r6, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #1]
	ldr r1, _080426AC @ =gUnk_080D1286
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_080426A8: .4byte gUnk_080D1284
_080426AC: .4byte gUnk_080D1286
_080426B0:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x34
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _080426CC
	b _0804280E
_080426CC:
	movs r0, #2
	strb r0, [r6, #0xd]
	ldr r1, _080426DC @ =gUnk_080D1286
	adds r0, r3, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_080426DC: .4byte gUnk_080D1286
_080426E0:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x44
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	bhi _080426FC
	b _0804280E
_080426FC:
	movs r0, #3
	strb r0, [r6, #0xd]
	ldr r1, _0804270C @ =gUnk_080D1286
	adds r0, r3, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_0804270C: .4byte gUnk_080D1286
_08042710:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0804280E
	movs r0, #4
	strb r0, [r6, #0xd]
	ldr r1, _0804273C @ =gUnk_080D1286
	adds r0, r3, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	b _080427EE
	.align 2, 0
_0804273C: .4byte gUnk_080D1286
_08042740:
	ldrh r0, [r2, #8]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r1, [r6, #0x64]
	adds r1, #0x64
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bls _0804280E
	movs r0, #5
	strb r0, [r6, #0xd]
	movs r0, #0x5a
	strb r0, [r6, #0xe]
	ldr r0, [r6, #0x64]
	ldr r1, [r0]
	ldrb r0, [r1, #0x10]
	movs r5, #0x80
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0]
	adds r1, #0x29
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	movs r4, #4
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #4]
	adds r1, #0x29
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #8]
	adds r1, #0x29
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #0xc]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #0xc]
	adds r1, #0x29
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x10]
	orrs r0, r5
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x64]
	ldr r0, [r0, #0x10]
	adds r0, #0x29
	ldrb r1, [r0]
	ands r3, r1
	orrs r3, r4
	strb r3, [r0]
	adds r0, r6, #0
	movs r1, #7
_080427EE:
	bl InitAnimationForceUpdate
	movs r0, #0xaf
	lsls r0, r0, #1
	bl PlaySFX
	b _0804280E
_080427FC:
	ldrb r0, [r6, #0xe]
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804280E
	adds r0, r6, #0
	bl sub_08043BC8
_0804280E:
	adds r0, r6, #0
	bl sub_08043A10
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08042818
sub_08042818: @ 0x08042818
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043CD4
	ldr r0, [r4, #0x64]
	adds r2, r0, #0
	adds r2, #0x18
	ldrh r1, [r2, #8]
	ldrh r3, [r0, #0x18]
	adds r1, r1, r3
	strh r1, [r0, #0x18]
	ldrb r0, [r2, #0xd]
	subs r0, #1
	strb r0, [r2, #0xd]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042848
	movs r0, #0x78
	strb r0, [r2, #0xd]
	movs r3, #8
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	strh r0, [r2, #8]
_08042848:
	ldrh r0, [r2, #0xa]
	ldrh r3, [r2, #4]
	adds r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	ands r0, r1
	cmp r0, #0
	bne _08042868
	movs r0, #0x50
	strb r0, [r2, #0xe]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
_08042868:
	adds r0, r4, #0
	bl sub_08043A10
	pop {r4, pc}

	thumb_func_start sub_08042870
sub_08042870: @ 0x08042870
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043CD4
	ldr r1, _08042890 @ =gUnk_080D1290
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A10
	pop {r4, pc}
	.align 2, 0
_08042890: .4byte gUnk_080D1290

	thumb_func_start sub_08042894
sub_08042894: @ 0x08042894
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r2, [r0, #0x64]
	ldr r1, _080428A8 @ =gUnk_080D12AC
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0
_080428A8: .4byte gUnk_080D12AC

	thumb_func_start sub_080428AC
sub_080428AC: @ 0x080428AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	adds r3, r0, #0
	adds r3, #0x18
	ldrb r0, [r3, #5]
	cmp r0, #0x40
	beq _080428CC
	cmp r0, #0x40
	bls _080428C6
	ldrh r0, [r3, #4]
	subs r0, #0x80
	b _080428CA
_080428C6:
	ldrh r0, [r3, #4]
	adds r0, #0x80
_080428CA:
	strh r0, [r3, #4]
_080428CC:
	ldrb r1, [r3, #1]
	ldr r2, _080428E8 @ =gUnk_080D12B0
	ldrb r0, [r4, #0xb]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #1
	cmp r1, #2
	bls _080428EC
	ldrh r0, [r3, #8]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	b _080428F4
	.align 2, 0
_080428E8: .4byte gUnk_080D12B0
_080428EC:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_080428F4:
	adds r0, r4, #0
	bl sub_08043BF0
	pop {r4, pc}

	thumb_func_start sub_080428FC
sub_080428FC: @ 0x080428FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804293C
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r1, [r4, #0x64]
	adds r1, #0x18
	movs r0, #8
	ldrsh r2, [r1, r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	rsbs r0, r0, #0
	strh r0, [r1, #8]
	ldr r0, _08042940 @ =0x00000153
	bl PlaySFX
	movs r2, #0
	movs r3, #0x3b
_0804292A:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _0804292A
_0804293C:
	pop {r4, pc}
	.align 2, 0
_08042940: .4byte 0x00000153

	thumb_func_start sub_08042944
sub_08042944: @ 0x08042944
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x64]
	adds r1, r2, #0
	adds r1, #0x18
	ldrb r0, [r1, #1]
	subs r0, #0x7c
	cmp r0, #8
	bls _08042960
	ldrh r0, [r1, #8]
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	b _08042968
_08042960:
	movs r0, #4
	strb r0, [r3, #0xd]
	ldrh r0, [r1, #8]
	strh r0, [r3, #0x24]
_08042968:
	adds r0, r3, #0
	bl sub_08043BF0
	pop {pc}

	thumb_func_start sub_08042970
sub_08042970: @ 0x08042970
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x64]
	adds r2, r4, #0
	adds r2, #0x18
	ldrb r0, [r2, #1]
	ldr r1, _080429A4 @ =gUnk_080D12B2
	ldrb r5, [r3, #0xb]
	adds r1, r5, r1
	ldrb r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bls _080429AC
	ldr r0, _080429A8 @ =gUnk_080D12B4
	adds r0, r5, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r2, #8]
	adds r1, r1, r0
	strh r1, [r2, #8]
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	b _080429CA
	.align 2, 0
_080429A4: .4byte gUnk_080D12B2
_080429A8: .4byte gUnk_080D12B4
_080429AC:
	movs r0, #5
	strb r0, [r3, #0xd]
	movs r0, #0x3c
	strb r0, [r3, #0xe]
	movs r2, #0
	movs r4, #0x39
_080429B8:
	ldr r0, [r3, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r4, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080429B8
_080429CA:
	adds r0, r3, #0
	bl sub_08043BF0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080429D4
sub_080429D4: @ 0x080429D4
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080429FA
	movs r0, #6
	strb r0, [r1, #0xd]
	ldr r4, [r1, #0x64]
	adds r4, #0x18
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	movs r1, #6
	bl __divsi3
	strh r0, [r4, #8]
_080429FA:
	pop {r4, pc}

	thumb_func_start sub_080429FC
sub_080429FC: @ 0x080429FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x64]
	adds r5, r3, #0
	adds r5, #0x18
	ldrb r1, [r5, #1]
	ldr r2, _08042A28 @ =gUnk_080D12B6
	ldrb r0, [r4, #0xb]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #1
	cmp r1, #2
	bls _08042A2C
	ldrh r0, [r5, #8]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
	adds r0, r4, #0
	bl sub_08043BF0
	b _08042A3A
	.align 2, 0
_08042A28: .4byte gUnk_080D12B6
_08042A2C:
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
_08042A3A:
	pop {r4, r5, pc}

	thumb_func_start sub_08042A3C
sub_08042A3C: @ 0x08042A3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08042A68 @ =gUnk_080D12B8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A10
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	adds r4, #0x78
	ldrh r0, [r1, #0x36]
	ldrb r4, [r4]
	adds r0, r0, r4
	strh r0, [r1, #0x36]
	pop {r4, pc}
	.align 2, 0
_08042A68: .4byte gUnk_080D12B8

	thumb_func_start sub_08042A6C
sub_08042A6C: @ 0x08042A6C
	adds r3, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r3, #0xd]
	adds r0, #0x78
	strb r2, [r0]
	adds r0, #6
	strb r1, [r0]
	ldr r1, [r3, #0x64]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x22]
	bx lr
	.align 2, 0

	thumb_func_start sub_08042A88
sub_08042A88: @ 0x08042A88
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x64]
	adds r2, r3, #0
	adds r2, #0x18
	ldr r1, _08042AA8 @ =gUnk_080D12C8
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _08042ABC
	cmp r1, r0
	bhs _08042AB0
	ldr r1, _08042AAC @ =0xFFFFFF00
	b _08042AB4
	.align 2, 0
_08042AA8: .4byte gUnk_080D12C8
_08042AAC: .4byte 0xFFFFFF00
_08042AB0:
	movs r1, #0x80
	lsls r1, r1, #1
_08042AB4:
	adds r0, r1, #0
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_08042ABC:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #4]
	cmp r0, r1
	bge _08042ACE
	ldrh r0, [r2, #0xa]
	subs r0, r1, r0
	strh r0, [r2, #4]
	b _08042AE6
_08042ACE:
	movs r0, #0
	strh r0, [r2, #4]
	ldr r1, _08042AE8 @ =gUnk_080D12CA
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_08042AE6:
	pop {r4, pc}
	.align 2, 0
_08042AE8: .4byte gUnk_080D12CA

	thumb_func_start sub_08042AEC
sub_08042AEC: @ 0x08042AEC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042B1C
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x3f
	movs r4, #0x3d
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0xe
	bl InitAnimationForceUpdate
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r4, [r0]
_08042B1C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08042B20
sub_08042B20: @ 0x08042B20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	cmp r0, #0x7a
	bhi _08042B3E
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r2, [r1, #4]
	adds r0, r0, r2
	strh r0, [r1, #4]
	b _08042B42
_08042B3E:
	movs r0, #0x80
	strb r0, [r1, #5]
_08042B42:
	ldrb r0, [r1, #5]
	cmp r0, #0x30
	bls _08042B50
	ldrh r0, [r1, #8]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_08042B50:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08042BE0
	adds r0, r5, #0
	bl sub_08043C40
	movs r6, #0
	movs r7, #0xa
	rsbs r7, r7, #0
_08042B68:
	ldr r0, [r5, #0x64]
	lsls r1, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, r7
	blt _08042BD4
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08042BD4
	cmp r6, #0
	bne _08042BBA
	movs r0, #0xaf
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042B9C
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x50]
_08042B9C:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x10]
	str r1, [r0, #0x68]
	movs r0, #0xaf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042BBA
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x10]
	bl CopyPosition
_08042BBA:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _08042BDC @ =0x00000161
	bl PlaySFX
_08042BD4:
	adds r6, #1
	cmp r6, #3
	bls _08042B68
	b _08042C12
	.align 2, 0
_08042BDC: .4byte 0x00000161
_08042BE0:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r1, #2
	strb r1, [r0]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08042C12
	movs r0, #5
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x3f
	movs r1, #0x39
	strb r1, [r0]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r1, [r0]
_08042C12:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08042C14
sub_08042C14: @ 0x08042C14
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08042C30 @ =gUnk_080D12D0
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A78
	pop {r4, pc}
	.align 2, 0
_08042C30: .4byte gUnk_080D12D0

	thumb_func_start sub_08042C34
sub_08042C34: @ 0x08042C34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042D0C
	movs r0, #0x3c
	strb r0, [r7, #0xe]
	movs r0, #3
	strb r0, [r7, #0xf]
	movs r0, #1
	strb r0, [r7, #0xd]
	bl Random
	movs r1, #6
	ands r1, r0
	ldr r0, _08042D14 @ =gUnk_080D12F8
	adds r1, r1, r0
	ldr r3, _08042D18 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r6, r2, r0
	movs r0, #0x32
	ldrsh r2, [r3, r0]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r5, r2, r0
	ldr r3, _08042D1C @ =gRoomControls
	ldrh r2, [r3, #6]
	adds r0, r2, #0
	adds r0, #0x20
	cmp r0, r6
	ble _08042C86
	adds r6, r0, #0
_08042C86:
	ldrh r0, [r3, #0x1e]
	adds r0, r2, r0
	subs r0, #0x20
	cmp r0, r6
	bge _08042C92
	adds r6, r0, #0
_08042C92:
	ldrh r1, [r3, #8]
	adds r0, r1, #0
	adds r0, #0x20
	cmp r0, r5
	ble _08042C9E
	adds r5, r0, #0
_08042C9E:
	ldrh r0, [r3, #0x20]
	adds r0, r1, r0
	subs r0, #0x40
	cmp r0, r5
	bge _08042CAA
	adds r5, r0, #0
_08042CAA:
	subs r0, r6, r2
	subs r0, #0x90
	cmp r0, #0x40
	bhi _08042CC2
	subs r0, r5, r1
	subs r0, #8
	cmp r0, #0x40
	bhi _08042CC2
	adds r6, r2, #0
	adds r6, #0xb0
	adds r5, r1, #0
	adds r5, #0x40
_08042CC2:
	movs r4, #0
	mov r8, r4
	movs r3, #0x18
_08042CC8:
	ldr r0, [r7, #0x64]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	strh r6, [r2, #0x2e]
	strh r5, [r2, #0x32]
	movs r0, #0x32
	strh r0, [r2, #0x36]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x39
	strb r0, [r1]
	ldr r1, [r7, #0x64]
	adds r1, r1, r3
	movs r0, #0x80
	strh r0, [r1]
	mov r0, r8
	strh r0, [r1, #4]
	ldr r0, _08042D20 @ =gUnk_080D1419
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	cmp r4, #0
	beq _08042D04
	adds r0, r2, #0
	movs r1, #0x12
	str r3, [sp]
	bl InitializeAnimation
	ldr r3, [sp]
_08042D04:
	adds r3, #0x10
	adds r4, #1
	cmp r4, #3
	bls _08042CC8
_08042D0C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042D14: .4byte gUnk_080D12F8
_08042D18: .4byte gLinkEntity
_08042D1C: .4byte gRoomControls
_08042D20: .4byte gUnk_080D1419

	thumb_func_start sub_08042D24
sub_08042D24: @ 0x08042D24
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042D68
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0x3d
	strb r1, [r0]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r1, [r0]
	movs r0, #0xaf
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042D5E
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0x50]
_08042D5E:
	str r1, [r4, #0x68]
	adds r0, r4, #0
	movs r1, #0xd
	bl InitAnimationForceUpdate
_08042D68:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042D6C
sub_08042D6C: @ 0x08042D6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
_08042D72:
	ldr r0, [r5, #0x64]
	lsls r1, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #3
	bgt _08042DC4
	cmp r6, #2
	beq _08042D8E
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08042D8E:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08042DB4
	movs r0, #0xaf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08042DB4
	adds r0, r4, #0
	bl CopyPosition
	movs r0, #0xb3
	lsls r0, r0, #1
	bl PlaySFX
_08042DB4:
	ldrb r0, [r4, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08042DC4:
	adds r6, #1
	cmp r6, #3
	bls _08042D72
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0xc]
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08042E28
	ldr r0, _08042E20 @ =0x0000FFFB
	strh r0, [r4, #0x36]
	ldr r2, [r5, #0x64]
	ldr r1, _08042E24 @ =gUnk_080D1300
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	ldr r1, [r5, #0x64]
	movs r0, #0xc0
	strh r0, [r1, #0x22]
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x3f
	movs r4, #0x39
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x7f
	movs r0, #0x2d
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	adds r0, #0x3f
	strb r4, [r0]
	b _08042E2C
	.align 2, 0
_08042E20: .4byte 0x0000FFFB
_08042E24: .4byte gUnk_080D1300
_08042E28:
	subs r0, r2, #2
	strh r0, [r4, #0x36]
_08042E2C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08042E30
sub_08042E30: @ 0x08042E30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x7f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08042E4A
	adds r0, r6, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08042EF0
	b _08042E4E
_08042E4A:
	subs r0, #1
	strb r0, [r1]
_08042E4E:
	ldr r7, [r6, #0x64]
	adds r5, r7, #0
	adds r5, #0x18
	ldrb r0, [r6, #0xe]
	subs r0, #1
	strb r0, [r6, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042EB2
	movs r0, #4
	strb r0, [r6, #0xd]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x28
	strb r0, [r6, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #0x24]
	ldrb r0, [r5, #1]
	lsrs r0, r0, #3
	strb r0, [r6, #0x15]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldr r3, _08042ED4 @ =gRoomControls
	ldrh r2, [r3, #6]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r2, r2, r4
	ldrh r3, [r3, #8]
	adds r3, #0x60
	bl sub_080045D4
	adds r4, r0, #0
	bl Random
	ldr r2, _08042ED8 @ =gUnk_080D1304
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x79
	strb r0, [r1]
_08042EB2:
	ldrh r0, [r5, #8]
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r0, [r5, #0xa]
	ldrh r2, [r5, #4]
	adds r1, r0, r2
	strh r1, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08042EDC
	ldrb r0, [r5, #5]
	cmp r0, #0x18
	bls _08042EEA
	movs r4, #0xa
	ldrsh r0, [r5, r4]
	b _08042EE6
	.align 2, 0
_08042ED4: .4byte gRoomControls
_08042ED8: .4byte gUnk_080D1304
_08042EDC:
	ldrb r0, [r5, #5]
	cmp r0, #3
	bhi _08042EEA
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08042EE6:
	rsbs r0, r0, #0
	strh r0, [r5, #0xa]
_08042EEA:
	adds r0, r6, #0
	bl UpdateAnimationSingleFrame
_08042EF0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08042EF4
sub_08042EF4: @ 0x08042EF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08042FCE
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042F4E
	ldr r0, _08042F38 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x50
	bl sub_0806FCB8
	cmp r0, #0
	beq _08042F3C
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	b _08042F4E
	.align 2, 0
_08042F38: .4byte gLinkEntity
_08042F3C:
	movs r0, #5
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xf
	bl InitAnimationForceUpdate
	ldr r0, _08042FD4 @ =0x0000019B
	bl PlaySFX
_08042F4E:
	ldr r0, [r4, #0x64]
	adds r7, r0, #0
	adds r7, #0x18
	ldrb r0, [r7, #5]
	cmp r0, #0x1f
	bhi _08042F66
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r7, #4]
	adds r0, r0, r2
	strh r0, [r7, #4]
_08042F66:
	ldr r0, [r4, #0x50]
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	mov r8, r3
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	adds r6, r0, #0
	subs r6, #0x10
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x30
	bl sub_0806FCB8
	adds r5, r4, #0
	adds r5, #0x79
	cmp r0, #0
	beq _08042FAC
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	mov r2, r8
	adds r3, r6, #0
	bl sub_080045D4
	adds r1, r0, #0
	ldrb r0, [r5]
	subs r0, r0, r1
	adds r0, #4
	cmp r0, #8
	bhi _08042FAC
	movs r0, #0x10
	eors r1, r0
	strb r1, [r5]
_08042FAC:
	ldrb r0, [r5]
	ldrb r3, [r4, #0x15]
	cmp r0, r3
	beq _08042FC2
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	lsls r0, r0, #3
	strb r0, [r7, #1]
_08042FC2:
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	ldrb r1, [r4, #0x15]
	strb r1, [r0, #0x15]
	bl sub_080AEF88
_08042FCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042FD4: .4byte 0x0000019B

	thumb_func_start sub_08042FD8
sub_08042FD8: @ 0x08042FD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r5, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08043046
	adds r6, r5, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043018
	movs r0, #0x20
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _08043046
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #0x18
	movs r1, #0
	strh r0, [r4, #0x36]
	strb r1, [r6]
	b _08043046
_08043018:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043046
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043036
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	b _08043046
_08043036:
	movs r0, #3
	strb r0, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_08043046:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08043048
sub_08043048: @ 0x08043048
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043C98
	cmp r0, #0
	bne _080430CC
	ldr r2, [r4, #0x64]
	adds r1, r2, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	cmp r0, #0x4f
	bhi _08043094
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r1, #4]
	adds r0, r0, r3
	strh r0, [r1, #4]
	ldrb r0, [r1, #5]
	cmp r0, #0x4f
	bls _080430C6
	movs r2, #0
	movs r3, #0x3b
_08043076:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _08043076
	ldr r0, _08043090 @ =0x00000153
	bl PlaySFX
	b _080430C6
	.align 2, 0
_08043090: .4byte 0x00000153
_08043094:
	movs r3, #8
	ldrsh r0, [r1, r3]
	lsls r0, r0, #3
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080430C6
	movs r0, #7
	strb r0, [r4, #0xd]
	movs r2, #0
	movs r3, #0x39
_080430B4:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080430B4
_080430C6:
	adds r0, r4, #0
	bl sub_08043B9C
_080430CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080430D0
sub_080430D0: @ 0x080430D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043C98
	cmp r0, #0
	bne _08043128
	ldr r1, [r4, #0x64]
	adds r2, r1, #0
	adds r2, #0x18
	ldrh r0, [r2, #8]
	ldrh r3, [r1, #0x18]
	adds r0, r0, r3
	strh r0, [r1, #0x18]
	ldr r1, _08043110 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r2, #4]
	adds r0, r0, r3
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	cmp r0, #0x17
	bhi _08043128
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043114
	movs r0, #8
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _08043128
	.align 2, 0
_08043110: .4byte 0xFFFFFF00
_08043114:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, _0804312C @ =0x0000FF40
	strh r0, [r2, #0xa]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_08043128:
	pop {r4, pc}
	.align 2, 0
_0804312C: .4byte 0x0000FF40

	thumb_func_start sub_08043130
sub_08043130: @ 0x08043130
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x64]
	adds r4, r1, #0
	adds r4, #0x18
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08043160
	adds r0, r6, #0
	bl sub_08043C98
	cmp r0, #0
	bne _080431E0
	ldrb r0, [r4, #5]
	subs r0, #1
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080431E0
	adds r0, r6, #0
	movs r1, #0xd
	bl InitAnimationForceUpdate
	b _080431E0
_08043160:
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _08043186
	subs r0, #1
	strb r0, [r6, #0xe]
	movs r5, #1
	movs r1, #0x28
_0804316E:
	ldr r0, [r6, #0x64]
	adds r4, r0, r1
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0804317C
	subs r0, #1
	strb r0, [r4, #5]
_0804317C:
	adds r1, #0x10
	adds r5, #1
	cmp r5, #3
	bls _0804316E
	b _080431E0
_08043186:
	ldr r1, [r1, #0xc]
	ldrh r0, [r1, #0x36]
	adds r0, #3
	strh r0, [r1, #0x36]
	movs r5, #0
	movs r7, #4
	rsbs r7, r7, #0
_08043194:
	ldr r0, [r6, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, r7
	ble _080431C4
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080431BC
	ldr r0, _080431E4 @ =0x00000161
	bl PlaySFX
_080431BC:
	ldrb r1, [r4, #0x18]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080431C4:
	adds r5, #1
	cmp r5, #3
	bls _08043194
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080431E0
	movs r0, #9
	strb r0, [r6, #0xd]
	movs r0, #0x3c
	strb r0, [r6, #0xe]
	adds r0, r6, #0
	bl sub_0804AA1C
_080431E0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080431E4: .4byte 0x00000161

	thumb_func_start sub_080431E8
sub_080431E8: @ 0x080431E8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0804324E
	movs r0, #6
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r5, #0
	ldr r7, _08043250 @ =gUnk_080D130C
	movs r6, #0x18
_08043206:
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, _08043254 @ =gUnk_080D1414
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	cmp r5, #3
	bne _08043230
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x11
	bl InitializeAnimation
_08043230:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #3
	bls _08043206
	ldr r2, [r4, #0x64]
	ldr r1, _08043258 @ =gUnk_080D1310
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r0, r4, #0
	movs r1, #0xe
	bl InitAnimationForceUpdate
_0804324E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043250: .4byte gUnk_080D130C
_08043254: .4byte gUnk_080D1414
_08043258: .4byte gUnk_080D1310

	thumb_func_start sub_0804325C
sub_0804325C: @ 0x0804325C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043CD4
	ldr r0, _0804329C @ =gUnk_080D1314
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043A10
	adds r2, r4, #0
	adds r2, #0x78
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _080432A4
	cmp r1, #2
	bls _080432A0
	subs r0, #2
	strb r0, [r2]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x36]
	ldrb r2, [r2]
	adds r0, r0, r2
	strh r0, [r1, #0x36]
	b _080432A4
	.align 2, 0
_0804329C: .4byte gUnk_080D1314
_080432A0:
	movs r0, #0
	strb r0, [r2]
_080432A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080432A8
sub_080432A8: @ 0x080432A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #3
	movs r2, #0
	ldr r0, [r4, #0x64]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bls _080432C2
	subs r0, #1
	strb r0, [r1, #0xc]
	movs r2, #1
_080432C2:
	subs r3, #1
	cmp r3, #0
	blt _080432E0
	lsls r0, r3, #4
	adds r0, #0x18
	ldr r1, [r4, #0x64]
	adds r1, r1, r0
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bls _080432C2
	subs r0, #1
	strb r0, [r1, #0xc]
	adds r2, #1
	cmp r2, #1
	ble _080432C2
_080432E0:
	ldr r0, [r4, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	subs r0, #2
	strb r0, [r1, #5]
	movs r3, #0
	movs r6, #0x80
	movs r7, #4
	rsbs r7, r7, #0
	movs r5, #1
_080432F6:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0x36
	ldrsh r0, [r2, r1]
	cmp r0, #3
	bgt _08043316
	ldrb r0, [r2, #0x10]
	orrs r0, r6
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x18]
_08043316:
	adds r3, #1
	cmp r3, #3
	ble _080432F6
	ldr r1, [r4, #0x64]
	ldr r0, [r1]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	cmp r2, #1
	bne _08043348
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08043348
	strb r2, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #0x1c]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	bl sub_0804AA1C
_08043348:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804334C
sub_0804334C: @ 0x0804334C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08043388
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804341C
	movs r5, #0
	movs r7, #0x80
	movs r6, #4
	rsbs r6, r6, #0
	movs r3, #1
_0804336A:
	ldr r0, [r4, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	orrs r0, r7
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x18]
	adds r5, #1
	cmp r5, #4
	bls _0804336A
_08043388:
	ldr r3, [r4, #0x64]
	adds r2, r3, #0
	adds r2, #0x18
	ldr r1, _080433AC @ =gUnk_080D131C
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r2, #1]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #2
	bls _080433B0
	ldrh r0, [r2, #8]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
	movs r7, #0
	b _080433B2
	.align 2, 0
_080433AC: .4byte gUnk_080D131C
_080433B0:
	movs r7, #1
_080433B2:
	adds r0, r4, #0
	bl sub_08043B9C
	movs r5, #0
	movs r6, #0x18
_080433BC:
	ldr r0, [r4, #0x64]
	adds r2, r0, r6
	ldr r0, _080433E4 @ =gUnk_080D1414
	adds r0, r5, r0
	ldrb r1, [r2, #0xc]
	ldrb r3, [r0]
	cmp r3, r1
	bls _080433E8
	adds r0, r1, #1
	strb r0, [r2, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r3, r0
	bne _0804341C
	movs r0, #0xaf
	lsls r0, r0, #1
	bl PlaySFX
	b _0804341C
	.align 2, 0
_080433E4: .4byte gUnk_080D1414
_080433E8:
	cmp r7, #0
	beq _08043414
	cmp r5, #4
	bne _08043414
	adds r0, r4, #0
	bl sub_08043BC8
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08043414
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x14]
	movs r0, #2
	strb r0, [r1, #0xd]
_08043414:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #4
	bls _080433BC
_0804341C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08043420
sub_08043420: @ 0x08043420
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804343C @ =gUnk_080D1320
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08043ABC
	pop {r4, pc}
	.align 2, 0
_0804343C: .4byte gUnk_080D1320

	thumb_func_start sub_08043440
sub_08043440: @ 0x08043440
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r5, #0
	movs r6, #0
	movs r4, #0x18
_0804344C:
	ldr r0, [r3, #0x64]
	adds r1, r0, r4
	ldrb r0, [r1, #5]
	cmp r0, #0x10
	bls _0804345E
	subs r0, #0x10
	strb r0, [r1, #5]
	adds r5, #1
	b _08043460
_0804345E:
	strh r6, [r1, #4]
_08043460:
	adds r4, #0x10
	adds r2, #1
	cmp r2, #4
	bls _0804344C
	cmp r5, #0
	bne _0804348C
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #8
_08043472:
	ldr r0, [r3, #0x64]
	lsls r1, r2, #4
	adds r0, r0, r1
	strh r4, [r0, #0x18]
	adds r2, #1
	cmp r2, #4
	bls _08043472
	movs r0, #1
	strb r0, [r3, #0xd]
	adds r0, r3, #0
	movs r1, #0x10
	bl InitAnimationForceUpdate
_0804348C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08043490
sub_08043490: @ 0x08043490
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	mov ip, r0
	ldrh r1, [r0, #0x36]
	movs r2, #0x36
	ldrsh r0, [r0, r2]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080434C4
	movs r0, #0xc0
	lsls r0, r0, #9
	mov r3, ip
	str r0, [r3, #0x20]
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x7e
	strb r0, [r2]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd]
	b _08043514
_080434C4:
	subs r0, r1, #2
	mov r1, ip
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08043514
	ldrb r0, [r1, #0x10]
	movs r3, #0x80
	orrs r0, r3
	strb r0, [r1, #0x10]
	ldrb r1, [r1, #0x18]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	strb r0, [r2, #0x18]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x3f
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, _0804351C @ =gUnk_080FD450
	mov r1, ip
	str r0, [r1, #0x48]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x10]
	orrs r3, r0
	strb r3, [r1, #0x10]
	ldr r0, [r4, #0x64]
	ldr r2, [r0, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_08043514:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_0804351C: .4byte gUnk_080FD450

	thumb_func_start sub_08043520
sub_08043520: @ 0x08043520
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x10]
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08043556
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08043556
	ldr r0, _08043558 @ =0x0000FFFA
	strh r0, [r4, #0x36]
	movs r0, #3
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x7a
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
_08043556:
	pop {r4, r5, pc}
	.align 2, 0
_08043558: .4byte 0x0000FFFA

	thumb_func_start sub_0804355C
sub_0804355C: @ 0x0804355C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043DB0
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043578
	movs r0, #4
	strb r0, [r4, #0xd]
_08043578:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_08043580
sub_08043580: @ 0x08043580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x36]
	adds r0, #3
	strh r0, [r1, #0x36]
	movs r2, #0
	movs r5, #4
	rsbs r5, r5, #0
	movs r6, #0x7f
_08043596:
	ldr r0, [r4, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r1, #0x36
	ldrsh r0, [r3, r1]
	cmp r0, r5
	ble _080435B6
	ldrb r1, [r3, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #0x10]
	ldrb r1, [r3, #0x18]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3, #0x18]
_080435B6:
	adds r2, #1
	cmp r2, #4
	bls _08043596
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080435EE
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x64]
	ldr r3, [r0, #0x10]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x39
	strb r0, [r1]
	ldr r0, _080435F0 @ =gUnk_080FD538
	str r0, [r3, #0x48]
	adds r0, r4, #0
	bl sub_0804AA1C
_080435EE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080435F0: .4byte gUnk_080FD538

	thumb_func_start sub_080435F4
sub_080435F4: @ 0x080435F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08043674
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	movs r5, #0
	ldr r0, _08043658 @ =gUnk_080D1338
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0x18
	ldr r7, _0804365C @ =gUnk_080D133C
_08043622:
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #4]
	mov r0, r8
	strb r0, [r1, #0xc]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #8]
	ldr r0, [r4, #0x64]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r5, #0
	bne _08043660
	adds r0, r2, #0
	bl sub_08043B9C
	b _0804366C
	.align 2, 0
_08043658: .4byte gUnk_080D1338
_0804365C: .4byte gUnk_080D133C
_08043660:
	ldr r0, _0804367C @ =gUnk_080D1340
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	bl InitializeAnimation
_0804366C:
	adds r6, #0x10
	adds r5, #1
	cmp r5, #4
	bls _08043622
_08043674:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804367C: .4byte gUnk_080D1340

	thumb_func_start sub_08043680
sub_08043680: @ 0x08043680
	push {lr}
	ldr r2, _08043694 @ =gUnk_080D1348
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08043694: .4byte gUnk_080D1348

	thumb_func_start sub_08043698
sub_08043698: @ 0x08043698
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r3, #0
	movs r5, #0x7f
_080436A8:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r3, #1
	cmp r3, #4
	bls _080436A8
	pop {r4, r5, pc}

	thumb_func_start sub_080436C0
sub_080436C0: @ 0x080436C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080436FC
	movs r0, #0x14
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	str r5, [r0, #0x64]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl DeleteEntity
_080436FC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043700
sub_08043700: @ 0x08043700
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08043734
	movs r0, #0x14
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	str r5, [r0, #0x64]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl DeleteEntity
_08043734:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043738
sub_08043738: @ 0x08043738
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0804376C
	movs r0, #0x14
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	str r5, [r0, #0x64]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl DeleteEntity
_0804376C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043770
sub_08043770: @ 0x08043770
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080437D8
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x14]
	ldr r0, _080437AC @ =gUnk_030010A0
	adds r5, r0, #0
	adds r5, #0x39
	ldrb r1, [r5]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0804379A
	movs r0, #2
	strb r0, [r3, #0xd]
_0804379A:
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _080437B0
	ldr r0, [r3, #0x64]
	str r4, [r0, #0x14]
	ldrb r1, [r5]
	movs r0, #0xfe
	b _080437B8
	.align 2, 0
_080437AC: .4byte gUnk_030010A0
_080437B0:
	ldr r0, [r3, #0x64]
	str r4, [r0, #0x18]
	ldrb r1, [r5]
	movs r0, #0xfd
_080437B8:
	ands r0, r1
	strb r0, [r5]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	adds r0, #0x45
	strb r1, [r0]
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x50]
	bl DeleteThisEntity
_080437D8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080437DC
sub_080437DC: @ 0x080437DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0804392C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bls _080437EE
	b _08043934
_080437EE:
	movs r0, #0x68
	bl sub_0801D8E0
	adds r7, r0, #0
	cmp r7, #0
	bne _080437FC
	b _08043934
_080437FC:
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #5
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	movs r5, #0x10
	orrs r0, r5
	strb r0, [r1]
	str r7, [r6, #0x64]
	str r6, [r7]
	movs r0, #0x52
	movs r1, #1
	bl CreateEnemy
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #4]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	movs r0, #0x52
	movs r1, #2
	bl CreateEnemy
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #8]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	movs r0, #0x52
	movs r1, #3
	bl CreateEnemy
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #0xc]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	movs r0, #0x52
	movs r1, #4
	bl CreateEnemy
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r1]
	adds r1, #0x13
	ldrb r0, [r1]
	orrs r5, r0
	strb r5, [r1]
	str r7, [r2, #0x64]
	str r2, [r7, #0x10]
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	ldr r0, [r6, #0x50]
	str r0, [r7, #0x14]
	ldr r1, _08043930 @ =gUnk_080D135C
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r3, #0
	strh r2, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	strh r1, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x24
	strb r3, [r0]
	strh r2, [r7, #0x28]
	strh r1, [r7, #0x2c]
	adds r0, #0x10
	strb r3, [r0]
	strh r2, [r7, #0x38]
	strh r1, [r7, #0x3c]
	adds r0, #0x10
	strb r3, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #8
	strb r3, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #8
	strb r3, [r0]
	movs r0, #1
	b _08043936
	.align 2, 0
_0804392C: .4byte gUnk_03003DBC
_08043930: .4byte gUnk_080D135C
_08043934:
	movs r0, #0
_08043936:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804393C
sub_0804393C: @ 0x0804393C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	cmp r2, #0
	beq _0804397C
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	bhi _0804397C
	ldr r4, _08043978 @ =gUnk_080D1362
	ldrb r3, [r5, #0xa]
	lsls r1, r3, #4
	lsrs r0, r2, #0x1b
	movs r2, #0xf
	ands r0, r2
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r4, [r1]
	adds r6, r3, #0
	b _08043980
	.align 2, 0
_08043978: .4byte gUnk_080D1362
_0804397C:
	movs r4, #0
	ldrb r6, [r5, #0xa]
_08043980:
	lsls r0, r6, #4
	adds r0, #0x18
	ldr r2, [r5, #0x64]
	mov ip, r2
	adds r2, r2, r0
	ldrb r0, [r2, #0xc]
	adds r0, r4, r0
	lsls r4, r0, #8
	ldr r3, _08043A0C @ =gUnk_080C9160
	ldrb r1, [r2, #5]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	adds r7, r0, #0
	muls r7, r4, r7
	mov r8, r7
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	muls r0, r4, r0
	cmp r0, #0
	bge _080439BC
	adds r0, #0xff
_080439BC:
	asrs r4, r0, #8
	ldrb r1, [r2, #1]
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r3, r0, #0
	muls r3, r4, r3
	adds r0, r6, #1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r1, r5, #0
	bl PositionRelative
	ldr r0, [r5, #0x34]
	add r0, r8
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x64]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #0x63
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043A0C: .4byte gUnk_080C9160

	thumb_func_start sub_08043A10
sub_08043A10: @ 0x08043A10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08043B7C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x32]
	subs r0, #8
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r4, #0x7c
	ldrb r0, [r4]
	cmp r0, #0
	beq _08043A76
	subs r0, #1
	strb r0, [r4]
_08043A76:
	pop {r4, pc}

	thumb_func_start sub_08043A78
sub_08043A78: @ 0x08043A78
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08043B7C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043ABC
sub_08043ABC: @ 0x08043ABC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08043B7C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	bl sub_0804393C
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x64]
	ldr r1, [r0]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043B08
sub_08043B08: @ 0x08043B08
	push {r4, r5, r6, lr}
	ldrb r3, [r0, #0xa]
	lsls r1, r3, #4
	adds r4, r1, #0
	adds r4, #8
	ldr r2, [r0, #0x64]
	adds r6, r2, r4
	adds r1, #0x18
	adds r4, r2, r1
	ldr r0, _08043B40 @ =gUnk_080D13B2
	adds r3, r3, r0
	ldrb r5, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08043B44
	ldrb r1, [r6, #1]
	ldrb r0, [r4, #1]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r5, r3
	bhs _08043B5E
	cmp r3, #0
	ble _08043B56
	subs r0, r1, r5
	b _08043B5C
	.align 2, 0
_08043B40: .4byte gUnk_080D13B2
_08043B44:
	ldrb r0, [r4, #1]
	ldrb r1, [r6, #1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r5, r3
	bhs _08043B5E
	cmp r3, #0
	bge _08043B5A
_08043B56:
	strb r1, [r4, #1]
	b _08043B5E
_08043B5A:
	adds r0, r1, r5
_08043B5C:
	strb r0, [r4, #1]
_08043B5E:
	ldrb r2, [r6, #5]
	ldrb r0, [r4, #5]
	subs r3, r2, r0
	lsls r1, r5, #1
	adds r0, r3, r5
	cmp r1, r0
	bhs _08043B78
	cmp r3, #0
	ble _08043B74
	subs r0, r2, r5
	b _08043B76
_08043B74:
	adds r0, r2, r5
_08043B76:
	strb r0, [r4, #5]
_08043B78:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08043B7C
sub_08043B7C: @ 0x08043B7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl sub_08043B08
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl sub_08043B08
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	bl sub_08043B08
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043B9C
sub_08043B9C: @ 0x08043B9C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x64]
	ldrb r0, [r0, #0x19]
	adds r0, #4
	movs r1, #0xff
	ands r0, r1
	asrs r0, r0, #3
	ldr r1, _08043BC4 @ =gUnk_080D13B7
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2, #0x1e]
	subs r0, #1
	cmp r1, r0
	beq _08043BC0
	adds r0, r2, #0
	bl InitAnimationForceUpdate
_08043BC0:
	pop {pc}
	.align 2, 0
_08043BC4: .4byte gUnk_080D13B7

	thumb_func_start sub_08043BC8
sub_08043BC8: @ 0x08043BC8
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0xb]
	lsls r2, r2, #2
	ldr r1, _08043BEC @ =gUnk_080D13D8
	adds r2, r2, r1
	ldr r1, [r0, #0x64]
	adds r1, #0x18
	ldrh r0, [r2]
	strh r0, [r1, #8]
	ldrh r0, [r2, #2]
	strh r0, [r1, #0xa]
	movs r0, #0x5a
	strb r0, [r1, #0xd]
	movs r0, #0x28
	strb r0, [r1, #0xe]
	bx lr
	.align 2, 0
_08043BEC: .4byte gUnk_080D13D8

	thumb_func_start sub_08043BF0
sub_08043BF0: @ 0x08043BF0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _08043C18
	ldrb r0, [r1, #1]
	movs r1, #6
	cmp r0, #0x2f
	bls _08043C2E
	movs r1, #7
	cmp r0, #0x5f
	bls _08043C2E
	movs r1, #9
	cmp r0, #0x8f
	bhi _08043C2E
	movs r1, #8
	b _08043C2E
_08043C18:
	ldrb r0, [r1, #1]
	movs r1, #8
	cmp r0, #0xd0
	bhi _08043C2E
	movs r1, #7
	cmp r0, #0xa0
	bhi _08043C2E
	movs r1, #5
	cmp r0, #0x70
	bls _08043C2E
	movs r1, #6
_08043C2E:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _08043C3E
	adds r0, r2, #0
	bl InitAnimationForceUpdate
_08043C3E:
	pop {pc}

	thumb_func_start sub_08043C40
sub_08043C40: @ 0x08043C40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r1, #5]
	cmp r0, #0x1f
	bhi _08043C54
	ldr r6, _08043C50 @ =gUnk_080D13E0
	b _08043C68
	.align 2, 0
_08043C50: .4byte gUnk_080D13E0
_08043C54:
	cmp r0, #0x2f
	bhi _08043C60
	ldr r6, _08043C5C @ =gUnk_080D13E3
	b _08043C68
	.align 2, 0
_08043C5C: .4byte gUnk_080D13E3
_08043C60:
	ldr r6, _08043C84 @ =gUnk_080D13E0
	cmp r0, #0x77
	bhi _08043C68
	adds r6, #6
_08043C68:
	movs r4, #0
	movs r5, #0x28
_08043C6C:
	ldr r0, [r7, #0x64]
	adds r3, r0, r5
	adds r0, r6, r4
	ldrb r1, [r3, #0xc]
	ldrb r2, [r0]
	adds r0, r1, #0
	cmp r2, r0
	beq _08043C8C
	cmp r2, r0
	bhs _08043C88
	subs r0, r1, #1
	b _08043C8A
	.align 2, 0
_08043C84: .4byte gUnk_080D13E0
_08043C88:
	adds r0, r1, #1
_08043C8A:
	strb r0, [r3, #0xc]
_08043C8C:
	adds r5, #0x10
	adds r4, #1
	cmp r4, #2
	bls _08043C6C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08043C98
sub_08043C98: @ 0x08043C98
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x64]
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	adds r1, #0x41
	ldrb r0, [r1]
	cmp r0, #0x9d
	beq _08043CB4
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08043CD0
_08043CB4:
	adds r0, r3, #0
	bl sub_08043D08
	ldr r0, _08043CCC @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	movs r0, #1
	b _08043CD2
	.align 2, 0
_08043CCC: .4byte gUnk_030010A0
_08043CD0:
	movs r0, #0
_08043CD2:
	pop {pc}

	thumb_func_start sub_08043CD4
sub_08043CD4: @ 0x08043CD4
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0x7c
	movs r5, #0x78
	movs r0, #0x7d
	adds r0, r0, r3
	mov ip, r0
_08043CE6:
	ldr r0, [r3, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _08043CFE
	strb r5, [r4]
	mov r0, ip
	strb r2, [r0]
	b _08043D04
_08043CFE:
	adds r2, #1
	cmp r2, #4
	bls _08043CE6
_08043D04:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08043D08
sub_08043D08: @ 0x08043D08
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0xd
	bl InitAnimationForceUpdate
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x10]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0x13
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0804AA1C
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08043D78
	ldr r1, _08043DAC @ =gUnk_080D13E9
	ldrb r0, [r5, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r2, #0x32]
	subs r0, #6
	strh r0, [r2, #0x32]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08043D78:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0xc]
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, [r5, #0x64]
	adds r1, #0x54
	ldrh r0, [r4, #0x36]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	movs r2, #0
	movs r3, #0x39
_08043D92:
	ldr r0, [r5, #0x64]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x3f
	strb r3, [r0]
	adds r2, #1
	cmp r2, #4
	bls _08043D92
	movs r0, #0xfe
	bl sub_08004488
	pop {r4, r5, pc}
	.align 2, 0
_08043DAC: .4byte gUnk_080D13E9

	thumb_func_start sub_08043DB0
sub_08043DB0: @ 0x08043DB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08043E48 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043EAC
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0xc]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r6, _08043E4C @ =gRoomControls
	ldrh r1, [r6, #6]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r2, r3]
	ldrh r2, [r6, #8]
	subs r1, r1, r2
	adds r1, #2
	movs r2, #3
	movs r3, #3
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08043EAC
	ldr r0, _08043E50 @ =gUnk_080D13EC
	bl sub_08080840
	ldr r4, _08043E54 @ =gUnk_030010A0
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	beq _08043DFE
	movs r0, #1
	strb r0, [r4, #0xd]
_08043DFE:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	movs r1, #0x3c
	bl __divsi3
	movs r1, #0x1e
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r1, [r5, #0xb]
	subs r0, #1
	strb r1, [r0]
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x14]
	ldrh r1, [r2, #0x2e]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _08043E58
	ldrh r1, [r3, #0x2e]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r1, [r3, #0x32]
	adds r0, #2
	strh r1, [r0]
	b _08043E70
	.align 2, 0
_08043E48: .4byte gLinkState
_08043E4C: .4byte gRoomControls
_08043E50: .4byte gUnk_080D13EC
_08043E54: .4byte gUnk_030010A0
_08043E58:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r6, #6]
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r0, [r6, #8]
	adds r0, #0x60
	adds r1, #2
	strh r0, [r1]
_08043E70:
	ldr r0, [r2, #0x64]
	ldr r3, [r0, #0x18]
	cmp r3, #0
	beq _08043E90
	ldr r1, _08043E8C @ =gUnk_030010A0
	ldrh r2, [r3, #0x2e]
	adds r0, r1, #0
	adds r0, #0x48
	strh r2, [r0]
	ldrh r0, [r3, #0x32]
	adds r1, #0x4a
	strh r0, [r1]
	b _08043EAC
	.align 2, 0
_08043E8C: .4byte gUnk_030010A0
_08043E90:
	ldr r2, _08043EB0 @ =gUnk_030010A0
	ldr r3, _08043EB4 @ =gRoomControls
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #6]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x48
	strh r0, [r1]
	ldrh r0, [r3, #8]
	adds r0, #0x60
	adds r2, #0x4a
	strh r0, [r2]
_08043EAC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08043EB0: .4byte gUnk_030010A0
_08043EB4: .4byte gRoomControls

	thumb_func_start sub_08043EB8
sub_08043EB8: @ 0x08043EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0x10]
	movs r5, #0x80
	orrs r0, r5
	strb r0, [r7, #0x10]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r4, #8
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r6, #4
	orrs r0, r6
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #0xd
	bl InitAnimationForceUpdate
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #4]
	ldrb r0, [r3, #0x10]
	orrs r0, r5
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #8]
	ldrb r0, [r3, #0x10]
	orrs r0, r5
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	ldrb r2, [r3, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r3, #0x18]
	adds r3, #0x29
	ldrb r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r6
	strb r0, [r3]
	ldr r0, [r7, #0x64]
	ldr r3, [r0, #0x10]
	ldrb r0, [r3, #0x10]
	orrs r5, r0
	strb r5, [r3, #0x10]
	ldrb r0, [r3, #0x18]
	ands r1, r0
	mov r0, r8
	orrs r1, r0
	strb r1, [r3, #0x18]
	adds r1, r3, #0
	adds r1, #0x29
	ldrb r0, [r1]
	ands r4, r0
	orrs r4, r6
	strb r4, [r1]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _08043F74
	ldr r1, _08043F70 @ =gUnk_030010A0
	adds r0, r1, #0
	adds r0, #0x44
	b _08043F7A
	.align 2, 0
_08043F70: .4byte gUnk_030010A0
_08043F74:
	ldr r1, _08043F8C @ =gUnk_030010A0
	adds r0, r1, #0
	adds r0, #0x48
_08043F7A:
	ldrh r0, [r0]
	strh r0, [r3, #0x2e]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _08043F90
	adds r0, r1, #0
	adds r0, #0x46
	b _08043F94
	.align 2, 0
_08043F8C: .4byte gUnk_030010A0
_08043F90:
	adds r0, r1, #0
	adds r0, #0x4a
_08043F94:
	ldrh r1, [r0]
	movs r0, #0
	strh r1, [r3, #0x32]
	strh r0, [r3, #0x36]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, _08043FF8 @ =gUnk_080FD450
	str r0, [r3, #0x48]
	movs r0, #0xaf
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08043FCA
	ldr r0, [r7, #0x64]
	ldr r0, [r0, #0xc]
	str r0, [r3, #0x50]
_08043FCA:
	ldr r0, [r7, #0x64]
	ldr r0, [r0]
	str r3, [r0, #0x68]
	movs r2, #0
	movs r6, #0
	movs r5, #0x80
	lsls r5, r5, #8
	ldr r4, _08043FFC @ =gUnk_080D1419
	movs r3, #0x18
_08043FDC:
	ldr r0, [r7, #0x64]
	adds r0, r0, r3
	strh r5, [r0]
	strh r6, [r0, #4]
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0, #0xc]
	adds r3, #0x10
	adds r2, #1
	cmp r2, #4
	bls _08043FDC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043FF8: .4byte gUnk_080FD450
_08043FFC: .4byte gUnk_080D1419

	thumb_func_start sub_08044000
sub_08044000: @ 0x08044000
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08044070 @ =gUnk_080D1400
	movs r3, #0
	ldr r2, _08044074 @ =gUnk_080D1414
	mov ip, r2
	movs r7, #8
	rsbs r7, r7, #0
	adds r5, r1, r0
	movs r6, #0x18
_0804401C:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrh r0, [r5]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #4]
	mov r2, ip
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	adds r5, #2
	adds r6, #0x10
	adds r3, #1
	cmp r3, #4
	bls _0804401C
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	ldr r1, [r4, #0x64]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl CopyPosition
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08044070: .4byte gUnk_080D1400
_08044074: .4byte gUnk_080D1414

	thumb_func_start sub_08044078
sub_08044078: @ 0x08044078
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080440C4
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080440AC
	ldr r3, _080440B8 @ =gUnk_030010A0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080440BC
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r1, r3, #0
	adds r1, #0x3c
	ldrb r0, [r0, #0xb]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080440BC
_080440AC:
	adds r0, r4, #0
	movs r1, #0x12
	bl InitializeAnimation
	b _080440C4
	.align 2, 0
_080440B8: .4byte gUnk_030010A0
_080440BC:
	adds r0, r4, #0
	movs r1, #0x11
	bl InitializeAnimation
_080440C4:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080440CC
sub_080440CC: @ 0x080440CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08044110
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _08044104 @ =gUnk_030010A0
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08044108
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r1, r2, #0
	adds r1, #0x3c
	ldrb r0, [r0, #0xb]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08044108
	adds r0, r4, #0
	movs r1, #0x13
	bl InitializeAnimation
	b _08044110
	.align 2, 0
_08044104: .4byte gUnk_030010A0
_08044108:
	adds r0, r4, #0
	movs r1, #0x11
	bl InitializeAnimation
_08044110:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
