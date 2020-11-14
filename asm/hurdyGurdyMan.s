	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start HurdyGurdyMan
HurdyGurdyMan: @ 0x0806E308
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0806E34C
	cmp r5, #1
	bgt _0806E31C
	cmp r5, #0
	beq _0806E322
	b _0806E3E0
_0806E31C:
	cmp r5, #2
	beq _0806E3C6
	b _0806E3E0
_0806E322:
	ldr r1, _0806E348 @ =gUnk_081144F0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806E3E0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806E3E0
	.align 2, 0
_0806E348: .4byte gUnk_081144F0
_0806E34C:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806E3BC
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806E3B0 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08002632
	ldr r1, _0806E3B4 @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0x32
	bne _0806E398
	adds r3, #6
_0806E398:
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0806E3B8 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	b _0806E3E0
	.align 2, 0
_0806E3B0: .4byte gPlayerEntity
_0806E3B4: .4byte gUnk_08001A7C
_0806E3B8: .4byte gPlayerState
_0806E3BC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806E3E0
_0806E3C6:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806E3E0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_0806E3E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start HurdyGurdyMan_Head
HurdyGurdyMan_Head: @ 0x0806E3E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r2, #8
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806E418
sub_0806E418: @ 0x0806E418
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806E438 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806E428
	movs r0, #0
_0806E428:
	lsls r1, r0, #3
	ldr r0, _0806E43C @ =gUnk_081144FC
	adds r1, r1, r0
	adds r0, r2, #0
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_0806E438: .4byte gUnk_02002A40
_0806E43C: .4byte gUnk_081144FC

	thumb_func_start sub_0806E440
sub_0806E440: @ 0x0806E440
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

	thumb_func_start HurdyGurdyMan_Fusion
HurdyGurdyMan_Fusion: @ 0x0806E458
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806E498
	ldr r1, _0806E494 @ =gUnk_081144F0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806E49E
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
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0xa
	bl InitializeAnimation
	b _0806E49E
	.align 2, 0
_0806E494: .4byte gUnk_081144F0
_0806E498:
	adds r0, r4, #0
	bl GetNextFrame
_0806E49E:
	pop {r4, pc}
