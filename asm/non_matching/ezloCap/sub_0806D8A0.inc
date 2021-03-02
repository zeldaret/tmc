    .syntax unified

	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	movs r0, #8
	strb r0, [r3, #0x19]
	ldr r0, [r3, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #8]
	str r2, [r3, #0x14]
	movs r2, #0x10
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0806D8C2
	rsbs r2, r2, #0
_0806D8C2:
	ldr r1, _0806D900 @ =gPlayerEntity
	movs r5, #0x2e
	ldrsh r0, [r1, r5]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	adds r1, #2
	strh r2, [r3, #0x1e]
	strh r1, [r3, #0x22]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r1, r1, r0
	adds r0, r2, #0
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r2, [r4, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _0806D904 @ =gUnk_08114134
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r4, #0x14]
	pop {r4, r5, pc}
	.align 2, 0
_0806D900: .4byte gPlayerEntity
_0806D904: .4byte gUnk_08114134
    .syntax divided
