	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D310 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _0805D328
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0805D314
	bl SoundReq
	b _0805D31A
	.align 2, 0
_0805D310: .4byte gUnk_03003DC0
_0805D314:
	movs r0, #0x72
	bl SoundReq
_0805D31A:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0805D324
	bl SetFlag
_0805D324:
	bl DeleteThisEntity
_0805D328:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
