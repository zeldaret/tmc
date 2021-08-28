	.syntax unified
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r1, _08059388 @ =gCurrentTextBox
	ldrh r0, [r2, #0x3c]
	ldrh r1, [r1, #0x28]
	cmp r0, r1
	bne _08059384
	ldrh r0, [r2, #0x3e]
	bl SetFlag
	bl DeleteThisEntity
_08059384:
	pop {pc}
	.align 2, 0
_08059388: .4byte gCurrentTextBox
	.syntax divided
