	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BarrelInside
BarrelInside: @ 0x08089134
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0808919C
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x1e]
	movs r0, #0x10
	strb r0, [r5, #0xe]
	strb r3, [r5, #0xf]
	ldrb r0, [r5, #0xa]
	lsls r3, r0, #1
	adds r3, r3, r0
	ldr r0, _080891D4 @ =gUnk_08120C80
	adds r3, r3, r0
	ldrb r1, [r3]
	lsls r1, r1, #6
	ldrb r4, [r5, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x19]
	ldrb r0, [r3, #1]
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	movs r1, #7
	ands r1, r0
	mov r0, ip
	ldrb r4, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r4
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r3, #2]
	lsls r0, r0, #6
	ldrb r1, [r5, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x1b]
_0808919C:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bne _080891D0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080891D0
	movs r0, #0x10
	strb r0, [r5, #0xe]
	ldr r2, _080891D8 @ =gUnk_08120C92
	ldrb r0, [r5, #0xf]
	adds r1, r0, #1
	strb r1, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1e]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #3
	bne _080891D0
	strb r3, [r5, #0xf]
_080891D0:
	pop {r4, r5, pc}
	.align 2, 0
_080891D4: .4byte gUnk_08120C80
_080891D8: .4byte gUnk_08120C92
