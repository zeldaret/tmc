	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	ldr r1, _08061CAC @ =gUnk_0810B78C
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r5, _08061CB0 @ =gUnk_0810B680
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r2, [r0]
	adds r2, r1, r2
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	ldrb r2, [r4, #0x1e]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #1]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0
_08061CAC: .4byte gUnk_0810B78C
_08061CB0: .4byte gUnk_0810B680
    .syntax divided
