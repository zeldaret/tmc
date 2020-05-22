	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0801D66C
sub_0801D66C: @ 0x0801D66C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	orrs r2, r4
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _0801D686
	cmp r2, #2
	beq _0801D698
	b _0801D6B0
_0801D686:
	ldr r2, _0801D694 @ =0x040000D4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	b _0801D6A4
	.align 2, 0
_0801D694: .4byte 0x040000D4
_0801D698:
	ldr r2, _0801D6AC @ =0x040000D4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0801D6A4:
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0801D6BE
	.align 2, 0
_0801D6AC: .4byte 0x040000D4
_0801D6B0:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	subs r4, #1
	cmp r4, #0
	bne _0801D6B0
_0801D6BE:
	pop {r4, pc}	