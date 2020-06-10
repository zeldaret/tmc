	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A048C
sub_080A048C: @ 0x080A048C
	push {lr}
	ldr r2, _080A04A0 @ =gUnk_081248BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A04A0: .4byte gUnk_081248BC

	thumb_func_start sub_080A04A4
sub_080A04A4: @ 0x080A04A4
	push {r4, lr}
	movs r3, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r4, #4
	movs r1, #4
	strb r1, [r0, #0x1e]
	strb r3, [r0, #0xe]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	movs r2, #7
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	str r3, [r0, #0x34]
	ldrb r2, [r0, #0x19]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r4
	strb r1, [r0, #0x19]
	bl sub_080A04E8
	pop {r4, pc}

	thumb_func_start sub_080A04E0
sub_080A04E0: @ 0x080A04E0
	push {lr}
	bl sub_080A04E8
	pop {pc}

	thumb_func_start sub_080A04E8
sub_080A04E8: @ 0x080A04E8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080A04F8
	rsbs r0, r0, #0
_080A04F8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	movs r1, #0xe0
	lsls r1, r1, #1
	subs r1, r1, r4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r4, #0
	bl __divsi3
	adds r4, r0, #0
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x41
	bne _080A0538
	lsls r3, r4, #1
	cmp r3, #0xc
	bls _080A052E
	movs r3, #0xc
_080A052E:
	movs r0, #0x10
	subs r0, r0, r4
	lsls r4, r0, #8
	orrs r4, r3
	b _080A0540
_080A0538:
	movs r0, #0x10
	subs r0, r0, r4
	lsls r0, r0, #8
	orrs r4, r0
_080A0540:
	ldr r0, _080A054C @ =0x0000FFFF
	ands r4, r0
	ldr r0, _080A0550 @ =gScreen
	adds r0, #0x68
	strh r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A054C: .4byte 0x0000FFFF
_080A0550: .4byte gScreen
