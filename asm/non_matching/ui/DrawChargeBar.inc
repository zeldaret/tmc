	.syntax unified
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, _0801C884 @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801C878
	ldr r0, _0801C888 @ =gPlayerState
	adds r0, #0xa0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_0801C878:
	cmp r2, #0
	bne _0801C88C
	bl sub_0801C824
	b _0801C984
	.align 2, 0
_0801C884: .4byte gUnk_0200AF00
_0801C888: .4byte gPlayerState
_0801C88C:
	ldrb r0, [r5, #4]
	ldr r4, _0801C92C @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C896
	adds r4, #0x40
_0801C896:
	ldr r0, _0801C930 @ =gPlayerState
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x13
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r1, #0x28
	bls _0801C8AE
	movs r1, #0x28
_0801C8AE:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0801C8BA
	ldrb r0, [r5, #7]
	cmp r0, r1
	beq _0801C910
_0801C8BA:
	movs r6, #1
	strb r6, [r5, #6]
	strb r1, [r5, #7]
	adds r0, r1, #0
	movs r1, #4
	bl Div
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r1, _0801C934 @ =0x0000F016
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0801C938 @ =0x0000F416
	adds r0, r1, #0
	strh r0, [r4, #0x16]
	ldr r2, _0801C93C @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0801C940 @ =gUnk_080C8F54
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #2
	str r0, [r2, #4]
	ldr r0, _0801C944 @ =0x8000000A
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	cmp r5, #0
	beq _0801C90C
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r0, r5, #0
	adds r0, #0x17
	ldr r3, _0801C948 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
_0801C90C:
	ldr r0, _0801C94C @ =gScreen
	strh r6, [r0, #0xe]
_0801C910:
	ldr r0, _0801C930 @ =gPlayerState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bgt _0801C962
	cmp r0, #4
	blt _0801C962
	ldr r2, _0801C950 @ =gUnk_0200AF00
	ldrb r1, [r2, #9]
	adds r4, r2, #0
	cmp r0, #4
	bne _0801C954
	adds r0, r1, #2
	b _0801C956
	.align 2, 0
_0801C92C: .4byte gUnk_02034D30
_0801C930: .4byte gPlayerState
_0801C934: .4byte 0x0000F016
_0801C938: .4byte 0x0000F416
_0801C93C: .4byte 0x040000D4
_0801C940: .4byte gUnk_080C8F54
_0801C944: .4byte 0x8000000A
_0801C948: .4byte 0x000003FF
_0801C94C: .4byte gScreen
_0801C950: .4byte gUnk_0200AF00
_0801C954:
	adds r0, r1, #1
_0801C956:
	strb r0, [r2, #9]
	ldrb r0, [r4, #9]
	lsrs r3, r0, #4
	movs r0, #3
	ands r3, r0
	b _0801C966
_0801C962:
	movs r3, #0
	ldr r4, _0801C988 @ =gUnk_0200AF00
_0801C966:
	ldrb r0, [r4, #8]
	cmp r3, r0
	beq _0801C984
	strb r3, [r4, #8]
	ldr r4, _0801C98C @ =0x0600C2C0
	ldr r1, _0801C990 @ =0x040000D4
	ldr r2, _0801C994 @ =gUnk_080C8F7C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C998 @ =0x84000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0801C984:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C988: .4byte gUnk_0200AF00
_0801C98C: .4byte 0x0600C2C0
_0801C990: .4byte 0x040000D4
_0801C994: .4byte gUnk_080C8F7C
_0801C998: .4byte 0x84000030
	.syntax divided
