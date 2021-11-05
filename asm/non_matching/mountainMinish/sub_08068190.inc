	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r5, [r6, #0xb]
	cmp r5, #8
	bls _0806819C
	movs r5, #8
_0806819C:
	movs r0, #0x7e
	bl CheckLocalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	beq _080681B4
	movs r4, #2
_080681B4:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _080681C0
	movs r4, #3
_080681C0:
	ldr r2, _080681D4 @ =gUnk_0811130E
	lsls r0, r4, #1
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl MessageNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_080681D4: .4byte gUnk_0811130E
	.syntax divided
