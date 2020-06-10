	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808A850
sub_0808A850: @ 0x0808A850
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0808A86C @ =gUnk_08121188
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_0808A86C: .4byte gUnk_08121188

	thumb_func_start sub_0808A870
sub_0808A870: @ 0x0808A870
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0808A8BE
	cmp r0, #1
	bgt _0808A884
	cmp r0, #0
	beq _0808A896
	b _0808A8C4
_0808A884:
	cmp r0, #3
	bgt _0808A8C4
	adds r0, r5, #0
	bl sub_0808A968
	adds r0, r5, #0
	bl sub_0808A8E0
	b _0808A8C4
_0808A896:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_0808094C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0806F798
	lsls r0, r0, #1
	adds r0, #4
	adds r4, r4, r0
	str r4, [r5, #0x6c]
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0xc]
	b _0808A8C4
_0808A8BE:
	adds r0, r5, #0
	bl sub_0808A968
_0808A8C4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808A8C8
sub_0808A8C8: @ 0x0808A8C8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x68
	ldr r1, [r2, #0x6c]
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808A8DE
	adds r0, r2, #0
	bl sub_0808A968
_0808A8DE:
	pop {pc}

	thumb_func_start sub_0808A8E0
sub_0808A8E0: @ 0x0808A8E0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	beq _0808A8F0
	cmp r2, #1
	beq _0808A930
	b _0808A954
_0808A8F0:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0808A930
	ldr r3, [r4, #0x20]
	cmp r3, #0
	bge _0808A926
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0808A90C
	str r2, [r4, #0x70]
	b _0808A926
_0808A90C:
	ldr r0, _0808A918 @ =0xFFFFC000
	cmp r3, r0
	bge _0808A920
	ldr r0, _0808A91C @ =0xFFFFFC00
	b _0808A924
	.align 2, 0
_0808A918: .4byte 0xFFFFC000
_0808A91C: .4byte 0xFFFFFC00
_0808A920:
	movs r0, #0x80
	lsls r0, r0, #3
_0808A924:
	str r0, [r4, #0x70]
_0808A926:
	ldr r1, [r4, #0x70]
	adds r0, r4, #0
	bl sub_08003FC4
	b _0808A962
_0808A930:
	ldr r2, _0808A964 @ =gUnk_08121194
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08017850
	cmp r0, #0
	beq _0808A962
_0808A954:
	ldrb r1, [r4, #0xb]
	movs r0, #0x5c
	movs r2, #0
	bl sub_080A7C00
	bl sub_0805E780
_0808A962:
	pop {r4, pc}
	.align 2, 0
_0808A964: .4byte gUnk_08121194

	thumb_func_start sub_0808A968
sub_0808A968: @ 0x0808A968
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x22
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r2, #0x13
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808A9C0 @ =gUnk_08121C58
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x70]
	pop {r4, pc}
	.align 2, 0
_0808A9C0: .4byte gUnk_08121C58
