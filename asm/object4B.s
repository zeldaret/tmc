	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808F77C
sub_0808F77C: @ 0x0808F77C
	push {lr}
	ldr r2, _0808F790 @ =gUnk_08121EB8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808F790: .4byte gUnk_08121EB8

	thumb_func_start sub_0808F794
sub_0808F794: @ 0x0808F794
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808F7A8
sub_0808F7A8: @ 0x0808F7A8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808F7D0
	movs r0, #0x78
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0808F7D0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808F7D4
sub_0808F7D4: @ 0x0808F7D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F80A
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_0808F80A:
	pop {r4, pc}

	thumb_func_start sub_0808F80C
sub_0808F80C: @ 0x0808F80C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808F850
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x15]
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r4, #0x1b]
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	ldr r0, _0808F854 @ =0x0000012B
	bl PlaySFX
_0808F850:
	pop {r4, pc}
	.align 2, 0
_0808F854: .4byte 0x0000012B

	thumb_func_start sub_0808F858
sub_0808F858: @ 0x0808F858
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808F884
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0808F88A
	adds r0, r4, #0
	bl sub_08004274
	b _0808F88A
_0808F884:
	adds r0, r4, #0
	bl sub_08004274
_0808F88A:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, _0808F8C4 @ =gRoomControls
	ldrh r2, [r1, #8]
	subs r0, r0, r2
	movs r1, #0x8c
	lsls r1, r1, #2
	cmp r0, r1
	bgt _0808F8C8
	adds r0, r2, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F8EA
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0808F8EA
	.align 2, 0
_0808F8C4: .4byte gRoomControls
_0808F8C8:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F8EA
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	ldr r0, _0808F8EC @ =0x0000012B
	bl PlaySFX
_0808F8EA:
	pop {r4, pc}
	.align 2, 0
_0808F8EC: .4byte 0x0000012B

	thumb_func_start sub_0808F8F0
sub_0808F8F0: @ 0x0808F8F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808F912
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
_0808F912:
	pop {r4, pc}

	thumb_func_start sub_0808F914
sub_0808F914: @ 0x0808F914
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F93C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0808F93C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808F940
sub_0808F940: @ 0x0808F940
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808F960
	ldr r1, _0808F964 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bl DeleteThisEntity
_0808F960:
	pop {r4, pc}
	.align 2, 0
_0808F964: .4byte gUnk_02000080
