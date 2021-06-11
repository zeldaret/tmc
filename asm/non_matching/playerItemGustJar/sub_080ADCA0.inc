	.syntax unified
	push {r4, lr}
	ldr r3, _080ADCD4 @ =gUnk_08132714
	ldr r2, _080ADCD8 @ =gPlayerEntity
	ldrb r2, [r2, #0x14]
	lsrs r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	str r2, [r0, #0x5c]
	ldrb r1, [r2]
	adds r3, r0, #0
	adds r3, #0x58
	strb r1, [r3]
	adds r1, r2, #1
	str r1, [r0, #0x5c]
	ldrb r2, [r2, #1]
	movs r4, #0x59
	strb r2, [r4, r0]
	adds r1, #1
	str r1, [r0, #0x5c]
	ldrb r1, [r3]
	ldrh r2, [r0, #0x12]
	bl sub_080042D0
	pop {r4, pc}
	.align 2, 0
_080ADCD4: .4byte gUnk_08132714
_080ADCD8: .4byte gPlayerEntity
	.syntax divided
