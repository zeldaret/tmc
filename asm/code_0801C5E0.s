	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C5E0
sub_0801C5E0: @ 0x0801C5E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r7, _0801C650 @ =gUnk_085C4B20
	cmp r2, #0
	bne _0801C5F0
	ldr r0, _0801C654 @ =0xFFFFFD80
	adds r7, r7, r0
_0801C5F0:
	ldr r0, _0801C658 @ =0x000003FF
	ands r0, r4
	lsls r6, r0, #5
	ldr r0, _0801C65C @ =0x0600C000
	adds r4, r6, r0
	cmp r3, #2
	beq _0801C620
	cmp r3, #3
	bne _0801C63C
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	adds r5, r1, #0
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r0, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801C668 @ =0x0600C040
	adds r4, r6, r0
_0801C620:
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r5, r1, #0
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r0, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
_0801C63C:
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r5, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C650: .4byte gUnk_085C4B20
_0801C654: .4byte 0xFFFFFD80
_0801C658: .4byte 0x000003FF
_0801C65C: .4byte 0x0600C000
_0801C660: .4byte 0x040000D4
_0801C664: .4byte 0x84000010
_0801C668: .4byte 0x0600C040

	thumb_func_start sub_0801C66C
sub_0801C66C: @ 0x0801C66C
	push {lr}
	ldr r1, _0801C6A4 @ =gUnk_0200AF00
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0801C6A2
	movs r0, #0
	strb r0, [r1, #2]
	ldrb r0, [r1, #4]
	movs r2, #1
	cmp r0, #0x28
	bls _0801C684
	movs r2, #2
_0801C684:
	ldr r0, _0801C6A8 @ =gUnk_02034CF0
	ldr r3, _0801C6AC @ =gScreen
	movs r1, #0
_0801C68A:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, #0x40
	subs r2, #1
	cmp r2, #0
	bgt _0801C68A
	movs r0, #1
	strh r0, [r3, #0xe]
_0801C6A2:
	pop {pc}
	.align 2, 0
_0801C6A4: .4byte gUnk_0200AF00
_0801C6A8: .4byte gUnk_02034CF0
_0801C6AC: .4byte gScreen
