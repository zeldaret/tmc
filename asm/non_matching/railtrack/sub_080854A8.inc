    .syntax unified
	push {r4, lr}
	ldr r2, _080854E0 @ =gUnk_081205E0
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r2, r1, r2
	ldrh r3, [r2]
	adds r4, r3, #0
	ldr r2, _080854E4 @ =gUnk_080B4488
	adds r1, r1, r2
	ldr r2, [r0, #0x70]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r0, #1
	subs r0, r2, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _080854E8
	ldrh r0, [r2]
	cmp r3, r0
	bne _080854E8
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r4, r0
	bne _080854E8
	movs r0, #0
	b _080854EA
	.align 2, 0
_080854E0: .4byte gUnk_081205E0
_080854E4: .4byte gUnk_080B4488
_080854E8:
	movs r0, #1
_080854EA:
	pop {r4, pc}
    .syntax divided