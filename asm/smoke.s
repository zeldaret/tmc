	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808A3F4
sub_0808A3F4: @ 0x0808A3F4
	push {lr}
	ldr r2, _0808A408 @ =gUnk_08121060
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808A408: .4byte gUnk_08121060

	thumb_func_start sub_0808A40C
sub_0808A40C: @ 0x0808A40C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0808A41E
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x28
	strb r0, [r4, #0xe]
_0808A41E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808A466
	bl Random
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x40
	subs r1, r1, r0
	strb r1, [r4, #0xe]
	movs r0, #0x2d
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _0808A466
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	bl Random
	ldr r2, _0808A468 @ =gUnk_08121068
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
_0808A466:
	pop {r4, r5, pc}
	.align 2, 0
_0808A468: .4byte gUnk_08121068

	thumb_func_start sub_0808A46C
sub_0808A46C: @ 0x0808A46C
	push {lr}
	ldr r2, _0808A480 @ =gUnk_08121070
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808A480: .4byte gUnk_08121070

	thumb_func_start sub_0808A484
sub_0808A484: @ 0x0808A484
	push {r4, lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	movs r1, #0x40
	strh r1, [r0, #0x24]
	movs r1, #6
	strb r1, [r0, #0x15]
	ldrb r3, [r0, #0x19]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	movs r4, #0x40
	orrs r1, r4
	strb r1, [r0, #0x19]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r3, [r1]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	mov r3, ip
	strb r1, [r3]
	ldrb r1, [r0, #0x1b]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x1b]
	movs r1, #0x28
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808A4D0
sub_0808A4D0: @ 0x0808A4D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808A4F2
	adds r0, r4, #0
	bl DeleteEntity
_0808A4F2:
	pop {r4, pc}
