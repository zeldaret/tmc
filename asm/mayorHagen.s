	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806CDA8
sub_0806CDA8: @ 0x0806CDA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #1
	beq _0806CDE8
	cmp r1, #1
	bgt _0806CDBC
	cmp r1, #0
	beq _0806CDC2
	b _0806CE58
_0806CDBC:
	cmp r1, #2
	beq _0806CE3E
	b _0806CE58
_0806CDC2:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806CE58
_0806CDE8:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806CE28
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806CE24 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
	b _0806CE58
	.align 2, 0
_0806CE24: .4byte gLinkEntity
_0806CE28:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _0806CE58
_0806CE3E:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806CE58
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0806CE58:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CE5C
sub_0806CE5C: @ 0x0806CE5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	ldr r3, _0806CE7C @ =gUnk_08113F44
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_0806CE7C: .4byte gUnk_08113F44

	thumb_func_start sub_0806CE80
sub_0806CE80: @ 0x0806CE80
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806CEB4 @ =gUnk_02002A40
	ldrb r4, [r0, #8]
	cmp r4, #5
	bne _0806CED6
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806CEC0
	movs r0, #0x70
	bl CheckLocalFlag
	cmp r0, #0
	beq _0806CEBC
	movs r0, #0x71
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806CEB8
	movs r4, #0xb
	movs r0, #0x71
	bl SetLocalFlag
	b _0806CED6
	.align 2, 0
_0806CEB4: .4byte gUnk_02002A40
_0806CEB8:
	movs r4, #0xc
	b _0806CED6
_0806CEBC:
	movs r4, #0xa
	b _0806CED6
_0806CEC0:
	movs r0, #0x89
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806CED4
	movs r4, #0xd
	movs r0, #0x89
	bl SetLocalFlag
	b _0806CED6
_0806CED4:
	movs r4, #0xe
_0806CED6:
	lsls r1, r4, #3
	ldr r0, _0806CEE4 @ =gUnk_08113F48
	adds r1, r1, r0
	adds r0, r5, #0
	bl ShowNPCDialogue
	pop {r4, r5, pc}
	.align 2, 0
_0806CEE4: .4byte gUnk_08113F48

	thumb_func_start sub_0806CEE8
sub_0806CEE8: @ 0x0806CEE8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806CF0E
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #8
	bl InitAnimationForceUpdate
	b _0806CF14
_0806CF0E:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_0806CF14:
	pop {pc}
	.align 2, 0
