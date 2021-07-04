	.syntax unified
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
	.syntax divided
