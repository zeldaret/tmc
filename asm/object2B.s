	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08089CBC
sub_08089CBC: @ 0x08089CBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08089CDC
	movs r0, #1
	strb r0, [r4, #0xc]
	str r1, [r4, #0x34]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #9
	bl InitializeAnimation
_08089CDC:
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	bne _08089CEA
	bl DeleteThisEntity
	b _08089D02
_08089CEA:
	movs r2, #0x36
	ldrsh r0, [r1, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	subs r2, r2, r0
	adds r0, r1, #0
	adds r0, #0x7e
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08089D02:
	pop {r4, pc}
