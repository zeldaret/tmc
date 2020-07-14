	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MinishSizedArchway
MinishSizedArchway: @ 0x080973E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0809741E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	bl CheckIsDungeon
	cmp r0, #0
	beq _0809741E
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_0809741E:
	pop {r4, pc}
