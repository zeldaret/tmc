	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Keese
Keese: @ 0x08021D64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08021D7C @ =gUnk_080CB69C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08021D7C: .4byte gUnk_080CB69C

	thumb_func_start sub_08021D80
sub_08021D80: @ 0x08021D80
	push {lr}
	ldr r2, _08021D94 @ =gUnk_080CB6B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08021D94: .4byte gUnk_080CB6B4

	thumb_func_start sub_08021D98
sub_08021D98: @ 0x08021D98
	push {lr}
	ldr r1, _08021DA4 @ =gUnk_080CB69C
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08021DA4: .4byte gUnk_080CB69C

	thumb_func_start sub_08021DA8
sub_08021DA8: @ 0x08021DA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08021DC4
	ldr r0, _08021DC8 @ =gUnk_080CB6C4
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08021DC4:
	pop {r4, pc}
	.align 2, 0
_08021DC8: .4byte gUnk_080CB6C4

	thumb_func_start sub_08021DCC
sub_08021DCC: @ 0x08021DCC
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08021DD4
sub_08021DD4: @ 0x08021DD4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08021DDC
sub_08021DDC: @ 0x08021DDC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08021DEE
	adds r0, r4, #0
	bl sub_0804A7D4
_08021DEE:
	pop {r4, pc}

	thumb_func_start sub_08021DF0
sub_08021DF0: @ 0x08021DF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08021E14
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08021E48 @ =0x0000FFF0
	strh r0, [r4, #0x36]
_08021E14:
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_08021EF0
	pop {r4, pc}
	.align 2, 0
_08021E48: .4byte 0x0000FFF0

	thumb_func_start sub_08021E4C
sub_08021E4C: @ 0x08021E4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _08021E5E
	subs r0, #1
	strh r0, [r1]
_08021E5E:
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _08021E6C
	subs r0, #1
	strh r0, [r1]
_08021E6C:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08021E8A
	adds r0, r4, #0
	bl sub_08021F24
	b _08021E90
_08021E8A:
	adds r0, r4, #0
	bl sub_080AEFB4
_08021E90:
	ldr r1, _08021EA0 @ =gUnk_080CB6D0
	ldrb r0, [r5]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08021EA0: .4byte gUnk_080CB6D0

	thumb_func_start sub_08021EA4
sub_08021EA4: @ 0x08021EA4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021EBA
	adds r0, r1, #0
	bl sub_08021EF0
_08021EBA:
	pop {pc}

	thumb_func_start sub_08021EBC
sub_08021EBC: @ 0x08021EBC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08021ECC
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08021EE8
_08021ECC:
	ldr r0, _08021EEC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	beq _08021EE8
	adds r0, r4, #0
	bl sub_08021EF0
_08021EE8:
	pop {r4, pc}
	.align 2, 0
_08021EEC: .4byte gLinkEntity

	thumb_func_start sub_08021EF0
sub_08021EF0: @ 0x08021EF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08021F20 @ =gUnk_080CB6D6
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_08021F20: .4byte gUnk_080CB6D6

	thumb_func_start sub_08021F24
sub_08021F24: @ 0x08021F24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F48
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08021F44 @ =gUnk_080CB6F6
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	b _08021F6E
	.align 2, 0
_08021F44: .4byte gUnk_080CB6F6
_08021F48:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F80
	ldr r0, _08021F7C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	bne _08021F80
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
_08021F6E:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08021FA4
	.align 2, 0
_08021F7C: .4byte gLinkEntity
_08021F80:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08021F94
	bl Random
	movs r1, #0x1f
	ands r0, r1
	b _08021F9A
_08021F94:
	adds r0, r4, #0
	bl sub_08049EE4
_08021F9A:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08021FA4:
	pop {r4, pc}
	.align 2, 0
