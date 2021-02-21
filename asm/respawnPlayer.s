	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ResetPlayer
ResetPlayer: @ 0x08077B2C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08077B88 @ =gUnk_03000B80
_08077B32:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08077E78
	adds r5, #0x1c
	adds r4, #1
	cmp r4, #2
	bls _08077B32
	ldr r2, _08077B8C @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x3d
	movs r3, #0
	strb r3, [r0]
	strb r3, [r2, #0x1c]
	subs r0, #0x1c
	strb r3, [r0]
	strb r3, [r2, #1]
	strb r3, [r2, #0xe]
	strb r3, [r2, #0x1e]
	strb r3, [r2, #0x1b]
	strb r3, [r2, #3]
	strb r3, [r2, #5]
	ldr r0, [r2, #0x30]
	ldr r1, _08077B90 @ =0xF7FBFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08077B94 @ =gPlayerEntity
	str r3, [r0, #0x70]
	ldrb r1, [r2, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08077B76
	strb r3, [r2, #2]
_08077B76:
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #4
	bgt _08077B86
	cmp r0, #2
	blt _08077B86
	strb r3, [r1]
_08077B86:
	pop {r4, r5, pc}
	.align 2, 0
_08077B88: .4byte gUnk_03000B80
_08077B8C: .4byte gPlayerState
_08077B90: .4byte 0xF7FBFFFF
_08077B94: .4byte gPlayerEntity
