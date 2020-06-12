	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080911EC
sub_080911EC: @ 0x080911EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #1
	beq _0809123C
	cmp r0, #1
	bgt _08091202
	cmp r0, #0
	beq _08091208
	b _08091260
_08091202:
	cmp r0, #2
	beq _08091254
	b _08091260
_08091208:
	ldr r1, _08091234 @ =gUnk_08122294
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0800445C
	ldr r1, _08091238 @ =gUnk_02021F00
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r0]
	b _08091260
	.align 2, 0
_08091234: .4byte gUnk_08122294
_08091238: .4byte gUnk_02021F00
_0809123C:
	ldr r0, _08091250 @ =gUnk_081222A0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _08091260
	.align 2, 0
_08091250: .4byte gUnk_081222A0
_08091254:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08091260
	adds r0, r4, #0
	bl sub_08091504
_08091260:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08091264
sub_08091264: @ 0x08091264
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _080912C4 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _0809132C
	ldrb r1, [r6, #0xa]
	ldrb r2, [r6, #0xb]
	movs r0, #0x54
	bl CreateObject
	adds r7, r0, #0
	ldrb r1, [r6, #0xa]
	ldrb r2, [r6, #0xb]
	movs r0, #0x54
	bl CreateObject
	adds r1, r0, #0
	str r6, [r7, #0x50]
	str r6, [r1, #0x50]
	adds r0, r7, #0
	adds r0, #0x72
	movs r5, #1
	movs r4, #1
	strh r4, [r0]
	adds r2, r1, #0
	adds r2, #0x72
	movs r0, #2
	strh r0, [r2]
	adds r0, r6, #0
	bl CopyPosition
	movs r2, #1
	strb r5, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x18]
	movs r0, #0x60
	strh r0, [r6, #0x24]
	ldrb r0, [r6, #0xb]
	ands r4, r0
	cmp r4, #0
	beq _080912CC
	ldr r0, _080912C8 @ =gUnk_080FD278
	b _080912CE
	.align 2, 0
_080912C4: .4byte gUnk_03003DBC
_080912C8: .4byte gUnk_080FD278
_080912CC:
	ldr r0, _08091330 @ =gUnk_080FD270
_080912CE:
	str r0, [r6, #0x48]
	movs r0, #1
	strb r0, [r6, #0x16]
	ldr r2, _08091334 @ =gUnk_081222A8
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	adds r1, r6, #0
	adds r1, #0x80
	strh r0, [r1]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	adds r1, r6, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r6, #0
	adds r1, r7, #0
	bl CopyPosition
	adds r0, r6, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrb r1, [r6, #0xe]
	adds r0, r6, #0
	adds r0, #0x74
	strb r1, [r0]
	ldrb r1, [r6, #0xb]
	adds r0, r6, #0
	bl InitializeAnimation
_0809132C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08091330: .4byte gUnk_080FD270
_08091334: .4byte gUnk_081222A8

	thumb_func_start sub_08091338
sub_08091338: @ 0x08091338
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078930
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	beq _0809135C
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08091660
_0809135C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08091360
sub_08091360: @ 0x08091360
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBB4
	ldr r1, _0809137C @ =gUnk_081222B0
	ldrb r0, [r4, #0xd]
	subs r0, #5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0809137C: .4byte gUnk_081222B0

	thumb_func_start sub_08091380
sub_08091380: @ 0x08091380
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _0809142C @ =gLinkEntity
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0
	bne _080913E0
	ldrb r0, [r4, #0xb]
	lsls r2, r0, #1
	ldrb r0, [r7, #0x14]
	cmp r2, r0
	bne _080913D4
	ldr r1, _08091430 @ =gUnk_081222B8
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002D4
	subs r0, #0xf
	cmp r0, #0x10
	bls _080913D4
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
_080913D4:
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xf]
_080913E0:
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	ldrb r3, [r4, #0xb]
	cmp r0, r3
	bne _0809142A
	ldr r1, _08091434 @ =gLinkState
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _0809142A
	ldrb r1, [r1, #5]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0809142A
	ldr r0, _0809142C @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0809142A
	adds r0, r4, #0
	bl sub_0809153C
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #1
	bne _0809142A
	strb r5, [r1]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl sub_08004488
_0809142A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809142C: .4byte gLinkEntity
_08091430: .4byte gUnk_081222B8
_08091434: .4byte gLinkState

	thumb_func_start sub_08091438
sub_08091438: @ 0x08091438
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r0, #0x75
	strb r2, [r0]
	bx lr

	thumb_func_start sub_08091444
sub_08091444: @ 0x08091444
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0xb]
	adds r1, #8
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	pop {r4, pc}

	thumb_func_start sub_08091470
sub_08091470: @ 0x08091470
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x50]
	adds r3, r4, #0
	adds r3, #0x70
	ldrh r0, [r3]
	cmp r0, #7
	bhi _0809148C
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _08091502
_0809148C:
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrh r0, [r3]
	adds r1, r0, #0
	subs r1, #8
	movs r0, #7
	ands r1, r0
	ldrb r3, [r2, #0xb]
	cmp r3, #1
	beq _080914C8
	cmp r3, #1
	bgt _080914B4
	cmp r3, #0
	beq _080914BE
	b _080914E2
_080914B4:
	cmp r3, #2
	beq _080914D0
	cmp r3, #3
	beq _080914DA
	b _080914E2
_080914BE:
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	subs r0, #0x11
	strh r0, [r2, #0x32]
	b _080914E2
_080914C8:
	ldrh r0, [r4, #0x2e]
	adds r0, r1, r0
	adds r0, #0x11
	b _080914E0
_080914D0:
	ldrh r0, [r4, #0x32]
	adds r0, r1, r0
	adds r0, #0x11
	strh r0, [r2, #0x32]
	b _080914E2
_080914DA:
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
	subs r0, #0x11
_080914E0:
	strh r0, [r2, #0x2e]
_080914E2:
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	subs r0, #8
	lsls r0, r0, #0xc
	lsrs r1, r0, #0x10
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _08091502
	strb r1, [r2, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #8
	adds r0, r2, #0
	bl InitializeAnimation
_08091502:
	pop {r4, pc}

	thumb_func_start sub_08091504
sub_08091504: @ 0x08091504
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xb]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	pop {r4, pc}

	thumb_func_start sub_0809153C
sub_0809153C: @ 0x0809153C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, _080915A8 @ =gLinkEntity
	ldr r1, _080915AC @ =gUnk_081222C0
	ldrb r0, [r5, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x76
	adds r1, r5, #0
	adds r1, #0x70
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bls _08091656
	ldrh r4, [r6, #0x2e]
	ldrh r0, [r6, #0x32]
	mov sb, r0
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	adds r0, r6, #0
	mov r2, r8
	str r3, [sp]
	bl sub_080044AE
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r2, [r6, #0x2e]
	movs r7, #0x2e
	ldrsh r0, [r6, r7]
	ldr r3, [sp]
	cmp r4, r0
	bne _08091596
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r7, #0x32
	ldrsh r1, [r6, r7]
	cmp r0, r1
	beq _08091656
_08091596:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080915CA
	cmp r0, #1
	bgt _080915B0
	cmp r0, #0
	beq _080915BA
	b _080915E0
	.align 2, 0
_080915A8: .4byte gLinkEntity
_080915AC: .4byte gUnk_081222C0
_080915B0:
	cmp r0, #2
	beq _080915CE
	cmp r0, #3
	beq _080915DA
	b _080915E0
_080915BA:
	ldrh r1, [r6, #0x32]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	b _080915E0
_080915CA:
	subs r0, r4, r2
	b _080915DC
_080915CE:
	ldrh r1, [r6, #0x32]
	mov r7, sb
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	b _080915DC
_080915DA:
	subs r0, r2, r4
_080915DC:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080915E0:
	lsls r2, r3, #0x18
	ldr r3, _0809163C @ =gUnk_080C9160
	mov r1, r8
	lsls r0, r1, #4
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	asrs r2, r2, #0x10
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	mov r1, r8
	lsls r0, r1, #4
	adds r0, #0x80
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r5, #0
	bl sub_08091660
	adds r0, r5, #0
	adds r0, #0x76
	adds r1, r5, #0
	adds r1, #0x70
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08091640
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	b _08091656
	.align 2, 0
_0809163C: .4byte gUnk_080C9160
_08091640:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08091656
	movs r0, #0x10
	strb r0, [r5, #0xf]
	adds r0, #0xff
	bl sub_08004488
_08091656:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08091660
sub_08091660: @ 0x08091660
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08091686
	cmp r0, #1
	bgt _08091674
	cmp r0, #0
	beq _0809167E
	b _080916AA
_08091674:
	cmp r0, #2
	beq _08091690
	cmp r0, #3
	beq _0809169A
	b _080916AA
_0809167E:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r4, #0x32]
	b _080916A0
_08091686:
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	ldrh r1, [r4, #0x2e]
	b _080916A2
_08091690:
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
	b _080916A2
_0809169A:
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r4, #0x2e]
_080916A0:
	ldrh r1, [r1]
_080916A2:
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
_080916AA:
	adds r5, r4, #0
	adds r5, #0x86
	ldrh r0, [r5]
	bl CheckFlags
	cmp r0, #0
	beq _080916C8
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	bne _080916C8
	ldrh r0, [r5]
	bl ClearFlag
_080916C8:
	pop {r4, r5, pc}
	.align 2, 0
