	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #1
	bl InitializeAnimation
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080AC030
	cmp r1, #1
	beq _080AC048
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xf]
	ldr r1, _080AC028 @ =gUnk_0812A97C
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x88
	strb r0, [r1]
	ldr r0, _080AC02C @ =0x00000193
	b _080AC06A
	.align 2, 0
_080AC028: .4byte gUnk_0812A97C
_080AC02C: .4byte 0x00000193
_080AC030:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #7
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
	strb r0, [r1]
	subs r1, #0x41
	movs r0, #0x88
	b _080AC058
_080AC048:
	strb r1, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
_080AC058:
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	ldr r0, _080AC070 @ =0x00000149
_080AC06A:
	bl SoundReq
	pop {r4, pc}
	.align 2, 0
_080AC070: .4byte 0x00000149
	.syntax divided
