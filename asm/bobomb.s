	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0802C660
sub_0802C660: @ 0x0802C660
	push {lr}
	ldr r1, _0802C66C @ =gUnk_080CD5D4
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_0802C66C: .4byte gUnk_080CD5D4

	thumb_func_start sub_0802C670
sub_0802C670: @ 0x0802C670
	push {lr}
	ldr r2, _0802C684 @ =gUnk_080CD5EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C684: .4byte gUnk_080CD5EC

	thumb_func_start sub_0802C688
sub_0802C688: @ 0x0802C688
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802C69A
	b _0802C79E
_0802C69A:
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x16
	bhi _0802C740
	lsls r0, r0, #2
	ldr r1, _0802C6AC @ =_0802C6B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C6AC: .4byte _0802C6B0
_0802C6B0: @ jump table
	.4byte _0802C70C @ case 0
	.4byte _0802C70C @ case 1
	.4byte _0802C740 @ case 2
	.4byte _0802C740 @ case 3
	.4byte _0802C740 @ case 4
	.4byte _0802C740 @ case 5
	.4byte _0802C740 @ case 6
	.4byte _0802C740 @ case 7
	.4byte _0802C740 @ case 8
	.4byte _0802C740 @ case 9
	.4byte _0802C740 @ case 10
	.4byte _0802C740 @ case 11
	.4byte _0802C740 @ case 12
	.4byte _0802C740 @ case 13
	.4byte _0802C72C @ case 14
	.4byte _0802C740 @ case 15
	.4byte _0802C740 @ case 16
	.4byte _0802C740 @ case 17
	.4byte _0802C740 @ case 18
	.4byte _0802C740 @ case 19
	.4byte _0802C72C @ case 20
	.4byte _0802C72C @ case 21
	.4byte _0802C72C @ case 22
_0802C70C:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C7A6
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802C728 @ =gLinkEntity
	adds r0, #0x42
	movs r1, #4
	strb r1, [r0]
	b _0802C7A6
	.align 2, 0
_0802C728: .4byte gLinkEntity
_0802C72C:
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C7A6
_0802C740:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x1c
	strb r0, [r1]
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802C75E
	cmp r0, #2
	beq _0802C770
	b _0802C79E
_0802C75E:
	adds r0, r4, #0
	bl sub_0802CB68
	ldr r0, _0802C76C @ =0x0000014D
	bl sub_08004488
	b _0802C79E
	.align 2, 0
_0802C76C: .4byte 0x0000014D
_0802C770:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
	movs r1, #1
	strb r1, [r4, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
_0802C79E:
	ldr r1, _0802C7A8 @ =gUnk_080CD5D4
	adds r0, r4, #0
	bl sub_0804AA30
_0802C7A6:
	pop {r4, pc}
	.align 2, 0
_0802C7A8: .4byte gUnk_080CD5D4

	thumb_func_start sub_0802C7AC
sub_0802C7AC: @ 0x0802C7AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _0802C7F6
	adds r0, r4, #0
	bl sub_0806F520
	adds r1, r0, #0
	cmp r1, #0
	bne _0802C7F6
	strb r1, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	beq _0802C7E2
	movs r1, #0x80
	cmp r0, #0
	beq _0802C7E0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0802C7E0:
	strh r1, [r4, #0x24]
_0802C7E2:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #0
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	b _0802C816
_0802C7F6:
	ldr r0, _0802C818 @ =0x0000FFFF
	strh r0, [r4, #0x36]
	ldr r1, _0802C81C @ =gUnk_080CD600
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802C816
	adds r0, r4, #0
	bl sub_08004274
_0802C816:
	pop {r4, pc}
	.align 2, 0
_0802C818: .4byte 0x0000FFFF
_0802C81C: .4byte gUnk_080CD600

	thumb_func_start sub_0802C820
sub_0802C820: @ 0x0802C820
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C82C
sub_0802C82C: @ 0x0802C82C
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802C834
sub_0802C834: @ 0x0802C834
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802C83C
sub_0802C83C: @ 0x0802C83C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802C88C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C884
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0802C86C @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	cmp r1, #2
	beq _0802C870
	cmp r1, #6
	beq _0802C876
	b _0802C87C
	.align 2, 0
_0802C86C: .4byte gLinkEntity
_0802C870:
	ldrh r0, [r4, #0x2e]
	subs r0, #6
	b _0802C87A
_0802C876:
	ldrh r0, [r4, #0x2e]
	adds r0, #6
_0802C87A:
	strh r0, [r4, #0x2e]
_0802C87C:
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C8B2
_0802C884:
	adds r0, r4, #0
	bl sub_0802CC18
	b _0802C8A2
_0802C88C:
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
_0802C8A2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
_0802C8B2:
	pop {r4, pc}

	thumb_func_start nullsub_149
nullsub_149: @ 0x0802C8B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C8B8
sub_0802C8B8: @ 0x0802C8B8
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	bl sub_0802CBC4
	pop {pc}

	thumb_func_start sub_0802C8C4
sub_0802C8C4: @ 0x0802C8C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A7D4
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	pop {r4, pc}

	thumb_func_start sub_0802C8D8
sub_0802C8D8: @ 0x0802C8D8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	bl Random
	movs r1, #0x18
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0x15]
	strb r4, [r5, #0x16]
	movs r0, #0x12
	strb r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x82
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r0, #3
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #4
	adds r0, r5, #0
	bl UpdateSprite
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802C91C
sub_0802C91C: @ 0x0802C91C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C97A
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802C950
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #2
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
_0802C950:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802C964
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802C9B4
_0802C964:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #8
	bne _0802C972
	adds r0, r4, #0
	bl sub_080A29FC
_0802C972:
	adds r0, r4, #0
	bl sub_0802CC18
	b _0802C9B4
_0802C97A:
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802C992
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802C992:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C9B4
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	adds r1, #8
	movs r0, #0x1c
	ands r1, r0
	strb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r0, r4, #0
	bl UpdateSprite
_0802C9B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802C9B8
sub_0802C9B8: @ 0x0802C9B8
	push {lr}
	ldr r2, _0802C9CC @ =gUnk_080CD618
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802C9CC: .4byte gUnk_080CD618

	thumb_func_start sub_0802C9D0
sub_0802C9D0: @ 0x0802C9D0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0802CC18
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802CA10
sub_0802CA10: @ 0x0802CA10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802CA30 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #5
	beq _0802CA42
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA34
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CA66
	.align 2, 0
_0802CA30: .4byte gLinkState
_0802CA34:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
	b _0802CA66
_0802CA42:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0802CA68 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	movs r1, #4
	orrs r0, r1
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
_0802CA66:
	pop {r4, pc}
	.align 2, 0
_0802CA68: .4byte gLinkEntity

	thumb_func_start sub_0802CA6C
sub_0802CA6C: @ 0x0802CA6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA84
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CA90
_0802CA84:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08004274
_0802CA90:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CA94
sub_0802CA94: @ 0x0802CA94
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #3
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	movs r0, #1
	strb r0, [r3, #0xf]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r0, #0
	strh r2, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x83
	strb r0, [r1]
	subs r1, #2
	strb r0, [r1]
	ldr r0, _0802CAF4 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #2
	movs r0, #4
	orrs r1, r0
	movs r0, #0x1c
	ands r1, r0
	strb r1, [r3, #0x15]
	lsrs r1, r1, #4
	movs r0, #6
	orrs r1, r0
	adds r0, r3, #0
	bl UpdateSprite
	pop {pc}
	.align 2, 0
_0802CAF4: .4byte gLinkEntity

	thumb_func_start sub_0802CAF8
sub_0802CAF8: @ 0x0802CAF8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CB10
	adds r0, r4, #0
	bl sub_0802CBC4
	b _0802CB62
_0802CB10:
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CB30
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802CB30
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802CB30:
	adds r0, r4, #0
	bl sub_0802CC18
	adds r0, r4, #0
	bl sub_08078930
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802CB5C
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802CB5C
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6e
	strb r0, [r1]
_0802CB5C:
	adds r0, r4, #0
	bl sub_08004274
_0802CB62:
	pop {r4, pc}

	thumb_func_start nullsub_150
nullsub_150: @ 0x0802CB64
	bx lr
	.align 2, 0

	thumb_func_start sub_0802CB68
sub_0802CB68: @ 0x0802CB68
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	bl Random
	adds r2, r0, #0
	movs r0, #0x18
	ands r2, r0
	movs r0, #4
	orrs r2, r0
	orrs r2, r4
	strb r2, [r5, #0x15]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CBB2
	movs r0, #0xc8
	strb r0, [r5, #0xe]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	adds r0, r5, #0
	bl UpdateSprite
	b _0802CBC2
_0802CBB2:
	movs r0, #0x3c
	strb r0, [r5, #0xe]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	lsrs r1, r2, #4
	adds r0, r5, #0
	bl UpdateSprite
_0802CBC2:
	pop {r4, r5, pc}

	thumb_func_start sub_0802CBC4
sub_0802CBC4: @ 0x0802CBC4
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CBF0
	bl sub_08079184
_0802CBF0:
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _0802CC14
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
_0802CC14:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802CC18
sub_0802CC18: @ 0x0802CC18
	push {lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CC34
	movs r0, #0x1c
	strb r0, [r1]
	ldr r0, _0802CC38 @ =0x0000014D
	bl sub_08004488
_0802CC34:
	pop {pc}
	.align 2, 0
_0802CC38: .4byte 0x0000014D
