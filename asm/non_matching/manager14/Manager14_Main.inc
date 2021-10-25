	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	ldr r1, _08059E7C @ =gUnk_081085A4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805A1D8
	pop {r4, pc}
	.align 2, 0
_08059E7C: .4byte gUnk_081085A4
	.syntax divided
