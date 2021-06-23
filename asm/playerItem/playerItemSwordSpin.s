	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start PlayerItemSwordSpin
PlayerItemSwordSpin: @ 0x0801BA00
	push {lr}
	ldr r2, _0801BA14 @ =gUnk_080B7870
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801BA14: .4byte gUnk_080B7870

	thumb_func_start sub_0801BA18
sub_0801BA18: @ 0x0801BA18
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
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_0801BB2C
_0801BB26:
	pop {r4, pc}
	.align 2, 0
_0801BB28: .4byte gPlayerState

	thumb_func_start sub_0801BB2C
sub_0801BB2C: @ 0x0801BB2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801BB88 @ =gPlayerState
	ldr r0, [r0, #0x2c]
	cmp r0, r5
	beq _0801BB68
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801BB64
	ldrb r0, [r5, #0xb]
	cmp r0, #0x20
	beq _0801BB64
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r4, [r0]
	subs r4, #0x1c
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	bl SetBottleContents
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	movs r2, #5
.ifdef JP
	bl CreateItemEntity
.else
.ifdef EU
	bl CreateItemEntity
.else
	bl sub_080A7C18
.endif
.endif
	ldr r0, _0801BB8C @ =0x00000109
	bl SoundReq
_0801BB64:
	bl DeleteThisEntity
_0801BB68:
	ldr r1, _0801BB90 @ =gPlayerEntity
	adds r0, r5, #0
	bl sub_0801BDE8
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BC04
	lsls r0, r0, #2
	ldr r1, _0801BB94 @ =_0801BB98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BB88: .4byte gPlayerState
_0801BB8C: .4byte 0x00000109
_0801BB90: .4byte gPlayerEntity
_0801BB94: .4byte _0801BB98
_0801BB98: @ jump table
	.4byte _0801BBE0 @ case 0
	.4byte _0801BBE8 @ case 1
	.4byte _0801BBE8 @ case 2
	.4byte _0801BBE8 @ case 3
	.4byte _0801BBE8 @ case 4
	.4byte _0801BBE8 @ case 5
	.4byte _0801BC04 @ case 6
	.4byte _0801BC04 @ case 7
	.4byte _0801BC04 @ case 8
	.4byte _0801BBE8 @ case 9
	.4byte _0801BBE8 @ case 10
	.4byte _0801BBE8 @ case 11
	.4byte _0801BBE8 @ case 12
	.4byte _0801BBE8 @ case 13
	.4byte _0801BBE8 @ case 14
	.4byte _0801BC04 @ case 15
	.4byte _0801BC04 @ case 16
	.4byte _0801BC04 @ case 17
_0801BBE0:
	adds r0, r5, #0
	bl sub_0801BC0C
	b _0801BC0A
_0801BBE8:
	ldr r0, _0801BC00 @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801BC0A
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0801BC14
	b _0801BC0A
	.align 2, 0
_0801BC00: .4byte gPlayerEntity
_0801BC04:
	adds r0, r5, #0
	bl sub_0801BCB4
_0801BC0A:
	pop {r4, r5, pc}

	thumb_func_start sub_0801BC0C
sub_0801BC0C: @ 0x0801BC0C
	push {lr}
	bl sub_0801BE38
	pop {pc}

	thumb_func_start sub_0801BC14
sub_0801BC14: @ 0x0801BC14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0x20
	movs r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x21
	cmp r0, #0xd
	bhi _0801BC98
	lsls r0, r0, #2
	ldr r1, _0801BC30 @ =_0801BC34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BC30: .4byte _0801BC34
_0801BC34: @ jump table
	.4byte _0801BC76 @ case 0
	.4byte _0801BC6C @ case 1
	.4byte _0801BC6E @ case 2
	.4byte _0801BC76 @ case 3
	.4byte _0801BC72 @ case 4
	.4byte _0801BC98 @ case 5
	.4byte _0801BC98 @ case 6
	.4byte _0801BC98 @ case 7
	.4byte _0801BC7A @ case 8
	.4byte _0801BC7A @ case 9
	.4byte _0801BC7A @ case 10
	.4byte _0801BC7A @ case 11
	.4byte _0801BC7A @ case 12
	.4byte _0801BC7A @ case 13
_0801BC6C:
	movs r6, #0x23
_0801BC6E:
	movs r5, #0x28
	b _0801BC98
_0801BC72:
	movs r5, #0x50
	b _0801BC98
_0801BC76:
	movs r5, #0xa0
	b _0801BC98
_0801BC7A:
	ldr r1, _0801BCB0 @ =gSave
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0xb3
	strb r0, [r2]
	adds r1, #0xc6
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	bl SoundReq
_0801BC98:
	adds r0, r5, #0
	bl ModHealth
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	subs r1, #0x1c
	adds r0, r6, #0
	bl SetBottleContents
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801BCB0: .4byte gSave

	thumb_func_start sub_0801BCB4
sub_0801BCB4: @ 0x0801BCB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801BCEC @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801BD6C
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x36
	beq _0801BCDA
	subs r0, #7
	ldrb r1, [r0]
	subs r1, #0x1c
	movs r0, #0x20
	bl SetBottleContents
_0801BCDA:
	ldrb r0, [r5]
	subs r0, #0x26
	cmp r0, #0xb
	bhi _0801BD6C
	lsls r0, r0, #2
	ldr r1, _0801BCF0 @ =_0801BCF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BCEC: .4byte gPlayerEntity
_0801BCF0: .4byte _0801BCF4
_0801BCF4: @ jump table
	.4byte _0801BD24 @ case 0
	.4byte _0801BD32 @ case 1
	.4byte _0801BD40 @ case 2
	.4byte _0801BD6C @ case 3
	.4byte _0801BD6C @ case 4
	.4byte _0801BD6C @ case 5
	.4byte _0801BD6C @ case 6
	.4byte _0801BD6C @ case 7
	.4byte _0801BD6C @ case 8
	.4byte _0801BD54 @ case 9
	.4byte _0801BD54 @ case 10
	.4byte _0801BD54 @ case 11
_0801BD24:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _0801BD6C
_0801BD32:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #1
	bl CreateObjectWithParent
	b _0801BD6C
_0801BD40:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #2
	movs r3, #2
	bl CreateObjectWithParent
	movs r0, #0x20
	bl ModHealth
	b _0801BD6C
_0801BD54:
	ldr r1, _0801BD88 @ =gSave
	ldrb r0, [r5]
	adds r2, r1, #0
	adds r2, #0xb2
	strb r0, [r2]
	adds r1, #0xc4
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, _0801BD8C @ =0x000001CF
	bl SoundReq
_0801BD6C:
	ldr r0, _0801BD90 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801BDAE
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _0801BD94
	cmp r0, #0x27
	beq _0801BDA2
	b _0801BDAE
	.align 2, 0
_0801BD88: .4byte gSave
_0801BD8C: .4byte 0x000001CF
_0801BD90: .4byte gPlayerEntity
_0801BD94:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _0801BDAE
_0801BDA2:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #1
	bl CreateObjectWithParent
_0801BDAE:
	ldr r0, _0801BDC8 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801BDE6
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _0801BDCC
	cmp r0, #0x27
	beq _0801BDDA
	b _0801BDE6
	.align 2, 0
_0801BDC8: .4byte gPlayerEntity
_0801BDCC:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _0801BDE6
_0801BDDA:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
_0801BDE6:
	pop {r4, r5, pc}

	thumb_func_start sub_0801BDE8
sub_0801BDE8: @ 0x0801BDE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x1e]
	ldrb r1, [r4, #0xe]
	subs r0, r0, r1
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _0801BE0A
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_0801BE0A:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	movs r2, #1
	ands r0, r2
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _0801BE34 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, r5, pc}
	.align 2, 0
_0801BE34: .4byte gPlayerEntity

	thumb_func_start sub_0801BE38
sub_0801BE38: @ 0x0801BE38
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x49
	beq _0801BE54
	cmp r1, #0x4d
	beq _0801BE60
	movs r0, #0
	strb r0, [r2]
	b _0801BE6A
_0801BE54:
	movs r0, #0x28
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0801B9F0
	b _0801BE6A
_0801BE60:
	movs r0, #0x27
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0801B9F0
_0801BE6A:
	ldrb r0, [r4, #0x1e]
	subs r0, #0x1b
	lsls r0, r0, #2
	ldr r1, _0801BE84 @ =gUnk_080B788A
	adds r2, r0, r1
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0801BE88
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	b _0801BE8C
	.align 2, 0
_0801BE84: .4byte gUnk_080B788A
_0801BE88:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
_0801BE8C:
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #3]
	strb r0, [r1, #7]
	ldr r0, _0801BEF0 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0801BEDE
	ldrb r0, [r4, #0xb]
	cmp r0, #0x20
	bne _0801BEE4
	subs r0, r1, #1
	lsls r0, r0, #1
	ldr r1, _0801BEF4 @ =gUnk_080B7878
	adds r2, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0801BECA
	rsbs r1, r1, #0
_0801BECA:
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x10
	bne _0801BEDE
	movs r0, #0x26
	strb r0, [r4, #0xb]
_0801BEDE:
	ldrb r0, [r4, #0xb]
	cmp r0, #0x20
	beq _0801BEEE
_0801BEE4:
	ldr r2, _0801BEF0 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0801BEEE:
	pop {r4, pc}
	.align 2, 0
_0801BEF0: .4byte gPlayerEntity
_0801BEF4: .4byte gUnk_080B7878
