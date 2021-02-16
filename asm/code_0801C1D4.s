	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C1D4
sub_0801C1D4: @ 0x0801C1D4
	push {r4, lr}
	movs r4, #0
_0801C1D8:
	lsls r1, r4, #5
	ldr r0, _0801C200 @ =gUnk_0200AF34
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C1F8
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	ldr r1, _0801C204 @ =gUnk_080C8F8C
	adds r0, r0, r1
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl _call_via_r1
_0801C1F8:
	adds r4, #1
	cmp r4, #0x17
	bls _0801C1D8
	pop {r4, pc}
	.align 2, 0
_0801C200: .4byte gUnk_0200AF34
_0801C204: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801C208
sub_0801C208: @ 0x0801C208
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0801C250 @ =gOamCmd
_0801C20E:
	lsls r1, r5, #5
	ldr r0, _0801C254 @ =gUnk_0200AF34
	adds r3, r1, r0
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C248
	ldrh r0, [r3, #0xc]
	strh r0, [r4]
	ldrh r0, [r3, #0xe]
	strh r0, [r4, #2]
	ldrb r2, [r3, #1]
	lsls r2, r2, #4
	ldr r0, _0801C258 @ =gUnk_080C8F8C
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r4, #4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #6]
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0xc
	ldrh r1, [r3, #0x1a]
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r2, #6]
	ldrb r1, [r3, #0x10]
	bl sub_080ADA14
_0801C248:
	adds r5, #1
	cmp r5, #0x17
	bls _0801C20E
	pop {r4, r5, pc}
	.align 2, 0
_0801C250: .4byte gOamCmd
_0801C254: .4byte gUnk_0200AF34
_0801C258: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801C25C
sub_0801C25C: @ 0x0801C25C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0801C2E4 @ =gUnk_0200AF34
	adds r6, r5, #0
	subs r6, #0x34
	movs r7, #0xd
	rsbs r7, r7, #0
	ldr r3, _0801C2E8 @ =0x040000D4
_0801C26C:
	lsls r0, r4, #5
	adds r2, r0, r5
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C2A8
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0801C2A8
	adds r0, r7, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r2, #0x1c]
	str r0, [r3]
	ldrh r0, [r2, #0x1a]
	lsls r0, r0, #5
	ldr r1, _0801C2EC @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0801C2A8:
	adds r4, #1
	cmp r4, #0x17
	ble _0801C26C
	adds r2, r6, #0
	ldrb r3, [r2, #0x13]
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801C2C8
	movs r1, #0x7f
	ands r1, r3
	strb r1, [r2, #0x13]
	movs r0, #0x8d
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2C8:
	ldrb r2, [r6, #0x14]
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0801C2E0
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r6, #0x14]
	movs r0, #0x93
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2E0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C2E4: .4byte gUnk_0200AF34
_0801C2E8: .4byte 0x040000D4
_0801C2EC: .4byte 0x06010000

	thumb_func_start sub_0801C2F0
sub_0801C2F0: @ 0x0801C2F0
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
