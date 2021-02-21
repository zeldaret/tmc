	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start NPC58
NPC58: @ 0x0806EAF4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0806EB48
	ldr r1, _0806EBA0 @ =gUnk_081146D0
	adds r0, r6, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806EBA8
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #0x18]
	ldrb r2, [r6, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r6, #0x19]
	adds r3, r6, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrb r0, [r6, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r6, #0x1b]
	movs r0, #0x78
	strh r0, [r6, #0x2e]
	movs r0, #0x10
	strh r0, [r6, #0x32]
_0806EB48:
	ldr r7, [r6, #0x50]
	cmp r7, #0
	beq _0806EBA4
	adds r0, r7, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x68
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __modsi3
	adds r4, r0, #0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl __modsi3
	movs r1, #6
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0806EBA8
	bl DeleteThisEntity
	b _0806EBA8
	.align 2, 0
_0806EBA0: .4byte gUnk_081146D0
_0806EBA4:
	bl DeleteThisEntity
_0806EBA8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start NPC58_Head
NPC58_Head: @ 0x0806EBAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #2
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl SetExtraSpriteFrame
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0806FFBC
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0xc
	movs r3, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}
	.align 2, 0
