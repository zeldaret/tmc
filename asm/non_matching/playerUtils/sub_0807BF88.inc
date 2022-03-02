	.syntax unified
	push {r4, lr}
	adds r3, r2, #0
	ldrh r2, [r3, #4]
	subs r0, r0, r2
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	movs r2, #0
	ldrh r4, [r3]
	cmp r0, r4
	bhs _0807BFA4
	ldrh r3, [r3, #2]
	cmp r1, r3
	bhs _0807BFA4
	movs r2, #1
_0807BFA4:
	adds r0, r2, #0
	pop {r4, pc}
	.syntax divided
