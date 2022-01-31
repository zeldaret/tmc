.ifdef EU
    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0801B564 @ =gPlayerState
	str r4, [r3, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0801B568 @ =gUnk_081271CC
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	ldr r5, _0801B56C @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0xb
	strb r0, [r1]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x86
	strh r2, [r0]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B550
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	bics r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0801B550:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B570
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	b _0801B578
	.align 2, 0
_0801B564: .4byte gPlayerState
_0801B568: .4byte gUnk_081271CC
_0801B56C: .4byte gPlayerEntity
_0801B570:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x1e
_0801B578:
	strb r0, [r4, #0xe]
	ldrb r1, [r3, #0xd]
	movs r0, #0xd
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _0801B588
	strb r1, [r4, #0x15]
	b _0801B58E
_0801B588:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0801B58E:
	ldrb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801B5A4
	movs r0, #1
	strb r0, [r4, #0xb]
_0801B5A4:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl LoadSwapGFX
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B584
	pop {r4, r5, pc}
    .syntax divided
.else
	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0801B52C @ =gPlayerState
	str r4, [r3, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0801B530 @ =gUnk_081271CC
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0xb
	strb r0, [r1]
	ldr r5, _0801B534 @ =gPlayerEntity
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x86
	strh r2, [r0]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B518
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	bics r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0801B518:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B538
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	b _0801B540
	.align 2, 0
_0801B52C: .4byte gPlayerState
_0801B530: .4byte gUnk_081271CC
_0801B534: .4byte gPlayerEntity
_0801B538:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x1e
_0801B540:
	strb r0, [r4, #0xe]
	ldrb r1, [r3, #0xd]
	movs r0, #0xd
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _0801B550
	strb r1, [r4, #0x15]
	b _0801B556
_0801B550:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0801B556:
	ldrb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801B56C
	movs r0, #1
	strb r0, [r4, #0xb]
_0801B56C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl LoadSwapGFX
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B584
	pop {r4, r5, pc}
	.syntax divided
.endif
