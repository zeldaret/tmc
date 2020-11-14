	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0805EC04
sub_0805EC04: @ 0x0805EC04
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r2, #1
	ldr r0, _0805EC4C @ =gUnk_03000000
	movs r5, #1
	movs r6, #0x3f
	rsbs r6, r6, #0
	movs r7, #4
	rsbs r7, r7, #0
	adds r4, r0, #0
	adds r4, #8
_0805EC1A:
	ldr r0, _0805EC50 @ =0x00000426
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805EC54
	strb r5, [r1]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	ldrb r1, [r3, #0x1b]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1b]
	ldrb r2, [r3, #0x19]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	orrs r1, r5
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	movs r0, #1
	b _0805EC5E
	.align 2, 0
_0805EC4C: .4byte gUnk_03000000
_0805EC50: .4byte 0x00000426
_0805EC54:
	adds r4, #8
	adds r2, #1
	cmp r2, #0x1f
	bls _0805EC1A
	movs r0, #0
_0805EC5E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805EC60
sub_0805EC60: @ 0x0805EC60
	push {lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x19]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _0805EC90
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #0x19]
	ldrb r2, [r3, #0x1b]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1b
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3, #0x1b]
	ldr r0, _0805EC94 @ =gUnk_03000000
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0805EC98 @ =0x00000426
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_0805EC90:
	pop {pc}
	.align 2, 0
_0805EC94: .4byte gUnk_03000000
_0805EC98: .4byte 0x00000426

	thumb_func_start sub_0805EC9C
sub_0805EC9C: @ 0x0805EC9C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldrb r0, [r4, #0x1b]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	cmp r0, #0
	bne _0805ECBE
	adds r0, r4, #0
	bl sub_0805EC04
	cmp r0, #0
	bne _0805ECBE
	movs r0, #0
	b _0805ECE0
_0805ECBE:
	ldr r1, _0805ECE4 @ =gUnk_03000000
	ldr r0, _0805ECE8 @ =0x00000427
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldrb r0, [r4, #0x1b]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	lsls r0, r0, #3
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r0, r0, r1
	strh r5, [r0]
	strh r6, [r0, #2]
	strh r7, [r0, #4]
	movs r0, #1
_0805ECE0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805ECE4: .4byte gUnk_03000000
_0805ECE8: .4byte 0x00000427

	thumb_func_start sub_0805ECEC
sub_0805ECEC: @ 0x0805ECEC
	push {r4, r5, r6, lr}
	ldr r5, _0805ED0C @ =gUnk_03000000
	ldr r4, _0805ED10 @ =0x00000427
	adds r6, r5, r4
	movs r4, #1
	strb r4, [r6]
	lsls r0, r0, #3
	movs r4, #0x84
	lsls r4, r4, #3
	adds r5, r5, r4
	adds r0, r0, r5
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805ED0C: .4byte gUnk_03000000
_0805ED10: .4byte 0x00000427

	thumb_func_start sub_0805ED14
sub_0805ED14: @ 0x0805ED14
	ldr r2, _0805ED2C @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r2, #0
	adds r0, #0x98
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0805ED2C: .4byte gPlayerState

	thumb_func_start sub_0805ED30
sub_0805ED30: @ 0x0805ED30
	push {r4, lr}
	ldr r2, _0805ED50 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r4, r2, #0
	cmp r0, #0
	beq _0805ED88
	adds r1, r4, #0
	adds r1, #0x90
	ldr r2, [r1, #0xc]
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _0805ED7E
	movs r4, #0
	b _0805ED62
	.align 2, 0
_0805ED50: .4byte gPlayerState
_0805ED54:
	cmp r0, #2
	beq _0805ED5E
	strh r3, [r1, #8]
	ldrh r0, [r2, #2]
	strh r0, [r1, #0xa]
_0805ED5E:
	adds r2, #4
	b _0805ED7C
_0805ED62:
	ldrh r3, [r2]
	lsrs r0, r3, #0xe
	cmp r0, #1
	bne _0805ED72
	movs r3, #2
	ldrsh r0, [r2, r3]
	adds r2, r2, r0
	b _0805ED62
_0805ED72:
	cmp r0, #3
	bne _0805ED54
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	movs r2, #0
_0805ED7C:
	str r2, [r1, #0xc]
_0805ED7E:
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r1, [r1, #0xa]
	b _0805EDCA
_0805ED88:
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #3
	bgt _0805ED98
	cmp r0, #0
	blt _0805ED98
	movs r1, #0
_0805ED98:
	adds r2, r4, #0
	adds r2, #0x8b
	ldrb r0, [r2]
	cmp r0, #1
	beq _0805EDB4
	cmp r0, #1
	bgt _0805EDAC
	cmp r0, #0
	beq _0805EDC6
	b _0805EDCA
_0805EDAC:
	cmp r0, #3
	bgt _0805EDCA
	movs r1, #0
	b _0805EDCA
_0805EDB4:
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0805EDF8 @ =gUnk_03000FF0
	ldrh r0, [r0]
	bl sub_0805EE04
	adds r1, r4, #0
	adds r1, #0x90
	strh r0, [r1]
_0805EDC6:
	ldr r0, _0805EDF8 @ =gUnk_03000FF0
	ldrh r1, [r0]
_0805EDCA:
	adds r0, r1, #0
	bl sub_0805EE04
	ldr r3, _0805EDFC @ =gPlayerState
	adds r1, r3, #0
	adds r1, #0x90
	ldrh r2, [r1]
	strh r0, [r1]
	adds r1, r0, #0
	bics r1, r2
	adds r2, r3, #0
	adds r2, #0x92
	strh r1, [r2]
	ldr r2, _0805EE00 @ =gUnk_08109202
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r0
	lsrs r1, r1, #8
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r3, #0xd]
	pop {r4, pc}
	.align 2, 0
_0805EDF8: .4byte gUnk_03000FF0
_0805EDFC: .4byte gPlayerState
_0805EE00: .4byte gUnk_08109202

	thumb_func_start sub_0805EE04
sub_0805EE04: @ 0x0805EE04
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0x80
	lsls r5, r5, #2
	ands r0, r5
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _0805EE32
	movs r0, #0x20
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	orrs r1, r0
_0805EE32:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0805EE42
	movs r0, #8
	orrs r1, r0
	movs r0, #0x41
	orrs r1, r0
_0805EE42:
	movs r3, #2
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0805EE52
	movs r0, #0x10
	orrs r1, r0
	orrs r1, r3
_0805EE52:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0805EE5C
	orrs r1, r4
_0805EE5C:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0805EE66
	orrs r1, r5
_0805EE66:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0805EE74
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
_0805EE74:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805EE82
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
_0805EE82:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805EE88
sub_0805EE88: @ 0x0805EE88
	push {lr}
	ldr r1, _0805EEB0 @ =gScreenTransition
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805EEAC
	ldr r1, [r1]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805EEAC
	movs r0, #0xc
	ands r1, r0
	lsrs r0, r1, #2
	adds r0, #0x2f
	bl LoadPaletteGroup
_0805EEAC:
	pop {pc}
	.align 2, 0
_0805EEB0: .4byte gScreenTransition

	thumb_func_start sub_0805EEB4
sub_0805EEB4: @ 0x0805EEB4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r3, r1, #0
	strh r3, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #7]
	cmp r1, #1
	bls _0805EED6
	lsrs r0, r3, #8
	cmp r0, #1
	bne _0805EED6
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r3, r0
	bhi _0805EED6
	movs r1, #3
_0805EED6:
	ldr r0, _0805EF14 @ =gUnk_08109214
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r4, [r0]
	adds r2, r2, r4
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r0, [r1]
	ldr r1, [r0]
	lsrs r1, r1, #2
	ldr r0, [r2]
	lsrs r6, r0, #2
	movs r5, #0
	ldrh r3, [r7, #8]
	lsrs r0, r3, #8
	cmp r0, r1
	bhs _0805EF0E
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	blo _0805EF18
_0805EF0E:
	movs r5, #1
	b _0805EF22
	.align 2, 0
_0805EF14: .4byte gUnk_08109214
_0805EF18:
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805EF22
	movs r5, #2
_0805EF22:
	cmp r5, #2
	bhi _0805EF2E
	cmp r5, #1
	blo _0805EF2E
	ldr r2, _0805EF3C @ =gUnk_08109244
	movs r4, #0
_0805EF2E:
	adds r2, r2, r4
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_0805EF40
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805EF3C: .4byte gUnk_08109244

	thumb_func_start sub_0805EF40
sub_0805EF40: @ 0x0805EF40
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0805EF70
	lsls r1, r2, #0x1b
	lsrs r0, r1, #0x1c
	cmp r0, #6
	bls _0805EF5C
	movs r0, #0
	b _0805EF8A
_0805EF5C:
	lsrs r0, r1, #0x1c
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0805EF70:
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r1, r0
	str r4, [r1]
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	movs r0, #1
_0805EF8A:
	pop {r4, pc}

	thumb_func_start sub_0805EF8C
sub_0805EF8C: @ 0x0805EF8C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805EFAE
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r2, #0x10
	adds r2, r2, r0
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r1, #1
	str r1, [r2]
	b _0805EFB0
_0805EFAE:
	movs r0, #0
_0805EFB0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805EFB4
sub_0805EFB4: @ 0x0805EFB4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	lsls r1, r2, #0x1b
	lsrs r4, r1, #0x1c
	movs r0, #0x1e
	ands r0, r2
	cmp r0, #0
	beq _0805EFDC
	adds r0, r4, #0
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0805EFE4
_0805EFDC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
_0805EFE4:
	adds r0, r4, #0
	pop {r4, pc}

	thumb_func_start sub_0805EFE8
sub_0805EFE8: @ 0x0805EFE8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
_0805EFEC:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r5, r0, #0
	strb r5, [r6, #1]
	movs r7, #0
	cmp r5, #0xf
	bls _0805EFFE
	b _0805F22C
_0805EFFE:
	lsls r0, r5, #2
	ldr r1, _0805F008 @ =_0805F00C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F008: .4byte _0805F00C
_0805F00C: @ jump table
	.4byte _0805F04C @ case 0
	.4byte _0805F058 @ case 1
	.4byte _0805F06E @ case 2
	.4byte _0805F07A @ case 3
	.4byte _0805F090 @ case 4
	.4byte _0805F130 @ case 5
	.4byte _0805F150 @ case 6
	.4byte _0805F196 @ case 7
	.4byte _0805F1C0 @ case 8
	.4byte _0805F1CC @ case 9
	.4byte _0805F1D8 @ case 10
	.4byte _0805F1DC @ case 11
	.4byte _0805F1EC @ case 12
	.4byte _0805F1FC @ case 13
	.4byte _0805F20C @ case 14
	.4byte _0805F21C @ case 15
_0805F04C:
	adds r0, r6, #0
	bl sub_0805EFB4
	adds r7, r0, #0
	movs r5, #0
	b _0805F232
_0805F058:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r0, #0
	strh r4, [r6, #2]
	movs r5, #6
	cmp r4, #0xa
	bls _0805F06A
	b _0805F232
_0805F06A:
	movs r5, #5
	b _0805F232
_0805F06E:
	adds r0, r6, #0
	bl sub_0805EF8C
	strh r0, [r6, #2]
	movs r5, #7
	b _0805F232
_0805F07A:
	adds r0, r6, #0
	bl sub_0805EF8C
	lsls r4, r0, #8
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r4, r0
	strh r4, [r6, #2]
	movs r5, #8
	b _0805F232
_0805F090:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r0, #0
	cmp r4, #0x15
	bhi _0805F12C
	lsls r0, r4, #2
	ldr r1, _0805F0A8 @ =_0805F0AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F0A8: .4byte _0805F0AC
_0805F0AC: @ jump table
	.4byte _0805F104 @ case 0
	.4byte _0805F104 @ case 1
	.4byte _0805F104 @ case 2
	.4byte _0805F104 @ case 3
	.4byte _0805F104 @ case 4
	.4byte _0805F104 @ case 5
	.4byte _0805F104 @ case 6
	.4byte _0805F104 @ case 7
	.4byte _0805F104 @ case 8
	.4byte _0805F104 @ case 9
	.4byte _0805F104 @ case 10
	.4byte _0805F104 @ case 11
	.4byte _0805F104 @ case 12
	.4byte _0805F104 @ case 13
	.4byte _0805F104 @ case 14
	.4byte _0805F104 @ case 15
	.4byte _0805F108 @ case 16
	.4byte _0805F114 @ case 17
	.4byte _0805F118 @ case 18
	.4byte _0805F11C @ case 19
	.4byte _0805F120 @ case 20
	.4byte _0805F120 @ case 21
_0805F104:
	movs r5, #9
	b _0805F12C
_0805F108:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r0, #0
	movs r5, #0xa
	b _0805F12C
_0805F114:
	movs r5, #2
	b _0805F12C
_0805F118:
	movs r5, #3
	b _0805F12C
_0805F11C:
	movs r5, #4
	b _0805F12C
_0805F120:
	movs r5, #0xb
	movs r1, #0x14
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
_0805F12C:
	strh r4, [r6, #2]
	b _0805F232
_0805F130:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r0, #0
	cmp r4, #0xff
	bne _0805F140
	movs r4, #0
	b _0805F14A
_0805F140:
	lsls r4, r4, #8
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r4, r0
_0805F14A:
	strh r4, [r6, #6]
	movs r5, #0xc
	b _0805F232
_0805F150:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r0, #0
	cmp r4, #4
	bls _0805F162
	cmp r4, #5
	beq _0805F17C
	b _0805EFEC
_0805F162:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	bne _0805F16A
	ldr r1, _0805F178 @ =gUnk_08109230
_0805F16A:
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_0805EF40
	b _0805EFEC
	.align 2, 0
_0805F178: .4byte gUnk_08109230
_0805F17C:
	adds r0, r6, #0
	bl sub_0805EF8C
	lsls r4, r0, #8
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r4, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805EEB4
	b _0805EFEC
_0805F196:
	adds r0, r6, #0
	bl sub_0805EF8C
	lsls r4, r0, #8
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r4, r4, r0
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r6]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805EEB4
	b _0805EFEC
_0805F1C0:
	adds r0, r6, #0
	bl sub_0805EF8C
	strh r0, [r6, #2]
	movs r5, #0xd
	b _0805F232
_0805F1CC:
	adds r0, r6, #0
	bl sub_0805EF8C
	strh r0, [r6, #2]
	movs r5, #0xe
	b _0805F232
_0805F1D8:
	movs r5, #1
	b _0805F232
_0805F1DC:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r5, r0
	b _0805F232
_0805F1EC:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r5, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #3
	orrs r5, r0
	b _0805F232
_0805F1FC:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r5, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #3
	orrs r5, r0
	b _0805F232
_0805F20C:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	orrs r5, r0
	b _0805F232
_0805F21C:
	adds r0, r6, #0
	bl sub_0805EF8C
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r5, r0
	b _0805F232
_0805F22C:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r5, r0
_0805F232:
	cmp r7, #0
	beq _0805F238
	b _0805EFEC
_0805F238:
	lsrs r0, r5, #8
	cmp r0, #0
	beq _0805F256
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _0805F254
	cmp r0, #1
	bne _0805F254
	adds r0, r5, #0
	bl sub_0805F9A0
	adds r5, r0, #0
_0805F254:
	strh r5, [r6, #4]
_0805F256:
	adds r0, r5, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0805F25C
sub_0805F25C: @ 0x0805F25C
	push {lr}
	adds r2, r0, #0
	lsrs r3, r2, #8
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xff
	ands r2, r0
	cmp r3, #8
	bhi _0805F2B6
	lsls r0, r3, #2
	ldr r1, _0805F278 @ =_0805F27C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F278: .4byte _0805F27C
_0805F27C: @ jump table
	.4byte _0805F2A0 @ case 0
	.4byte _0805F2A0 @ case 1
	.4byte _0805F2B6 @ case 2
	.4byte _0805F2B6 @ case 3
	.4byte _0805F2B6 @ case 4
	.4byte _0805F2B4 @ case 5
	.4byte _0805F2B4 @ case 6
	.4byte _0805F2B4 @ case 7
	.4byte _0805F2B4 @ case 8
_0805F2A0:
	cmp r2, #0x7f
	bls _0805F2B6
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0805F2B6
	subs r2, #0x80
	movs r3, #2
	b _0805F2B6
_0805F2B4:
	lsls r2, r2, #1
_0805F2B6:
	ldr r1, _0805F2C4 @ =gUnk_08109248
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #6
	ldr r0, [r0]
	adds r0, r0, r1
	pop {pc}
	.align 2, 0
_0805F2C4: .4byte gUnk_08109248

	thumb_func_start sub_0805F2C8
sub_0805F2C8: @ 0x0805F2C8
	push {r4, r5, lr}
	movs r1, #0
	ldr r4, _0805F2EC @ =gUnk_02036540
	adds r5, r4, #0
_0805F2D0:
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805F2F0
	adds r0, r5, #0
	movs r1, #0xc
	bl _DmaZero
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	b _0805F2FC
	.align 2, 0
_0805F2EC: .4byte gUnk_02036540
_0805F2F0:
	adds r4, #0xc
	adds r5, #0xc
	adds r1, #1
	cmp r1, #3
	bls _0805F2D0
	movs r0, #0
_0805F2FC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805F300
sub_0805F300: @ 0x0805F300
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _0805F314 @ =gUnk_02036540
_0805F308:
	cmp r0, r2
	bne _0805F318
	movs r1, #0xc
	bl _DmaZero
	b _0805F320
	.align 2, 0
_0805F314: .4byte gUnk_02036540
_0805F318:
	adds r0, #0xc
	adds r1, #1
	cmp r1, #3
	bls _0805F308
_0805F320:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805F324
sub_0805F324: @ 0x0805F324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r1, #0
	mov r1, sp
	movs r2, #0x30
	bl _DmaCopy
	movs r0, #0
	str r0, [sp, #0x34]
	movs r1, #0
	str r1, [sp, #0x30]
	mov sl, r1
	mov r8, r1
	b _0805F34C
_0805F348:
	cmp r6, #0
	beq _0805F41E
_0805F34C:
	movs r5, #0
	movs r2, #1
	mov sb, r2
_0805F352:
	mov r0, sp
	bl sub_0805EFE8
	adds r6, r0, #0
	cmp r6, #0xe
	bhi _0805F3B4
	lsls r0, r6, #2
	ldr r1, _0805F368 @ =_0805F36C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F368: .4byte _0805F36C
_0805F36C: @ jump table
	.4byte _0805F402 @ case 0
	.4byte _0805F402 @ case 1
	.4byte _0805F3FC @ case 2
	.4byte _0805F3FC @ case 3
	.4byte _0805F3FC @ case 4
	.4byte _0805F3FC @ case 5
	.4byte _0805F3FC @ case 6
	.4byte _0805F3FC @ case 7
	.4byte _0805F3FC @ case 8
	.4byte _0805F3FC @ case 9
	.4byte _0805F3FC @ case 10
	.4byte _0805F3AC @ case 11
	.4byte _0805F3A8 @ case 12
	.4byte _0805F3FC @ case 13
	.4byte _0805F3FC @ case 14
_0805F3A8:
	adds r5, #8
	b _0805F3FC
_0805F3AC:
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r8, r0
	b _0805F3FC
_0805F3B4:
	mov r0, r8
	cmp r0, #0
	bne _0805F3DE
	adds r0, r6, #0
	bl sub_0805F25C
	adds r4, r0, #0
	lsrs r0, r6, #8
	cmp r0, #4
	bls _0805F3D2
	ldr r0, [r4, #0x40]
	bl sub_0805F7A0
	lsrs r0, r0, #8
	adds r5, r5, r0
_0805F3D2:
	ldr r0, [r4]
	bl sub_0805F7A0
	lsrs r0, r0, #8
	adds r5, r5, r0
	b _0805F3EA
_0805F3DE:
	lsrs r0, r6, #8
	cmp r0, #4
	bls _0805F3E8
	adds r5, #0x10
	b _0805F3EA
_0805F3E8:
	adds r5, #8
_0805F3EA:
	mov r0, sp
	ldrb r1, [r0]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _0805F3FC
	cmp r5, #1
	bls _0805F3FC
	subs r5, #1
_0805F3FC:
	mov r1, sb
	cmp r1, #0
	bne _0805F352
_0805F402:
	cmp r5, sl
	bls _0805F408
	mov sl, r5
_0805F408:
	cmp r5, #0
	beq _0805F414
	ldr r2, [sp, #0x30]
	adds r2, #1
	str r2, [sp, #0x30]
	b _0805F41A
_0805F414:
	ldr r0, [sp, #0x34]
	adds r0, #1
	str r0, [sp, #0x34]
_0805F41A:
	cmp r7, #0
	bne _0805F348
_0805F41E:
	cmp r7, #0
	bne _0805F426
	mov r0, sl
	b _0805F434
_0805F426:
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x18
	ldr r2, [sp, #0x30]
	lsls r1, r2, #0x10
	orrs r0, r1
	mov r1, sl
	orrs r0, r1
_0805F434:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805F440
sub_0805F440: @ 0x0805F440
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x30
	bl _DmaZero
	ldr r0, _0805F45C @ =0x0000FFFF
	cmp r5, r0
	bls _0805F460
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805EF40
	b _0805F468
	.align 2, 0
_0805F45C: .4byte 0x0000FFFF
_0805F460:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805EEB4
_0805F468:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0805F46C
sub_0805F46C: @ 0x0805F46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0805F2C8
	mov r8, r0
	cmp r0, #0
	bne _0805F486
	b _0805F5BC
_0805F486:
	add r4, sp, #0x30
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x18
	bl _DmaCopy
	mov r0, sp
	adds r1, r6, #0
	bl sub_0805F440
	mov r3, sp
	ldrb r0, [r4, #0x17]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0x17]
	lsls r1, r1, #4
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r4, #0x12]
	strh r0, [r1, #4]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #2]
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #3]
	ldrb r1, [r4, #0x13]
	movs r0, #8
	ands r0, r1
	mov sb, r4
	cmp r0, #0
	beq _0805F59E
	lsrs r0, r1, #4
	ldrb r1, [r4, #0x14]
	ldr r2, [r4, #4]
	bl sub_0805F918
	ldr r0, [r4, #4]
	adds r0, #0xe0
	str r0, [r4, #4]
	mov r0, sp
	movs r1, #1
	bl sub_0805F324
	lsrs r2, r0, #0x18
	ldrb r1, [r4, #0x16]
	muls r2, r1, r2
	asrs r1, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x17
	adds r7, r2, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r4, #0
	mov r2, sb
	ldrb r3, [r2, #0x12]
	cmp r3, r1
	bge _0805F514
	adds r1, r3, #0
_0805F514:
	adds r4, r1, #7
	movs r2, #8
	rsbs r2, r2, #0
	mov r0, sb
	ldrb r1, [r0, #0x13]
	movs r0, #2
	ands r0, r1
	ands r4, r2
	cmp r0, #0
	bne _0805F52A
	adds r4, r3, #0
_0805F52A:
	ldr r5, [sp, #0x30]
	adds r0, r5, #0
	adds r0, #0x40
	str r0, [sp, #0x30]
	mov r2, sb
	ldrb r1, [r2, #0x13]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F54E
	adds r4, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	lsrs r0, r4, #3
	adds r0, #2
	subs r5, r5, r0
	b _0805F554
_0805F54E:
	adds r0, r5, #0
	adds r0, #0x42
	str r0, [sp, #0x30]
_0805F554:
	lsrs r4, r4, #3
	mov r3, sb
	ldrh r6, [r3, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08056DC8
	adds r5, #2
	mov r1, sb
	ldrh r0, [r1, #0x10]
	adds r0, #7
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x10]
	subs r6, r0, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	beq _0805F59E
_0805F57C:
	adds r1, r5, #0
	adds r1, #0x40
	adds r5, r1, #0
	subs r2, r4, #1
	subs r3, r7, #1
	cmp r4, #0
	ble _0805F596
_0805F58A:
	strh r6, [r1]
	adds r1, #2
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt _0805F58A
_0805F596:
	adds r0, r7, #0
	adds r7, r3, #0
	cmp r0, #0
	bne _0805F57C
_0805F59E:
	ldr r0, _0805F5C8 @ =gUnk_02034330
	movs r1, #0x18
	bl _DmaZero
_0805F5A6:
	mov r0, sb
	mov r1, sp
	mov r2, r8
	bl sub_0805F5CC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805F5A6
	mov r0, r8
	bl sub_0805F300
_0805F5BC:
	movs r0, #0
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805F5C8: .4byte gUnk_02034330

	thumb_func_start sub_0805F5CC
sub_0805F5CC: @ 0x0805F5CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrb r0, [r4, #0x14]
	bl sub_0805F8F8
	ldr r1, [r4, #8]
	ldrb r2, [r4, #0x12]
	adds r2, #7
	movs r3, #0xfc
	lsls r3, r3, #1
	ands r2, r3
	lsls r2, r2, #3
	bl _DmaFill32
	adds r0, r6, #0
	movs r1, #0
	bl sub_0805F324
	adds r2, r0, #0
	ldrb r1, [r4, #0x13]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F60E
	adds r0, r2, #1
	lsrs r0, r0, #1
	movs r1, #8
	subs r1, r1, r0
	movs r0, #7
	ands r0, r1
	b _0805F610
_0805F60E:
	movs r0, #0
_0805F610:
	strh r0, [r5, #6]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0805F6A4
	adds r2, r0, #0
	cmp r2, #0
	beq _0805F660
	ldrh r1, [r5, #6]
	adds r0, r1, #7
	asrs r5, r0, #3
	ldr r2, [r4]
	ldrb r1, [r4, #0x13]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F63A
	adds r0, r5, #1
	lsrs r0, r0, #1
	lsls r0, r0, #1
	subs r2, r2, r0
_0805F63A:
	ldrh r1, [r4, #0x10]
	adds r0, r2, #0
	adds r2, r5, #0
	bl sub_0805F67C
	strh r0, [r4, #0x10]
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	lsls r5, r5, #6
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	adds r2, r5, #0
	bl _DmaCopy
	ldr r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r4, #4]
	b _0805F670
_0805F660:
	ldrb r0, [r6, #1]
	cmp r0, #0xa
	bne _0805F670
	ldrb r1, [r4, #0x16]
	lsls r1, r1, #6
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0805F670:
	ldrb r1, [r6, #1]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0805F67C
sub_0805F67C: @ 0x0805F67C
	push {r4, lr}
	adds r3, r0, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0805F6A0
	adds r4, r0, #0
_0805F68C:
	strh r1, [r3]
	adds r1, #1
	adds r0, r3, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r1, #1
	adds r3, #2
	subs r2, #1
	cmp r2, r4
	bne _0805F68C
_0805F6A0:
	adds r0, r1, #0
	pop {r4, pc}

	thumb_func_start sub_0805F6A4
sub_0805F6A4: @ 0x0805F6A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
_0805F6AC:
	adds r0, r5, #0
	bl sub_0805EFE8
	movs r7, #1
	cmp r0, #0xe
	bhi _0805F746
	lsls r0, r0, #2
	ldr r1, _0805F6C4 @ =_0805F6C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F6C4: .4byte _0805F6C8
_0805F6C8: @ jump table
	.4byte _0805F768 @ case 0
	.4byte _0805F768 @ case 1
	.4byte _0805F764 @ case 2
	.4byte _0805F764 @ case 3
	.4byte _0805F764 @ case 4
	.4byte _0805F764 @ case 5
	.4byte _0805F764 @ case 6
	.4byte _0805F704 @ case 7
	.4byte _0805F764 @ case 8
	.4byte _0805F764 @ case 9
	.4byte _0805F764 @ case 10
	.4byte _0805F740 @ case 11
	.4byte _0805F70E @ case 12
	.4byte _0805F764 @ case 13
	.4byte _0805F764 @ case 14
_0805F704:
	ldrh r0, [r5, #2]
	cmp r0, #0xd
	bhi _0805F764
	strb r0, [r4, #2]
	b _0805F764
_0805F70E:
	ldr r3, _0805F73C @ =gUnk_02034330
	movs r2, #2
	ldrsb r2, [r3, r2]
	cmp r2, #3
	bhi _0805F732
	adds r0, r2, #1
	strb r0, [r3, #2]
	lsls r2, r2, #1
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r1, [r5, #6]
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #6]
	strh r0, [r2]
_0805F732:
	ldrh r0, [r4, #6]
	adds r0, #8
	strh r0, [r4, #6]
	adds r6, #8
	b _0805F764
	.align 2, 0
_0805F73C: .4byte gUnk_02034330
_0805F740:
	ldrh r0, [r5, #2]
	strb r0, [r4, #1]
	b _0805F764
_0805F746:
	adds r1, r4, #0
	bl sub_0805F7DC
	adds r6, r6, r0
	ldrb r1, [r5]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _0805F764
	ldrh r0, [r4, #6]
	cmp r0, #1
	bls _0805F764
	subs r6, #1
	subs r0, #1
	strh r0, [r4, #6]
_0805F764:
	cmp r7, #0
	bne _0805F6AC
_0805F768:
	adds r0, r6, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805F76C
sub_0805F76C: @ 0x0805F76C
	push {r4, lr}
	sub sp, #0x30
	adds r2, r0, #0
	adds r4, r1, #0
	mov r0, sp
	adds r1, r2, #0
	bl sub_0805F440
	mov r3, sp
	ldrb r0, [r4]
	lsrs r0, r0, #4
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r0, sp
	adds r1, r4, #0
	bl sub_0805F6A4
	add sp, #0x30
	pop {r4, pc}

	thumb_func_start sub_0805F7A0
sub_0805F7A0: @ 0x0805F7A0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xf
	movs r2, #0
	b _0805F7B4
_0805F7AA:
	lsls r1, r1, #4
	adds r2, #1
	cmp r2, #7
	bhi _0805F7BA
	adds r0, r4, #0
_0805F7B4:
	ands r0, r1
	cmp r1, r0
	beq _0805F7AA
_0805F7BA:
	adds r3, r2, #0
	cmp r3, #7
	bhi _0805F7D2
	b _0805F7CA
_0805F7C2:
	lsls r1, r1, #4
	adds r2, #1
	cmp r2, #7
	bhi _0805F7D2
_0805F7CA:
	adds r0, r4, #0
	ands r0, r1
	cmp r1, r0
	bne _0805F7C2
_0805F7D2:
	subs r2, r2, r3
	lsls r0, r2, #8
	orrs r0, r3
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805F7DC
sub_0805F7DC: @ 0x0805F7DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	cmp r0, r1
	bhi _0805F7EE
	movs r0, #0
	b _0805F81E
_0805F7EE:
	adds r0, r6, #0
	bl sub_0805F25C
	adds r5, r0, #0
	ldrh r7, [r4, #6]
	lsrs r0, r6, #8
	cmp r0, #4
	bls _0805F808
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F820
	adds r5, #0x40
_0805F808:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F820
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r0, r1
	bls _0805F81A
	strh r1, [r4, #6]
_0805F81A:
	ldrh r0, [r4, #6]
	subs r0, r0, r7
_0805F81E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805F820
sub_0805F820: @ 0x0805F820
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	cmp r0, #0
	ble _0805F8DC
	ldr r1, _0805F854 @ =gUnk_02036A58
	adds r0, r4, #0
	bl sub_08002724
	ldrb r0, [r7, #1]
	cmp r0, #0
	bne _0805F858
	ldr r0, [r4]
	bl sub_0805F7A0
	movs r1, #0xf
	ands r1, r0
	lsrs r4, r0, #8
	b _0805F85C
	.align 2, 0
_0805F854: .4byte gUnk_02036A58
_0805F858:
	movs r1, #0
	movs r4, #8
_0805F85C:
	ldrh r0, [r7, #4]
	ldrh r3, [r7, #6]
	subs r0, r0, r3
	cmp r0, #8
	ble _0805F868
	movs r0, #8
_0805F868:
	cmp r0, r4
	bge _0805F86E
	adds r4, r0, #0
_0805F86E:
	ldr r0, _0805F8BC @ =gUnk_02036A58
	adds r6, r1, r0
	ldr r0, [r7, #8]
	mov sb, r0
	ldrb r0, [r7, #3]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #6
	ldrb r0, [r7, #2]
	lsls r0, r0, #5
	ldr r1, _0805F8C0 @ =gUnk_0810942E
	adds r0, r0, r1
	adds r2, r2, r0
	mov r8, r2
	adds r5, r3, #0
	adds r0, r5, r4
	strh r0, [r7, #6]
	ldrb r0, [r7]
	lsrs r0, r0, #4
	cmp r0, #1
	beq _0805F8D4
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	ble _0805F8DC
_0805F8A0:
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	adds r3, r5, #0
	bl sub_080026C4
	adds r6, #1
	adds r5, #1
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bgt _0805F8A0
	b _0805F8DC
	.align 2, 0
_0805F8BC: .4byte gUnk_02036A58
_0805F8C0: .4byte gUnk_0810942E
_0805F8C4:
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	adds r3, r5, #0
	bl sub_080026F2
	adds r6, #1
	adds r5, #1
_0805F8D4:
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bgt _0805F8C4
_0805F8DC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0805F8E4
sub_0805F8E4: @ 0x0805F8E4
	push {r4, r5, lr}
	adds r4, r1, #0
	ldrb r5, [r4, #1]
	movs r1, #1
	strb r1, [r4, #1]
	adds r1, r4, #0
	bl sub_0805F7DC
	strb r5, [r4, #1]
	pop {r4, r5, pc}

	thumb_func_start sub_0805F8F8
sub_0805F8F8: @ 0x0805F8F8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, _0805F910 @ =gUnk_081094CE
	adds r1, r1, r0
	ldr r2, _0805F914 @ =gUnk_0810926C
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805F910: .4byte gUnk_081094CE
_0805F914: .4byte gUnk_0810926C

	thumb_func_start sub_0805F918
sub_0805F918: @ 0x0805F918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov sl, r2
	adds r0, r5, #0
	bl sub_0805F8F8
	ldr r1, _0805F990 @ =gUnk_02036AD8
	movs r2, #0xe0
	bl _DmaFill32
	ldr r0, _0805F994 @ =gUnk_081092AC
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	mov r8, r4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	ldr r1, _0805F998 @ =gUnk_081094CE
	adds r0, r0, r1
	mov sb, r0
	movs r7, #0
	movs r6, #0
_0805F950:
	ldr r4, _0805F99C @ =gUnk_02036A58
	mov r0, r8
	adds r1, r4, #0
	bl sub_08002724
	movs r0, #0x40
	add r8, r0
	movs r5, #0
	adds r6, #1
_0805F962:
	adds r0, r4, #0
	ldr r1, _0805F990 @ =gUnk_02036AD8
	mov r2, sb
	adds r3, r7, #0
	bl sub_080026C4
	adds r4, #1
	adds r7, #1
	adds r5, #1
	cmp r5, #7
	bls _0805F962
	cmp r6, #2
	bls _0805F950
	ldr r0, _0805F990 @ =gUnk_02036AD8
	mov r1, sl
	movs r2, #0xe0
	bl LoadAssetAsync
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805F990: .4byte gUnk_02036AD8
_0805F994: .4byte gUnk_081092AC
_0805F998: .4byte gUnk_081094CE
_0805F99C: .4byte gUnk_02036A58

	thumb_func_start sub_0805F9A0
sub_0805F9A0: @ 0x0805F9A0
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0805F9D0
	ldr r1, _0805F9C4 @ =gUnk_081092D4
	movs r3, #0
_0805F9B2:
	ldrh r0, [r1]
	cmp r0, r2
	beq _0805F9C8
	adds r3, #1
	adds r1, #2
	ldrh r0, [r1]
	cmp r0, #0
	bne _0805F9B2
	b _0805F9D8
	.align 2, 0
_0805F9C4: .4byte gUnk_081092D4
_0805F9C8:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r3, r1
	b _0805F9E2
_0805F9D0:
	ldr r0, _0805F9E4 @ =0x0000031A
	cmp r2, r0
	bne _0805F9D8
	movs r2, #1
_0805F9D8:
	movs r0, #0xff
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0805F9E2:
	pop {pc}
	.align 2, 0
_0805F9E4: .4byte 0x0000031A

	thumb_func_start HandleDebugTextScreen
HandleDebugTextScreen: @ 0x0805F9E8
	push {lr}
	ldr r1, _0805F9FC @ =gUnk_08109A30
	ldr r0, _0805FA00 @ =gUnk_03001000
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805F9FC: .4byte gUnk_08109A30
_0805FA00: .4byte gUnk_03001000

	thumb_func_start sub_0805FA04
sub_0805FA04: @ 0x0805FA04
	push {r4, r5, lr}
	movs r0, #1
	bl sub_0801DA90
	ldr r0, _0805FA78 @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	ldr r0, _0805FA7C @ =gUnk_02001A40
	movs r1, #0x80
	lsls r1, r1, #5
	bl _DmaZero
	ldr r0, _0805FA80 @ =gScreen
	movs r2, #0
	movs r1, #0x94
	lsls r1, r1, #4
	strh r1, [r0]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0x2e]
	strh r2, [r0, #0x30]
	ldr r1, _0805FA84 @ =0x00001E0F
	strh r1, [r0, #0x2c]
	movs r5, #1
	movs r1, #1
	strh r1, [r0, #0x32]
	bl sub_08056418
	ldr r0, _0805FA88 @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl _DmaZero
	ldr r4, _0805FA8C @ =gMenu
	adds r0, r4, #0
	movs r1, #0x30
	bl _DmaZero
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	strb r0, [r4, #0x16]
	bl sub_08053320
	ldr r1, _0805FA90 @ =0x00001144
	movs r0, #0
	bl sub_0801D79C
	ldr r0, _0805FA94 @ =gUnk_03001000
	strb r5, [r0, #3]
	bl sub_080A3210
	bl sub_08050008
	pop {r4, r5, pc}
	.align 2, 0
_0805FA78: .4byte gUnk_02034CB0
_0805FA7C: .4byte gUnk_02001A40
_0805FA80: .4byte gScreen
_0805FA84: .4byte 0x00001E0F
_0805FA88: .4byte gUnk_02032EC0
_0805FA8C: .4byte gMenu
_0805FA90: .4byte 0x00001144
_0805FA94: .4byte gUnk_03001000

	thumb_func_start sub_0805FA98
sub_0805FA98: @ 0x0805FA98
	push {r4, lr}
	ldr r0, _0805FAB4 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	adds r2, r0, #0
	cmp r1, #0x80
	beq _0805FAD8
	cmp r1, #0x80
	bgt _0805FAB8
	cmp r1, #2
	beq _0805FB44
	cmp r1, #0x40
	beq _0805FACA
	b _0805FB4A
	.align 2, 0
_0805FAB4: .4byte gUnk_03000FF0
_0805FAB8:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805FB28
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0805FAE8
	b _0805FB4A
_0805FACA:
	ldr r1, _0805FAD4 @ =gMenu
	ldrb r0, [r1, #0x11]
	subs r0, #1
	strb r0, [r1, #0x11]
	b _0805FBA4
	.align 2, 0
_0805FAD4: .4byte gMenu
_0805FAD8:
	ldr r1, _0805FAE4 @ =gMenu
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _0805FBA4
	.align 2, 0
_0805FAE4: .4byte gMenu
_0805FAE8:
	ldr r0, _0805FB04 @ =gMenu
	ldrb r1, [r0, #0x10]
	movs r2, #1
	eors r1, r2
	strb r1, [r0, #0x10]
	cmp r1, #0
	bne _0805FB10
	ldr r0, _0805FB08 @ =gScreen
	ldr r1, _0805FB0C @ =0x00001F0C
	strh r1, [r0, #8]
	subs r1, #0xfd
	strh r1, [r0, #0x2c]
	b _0805FBA4
	.align 2, 0
_0805FB04: .4byte gMenu
_0805FB08: .4byte gScreen
_0805FB0C: .4byte 0x00001F0C
_0805FB10:
	ldr r0, _0805FB1C @ =gScreen
	ldr r1, _0805FB20 @ =0x00001F0F
	strh r1, [r0, #8]
	ldr r1, _0805FB24 @ =0x00001E0C
	strh r1, [r0, #0x2c]
	b _0805FBA4
	.align 2, 0
_0805FB1C: .4byte gScreen
_0805FB20: .4byte 0x00001F0F
_0805FB24: .4byte 0x00001E0C
_0805FB28:
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldr r1, _0805FB40 @ =gMenu
	ldrb r0, [r1, #0x16]
	strb r0, [r2, #7]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #8
	ldrb r1, [r1, #0x15]
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
	b _0805FBA4
	.align 2, 0
_0805FB40: .4byte gMenu
_0805FB44:
	bl sub_08056418
	b _0805FBA4
_0805FB4A:
	ldrh r0, [r2, #4]
	cmp r0, #0x10
	beq _0805FB5A
	cmp r0, #0x20
	bne _0805FB5E
	movs r1, #1
	rsbs r1, r1, #0
	b _0805FB60
_0805FB5A:
	movs r1, #1
	b _0805FB60
_0805FB5E:
	movs r1, #0
_0805FB60:
	ldr r4, _0805FB74 @ =gMenu
	ldrb r0, [r4, #0x11]
	cmp r0, #1
	beq _0805FB8E
	cmp r0, #1
	bgt _0805FB78
	cmp r0, #0
	beq _0805FB7E
	b _0805FBA4
	.align 2, 0
_0805FB74: .4byte gMenu
_0805FB78:
	cmp r0, #2
	beq _0805FB96
	b _0805FBA4
_0805FB7E:
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	adds r0, #0x50
	movs r1, #0x50
	bl __modsi3
	strb r0, [r4, #0x14]
	b _0805FBA4
_0805FB8E:
	ldrb r0, [r4, #0x15]
	adds r0, r0, r1
	strb r0, [r4, #0x15]
	b _0805FBA4
_0805FB96:
	ldrb r0, [r4, #0x16]
	adds r0, r0, r1
	adds r0, #7
	movs r1, #7
	bl __modsi3
	strb r0, [r4, #0x16]
_0805FBA4:
	ldr r4, _0805FBBC @ =gMenu
	ldrb r0, [r4, #0x11]
	adds r0, #3
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #0x11]
	ldr r1, _0805FBC0 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x32]
	pop {r4, pc}
	.align 2, 0
_0805FBBC: .4byte gMenu
_0805FBC0: .4byte gScreen

	thumb_func_start sub_0805FBC4
sub_0805FBC4: @ 0x0805FBC4
	push {lr}
	movs r0, #0
	bl InitScreen
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805FBD0
sub_0805FBD0: @ 0x0805FBD0
	push {lr}
	ldr r2, _0805FBE4 @ =gUnk_08109AC8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805FBE4: .4byte gUnk_08109AC8

	thumb_func_start sub_0805FBE8
sub_0805FBE8: @ 0x0805FBE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805FC68 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r4, #0x3c
	ldrb r0, [r4]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _0805FC6C @ =gUnk_08109AD0
	str r0, [r5, #0x48]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	ldrb r1, [r5, #0x14]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805FC36
	movs r0, #1
	strb r0, [r5, #0xb]
_0805FC36:
	ldrb r1, [r5, #0x14]
	lsls r0, r1, #2
	strb r0, [r5, #0x15]
	movs r0, #0x3c
	str r0, [r5, #0x6c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	adds r1, #0xc
	adds r0, r5, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_0801766C
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	bl sub_0805FC74
	ldr r0, _0805FC70 @ =0x0000013F
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_0805FC68: .4byte gPlayerEntity
_0805FC6C: .4byte gUnk_08109AD0
_0805FC70: .4byte 0x0000013F

	thumb_func_start sub_0805FC74
sub_0805FC74: @ 0x0805FC74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0805FD1C
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805FCA4
	adds r0, r4, #0
	bl sub_0800451C
_0805FCA4:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0805FD10 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0805FD14 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _0805FCF6
	ldr r1, _0805FD18 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _0805FCF6
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_0805FCF6:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805FD20
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
	b _0805FD20
	.align 2, 0
_0805FD10: .4byte gRoomControls
_0805FD14: .4byte gPlayerEntity
_0805FD18: .4byte gUnk_08003E44
_0805FD1C:
	bl DeleteThisEntity
_0805FD20:
	pop {r4, r5, pc}
	.align 2, 0
