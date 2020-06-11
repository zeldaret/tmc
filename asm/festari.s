	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805FE10
sub_0805FE10: @ 0x0805FE10
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_0805FE48
sub_0805FE48: @ 0x0805FE48
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0805FE80
	movs r0, #0
	strb r1, [r5, #0xc]
	strb r0, [r2]
	ldr r1, _0805FE7C @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r5, #0
	bl LoadAnimation
	adds r0, r5, #0
	bl sub_0806F118
	b _0805FF14
	.align 2, 0
_0805FE7C: .4byte gLinkEntity
_0805FE80:
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	adds r0, r5, #0
	bl ExecuteScriptCommandSet
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_0805FF2C
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r3, [r0]
	adds r7, r0, #0
	adds r6, r5, #0
	adds r6, #0x82
	cmp r3, #7
	bhi _0805FEC6
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805FEBA
	movs r1, #0xfc
	ands r1, r3
	ldrb r0, [r5, #0xf]
	lsrs r0, r0, #1
	adds r3, r1, r0
	b _0805FEC6
_0805FEBA:
	movs r0, #0xfc
	ands r0, r3
	ldrb r2, [r5, #0x14]
	lsrs r1, r2, #1
	adds r3, r0, r1
	strb r2, [r5, #0xf]
_0805FEC6:
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	cmp r3, r0
	beq _0805FED8
	adds r0, r5, #0
	adds r1, r3, #0
	bl LoadAnimation
_0805FED8:
	adds r0, r5, #0
	bl sub_080042B8
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805FF02
	ldrb r0, [r4]
	cmp r0, #8
	beq _0805FEFE
	cmp r0, #8
	blt _0805FF02
	cmp r0, #0xc
	bgt _0805FF02
	cmp r0, #0xa
	blt _0805FF02
_0805FEFE:
	movs r0, #0
	strh r0, [r7]
_0805FF02:
	ldrh r1, [r6]
	mvns r0, r1
	adds r0, #1
	ands r1, r0
	cmp r1, #2
	bne _0805FF14
	adds r0, r5, #0
	bl sub_0806ED78
_0805FF14:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0805FF18
sub_0805FF18: @ 0x0805FF18
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0805FF28
	movs r0, #1
	strb r0, [r4, #0xc]
_0805FF28:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805FF2C
sub_0805FF2C: @ 0x0805FF2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r5, #8]
	ldr r1, _0805FF60 @ =0xFFF00004
	ands r1, r0
	eors r0, r1
	str r0, [r5, #8]
	cmp r1, #0
	beq _0805FF94
	movs r6, #0x80
	lsls r6, r6, #0xd
	adds r3, r4, #0
	adds r3, #0x80
_0805FF48:
	mvns r0, r1
	adds r2, r0, #1
	ands r2, r1
	eors r1, r2
	cmp r2, r6
	beq _0805FF8C
	cmp r2, r6
	bhi _0805FF64
	cmp r2, #4
	beq _0805FF76
	b _0805FF90
	.align 2, 0
_0805FF60: .4byte 0xFFF00004
_0805FF64:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r2, r0
	beq _0805FF7A
	movs r0, #0x80
	lsls r0, r0, #0xf
	cmp r2, r0
	beq _0805FF7E
	b _0805FF90
_0805FF76:
	movs r0, #9
	b _0805FF8E
_0805FF7A:
	movs r0, #0xa
	b _0805FF8E
_0805FF7E:
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _0805FF88
	movs r0, #0xb
	b _0805FF8E
_0805FF88:
	movs r0, #0xc
	b _0805FF8E
_0805FF8C:
	movs r0, #8
_0805FF8E:
	strh r0, [r3]
_0805FF90:
	cmp r1, #0
	bne _0805FF48
_0805FF94:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DB98
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805FFA0
sub_0805FFA0: @ 0x0805FFA0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805FFCE
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #8
	bl LoadAnimation
	b _0805FFD4
_0805FFCE:
	adds r0, r4, #0
	bl sub_080042B8
_0805FFD4:
	pop {r4, pc}
	.align 2, 0