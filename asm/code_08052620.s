	.include "asm/macros.inc"
	.text
	.syntax unified
	
	thumb_func_start sub_08052620
sub_08052620: @ 0x08052620
	push {lr}
	movs r1, #0
	ldr r0, _08052634 @ =gUnk_02033A90
	ldrb r0, [r0]
	cmp r0, #0x81
	bne _0805262E
	movs r1, #1
_0805262E:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_08052634: .4byte gUnk_02033A90

	thumb_func_start sub_08052638
sub_08052638: @ 0x08052638
	push {lr}
	movs r2, #0
	ldr r1, _08052650 @ =gUnk_08127D30
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x81
	bne _0805264A
	movs r2, #1
_0805264A:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_08052650: .4byte gUnk_08127D30
