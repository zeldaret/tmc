	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080216D4
sub_080216D4: @ 0x080216D4
	push {lr}
	ldr r1, _080216E0 @ =gUnk_080CB570
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080216E0: .4byte gUnk_080CB570

	thumb_func_start sub_080216E4
sub_080216E4: @ 0x080216E4
	push {lr}
	ldr r2, _080216F8 @ =gUnk_080CB588
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080216F8: .4byte gUnk_080CB588

	thumb_func_start sub_080216FC
sub_080216FC: @ 0x080216FC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802171A
	adds r0, r2, #0
	movs r1, #3
	movs r2, #0x80
	bl CreateFx
	bl sub_0805E780
_0802171A:
	pop {pc}

	thumb_func_start nullsub_7
nullsub_7: @ 0x0802171C
	bx lr
	.align 2, 0

	thumb_func_start sub_08021720
sub_08021720: @ 0x08021720
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	ldrb r1, [r0, #0xa]
	strb r1, [r0, #0x1e]
	ldrb r2, [r0, #0x19]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x19]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_08
nullsub_08: @ 0x08021754
	bx lr
	.align 2, 0
