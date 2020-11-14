    .syntax unified
	push {lr}
	ldr r3, _0804C288 @ =gArea
	ldrb r0, [r3, #0xd]
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	movs r0, #0xf
	ands r2, r0
	strb r2, [r3, #0xd]
	ldr r0, _0804C28C @ =gScreenTransition
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bne _0804C284
	movs r1, #0xe
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r3, #0xd]
	movs r0, #1
	bl sub_080AF250
_0804C284:
	pop {pc}
	.align 2, 0
_0804C288: .4byte gArea
_0804C28C: .4byte gScreenTransition
    .syntax divided
