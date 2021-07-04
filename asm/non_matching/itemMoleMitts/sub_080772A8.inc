	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r1, [r4, #0xe]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080772C6
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _080772C6
	movs r0, #1
	strb r0, [r4, #7]
_080772C6:
	movs r0, #0x71
	bl GetInventoryValue
	cmp r0, #1
	bne _08077318
	ldrb r1, [r4, #0xe]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #3
	beq _08077300
	adds r0, r4, #0
	movs r1, #2
	bl sub_08077E3C
	ldr r3, _080772F8 @ =gPlayerEntity
	ldr r2, _080772FC @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	b _0807732E
	.align 2, 0
_080772F8: .4byte gPlayerEntity
_080772FC: .4byte gUnk_0811BE16
_08077300:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r3, _08077310 @ =gPlayerEntity
	ldr r2, _08077314 @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	adds r0, r5, #0
	b _08077326
	.align 2, 0
_08077310: .4byte gPlayerEntity
_08077314: .4byte gUnk_0811BE16
_08077318:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldr r3, _0807736C @ =gPlayerEntity
	ldr r2, _08077370 @ =gUnk_0811BE16
	ldrb r1, [r4, #0xe]
	movs r0, #7
_08077326:
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_0807732E:
	strh r0, [r3, #0x24]
	ldr r5, _0807736C @ =gPlayerEntity
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08077344
	bl sub_08079E08
_08077344:
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807738C
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08077374
	adds r0, r5, #0
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	bl sub_080774A0
	cmp r0, #0
	beq _08077374
	movs r0, #0
	strb r0, [r4, #7]
	b _0807743E
	.align 2, 0
_0807736C: .4byte gPlayerEntity
_08077370: .4byte gUnk_0811BE16
_08077374:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08077E78
	ldr r0, _08077388 @ =gPlayerState
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	b _0807743E
	.align 2, 0
_08077388: .4byte gPlayerState
_0807738C:
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0807743E
	adds r0, r5, #0
	adds r0, #0x59
	movs r6, #1
	strb r6, [r0]
	adds r0, r5, #0
	bl sub_0807B5B0
	cmp r0, #0
	beq _080773BC
	movs r0, #0x84
	lsls r0, r0, #1
	bl SoundReq
	ldrb r2, [r4, #0xe]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r3, #0
	bl CreateObjectWithParent
	b _0807743E
_080773BC:
	ldr r1, _08077440 @ =0x0000051C
	adds r0, r4, #0
	bl sub_08077DF4
	adds r0, r5, #0
	movs r1, #0x1d
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _080773F6
	ldrb r0, [r4, #0xa]
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080773F6:
	adds r0, r5, #0
	movs r1, #0x1d
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _08077432
	ldrb r0, [r4, #0xa]
	strb r0, [r3, #0x14]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	movs r0, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	strb r6, [r3, #0xf]
_08077432:
	movs r0, #3
	strb r0, [r4, #4]
	strb r6, [r4, #5]
	ldr r0, _08077444 @ =0x00000119
	bl SoundReq
_0807743E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08077440: .4byte 0x0000051C
_08077444: .4byte 0x00000119
	.syntax divided
