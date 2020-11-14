	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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

	thumb_func_start Festari_Fusion
Festari_Fusion: @ 0x0805FFA0
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
	bl InitAnimationForceUpdate
	b _0805FFD4
_0805FFCE:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_0805FFD4:
	pop {r4, pc}
	.align 2, 0
