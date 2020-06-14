	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08035164
sub_08035164: @ 0x08035164
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803518C
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0803518C:
	adds r0, r4, #0
	bl sub_08035194
	pop {r4, pc}

	thumb_func_start sub_08035194
sub_08035194: @ 0x08035194
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080351A8
	ldr r0, _080351A4 @ =gUnk_080CEF34
	b _080351AA
	.align 2, 0
_080351A4: .4byte gUnk_080CEF34
_080351A8:
	ldr r0, _080351B8 @ =gUnk_080CEF58
_080351AA:
	ldrb r1, [r2, #0x1e]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x48]
	pop {pc}
	.align 2, 0
_080351B8: .4byte gUnk_080CEF58
