	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08063794 @ =gUnk_0810CB78
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _080637B4
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08063798
	movs r0, #6
	b _0806379A
	.align 2, 0
_08063794: .4byte gUnk_0810CB78
_08063798:
	movs r0, #2
_0806379A:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	movs r1, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0807DD50
	adds r0, r4, #0
	bl sub_080637B8
_080637B4:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
