	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	cmp r0, #0x36
	bne _0801BA2A
	movs r0, #0x36
	b _0801BA34
_0801BA2A:
	ldrb r1, [r1]
	ldr r0, _0801BA4C @ =gSave
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r0, [r0]
_0801BA34:
	adds r1, r4, #0
	adds r1, #0x6f
	strb r0, [r1]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BB02
	lsls r0, r0, #2
	ldr r1, _0801BA50 @ =_0801BA54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BA4C: .4byte gSave
_0801BA50: .4byte _0801BA54
_0801BA54: @ jump table
	.4byte _0801BA9C @ case 0
	.4byte _0801BAF8 @ case 1
	.4byte _0801BAF8 @ case 2
	.4byte _0801BAF8 @ case 3
	.4byte _0801BAF8 @ case 4
	.4byte _0801BAF8 @ case 5
	.4byte _0801BB02 @ case 6
	.4byte _0801BB02 @ case 7
	.4byte _0801BB02 @ case 8
	.4byte _0801BAF8 @ case 9
	.4byte _0801BAF8 @ case 10
	.4byte _0801BAF8 @ case 11
	.4byte _0801BAF8 @ case 12
	.4byte _0801BAF8 @ case 13
	.4byte _0801BAF8 @ case 14
	.4byte _0801BB02 @ case 15
	.4byte _0801BB02 @ case 16
	.4byte _0801BB02 @ case 17
_0801BA9C:
	adds r0, r4, #0
	bl AllocMutableHitbox
	cmp r0, #0
	beq _0801BB26
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0801BAF4 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r4, #0
	adds r3, #0x3c
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x1f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x20
	strb r0, [r4, #0xb]
	movs r0, #0x52
	strb r0, [r4, #0xe]
	movs r0, #0x1b
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0801766C
	movs r0, #0xee
	lsls r0, r0, #1
	bl SoundReq
	b _0801BB0A
	.align 2, 0
_0801BAF4: .4byte gPlayerEntity
_0801BAF8:
	movs r0, #0xd5
	strb r0, [r4, #0xe]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	b _0801BB0A
_0801BB02:
	movs r1, #0
	movs r0, #0x37
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
_0801BB0A:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldr r0, _0801BB28 @ =gPlayerState
	str r4, [r0, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl LoadSwapGFX
	adds r0, r4, #0
	bl sub_0801BB2C
_0801BB26:
	pop {r4, pc}
	.align 2, 0
_0801BB28: .4byte gPlayerState
	.syntax divided
