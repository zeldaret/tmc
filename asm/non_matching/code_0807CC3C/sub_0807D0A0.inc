	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r7, #4
	movs r1, #4
	bl sub_0807D1A4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0807D1A4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r7]
	cmp r0, r4
	bne _0807D0DE
	lsls r0, r0, #0x10
	ldrh r1, [r7, #2]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _0807D0DE
	ldr r1, [r7, #4]
	ldr r0, _0807D0E4 @ =0x4D435A33
	cmp r1, r0
	beq _0807D0E8
_0807D0DE:
	movs r0, #0
	b _0807D0EA
	.align 2, 0
_0807D0E4: .4byte 0x4D435A33
_0807D0E8:
	movs r0, #1
_0807D0EA:
	pop {r4, r5, r6, r7, pc}

	.syntax divided
