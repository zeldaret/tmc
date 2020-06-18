	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CuccoChick
CuccoChick: @ 0x0806E710
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806E72C @ =gUnk_081145D4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_0806E72C: .4byte gUnk_081145D4

	thumb_func_start sub_0806E730
sub_0806E730: @ 0x0806E730
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080787A8
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806E764
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806E764
sub_0806E764: @ 0x0806E764
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	bne _0806E782
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x1e]
_0806E782:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806E7A8
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0806E7A8
	movs r0, #0xd6
	bl sub_08004488
_0806E7A8:
	adds r0, r4, #0
	bl sub_0806E838
	pop {r4, r5, pc}

	thumb_func_start sub_0806E7B0
sub_0806E7B0: @ 0x0806E7B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806E7F2
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0806E7DE
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r5
	lsls r1, r1, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x18]
_0806E7DE:
	bl Random
	movs r1, #3
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	strb r5, [r4, #0x1e]
_0806E7F2:
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0806E81C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806E816
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0806E81C
_0806E816:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0806E81C:
	adds r0, r4, #0
	bl sub_0806E838
	pop {r4, r5, pc}

	thumb_func_start sub_0806E824
sub_0806E824: @ 0x0806E824
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806E834
	movs r0, #1
	strb r0, [r4, #0xc]
_0806E834:
	pop {r4, pc}
	.align 2, 0
	
	thumb_func_start sub_0806E838
sub_0806E838: @ 0x0806E838
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806E882
	ldr r0, _0806E864 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E870
	cmp r2, #2
	bne _0806E868
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806E874
	.align 2, 0
_0806E864: .4byte gLinkState
_0806E868:
	adds r0, r4, #0
	bl sub_0806E884
	b _0806E874
_0806E870:
	bl sub_080791D0
_0806E874:
	movs r0, #0xd6
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806E882:
	pop {r4, pc}
	
	thumb_func_start sub_0806E884
sub_0806E884: @ 0x0806E884
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806E890 @ =0x00000DB6
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806E890: .4byte 0x00000DB6

	thumb_func_start CuccoChick_Fusion
CuccoChick_Fusion: @ 0x0806E894
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806E8B6
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0x1e]
	b _0806E8CA
_0806E8B6:
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0806E8CA
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0806E8CA:
	pop {r4, pc}

