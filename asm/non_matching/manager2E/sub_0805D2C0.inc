	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D2EE
	ldr r0, _0805D2F0 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #1
	bhi _0805D2EE
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _0805D2E6
	adds r0, r4, #0
	bl sub_0805D2F4
_0805D2E6:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805E4E0
_0805D2EE:
	pop {r4, pc}
	.align 2, 0
_0805D2F0: .4byte gUnk_03003DC0
	.syntax divided
