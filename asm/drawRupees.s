	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C4B0
sub_0801C4B0: @ 0x0801C4B0
	push {r4, r5, r6, lr}
	ldr r2, _0801C4F0 @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0801C4FC
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0801C4C8
	b _0801C5D0
_0801C4C8:
	movs r0, #0
	strb r0, [r6, #0xa]
	ldr r3, _0801C4F4 @ =gUnk_02035160
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	adds r4, r3, #0
	adds r4, #0x40
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	ldr r1, _0801C4F8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801C5D0
	.align 2, 0
_0801C4F0: .4byte gUnk_0200AF00
_0801C4F4: .4byte gUnk_02035160
_0801C4F8: .4byte gScreen
_0801C4FC:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0801C560
	movs r0, #2
	strb r0, [r6, #0xa]
	ldr r3, _0801C54C @ =gUnk_02035160
	adds r4, r3, #0
	adds r4, #0x40
	ldr r1, _0801C550 @ =gWalletSizes
	ldr r2, _0801C554 @ =gUnk_02002A40
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	strh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3, #2]
	adds r0, r1, #2
	strh r0, [r4]
	adds r0, r1, #3
	strh r0, [r4, #2]
	ldr r1, _0801C558 @ =0x0000F070
	strh r1, [r3, #4]
	adds r0, r1, #1
	strh r0, [r4, #4]
	adds r0, r1, #2
	strh r0, [r3, #6]
	adds r0, r1, #3
	strh r0, [r4, #6]
	adds r0, r1, #4
	strh r0, [r3, #8]
	adds r0, r1, #5
	strh r0, [r4, #8]
	ldr r1, _0801C55C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	movs r4, #1
	b _0801C564
	.align 2, 0
_0801C54C: .4byte gUnk_02035160
_0801C550: .4byte gWalletSizes
_0801C554: .4byte gUnk_02002A40
_0801C558: .4byte 0x0000F070
_0801C55C: .4byte gScreen
_0801C560:
	movs r4, #0
	ldr r2, _0801C580 @ =gUnk_02002A40
_0801C564:
	adds r5, r6, #0
	adds r0, r2, #0
	adds r0, #0xc0
	ldrh r1, [r5, #0xe]
	adds r3, r1, #0
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801C58A
	cmp r3, r0
	bhs _0801C584
	adds r0, r1, #1
	strh r0, [r5, #0xe]
	b _0801C588
	.align 2, 0
_0801C580: .4byte gUnk_02002A40
_0801C584:
	subs r0, r1, #1
	strh r0, [r6, #0xe]
_0801C588:
	movs r4, #2
_0801C58A:
	cmp r4, #1
	beq _0801C5A4
	cmp r4, #2
	bne _0801C5CC
	ldr r0, _0801C5D4 @ =gUnk_0200AF00
	ldrb r0, [r0, #0xc]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C5A4
	movs r0, #0x6f
	bl PlaySFX
_0801C5A4:
	ldr r4, _0801C5D4 @ =gUnk_0200AF00
	ldrh r3, [r4, #0xe]
	movs r2, #0
	ldr r1, _0801C5D8 @ =gWalletSizes
	ldr r0, _0801C5DC @ =gUnk_02002A40
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bhi _0801C5BE
	movs r2, #1
_0801C5BE:
	movs r0, #0x70
	adds r1, r3, #0
	movs r3, #3
	bl sub_0801C5E0
	ldrb r0, [r4, #0xc]
	adds r4, r0, #1
_0801C5CC:
	ldr r0, _0801C5D4 @ =gUnk_0200AF00
	strb r4, [r0, #0xc]
_0801C5D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C5D4: .4byte gUnk_0200AF00
_0801C5D8: .4byte gWalletSizes
_0801C5DC: .4byte gUnk_02002A40
