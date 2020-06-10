	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809F828
sub_0809F828: @ 0x0809F828
	push {lr}
	ldr r2, _0809F83C @ =gUnk_081247F8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F83C: .4byte gUnk_081247F8

	thumb_func_start sub_0809F840
sub_0809F840: @ 0x0809F840
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0x1e]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _0809F860
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x18]
_0809F860:
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
	pop {pc}

	thumb_func_start sub_0809F868
sub_0809F868: @ 0x0809F868
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F8A2
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _0809F890
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	strb r0, [r1, #0x1e]
	ands r0, r2
	cmp r0, #3
	bne _0809F89E
	movs r0, #1
	b _0809F89C
_0809F890:
	ldrb r0, [r1, #0x1e]
	subs r0, #1
	strb r0, [r1, #0x1e]
	ands r0, r2
	cmp r0, #0
	bne _0809F89E
_0809F89C:
	strb r0, [r1, #0xf]
_0809F89E:
	movs r0, #0x20
	strb r0, [r1, #0xe]
_0809F8A2:
	pop {pc}
