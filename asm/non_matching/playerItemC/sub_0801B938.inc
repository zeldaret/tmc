	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B960
	ldr r3, _0801B95C @ =gPlayerEntity
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	b _0801B96E
	.align 2, 0
_0801B95C: .4byte gPlayerEntity
_0801B960:
	ldr r3, _0801B998 @ =gPlayerEntity
	ldrb r0, [r3, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
_0801B96E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r0, #0x68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0801B99C
	ldrb r0, [r3, #0x1e]
	adds r0, #0x2e
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _0801B9A0
	.align 2, 0
_0801B998: .4byte gPlayerEntity
_0801B99C:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_0801B9A0:
	ldrb r3, [r4, #0x14]
	lsrs r3, r3, #1
	lsls r0, r3, #3
	ldr r1, _0801B9E0 @ =gUnk_080B7850
	adds r0, r0, r1
	str r0, [r4, #0x48]
	lsls r3, r3, #1
	ldr r0, _0801B9E4 @ =gUnk_080B7848
	adds r3, r3, r0
	ldr r0, _0801B9E8 @ =gPlayerState
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r4, #0
	bl sub_08008782
	ldr r1, _0801B9EC @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, pc}
	.align 2, 0
_0801B9E0: .4byte gUnk_080B7850
_0801B9E4: .4byte gUnk_080B7848
_0801B9E8: .4byte gPlayerState
_0801B9EC: .4byte gPlayerEntity
	.syntax divided
