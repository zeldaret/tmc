	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080AC8FE
	cmp r1, #3
	ble _080AC8F8
	cmp r1, #0x1f
	bgt _080AC8FE
	cmp r1, #0x1e
	blt _080AC8FE
_080AC8F8:
	bl DeleteThisEntity
	b _080AC920
_080AC8FE:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080AC920
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080AC920:
	adds r0, r4, #0
	bl GyorgMaleEnergyProjectile_OnTick
	pop {r4, pc}
	.syntax divided
