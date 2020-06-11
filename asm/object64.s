	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08093E24
sub_08093E24: @ 0x08093E24
	push {lr}
	ldr r2, _08093E38 @ =gUnk_0812295C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08093E38: .4byte gUnk_0812295C

	thumb_func_start sub_08093E3C
sub_08093E3C: @ 0x08093E3C
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08093E6A
	adds r0, r4, #0
	bl sub_08016A30
_08093E6A:
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl UpdateSprite
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	ldr r1, _08093EA8 @ =gUnk_08122950
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	beq _08093E90
	ldrb r1, [r4, #0xb]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08093E90
	ldrh r0, [r2]
	bl sub_08004488
_08093E90:
	ldrb r1, [r4, #0xb]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093EA6
	ldrb r0, [r4, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x19]
_08093EA6:
	pop {r4, pc}
	.align 2, 0
_08093EA8: .4byte gUnk_08122950

	thumb_func_start sub_08093EAC
sub_08093EAC: @ 0x08093EAC
	push {lr}
	ldr r3, _08093EC8 @ =gUnk_08122964
	ldr r2, _08093ECC @ =gUnk_08122950
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	lsrs r1, r1, #4
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08093EC8: .4byte gUnk_08122964
_08093ECC: .4byte gUnk_08122950

	thumb_func_start sub_08093ED0
sub_08093ED0: @ 0x08093ED0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08093EEC
	adds r0, r4, #0
	bl DeleteEntity
_08093EEC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08093EF0
sub_08093EF0: @ 0x08093EF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #1
	beq _08093F40
	cmp r4, #1
	bgt _08093F04
	cmp r4, #0
	beq _08093F0A
	b _08093FB0
_08093F04:
	cmp r4, #2
	beq _08093F98
	b _08093FB0
_08093F0A:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08093FB0
	adds r0, r5, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08093FB0
	movs r0, #0x64
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08093F8E
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	adds r0, r5, #0
	bl CopyPosition
	b _08093F8E
_08093F40:
	adds r0, r5, #0
	bl sub_08004274
	adds r1, r5, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	ands r4, r0
	adds r6, r1, #0
	cmp r4, #0
	beq _08093F72
	movs r0, #0
	strb r0, [r6]
	movs r0, #0x64
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08093F72
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	adds r0, r5, #0
	bl CopyPosition
_08093F72:
	ldrb r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08093FB0
	ldr r1, [r5, #0x50]
	ldr r0, _08093F94 @ =gLinkEntity
	cmp r1, r0
	bne _08093F8E
	movs r0, #0x7a
	bl PlaySFX
	bl sub_08079D84
_08093F8E:
	bl sub_0805E780
	b _08093FB0
	.align 2, 0
_08093F94: .4byte gLinkEntity
_08093F98:
	adds r0, r5, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08093FB0
	bl sub_0805E780
_08093FB0:
	pop {r4, r5, r6, pc}
	.align 2, 0
