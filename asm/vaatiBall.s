	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start VaatiBall
VaatiBall: @ 0x080445DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08044604
	cmp r0, #3
	beq _08044604
	ldr r1, [r5, #0x2c]
	ldr r0, [r5, #0x78]
	subs r1, r1, r0
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x7c]
	subs r1, r1, r0
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
_08044604:
	ldr r1, _08044684 @ =gUnk_080D1604
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044626
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
_08044626:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08044680
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0804464A
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bne _0804464A
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
_0804464A:
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	cmp r0, #0xfc
	bhi _08044680
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080A29BC
	ldr r0, _08044688 @ =0x000001C3
	bl PlaySFX
_08044680:
	pop {r4, r5, pc}
	.align 2, 0
_08044684: .4byte gUnk_080D1604
_08044688: .4byte 0x000001C3

	thumb_func_start sub_0804468C
sub_0804468C: @ 0x0804468C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	movs r6, #0
	movs r5, #3
	strb r5, [r0]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	strb r6, [r0]
	ldrb r3, [r4, #0xa]
	cmp r3, #0
	beq _080446C8
	cmp r3, #1
	beq _08044728
	b _0804474A
_080446C8:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	lsls r0, r0, #3
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x78
	strb r3, [r0]
	adds r0, #0xb
	strb r3, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r2]
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #1
	ldr r0, _08044724 @ =gUnk_080D1620
	adds r1, r1, r0
	ldr r0, [r4, #0x50]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	subs r3, #0x10
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x36]
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0804474A
	.align 2, 0
_08044724: .4byte gUnk_080D1620
_08044728:
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, #0xf
	movs r2, #1
	strb r3, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
_0804474A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0804474C
sub_0804474C: @ 0x0804474C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r2, [r0, #0xc]
	cmp r2, #3
	beq _0804476C
	cmp r2, #3
	bgt _08044762
	cmp r2, #2
	beq _0804479A
	b _080447A8
_08044762:
	cmp r2, #5
	beq _0804477A
	cmp r2, #6
	beq _0804478A
	b _080447A8
_0804476C:
	movs r1, #0
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	strb r1, [r4, #0xe]
	b _080447A8
_0804477A:
	movs r0, #0
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xf]
	b _080447A8
_0804478A:
	movs r0, #0
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080447A8
_0804479A:
	movs r1, #0
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	subs r0, #0x35
	strb r1, [r0]
_080447A8:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080447B6
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _080447DC
_080447B6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080447D0
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080447D0:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080447DC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080447E0
sub_080447E0: @ 0x080447E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x50]
	ldrb r0, [r3, #0xc]
	cmp r0, #1
	bne _08044818
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x2b
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08044E74
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08044864
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08044864
_08044818:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	adds r2, r0, #1
	movs r0, #7
	ands r2, r0
	strb r2, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08044852
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08044848
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _08044852
_08044848:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08044852:
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #2
	bne _08044864
	adds r0, r4, #0
	movs r1, #2
	bl sub_08044E74
_08044864:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08044868
sub_08044868: @ 0x08044868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804487E
	b _080449C8
_0804487E:
	cmp r0, #3
	bgt _0804488E
	cmp r0, #1
	beq _08044948
	cmp r0, #2
	bne _0804488C
	b _080449AE
_0804488C:
	b _080449EA
_0804488E:
	cmp r0, #0xfe
	beq _08044898
	cmp r0, #0xff
	beq _080448B6
	b _080449EA
_08044898:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080448A4
	b _080449EA
_080448A4:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #2
	beq _080448B0
	b _080449EA
_080448B0:
	bl DeleteThisEntity
	b _080449EA
_080448B6:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080448C2
	b _080449EA
_080448C2:
	adds r6, r4, #0
	adds r6, #0x74
	ldrb r0, [r6]
	cmp r0, #0
	beq _080448D2
	cmp r0, #1
	beq _08044900
	b _080449EA
_080448D2:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080448E2
	b _080449EA
_080448E2:
	movs r0, #1
	strb r0, [r6]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _080449EA
_08044900:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	subs r2, #0x10
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806FCB8
	cmp r0, #0
	beq _08044934
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	b _080449EA
_08044934:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	b _080449EA
_08044948:
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044964
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08044964:
	adds r0, r4, #0
	bl sub_08044DEC
	adds r0, r5, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bls _080449A8
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r6, r0, #0x1e
	cmp r6, #1
	bne _080449A8
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldrb r7, [r0]
	cmp r7, #0
	bne _080449A8
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0
	bl sub_0804A98C
	adds r5, r0, #0
	cmp r5, #0
	beq _080449A8
	strb r6, [r5, #0xb]
	str r4, [r5, #0x50]
	mov r0, r8
	strb r6, [r0]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r7, [r0]
_080449A8:
	movs r0, #0x20
	strb r0, [r4, #0xe]
	b _080449EA
_080449AE:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080449EA
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhi _080449EA
	adds r0, r4, #0
	bl sub_0806F69C
	b _080449EA
_080449C8:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08044E74
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080449E2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _080449E8
_080449E2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_080449E8:
	strb r0, [r4, #0x10]
_080449EA:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080449F8
sub_080449F8: @ 0x080449F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08044A90
	adds r6, r4, #0
	adds r6, #0x74
	ldrb r0, [r6]
	cmp r0, #1
	beq _08044A6A
	cmp r0, #1
	bgt _08044A1C
	cmp r0, #0
	beq _08044A26
	b _08044B02
_08044A1C:
	cmp r0, #2
	beq _08044AC6
	cmp r0, #3
	beq _08044AF8
	b _08044B02
_08044A26:
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044B02
	adds r1, r5, #0
	adds r1, #0x78
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044A4C
	adds r0, #1
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
_08044A4C:
	movs r0, #4
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x15]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08044B02
	movs r0, #1
	strb r0, [r6]
	b _08044B02
_08044A6A:
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	beq _08044A84
	cmp r0, #2
	bgt _08044A7A
	cmp r0, #1
	beq _08044A9A
	b _08044B02
_08044A7A:
	cmp r0, #3
	beq _08044ABA
	cmp r0, #4
	beq _08044AB4
	b _08044B02
_08044A84:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08044B02
	strb r0, [r5, #0xf]
_08044A90:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08044E74
	b _08044B02
_08044A9A:
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	ands r0, r4
	strb r0, [r5, #0x15]
	b _08044AC0
_08044AB4:
	adds r0, r5, #0
	bl sub_0806F69C
_08044ABA:
	adds r0, r5, #0
	bl sub_0806F69C
_08044AC0:
	movs r0, #2
	strb r0, [r5, #0xe]
	b _08044B02
_08044AC6:
	adds r1, r5, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _08044B02
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08044B02
	adds r0, r5, #0
	movs r1, #0x1c
	movs r2, #0
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	beq _08044B02
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	b _08044B02
_08044AF8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _08044B02
	movs r0, #0
	strb r0, [r5, #0xf]
_08044B02:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08044B04
sub_08044B04: @ 0x08044B04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	bl UpdateAnimationSingleFrame
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	bne _08044B26
	adds r0, r4, #0
	movs r1, #0
	bl sub_08044E74
	movs r0, #0x20
	strb r0, [r4, #0xe]
	b _08044DE6
_08044B26:
	adds r0, r6, #0
	adds r0, #0x74
	ldrb r5, [r0]
	cmp r5, #1
	bne _08044B32
	b _08044D10
_08044B32:
	cmp r5, #1
	bgt _08044B3C
	cmp r5, #0
	beq _08044B4A
	b _08044DE6
_08044B3C:
	cmp r5, #2
	bne _08044B42
	b _08044DE6
_08044B42:
	cmp r5, #3
	bne _08044B48
	b _08044D6A
_08044B48:
	b _08044DE6
_08044B4A:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r7, r4, #0
	adds r7, #0x74
	ldrb r0, [r7]
	mov r8, r7
	cmp r0, #1
	beq _08044BF4
	cmp r0, #1
	bgt _08044B66
	cmp r0, #0
	beq _08044B72
	b _08044DE6
_08044B66:
	cmp r0, #2
	beq _08044C4C
	cmp r0, #3
	bne _08044B70
	b _08044C9C
_08044B70:
	b _08044DE6
_08044B72:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044B98
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	movs r1, #2
	cmp r0, #0
	beq _08044B8C
	movs r1, #4
_08044B8C:
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_08044B98:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08044BAA
	b _08044DE6
_08044BAA:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	beq _08044BB6
	movs r0, #1
	strb r0, [r4, #0xf]
	b _08044DE6
_08044BB6:
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #2
	bls _08044BDA
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	b _08044BDE
_08044BDA:
	movs r0, #0x20
	strb r0, [r4, #0xf]
_08044BDE:
	ldrb r0, [r1]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r2, #0
	cmp r0, #0
	beq _08044BF0
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r0, #0
_08044BF0:
	strh r1, [r4, #0x24]
	b _08044DE6
_08044BF4:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08044C04
	b _08044DE6
_08044C04:
	movs r0, #6
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #1
	movs r2, #0x1f
	mov r8, r2
	mov r2, r8
	ands r0, r2
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0x30
	beq _08044C24
	b _08044DE6
_08044C24:
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strh r5, [r4, #0x24]
	adds r0, #0x10
	mov r1, r8
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _08044DE6
_08044C4C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08044CA2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	beq _08044CAE
	cmp r5, #4
	bgt _08044C6A
	cmp r5, #0
	beq _08044C78
	b _08044DE6
_08044C6A:
	cmp r5, #0xc
	beq _08044C70
	b _08044DE6
_08044C70:
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	b _08044DE6
_08044C78:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	strh r5, [r4, #0x24]
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08044DE6
_08044C9C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08044CB6
_08044CA2:
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08044CAE
	b _08044DE6
_08044CAE:
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _08044DE6
_08044CB6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08044CD2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044CD2
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldr r0, _08044D0C @ =0x0000014F
	bl PlaySFX
_08044CD2:
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #3
	bne _08044CF8
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806FCB8
	cmp r0, #0
	beq _08044CF8
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
_08044CF8:
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	subs r2, #0x10
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	b _08044DE6
	.align 2, 0
_08044D0C: .4byte 0x0000014F
_08044D10:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #1
	beq _08044D50
	cmp r0, #3
	bne _08044DE6
	strb r5, [r1]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r3, _08044D4C @ =0xFFF00000
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08044DE6
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08044DE6
	.align 2, 0
_08044D4C: .4byte 0xFFF00000
_08044D50:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08044DE6
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	b _08044DE6
_08044D6A:
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r0, [r5]
	cmp r0, #1
	beq _08044DA4
	cmp r0, #1
	bgt _08044D7E
	cmp r0, #0
	beq _08044D84
	b _08044DE6
_08044D7E:
	cmp r0, #2
	beq _08044DBE
	b _08044DE6
_08044D84:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08044DE6
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044DE6
	adds r0, r4, #0
	bl sub_08044DEC
	movs r0, #1
	strb r0, [r5]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	b _08044DE6
_08044DA4:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044DE6
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08044DE6
_08044DBE:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08044E74
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _08044DD8
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _08044DDE
_08044DD8:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_08044DDE:
	strb r0, [r4, #0x10]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	strb r0, [r6, #0xe]
_08044DE6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08044DEC
sub_08044DEC: @ 0x08044DEC
	push {lr}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x80
	mov r1, ip
	adds r1, #0x79
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _08044E1A
	mov r0, ip
	ldrb r1, [r0, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x18]
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	b _08044E26
_08044E1A:
	mov r2, ip
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
_08044E26:
	mov r0, ip
	ldrb r1, [r0, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	mov r2, ip
	strb r0, [r2, #0x10]
	mov r0, ip
	adds r0, #0x78
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	ldr r0, [r2, #0x50]
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r1, [r1]
	subs r1, #1
	ldr r2, _08044E6C @ =gUnk_080D1628
	mov r3, ip
	adds r3, #0x79
	lsls r1, r1, #2
	ldrb r3, [r3]
	adds r1, r1, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r2, ip
	strb r1, [r2, #0x15]
	ldr r3, _08044E70 @ =0xFFF00000
	mov r1, ip
	movs r2, #0
	bl PositionRelative
	pop {pc}
	.align 2, 0
_08044E6C: .4byte gUnk_080D1628
_08044E70: .4byte 0xFFF00000

	thumb_func_start sub_08044E74
sub_08044E74: @ 0x08044E74
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r0, #0
	movs r1, #1
	strb r1, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x74
	strb r0, [r1]
	cmp r2, #1
	beq _08044ED4
	cmp r2, #1
	blo _08044EE4
	adds r6, r5, #0
	adds r6, #0x78
	cmp r2, #2
	bne _08044F3E
	strb r2, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	adds r0, #0x18
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r5, #0x15]
	ldr r0, [r5, #0x50]
	ldr r3, _08044ED0 @ =0xFFF00000
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0x15]
	adds r0, #8
	ands r0, r4
	strb r0, [r5, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0806F69C
	b _08044F3E
	.align 2, 0
_08044ED0: .4byte 0xFFF00000
_08044ED4:
	ldrb r0, [r5, #0x15]
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	adds r6, r5, #0
	adds r6, #0x78
	b _08044F3E
_08044EE4:
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08044F32
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	beq _08044F18
	cmp r0, #1
	blt _08044F3E
	cmp r0, #4
	bgt _08044F3E
	cmp r0, #3
	blt _08044F3E
	movs r4, #0xff
_08044F04:
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	ands r0, r4
	cmp r0, #2
	bne _08044F04
	b _08044F3E
_08044F18:
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldrb r0, [r5, #0x15]
	adds r0, #0x10
	ands r0, r4
	strb r0, [r5, #0x15]
	b _08044F3E
_08044F32:
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	bne _08044F3E
	adds r0, r5, #0
	bl sub_0806F69C
_08044F3E:
	movs r0, #0
	movs r1, #1
	strb r1, [r5, #0xe]
	strb r0, [r6]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	.align 2, 0
