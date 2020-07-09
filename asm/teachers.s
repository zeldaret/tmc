	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Teachers
Teachers: @ 0x0806C5A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xc]
	cmp r4, #1
	beq _0806C604
	cmp r4, #1
	bgt _0806C5BC
	cmp r4, #0
	beq _0806C5C2
	b _0806C670
_0806C5BC:
	cmp r4, #2
	beq _0806C656
	b _0806C670
_0806C5C2:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806C600 @ =gUnk_08113910
	adds r1, r1, r0
	adds r0, r5, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806C670
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xe]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x69
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0807DD50
	b _0806C670
	.align 2, 0
_0806C600: .4byte gUnk_08113910
_0806C604:
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C64C
	movs r0, #0
	strb r1, [r5, #0xc]
	strb r0, [r2]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806C648 @ =gLinkEntity
	adds r0, r5, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	ldrb r1, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_0806F118
	b _0806C670
	.align 2, 0
_0806C648: .4byte gLinkEntity
_0806C64C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806C670
_0806C656:
	adds r0, r5, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806C670
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimation
_0806C670:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806C674
sub_0806C674: @ 0x0806C674
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start Teachers_Head
Teachers_Head: @ 0x0806C68C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	ldrb r6, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r5, #0x3f
	ands r5, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806C6D2
	adds r2, #3
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	b _0806C70A
_0806C6D2:
	adds r2, #6
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r2, r5, #3
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #2
	adds r2, r6, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl SetSpriteSubEntryOffsetData2
	adds r0, r4, #0
	bl sub_0807000C
_0806C70A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0806C70C
sub_0806C70C: @ 0x0806C70C
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806C730 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806C71C
	movs r0, #0
_0806C71C:
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _0806C734 @ =gUnk_08113930
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806C730: .4byte gUnk_02002A40
_0806C734: .4byte gUnk_08113930

	thumb_func_start Teachers_Fusion
Teachers_Fusion: @ 0x0806C738
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806C778
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806C774 @ =gUnk_08113910
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806C77E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0806C77E
	.align 2, 0
_0806C774: .4byte gUnk_08113910
_0806C778:
	adds r0, r4, #0
	bl GetNextFrame
_0806C77E:
	pop {r4, pc}
