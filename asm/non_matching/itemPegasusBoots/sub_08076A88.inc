	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08076B64
	ldr r1, _08076AB4 @ =gPlayerState
	ldrb r0, [r1, #0x1e]
	adds r3, r1, #0
	cmp r0, #0
	beq _08076B64
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08076ABC
	ldr r1, _08076AB8 @ =gPlayerEntity
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08076AC2
	.align 2, 0
_08076AB4: .4byte gPlayerState
_08076AB8: .4byte gPlayerEntity
_08076ABC:
	ldr r1, _08076B00 @ =gPlayerEntity
	movs r0, #0xa0
	lsls r0, r0, #2
_08076AC2:
	strh r0, [r1, #0x24]
	adds r5, r1, #0
	ldr r1, _08076B04 @ =gUnk_0800275C
	ldrb r2, [r5, #0x14]
	movs r6, #0xe
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r5, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _08076B0E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08076B08
	movs r2, #0
	movs r0, #6
	strb r0, [r5, #0xc]
	strb r2, [r5, #0xd]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #0x38
	strb r2, [r0]
	movs r0, #0xff
	strb r0, [r3, #0xd]
	b _08076B72
	.align 2, 0
_08076B00: .4byte gPlayerEntity
_08076B04: .4byte gUnk_0800275C
_08076B08:
	movs r0, #1
	strb r0, [r4, #8]
	b _08076B72
_08076B0E:
	ldr r1, _08076B60 @ =gUnk_0811BE38
	movs r0, #0xfe
	ands r0, r2
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x90
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _08076B64
	ldrb r0, [r4, #0xa]
	adds r1, r6, #0
	ands r1, r0
	lsls r0, r1, #2
	strb r0, [r4, #0xb]
	ldrb r2, [r3, #0xd]
	cmp r2, #0xff
	beq _08076B52
	cmp r2, r0
	beq _08076B52
	adds r0, r2, #0
	ldrb r1, [r4, #0xb]
	subs r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	cmp r0, #0xf
	bgt _08076B4A
	adds r0, r1, #2
	strb r0, [r4, #0xb]
_08076B4A:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	ands r0, r2
	strb r0, [r4, #0xb]
_08076B52:
	ldrb r0, [r4, #0xb]
	strb r0, [r3, #0xd]
	adds r0, r4, #0
	bl UpdateItemAnim
	b _08076B72
	.align 2, 0
_08076B60: .4byte gUnk_0811BE38
_08076B64:
	ldr r1, _08076B74 @ =gPlayerState
	movs r0, #0
	strb r0, [r1, #0x1e]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076B72:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076B74: .4byte gPlayerState
	.syntax divided
