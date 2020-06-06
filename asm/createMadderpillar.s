	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0802999C
sub_0802999C: @ 0x0802999C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08029A90 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _08029A8E
	movs r0, #0x18
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl PositionRelative
	str r4, [r7, #0x54]
	movs r0, #0x18
	movs r1, #2
	bl CreateEnemy
	adds r5, r0, #0
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #4
	bl PositionRelative
	str r5, [r4, #0x54]
	movs r0, #0x18
	movs r1, #3
	bl CreateEnemy
	adds r4, r0, #0
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #3
	bl PositionRelative
	str r4, [r5, #0x54]
	movs r0, #0x18
	movs r1, #4
	bl CreateEnemy
	adds r5, r0, #0
	str r7, [r5, #0x50]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #2
	bl PositionRelative
	str r5, [r4, #0x54]
	movs r0, #0x18
	movs r1, #5
	bl CreateEnemy
	adds r6, r0, #0
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	movs r3, #1
	bl PositionRelative
	str r6, [r5, #0x54]
	movs r0, #0x18
	movs r1, #6
	bl CreateEnemy
	adds r4, r0, #0
	str r7, [r4, #0x54]
	str r7, [r4, #0x50]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl PositionRelative
	str r4, [r6, #0x54]
	movs r4, #1
	strb r4, [r7, #0xc]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r7, #0x15]
	movs r2, #0
	movs r0, #0xa0
	strh r0, [r7, #0x24]
	movs r0, #0xff
	strb r0, [r7, #0x14]
	ldr r0, [r7, #0x30]
	adds r0, #6
	str r0, [r7, #0x30]
	str r7, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #0x74
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #2
	strb r4, [r0]
	adds r0, r7, #0
	bl sub_08029E0C
	adds r0, r7, #0
	bl sub_08029EEC
_08029A8E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029A90: .4byte gUnk_03003DBC