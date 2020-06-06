	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802ADDC
sub_0802ADDC: @ 0x0802ADDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #2
	movs r0, #0x1b
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _0802AE20
	adds r0, r4, #0
	bl sub_0802B234
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r5, #0xb]
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802AE20
	subs r1, #7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AE20:
	pop {r4, r5, pc}
	.align 2, 0