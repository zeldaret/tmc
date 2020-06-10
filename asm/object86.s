	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08099DB8
sub_08099DB8: @ 0x08099DB8
	push {lr}
	ldr r2, _08099DCC @ =gUnk_081237F8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08099DCC: .4byte gUnk_081237F8

	thumb_func_start sub_08099DD0
sub_08099DD0: @ 0x08099DD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	movs r6, #0
	movs r5, #1
	strb r5, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	strb r6, [r4, #0xd]
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	beq _08099E04
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r6, [r4, #0x1e]
	b _08099E0E
_08099E04:
	strb r5, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08099E0E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08099E10
sub_08099E10: @ 0x08099E10
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x74
	bl sub_0807CBD0
	cmp r0, #0
	beq _08099E54
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #1
	bne _08099E3E
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08099E3E
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_08099ECC
_08099E3E:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08099E54
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl UpdateSprite
_08099E54:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08099E58
sub_08099E58: @ 0x08099E58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08099E88
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08099E88
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1e]
_08099E88:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08099E8C
sub_08099E8C: @ 0x08099E8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08099EC4 @ =gLinkEntity
	movs r2, #0xc
	movs r3, #0xc
	bl sub_080041A0
	cmp r0, #0
	beq _08099EC2
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08099EB2
	adds r0, r4, #0
	bl sub_08099ECC
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0805E4E0
_08099EB2:
	movs r0, #0x75
	bl sub_0807CBD0
	cmp r0, #0
	beq _08099EC2
	movs r0, #7
	bl sub_0805B390
_08099EC2:
	pop {r4, pc}
	.align 2, 0
_08099EC4: .4byte gLinkEntity

	thumb_func_start nullsub_534
nullsub_534: @ 0x08099EC8
	bx lr
	.align 2, 0

	thumb_func_start sub_08099ECC
sub_08099ECC: @ 0x08099ECC
	push {r4, lr}
	movs r4, #0
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _08099EF4 @ =gLinkEntity
	bl CopyPosition
	ldr r2, _08099EF8 @ =gLinkState
	movs r0, #3
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	strb r4, [r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	pop {r4, pc}
	.align 2, 0
_08099EF4: .4byte gLinkEntity
_08099EF8: .4byte gLinkState
