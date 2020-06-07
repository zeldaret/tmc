	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806C550
sub_0806C550: @ 0x0806C550
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806C56E
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C576
_0806C56E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_0806C576:
	pop {r4, pc}

	thumb_func_start sub_0806C578
sub_0806C578: @ 0x0806C578
	push {lr}
	ldr r0, _0806C584 @ =gUnk_0813AD10
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806C584: .4byte gUnk_0813AD10

	thumb_func_start sub_0806C588
sub_0806C588: @ 0x0806C588
	push {lr}
	ldr r0, _0806C594 @ =gUnk_0813AD24
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806C594: .4byte gUnk_0813AD24

	thumb_func_start sub_0806C598
sub_0806C598: @ 0x0806C598
	push {lr}
	ldr r0, _0806C5A4 @ =gUnk_0813AD38
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806C5A4: .4byte gUnk_0813AD38