	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806A2B4
sub_0806A2B4: @ 0x0806A2B4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r1, #1
	mov sb, r1
	mov r2, sb
	ands r2, r0
	mov sb, r2
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #7
	mov r2, r8
	ands r2, r0
	mov r8, r2
	movs r6, #7
	ands r6, r1
	ldrb r4, [r5, #0x14]
	lsrs r4, r4, #1
	ldr r1, _0806A350 @ =gUnk_081121E4
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	ldr r0, _0806A354 @ =gUnk_08112204
	adds r4, r4, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF48
	adds r0, r5, #0
	movs r1, #1
	mov r2, r8
	bl sub_0806FF60
	adds r6, #0x1c
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_0806FF60
	movs r0, #0x1a
	add sb, r0
	adds r0, r5, #0
	movs r1, #3
	mov r2, sb
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_0806FFD8
	adds r0, r5, #0
	bl sub_0807000C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806A350: .4byte gUnk_081121E4
_0806A354: .4byte gUnk_08112204
