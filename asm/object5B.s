	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809288C
sub_0809288C: @ 0x0809288C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080928B0
	ldr r0, _080928AC @ =gUnk_0812279C
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080928C0
	.align 2, 0
_080928AC: .4byte gUnk_0812279C
_080928B0:
	ldr r0, _080928C4 @ =gUnk_08122794
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080928C0:
	pop {pc}
	.align 2, 0
_080928C4: .4byte gUnk_08122794

	thumb_func_start sub_080928C8
sub_080928C8: @ 0x080928C8
	push {lr}
	adds r3, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x18]
	ldrb r0, [r3, #0xa]
	strb r0, [r3, #0x1e]
	ldrb r0, [r3, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r3, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #0x1b]
	ldrb r0, [r3, #0xa]
	cmp r0, #2
	beq _08092912
	cmp r0, #4
	beq _08092920
	b _08092928
_08092912:
	adds r0, r3, #0
	movs r1, #0x5b
	movs r2, #4
	movs r3, #0
	bl CreateObjectWithParent
	b _08092928
_08092920:
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
_08092928:
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_119
nullsub_119: @ 0x0809292C
	bx lr
	.align 2, 0

	thumb_func_start sub_08092930
sub_08092930: @ 0x08092930
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080928C8
	adds r4, #0x82
	movs r0, #0
	strh r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08092940
sub_08092940: @ 0x08092940
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x84
	ldr r1, [r5]
	bl ExecuteScriptCommandSet
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_08092958
	pop {r4, r5, pc}

	thumb_func_start sub_08092958
sub_08092958: @ 0x08092958
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0809298A
	movs r4, #0
_08092966:
	ldr r1, [r2, #8]
	mvns r0, r1
	adds r0, #1
	ands r0, r1
	eors r1, r0
	str r1, [r2, #8]
	cmp r0, #1
	beq _0809297C
	cmp r0, #2
	beq _08092980
	b _08092984
_0809297C:
	strb r4, [r3, #0x1e]
	b _08092984
_08092980:
	ldr r0, [r2, #4]
	strb r0, [r3, #0x1e]
_08092984:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08092966
_0809298A:
	pop {r4, pc}
