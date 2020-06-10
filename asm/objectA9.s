	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809FEE0
sub_0809FEE0: @ 0x0809FEE0
	push {lr}
	ldr r2, _0809FEF4 @ =gUnk_08124850
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809FEF4: .4byte gUnk_08124850

	thumb_func_start sub_0809FEF8
sub_0809FEF8: @ 0x0809FEF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _0809FF20 @ =gUnk_0812485C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl UpdateSprite
	ldr r1, _0809FF24 @ =gUnk_08124860
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_0809FF20: .4byte gUnk_0812485C
_0809FF24: .4byte gUnk_08124860

	thumb_func_start sub_0809FF28
sub_0809FF28: @ 0x0809FF28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809FF64
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0xe]
	strb r0, [r1, #0x10]
	ldrb r2, [r4, #0xf]
	movs r0, #3
	ands r2, r0
	ldrb r3, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x18]
	adds r1, #0x6d
	ldrb r2, [r1]
	movs r0, #0xef
	ands r0, r2
	strb r0, [r1]
_0809FF64:
	pop {r4, pc}
	.align 2, 0
