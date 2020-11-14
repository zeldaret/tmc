	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CheckBits
CheckBits: @ 0x08000F10
	ldr r3, _08000F50 @ =gUnk_03005E60
	bx r3

	thumb_func_start sub_08000F14
sub_08000F14: @ 0x08000F14
	push {r4, r5, r6}
	movs r4, #0x1e
_08000F18:
	ldrsh r5, [r1, r4]
	ldrsh r6, [r2, r4]
	adds r5, r5, r6
	ldrsh r6, [r3, r4]
	adds r5, r5, r6
	strh r5, [r0, r4]
	subs r4, #2
	bpl _08000F18
	pop {r4, r5, r6}
	bx lr
	
	thumb_func_start sub_08000F2C
sub_08000F2C: @ 0x08000F2C
	push {r4, r5, r6, r7}
	movs r4, #0x1e
	movs r7, #0
_08000F32:
	ldrsh r5, [r1, r4]
	ldrsh r6, [r2, r4]
	adds r5, r5, r6
	ldrsh r6, [r3, r4]
	adds r5, r5, r6
	bpl _08000F40
	movs r5, #0
_08000F40:
	strh r5, [r0, r4]
	adds r7, r7, r5
	subs r4, #2
	bpl _08000F32
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_08000F50: .4byte gUnk_03005E60
