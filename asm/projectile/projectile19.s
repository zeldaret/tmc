	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Projectile19
Projectile19: @ 0x080AB05C
	push {lr}
	ldr r2, _080AB070 @ =gUnk_0812A494
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB070: .4byte gUnk_0812A494

	thumb_func_start sub_080AB074
sub_080AB074: @ 0x080AB074
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AB084
	bl DeleteThisEntity
_080AB084:
	ldrb r6, [r4, #0xc]
	cmp r6, #0
	bne _080AB0AA
	adds r0, r4, #0
	bl sub_080AB12C
	cmp r0, #0
	beq _080AB124
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r6, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_080AB0AA:
	ldr r0, [r4, #0x50]
	adds r7, r5, #0
	adds r7, #0x7f
	movs r3, #0
	ldrsb r3, [r7, r3]
	rsbs r3, r3, #0
	subs r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	ldr r3, _080AB128 @ =gSineTable
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r6, r5, #0
	adds r6, #0x7e
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrb r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AB124
	movs r0, #0x19
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _080AB124
	movs r0, #4
	strb r0, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPositionAndSpriteOffset
_080AB124:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB128: .4byte gSineTable

	thumb_func_start sub_080AB12C
sub_080AB12C: @ 0x080AB12C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AB168 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _080AB16C
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #2
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #3
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #1
	b _080AB16E
	.align 2, 0
_080AB168: .4byte gEntCount
_080AB16C:
	movs r0, #0
_080AB16E:
	pop {r4, pc}

	thumb_func_start sub_080AB170
sub_080AB170: @ 0x080AB170
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080AB180
	bl DeleteThisEntity
_080AB180:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AB1AA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r4, #0x1e]
	ldrb r1, [r2]
	subs r0, #0xd
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AB1C8 @ =gUnk_080FD460
	str r0, [r4, #0x48]
_080AB1AA:
	ldr r5, [r6, #0x50]
	adds r0, r4, #0
	adds r0, #0x7c
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r1, [r0]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	beq _080AB1CC
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _080AB1D2
	.align 2, 0
_080AB1C8: .4byte gUnk_080FD460
_080AB1CC:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_080AB1D2:
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AB208
	movs r0, #0x1f
	ands r0, r1
	ldr r1, _080AB204 @ =gUnk_0812A4A8
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA90
	b _080AB216
	.align 2, 0
_080AB204: .4byte gUnk_0812A4A8
_080AB208:
	movs r3, #0xa
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
_080AB216:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrb r2, [r4, #0xa]
	muls r0, r2, r0
	adds r3, r2, #0
	cmp r0, #0
	bge _080AB22C
	adds r0, #3
_080AB22C:
	asrs r0, r0, #2
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r3, r0
	cmp r0, #0
	bge _080AB246
	adds r0, #3
_080AB246:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r3, #0x36
	ldrsh r0, [r6, r3]
	movs r5, #0x36
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r2, r0
	cmp r0, #0
	bge _080AB260
	adds r0, #3
_080AB260:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AB26C
sub_080AB26C: @ 0x080AB26C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xc]
	cmp r1, #0
	bne _080AB28C
	movs r0, #1
	strb r0, [r2, #0xc]
	movs r0, #5
	strb r0, [r2, #0xe]
	strb r1, [r2, #0x1e]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3e
	ands r0, r1
	strb r0, [r3]
_080AB28C:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AB29E
	bl DeleteThisEntity
	b _080AB2A4
_080AB29E:
	ldrb r0, [r2, #0x1e]
	adds r0, #1
	strb r0, [r2, #0x1e]
_080AB2A4:
	pop {pc}
	.align 2, 0
