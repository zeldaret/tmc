	.syntax unified
	push {lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08054A38 @ =gUnk_080FE320
	adds r2, r1, r0
	ldrb r0, [r2, #0x11]
	cmp r0, #0xd
	bhi _08054A34
	ldr r1, _08054A3C @ =gLocalFlagBanks
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #0x12]
	bl SetLocalFlagByBank
_08054A34:
	pop {pc}
	.align 2, 0
_08054A38: .4byte gUnk_080FE320
_08054A3C: .4byte gLocalFlagBanks
	.syntax divided
