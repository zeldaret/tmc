	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08091EC0
sub_08091EC0: @ 0x08091EC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08091ED6
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	ldrh r0, [r1, #0x36]
	strh r0, [r4, #0x36]
_08091ED6:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	beq _08091EEC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08091EEC
	bl DeleteThisEntity
_08091EEC:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
