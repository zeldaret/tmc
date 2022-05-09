	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	
	.text

	thumb_func_start sub_08018500
sub_08018500: @ 0x08018500
	push {r4, lr}
	ldr r4, _08018550 @ =gUnk_02033AB8
	adds r3, r4, #4
	ldr r0, _08018554 @ =gUnk_080B3D14
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0
_0801851A:
	strh r0, [r3]
	adds r0, #1
	adds r3, #2
	adds r2, #1
	cmp r2, #2
	bls _0801851A
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _08018558 @ =0x00000C81
	adds r0, r0, r1
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0xa
_08018536:
	strh r0, [r3]
	adds r0, #1
	adds r3, #2
	adds r2, #1
	cmp r2, #4
	bls _08018536
	movs r0, #5
	bl sub_08018690
	movs r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	.align 2, 0
_08018550: .4byte gUnk_02033AB8
_08018554: .4byte gUnk_080B3D14
_08018558: .4byte 0x00000C81

	thumb_func_start sub_0801855C
sub_0801855C: @ 0x0801855C
	push {r4, r5, r6, lr}
	ldr r4, _08018570 @ =gUnk_02033AB8
	adds r0, r4, #0
	movs r1, #0x14
	bl MemClear
	adds r5, r4, #0
	ldr r4, _08018574 @ =gUnk_080B3D20
	movs r6, #0
	b _0801858C
	.align 2, 0
_08018570: .4byte gUnk_02033AB8
_08018574: .4byte gUnk_080B3D20
_08018578:
	adds r0, r4, #0
	bl sub_080185B4
	cmp r0, #0
	beq _08018584
	ldrb r6, [r5, #3]
_08018584:
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	adds r4, #4
_0801858C:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08018578
	strb r6, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	ldr r1, _080185B0 @ =gUnk_080B3D20
	adds r4, r0, r1
	ldrb r0, [r4, #2]
	strb r0, [r5]
	ldrb r0, [r4, #3]
	strb r0, [r5, #1]
	adds r0, r6, #1
	strb r0, [r5, #3]
	bl sub_08018500
	pop {r4, r5, r6, pc}
	.align 2, 0
_080185B0: .4byte gUnk_080B3D20

	thumb_func_start sub_080185B4
sub_080185B4: @ 0x080185B4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080185C2
	movs r0, #0
	b _080185F6
_080185C2:
	cmp r0, #0xfe
	bne _080185D4
	ldrb r0, [r2, #1]
	bl GetInventoryValue
	cmp r0, #0
	beq _080185F6
	movs r0, #1
	b _080185F6
_080185D4:
	cmp r0, #0xfd
	beq _080185F0
	ldr r1, _080185EC @ =gLocalFlagBanks
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r2, #1]
	bl CheckLocalFlagByBank
	b _080185F6
	.align 2, 0
_080185EC: .4byte gLocalFlagBanks
_080185F0:
	ldrb r0, [r2, #1]
	bl CheckKinstoneFused
_080185F6:
	pop {pc}

	thumb_func_start sub_080185F8
sub_080185F8: @ 0x080185F8
	push {r4, r5, lr}
	ldr r5, _08018624 @ =gUnk_02033AB8
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	ldr r1, _08018628 @ =gUnk_080B3D20
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_080185B4
	cmp r0, #0
	beq _08018620
	ldrb r0, [r4, #2]
	strb r0, [r5]
	ldrb r0, [r4, #3]
	strb r0, [r5, #1]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	bl sub_08018500
_08018620:
	pop {r4, r5, pc}
	.align 2, 0
_08018624: .4byte gUnk_02033AB8
_08018628: .4byte gUnk_080B3D20
