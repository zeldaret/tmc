	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object17
Object17: @ 0x080861AC
	push {lr}
	ldr r2, _080861C0 @ =gUnk_08120660
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080861C0: .4byte gUnk_08120660

	thumb_func_start sub_080861C4
sub_080861C4: @ 0x080861C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r0, _08086230 @ =gPlayerEntity
	mov ip, r0
	ldrb r1, [r0, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	mov r0, ip
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r6, r4, #0
	adds r6, #0x29
	lsrs r1, r1, #0x1d
	ldrb r3, [r6]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r6]
	mov r0, ip
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
	bl Random
	ands r0, r5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x11
	bl InitializeAnimation
	pop {r4, r5, r6, pc}
	.align 2, 0
_08086230: .4byte gPlayerEntity

	thumb_func_start sub_08086234
sub_08086234: @ 0x08086234
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08086258
	ldr r0, _08086254 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808625E
	adds r0, r4, #0
	bl GetNextFrame
	b _0808625E
	.align 2, 0
_08086254: .4byte gScreenTransition
_08086258:
	adds r0, r4, #0
	bl GetNextFrame
_0808625E:
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0808626E
	bl DeleteThisEntity
	b _0808627E
_0808626E:
	ldr r0, _08086280 @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0808627E
	bl DeleteThisEntity
_0808627E:
	pop {r4, pc}
	.align 2, 0
_08086280: .4byte gPlayerState
