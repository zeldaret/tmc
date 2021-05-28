	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080643EA
	movs r3, #0
	b _08064406
_080643EA:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	bne _080643F8
	movs r3, #1
	b _08064406
_080643F8:
	movs r0, #3
	bl GetInventoryValue
	movs r3, #3
	cmp r0, #0
	bne _08064406
	movs r3, #2
_08064406:
	ldrb r1, [r4, #0xb]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r2, _08064424 @ =gUnk_0810F6D4
	lsls r1, r3, #1
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_08064424: .4byte gUnk_0810F6D4
	.syntax divided
