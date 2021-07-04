	.syntax unified
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
	.syntax divided
