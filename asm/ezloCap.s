	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806D86C
sub_0806D86C: @ 0x0806D86C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D888
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
_0806D888:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D8A0
sub_0806D8A0: @ 0x0806D8A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	movs r0, #8
	strb r0, [r3, #0x19]
	ldr r0, [r3, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #8]
	str r2, [r3, #0x14]
	movs r2, #0x10
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0806D8C2
	rsbs r2, r2, #0
_0806D8C2:
	ldr r1, _0806D900 @ =gLinkEntity
	movs r5, #0x2e
	ldrsh r0, [r1, r5]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	adds r1, #2
	strh r2, [r3, #0x1e]
	strh r1, [r3, #0x22]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r1, r1, r0
	adds r0, r2, #0
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r2, [r4, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _0806D904 @ =gUnk_08114134
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r4, #0x14]
	pop {r4, r5, pc}
	.align 2, 0
_0806D900: .4byte gLinkEntity
_0806D904: .4byte gUnk_08114134

	thumb_func_start sub_0806D908
sub_0806D908: @ 0x0806D908
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldr r3, _0806D93C @ =gLinkEntity
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	ldrb r2, [r4, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _0806D940 @ =gUnk_08114144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r4, #0x14]
	pop {r4, r5, pc}
	.align 2, 0
_0806D93C: .4byte gLinkEntity
_0806D940: .4byte gUnk_08114144

	thumb_func_start sub_0806D944
sub_0806D944: @ 0x0806D944
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	movs r3, #0x41
	rsbs r3, r3, #0
	ands r3, r0
	strb r3, [r2, #0x18]
	ldr r0, _0806D968 @ =gLinkEntity
	ldr r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	cmp r1, r0
	bgt _0806D964
	movs r1, #0x40
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #0x18]
_0806D964:
	pop {pc}
	.align 2, 0
_0806D968: .4byte gLinkEntity

	thumb_func_start sub_0806D96C
sub_0806D96C: @ 0x0806D96C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x42
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0806D99C
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _0806D9A0 @ =0xFFE80000
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0
	bl PositionRelative
_0806D99C:
	pop {r4, pc}
	.align 2, 0
_0806D9A0: .4byte 0xFFE80000

	thumb_func_start sub_0806D9A4
sub_0806D9A4: @ 0x0806D9A4
	push {lr}
	ldr r1, _0806D9BC @ =gLinkEntity
	ldr r2, [r0, #0x2c]
	ldr r0, [r1, #0x2c]
	adds r3, r1, #0
	cmp r2, r0
	bgt _0806D9C0
	ldrb r1, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0806D9C6
	.align 2, 0
_0806D9BC: .4byte gLinkEntity
_0806D9C0:
	ldrb r0, [r3, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0806D9C6:
	strb r0, [r3, #0x18]
	movs r0, #4
	strb r0, [r3, #0x14]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D9D0
sub_0806D9D0: @ 0x0806D9D0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806D9F8
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, _0806D9F4 @ =gUnk_080FD170
	str r0, [r2, #0x48]
	adds r0, r2, #0
	bl sub_0807DD50
	b _0806DA00
	.align 2, 0
_0806D9F4: .4byte gUnk_080FD170
_0806D9F8:
	adds r0, r2, #0
	movs r1, #0
	bl sub_0807DD94
_0806DA00:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806DA04
sub_0806DA04: @ 0x0806DA04
	push {lr}
	ldr r3, [r1, #4]
	lsls r3, r3, #3
	ldr r1, _0806DA18 @ =gUnk_0811415C
	adds r3, r3, r1
	ldrb r2, [r3, #4]
	movs r1, #1
	bl sub_08078850
	pop {pc}
	.align 2, 0
_0806DA18: .4byte gUnk_0811415C

	thumb_func_start sub_0806DA1C
sub_0806DA1C: @ 0x0806DA1C
	push {lr}
	ldr r3, _0806DA34 @ =gUnk_081141A4
	ldr r2, [r1, #4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _0806DA38 @ =gUnk_081141E4
	adds r2, r2, r1
	ldrb r1, [r2]
	bl sub_0808091C
	pop {pc}
	.align 2, 0
_0806DA34: .4byte gUnk_081141A4
_0806DA38: .4byte gUnk_081141E4

	thumb_func_start sub_0806DA3C
sub_0806DA3C: @ 0x0806DA3C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	subs r0, #1
	cmp r0, #0xa
	bhi _0806DA84
	lsls r0, r0, #2
	ldr r1, _0806DA54 @ =_0806DA58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DA54: .4byte _0806DA58
_0806DA58: @ jump table
	.4byte _0806DA88 @ case 0
	.4byte _0806DA8C @ case 1
	.4byte _0806DA90 @ case 2
	.4byte _0806DA94 @ case 3
	.4byte _0806DA98 @ case 4
	.4byte _0806DAA0 @ case 5
	.4byte _0806DAA0 @ case 6
	.4byte _0806DAA0 @ case 7
	.4byte _0806DAA0 @ case 8
	.4byte _0806DAA0 @ case 9
	.4byte _0806DA9C @ case 10
_0806DA84:
	movs r0, #0
	b _0806DAA6
_0806DA88:
	movs r0, #1
	b _0806DAA6
_0806DA8C:
	movs r0, #2
	b _0806DAA6
_0806DA90:
	movs r0, #3
	b _0806DAA6
_0806DA94:
	movs r0, #4
	b _0806DAA6
_0806DA98:
	movs r0, #5
	b _0806DAA6
_0806DA9C:
	movs r0, #9
	b _0806DAA6
_0806DAA0:
	adds r0, r2, #0
	bl sub_0801E99C
_0806DAA6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {pc}

	thumb_func_start sub_0806DAAC
sub_0806DAAC: @ 0x0806DAAC
	push {r4, lr}
	adds r4, r1, #0
	bl sub_0806DA3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl CheckKinstoneFused
	str r0, [r4, #0x14]
	ldr r2, _0806DACC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0806DACC: .4byte gUnk_02033280

	thumb_func_start sub_0806DAD0
sub_0806DAD0: @ 0x0806DAD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806DA3C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08078790
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DAE8
sub_0806DAE8: @ 0x0806DAE8
	push {lr}
	ldrb r0, [r0, #0xa]
	subs r0, #1
	cmp r0, #4
	bhi _0806DB3A
	lsls r0, r0, #2
	ldr r1, _0806DAFC @ =_0806DB00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DAFC: .4byte _0806DB00
_0806DB00: @ jump table
	.4byte _0806DB14 @ case 0
	.4byte _0806DB1C @ case 1
	.4byte _0806DB24 @ case 2
	.4byte _0806DB2C @ case 3
	.4byte _0806DB34 @ case 4
_0806DB14:
	movs r0, #0xee
	bl SetLocalFlag
	b _0806DB3A
_0806DB1C:
	movs r0, #0xef
	bl SetLocalFlag
	b _0806DB3A
_0806DB24:
	movs r0, #0xf0
	bl SetLocalFlag
	b _0806DB3A
_0806DB2C:
	movs r0, #0xf1
	bl SetLocalFlag
	b _0806DB3A
_0806DB34:
	movs r0, #0xf2
	bl SetLocalFlag
_0806DB3A:
	movs r0, #0xcd
	bl PlaySFX
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806DB44
sub_0806DB44: @ 0x0806DB44
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0xee
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xef
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xf0
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xf1
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xf2
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806DB82
	movs r0, #1
	str r0, [r4, #0x14]
_0806DB82:
	pop {r4, pc}

	thumb_func_start sub_0806DB84
sub_0806DB84: @ 0x0806DB84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806DBE4 @ =gUnk_08114154
	str r0, [r5, #0x48]
	movs r0, #0x3e
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DBB6
	ldr r2, _0806DBE8 @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldr r1, _0806DBEC @ =gUnk_08016030
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_0806DBB6:
	movs r0, #0x3e
	movs r1, #5
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DBE2
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldr r1, _0806DBF0 @ =gUnk_0801606C
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_0806DBE2:
	pop {r4, r5, pc}
	.align 2, 0
_0806DBE4: .4byte gUnk_08114154
_0806DBE8: .4byte 0xFFF80000
_0806DBEC: .4byte gUnk_08016030
_0806DBF0: .4byte gUnk_0801606C

	thumb_func_start sub_0806DBF4
sub_0806DBF4: @ 0x0806DBF4
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #1
	blo _0806DC36
	cmp r4, #4
	bls _0806DC04
	cmp r4, #6
	bne _0806DC36
_0806DC04:
	movs r4, #1
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC12
	movs r4, #2
_0806DC12:
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC1E
	movs r4, #3
_0806DC1E:
	movs r0, #4
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC2A
	movs r4, #4
_0806DC2A:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC36
	movs r4, #6
_0806DC36:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DC3C
sub_0806DC3C: @ 0x0806DC3C
	ldr r2, _0806DC54 @ =gUnk_02002A40
	adds r1, r2, #0
	adds r1, #0xb4
	ldrb r3, [r1]
	adds r1, r0, #0
	adds r1, #0x68
	strb r3, [r1]
	adds r2, #0xb5
	ldrb r1, [r2]
	adds r0, #0x69
	strb r1, [r0]
	bx lr
	.align 2, 0
_0806DC54: .4byte gUnk_02002A40

	thumb_func_start sub_0806DC58
sub_0806DC58: @ 0x0806DC58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x68
	ldrb r0, [r0]
	bl sub_0806DBF4
	movs r1, #0
	bl ForceEquipItem
	adds r4, #0x69
	ldrb r0, [r4]
	bl sub_0806DBF4
	movs r1, #1
	bl ForceEquipItem
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DC7C
sub_0806DC7C: @ 0x0806DC7C
	push {r4, lr}
	ldr r4, _0806DC84 @ =gUnk_081141F4
	b _0806DC94
	.align 2, 0
_0806DC84: .4byte gUnk_081141F4
_0806DC88:
	ldrh r1, [r4]
	adds r4, #2
	ldr r0, _0806DC9C @ =0x00004072
	movs r2, #1
	bl SetTileType
_0806DC94:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0806DC88
	pop {r4, pc}
	.align 2, 0
_0806DC9C: .4byte 0x00004072

	thumb_func_start sub_0806DCA0
sub_0806DCA0: @ 0x0806DCA0
	push {r4, lr}
	ldr r4, _0806DCA8 @ =gUnk_081141F4
	b _0806DCB6
	.align 2, 0
_0806DCA8: .4byte gUnk_081141F4
_0806DCAC:
	ldrh r0, [r4]
	adds r4, #2
	movs r1, #1
	bl sub_0807BA8C
_0806DCB6:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0806DCAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DCC0
sub_0806DCC0: @ 0x0806DCC0
	ldr r0, _0806DCD0 @ =gUnk_030010A0
	movs r1, #0xf9
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	movs r1, #0xf8
	strh r1, [r0, #0x22]
	bx lr
	.align 2, 0
_0806DCD0: .4byte gUnk_030010A0

	thumb_func_start sub_0806DCD4
sub_0806DCD4: @ 0x0806DCD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806DD40
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	subs r0, #1
	cmp r0, #0xa
	bhi _0806DD40
	lsls r0, r0, #2
	ldr r1, _0806DCF4 @ =_0806DCF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DCF4: .4byte _0806DCF8
_0806DCF8: @ jump table
	.4byte _0806DD24 @ case 0
	.4byte _0806DD24 @ case 1
	.4byte _0806DD24 @ case 2
	.4byte _0806DD24 @ case 3
	.4byte _0806DD24 @ case 4
	.4byte _0806DD2C @ case 5
	.4byte _0806DD2C @ case 6
	.4byte _0806DD2C @ case 7
	.4byte _0806DD2C @ case 8
	.4byte _0806DD2C @ case 9
	.4byte _0806DD34 @ case 10
_0806DD24:
	adds r0, r4, #0
	bl sub_0809623C
	b _0806DD40
_0806DD2C:
	adds r0, r4, #0
	bl sub_08096260
	b _0806DD40
_0806DD34:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806DB84
	movs r0, #0
	str r0, [r4, #0x48]
_0806DD40:
	pop {r4, pc}
	.align 2, 0
