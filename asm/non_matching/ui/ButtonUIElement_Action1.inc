	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	movs r6, #8
	cmp r0, #0
	bne _0801CC10
	movs r6, #4
	cmp r0, #0
	bne _0801CC10
	ldr r3, _0801CC08 @ =gUnk_0200AF00
	ldrb r0, [r3, #1]
	ldrb r2, [r5, #1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CBF6
	ldr r0, _0801CC0C @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801CC10
_0801CBF6:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x1c
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	subs r1, #0x28
	b _0801CC1E
	.align 2, 0
_0801CC08: .4byte gUnk_0200AF00
_0801CC0C: .4byte gMessage
_0801CC10:
	ldr r1, _0801CC7C @ =gUnk_0200AF00
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	adds r1, #0x1c
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
_0801CC1E:
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC2C
	rsbs r4, r4, #0
_0801CC2C:
	cmp r6, r4
	bgt _0801CC32
	adds r4, r6, #0
_0801CC32:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC44
	ldrh r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r5, #0xe]
_0801CC44:
	ldr r0, _0801CC7C @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	lsls r1, r1, #1
	adds r0, #0x16
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC60
	rsbs r4, r4, #0
_0801CC60:
	cmp r6, r4
	bgt _0801CC66
	adds r4, r6, #0
_0801CC66:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC78
	ldrh r0, [r5, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0xc]
_0801CC78:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801CC7C: .4byte gUnk_0200AF00
	.syntax divided
