	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CheckBits
CheckBits: @ 0x08000F10
	ldr r3, _08000F50 @ =ram_CheckBits
	bx r3

	// sum 3 drop probability vectors
	thumb_func_start SumDropProbabilities
SumDropProbabilities: @ 0x08000F14
	push {r4, r5, r6}
	movs r4, #30 // vector addition for 16 shorts in reverse
_08000F18:
	ldrsh r5, [r1, r4] // row 1
	ldrsh r6, [r2, r4] // + row 2
	adds r5, r6
	ldrsh r6, [r3, r4] // + row 3
	adds r5, r6
	strh r5, [r0, r4] // store in output
	subs r4, #2
	bpl _08000F18
	pop {r4, r5, r6}
	bx lr

	// sum 3 drop probabilities, clamp to 0, return scalar sum
	thumb_func_start SumDropProbabilities2
SumDropProbabilities2: @ 0x08000F2C
	push {r4, r5, r6, r7}
	movs r4, #30
	movs r7, #0 // sum
_08000F32:
	ldrsh r5, [r1, r4] // row 1
	ldrsh r6, [r2, r4] // + row 2
	adds r5, r6
	ldrsh r6, [r3, r4] // + row 3
	adds r5, r6
	bpl positive_drop_chance // clamp to 0
	movs r5, #0
positive_drop_chance:
	strh r5, [r0, r4] // store in output
	adds r7, r5
	subs r4, #2
	bpl _08000F32
	adds r0, r7, #0 // return sum
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_08000F50: .4byte ram_CheckBits
