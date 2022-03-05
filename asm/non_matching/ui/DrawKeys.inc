	.syntax unified
	push {r4, r5, lr}
	ldr r4, _0801C9E0 @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C9B2
	bl AreaHasKeys
	cmp r0, #0
	bne _0801C9EC
_0801C9B2:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0801CA50
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r2, _0801C9E4 @ =gUnk_020350E2
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r1, _0801C9E8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801CA50
	.align 2, 0
_0801C9E0: .4byte gUnk_0200AF00
_0801C9E4: .4byte gUnk_020350E2
_0801C9E8: .4byte gScreen
_0801C9EC:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA1E
	ldr r2, _0801CA54 @ =gUnk_020350E2
	adds r1, r2, #0
	adds r1, #0x40
	ldr r3, _0801CA58 @ =0x0000F01C
	strh r3, [r2]
	adds r0, r3, #1
	strh r0, [r2, #2]
	adds r0, r3, #2
	strh r0, [r1]
	adds r0, r3, #3
	strh r0, [r1, #2]
	adds r3, #0x5a
	strh r3, [r2, #4]
	adds r0, r3, #1
	strh r0, [r1, #4]
	adds r0, r3, #2
	strh r0, [r2, #6]
	adds r0, r3, #3
	strh r0, [r1, #6]
	ldr r1, _0801CA5C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801CA1E:
	ldr r0, _0801CA60 @ =gSave
	ldr r3, _0801CA64 @ =gArea
	ldrb r1, [r3, #3]
	ldr r5, _0801CA68 @ =0x0000045C
	adds r2, r0, r5
	adds r1, r1, r2
	ldrb r0, [r4, #0x12]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801CA38
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA50
_0801CA38:
	movs r0, #2
	strb r0, [r4, #0x10]
	ldrb r0, [r3, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x12]
	movs r0, #0x76
	movs r2, #0
	movs r3, #2
	bl sub_0801C5E0
_0801CA50:
	pop {r4, r5, pc}
	.align 2, 0
_0801CA54: .4byte gUnk_020350E2
_0801CA58: .4byte 0x0000F01C
_0801CA5C: .4byte gScreen
_0801CA60: .4byte gSave
_0801CA64: .4byte gArea
_0801CA68: .4byte 0x0000045C
	.syntax divided
