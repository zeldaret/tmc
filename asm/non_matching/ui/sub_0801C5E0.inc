	.syntax unified
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
	.syntax divided
