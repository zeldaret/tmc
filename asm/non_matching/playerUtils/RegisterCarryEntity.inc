	.syntax unified
	push {lr}
	adds r3, r0, #0
	ldr r2, _08078950 @ =gCarryEntities
	ldrb r0, [r2, #2]
	cmp r0, #0x1f
	bhi _0807894C
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
_0807894C:
	pop {pc}
	.align 2, 0
_08078950: .4byte gCarryEntities
	.syntax divided
