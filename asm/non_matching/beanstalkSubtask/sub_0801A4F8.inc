	.syntax unified
	push {r4, r5, lr}
	ldr r4, _0801A538 @ =gPlayerState
	ldr r0, [r4, #0x30]
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0801A544
	movs r0, #0x45
	bl GetInventoryValue
	cmp r0, #1
	bne _0801A564
	ldrb r1, [r4, #0xd]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801A564
	ldr r2, _0801A53C @ =gPlayerEntity
	ldrb r0, [r2, #0x15]
	cmp r1, r0
	bne _0801A564
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	ldr r1, _0801A540 @ =gUnk_080B44A0
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r2, #0x2a]
	b _0801A55E
	.align 2, 0
_0801A538: .4byte gPlayerState
_0801A53C: .4byte gPlayerEntity
_0801A540: .4byte gUnk_080B44A0
_0801A544:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r4, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A564
	ldr r0, _0801A568 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
_0801A55E:
	ands r0, r1
	cmp r0, #0
	bne _0801A56C
_0801A564:
	movs r0, #0
	b _0801A56E
	.align 2, 0
_0801A568: .4byte gPlayerEntity
_0801A56C:
	movs r0, #1
_0801A56E:
	pop {r4, r5, pc}
	.syntax divided
