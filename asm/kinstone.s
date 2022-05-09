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

	thumb_func_start GenerateAreaHint
GenerateAreaHint: @ 0x0801862C
	push {r4, r5, lr}
	ldr r1, _0801864C @ =gPlayerState
	movs r2, #0
	movs r0, #0x16
	strb r0, [r1, #0xc]
	ldr r5, _08018650 @ =gRoomTransition
	adds r0, r5, #0
.ifdef JP
	adds r0, #0x34
.else
.ifdef EU
	adds r0, #0x34
.else
	adds r0, #0x35
.endif
.endif
	strb r2, [r0]
	ldr r4, _08018654 @ =gUnk_02033AB8
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08018658
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x36]
	b _0801868C
	.align 2, 0
_0801864C: .4byte gPlayerState
_08018650: .4byte gRoomTransition
_08018654: .4byte gUnk_02033AB8
_08018658:
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801868C
	movs r0, #0
	strb r0, [r4, #2]
	movs r0, #8
	bl sub_08018690
	ldrh r0, [r4, #4]
	ldrh r5, [r5, #0x36]
	cmp r0, r5
	bne _0801868C
	adds r1, r0, #0
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #4]
	strh r1, [r4, #0x12]
_0801868C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08018690
sub_08018690: @ 0x08018690
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	subs r4, r0, #1
	cmp r4, #0
	beq _080186BC
	lsls r0, r4, #1
	adds r5, r0, r6
_0801869E:
	bl Random
	adds r1, r4, #1
	bl __modsi3
	ldrh r2, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	strh r1, [r5]
	strh r2, [r0]
	subs r5, #2
	subs r4, #1
	cmp r4, #0
	bne _0801869E
_080186BC:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080186C0
sub_080186C0: @ 0x080186C0
	ldr r3, _080186D0 @ =gArea
	adds r2, r3, #0
	adds r2, #0x28
	movs r1, #0xff
	strb r1, [r2]
	strh r0, [r3, #0x2c]
	bx lr
	.align 2, 0
_080186D0: .4byte gArea

	thumb_func_start sub_080186D4
sub_080186D4: @ 0x080186D4
	push {lr}
	ldr r0, _080186E8 @ =gArea
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080186E4
	bl sub_0801855C
_080186E4:
	pop {pc}
	.align 2, 0
_080186E8: .4byte gArea

	thumb_func_start sub_080186EC
sub_080186EC: @ 0x080186EC
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0801870C @ =gUnk_080C9CBC
_080186F2:
	ldrb r0, [r4, #3]
	cmp r0, #8
	bne _08018700
	ldrb r1, [r4, #4]
	adds r0, r5, #0
	bl sub_08018738
_08018700:
	adds r4, #8
	adds r5, #1
	cmp r5, #0x64
	bls _080186F2
	pop {r4, r5, pc}
	.align 2, 0
_0801870C: .4byte gUnk_080C9CBC

	thumb_func_start sub_08018710
sub_08018710: @ 0x08018710
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r4, _08018734 @ =gUnk_080C9CBC
_08018718:
	ldrb r0, [r4, #3]
	cmp r0, #8
	bne _0801872A
	ldrb r1, [r4, #4]
	cmp r6, r1
	beq _0801872A
	adds r0, r5, #0
	bl sub_08018738
_0801872A:
	adds r4, #8
	adds r5, #1
	cmp r5, #0x64
	bls _08018718
	pop {r4, r5, r6, pc}
	.align 2, 0
_08018734: .4byte gUnk_080C9CBC
