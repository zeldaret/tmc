	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0804FF98
sub_0804FF98: @ 0x0804FF98
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804FFD4 @ =gUnk_020354C0
	ldr r1, _0804FFD8 @ =gUsedPalettes
	ldr r4, [r1]
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	cmp r4, #0
	beq _0804FFD0
	ldr r7, _0804FFDC @ =gUnk_03005E98
_0804FFAC:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0804FFC6
	ldr r0, _0804FFE0 @ =gPaletteBuffer
	adds r0, r5, r0
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r5, r2
	ldrh r2, [r6, #2]
	ldrb r3, [r6, #1]
	bl _call_via_r7
_0804FFC6:
	adds r5, #0x20
	adds r6, #4
	lsrs r4, r4, #1
	cmp r4, #0
	bne _0804FFAC
_0804FFD0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804FFD4: .4byte gUnk_020354C0
_0804FFD8: .4byte gUsedPalettes
_0804FFDC: .4byte gUnk_03005E98
_0804FFE0: .4byte gPaletteBuffer

	thumb_func_start sub_0804FFE4
sub_0804FFE4: @ 0x0804FFE4
	push {r4, lr}
	ldr r4, _08050000 @ =gUnk_03000FD0
	adds r0, r4, #0
	movs r1, #0x1c
	bl _DmaZero
	ldr r0, _08050004 @ =gUnk_020354C0
	movs r1, #0x80
	bl _DmaZero
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_08050000: .4byte gUnk_03000FD0
_08050004: .4byte gUnk_020354C0
