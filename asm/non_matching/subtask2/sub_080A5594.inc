	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r4, _080A5620 @ =gMenu
	ldr r0, _080A5624 @ =gUnk_08128C00
	str r0, [r4, #0xc]
	ldr r0, _080A5628 @ =gUnk_08128C04
	bl sub_080A70AC
	movs r6, #6
	movs r5, #0x34
	adds r7, r4, #0
	adds r7, #0x10
_080A55AA:
	adds r0, r5, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _080A55EA
	ldr r1, _080A562C @ =gItemMetaData
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #3
	bne _080A55C8
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080A55C8
	movs r1, #0x63
_080A55C8:
	cmp r1, #0x63
	beq _080A55EA
	cmp r1, #1
	bne _080A55D8
	adds r1, r6, #0
	cmp r1, #7
	bhi _080A55D8
	adds r6, r1, #1
_080A55D8:
	adds r0, r1, r7
	strb r5, [r0]
	lsls r1, r1, #3
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_080A5F48
_080A55EA:
	adds r5, #1
	cmp r5, #0x46
	bls _080A55AA
	movs r0, #0x3d
	bl GetInventoryValue
	cmp r0, #0
	bne _080A564A
	movs r5, #0
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5646
	movs r4, #0
	ldr r1, _080A5630 @ =gUnk_02002B6B
_080A560A:
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0x12
	bls _080A560A
	cmp r5, #0x4f
	ble _080A5634
	movs r5, #4
	b _080A5646
	.align 2, 0
_080A5620: .4byte gMenu
_080A5624: .4byte gUnk_08128C00
_080A5628: .4byte gUnk_08128C04
_080A562C: .4byte gItemMetaData
_080A5630: .4byte gUnk_02002B6B
_080A5634:
	cmp r5, #0x27
	ble _080A563C
	movs r5, #3
	b _080A5646
_080A563C:
	cmp r5, #9
	ble _080A5644
	movs r5, #2
	b _080A5646
_080A5644:
	movs r5, #1
_080A5646:
	ldr r0, _080A5698 @ =gMenu
	strb r5, [r0, #0x10]
_080A564A:
	ldr r0, _080A5698 @ =gMenu
	ldr r1, _080A569C @ =gSave
	adds r1, #0xa9
	ldrb r1, [r1]
	adds r1, #1
	strb r1, [r0, #0x11]
	movs r5, #0
	movs r4, #0x48
_080A565A:
	adds r0, r4, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5666
	adds r5, #1
_080A5666:
	adds r4, #1
	cmp r4, #0x4f
	bls _080A565A
	ldr r4, _080A5698 @ =gMenu
	strb r5, [r4, #0x12]
	movs r0, #0x3e
	bl GetInventoryValue
	cmp r0, #0
	bne _080A5688
	movs r0, #0x3f
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5688
	movs r0, #0x3f
	strb r0, [r4, #0x13]
_080A5688:
	ldr r1, _080A5698 @ =gMenu
	movs r0, #1
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	bl SetMenuType
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5698: .4byte gMenu
_080A569C: .4byte gSave
	.syntax divided
