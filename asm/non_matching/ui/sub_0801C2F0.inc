	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r5, r4, #5
	ldr r1, _0801C330 @ =0x06010000
	adds r4, r5, r1
	movs r1, #0xa
	bl Div
	cmp r0, #9
	bls _0801C308
	movs r0, #9
_0801C308:
	ldr r2, _0801C334 @ =0x040000D4
	lsls r0, r0, #5
	ldr r3, _0801C338 @ =gUnk_085C4620
	adds r0, r0, r3
	str r0, [r2]
	str r4, [r2, #4]
	ldr r4, _0801C33C @ =0x84000008
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, #0xa
	lsls r1, r1, #5
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, _0801C340 @ =0x06010020
	adds r0, r5, r1
	str r0, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, pc}
	.align 2, 0
_0801C330: .4byte 0x06010000
_0801C334: .4byte 0x040000D4
_0801C338: .4byte gUnk_085C4620
_0801C33C: .4byte 0x84000008
_0801C340: .4byte 0x06010020
	.syntax divided
