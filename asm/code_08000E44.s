	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08000E44
sub_08000E44: @ 0x08000E44
	cmp r0, #0
	beq _08000E4E
	asrs r0, r0, #0x1f
	bmi _08000E4E
	movs r0, #1
_08000E4E:
	bx lr

	thumb_func_start Random
Random: @ 0x08000E50
	ldr r2, _08000EBC @ =gRand
	ldr r0, [r2]
	lsls r1, r0, #1
	adds r0, r0, r1
	movs r1, #0xd
	rors r0, r1
	str r0, [r2]
	lsrs r0, r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_08000E62
sub_08000E62: @ 0x08000E62
	lsrs r1, r0, #1
	ldr r2, _08000EC0 @ =0x55555555
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #2
	ldr r2, _08000EC4 @ =0x33333333
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #4
	ldr r2, _08000EC8 @ =0x0F0F0F0F
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsrs r1, r0, #8
	ldr r2, _08000ECC @ =0x00FF00FF
	ands r0, r2
	ands r1, r2
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bx lr

	non_word_aligned_thumb_func_start sub_08000E92
sub_08000E92: @ 0x08000E92
	movs r3, #1
	b _08000E98

	non_word_aligned_thumb_func_start LoadResourceAsync
LoadResourceAsync: @ 0x08000E96
	movs r3, #0
_08000E98:
	push {r4, r5}
	ldr r5, _08000ED0 @ =gUnk_03003DE0
	ldrb r4, [r5]
	cmp r4, #0x28
	bhs _08000EB6
	adds r4, #1
	strb r4, [r5]
	movs r5, #0xc
	muls r4, r5, r4
	ldr r5, _08000ED4 @ =gUnk_03000C24
	adds r4, r4, r5
	strb r3, [r4]
	strh r2, [r4, #2]
	str r0, [r4, #4]
	str r1, [r4, #8]
_08000EB6:
	pop {r4, r5}
	bx lr
	.align 2, 0
_08000EBC: .4byte gRand
_08000EC0: .4byte 0x55555555
_08000EC4: .4byte 0x33333333
_08000EC8: .4byte 0x0F0F0F0F
_08000ECC: .4byte 0x00FF00FF
_08000ED0: .4byte gUnk_03003DE0
_08000ED4: .4byte gUnk_03000C24
