	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805E0A8
sub_0805E0A8: @ 0x0805E0A8
	push {lr}
	ldr r2, _0805E0BC @ =gUnk_08108DE0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805E0BC: .4byte gUnk_08108DE0

	thumb_func_start sub_0805E0C0
sub_0805E0C0: @ 0x0805E0C0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #1
	strb r1, [r5, #0xc]
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xa]
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	bne _0805E0EC
	bl DeleteThisEntity
	b _0805E0EC
_0805E0DE:
	adds r0, r4, #0
	adds r4, #0x10
	bl CreateEntity
	str r5, [r0, #0x50]
	movs r1, #0xff
	strb r1, [r0, #0xe]
_0805E0EC:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0805E0DE
	pop {r4, r5, pc}

	thumb_func_start sub_0805E0F4
sub_0805E0F4: @ 0x0805E0F4
	movs r1, #0
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0
