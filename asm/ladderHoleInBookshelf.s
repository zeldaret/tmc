	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08093FB4
sub_08093FB4: @ 0x08093FB4
	push {lr}
	ldr r2, _08093FC8 @ =gUnk_081229B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08093FC8: .4byte gUnk_081229B4

	thumb_func_start sub_08093FCC
sub_08093FCC: @ 0x08093FCC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #2
	strb r1, [r2]
	bl UpdateSpriteOrderAndFlip
	pop {pc}

	thumb_func_start sub_08093FE0
sub_08093FE0: @ 0x08093FE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08094064
	cmp r0, #0
	beq _08094062
	adds r3, r4, #0
	adds r3, #0x38
	ldrb r0, [r3]
	cmp r0, #2
	bne _08094024
	ldr r0, _08094020 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x1e
	bgt _08094002
	cmp r0, #0x1d
	bge _08094062
_08094002:
	movs r0, #1
	strb r0, [r3]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	b _08094060
	.align 2, 0
_08094020: .4byte gLinkEntity
_08094024:
	ldr r0, _0809404C @ =gLinkEntity
	ldrb r2, [r0, #0xc]
	cmp r2, #0x1e
	bgt _08094050
	cmp r2, #0x1d
	blt _08094050
	movs r0, #2
	strb r0, [r3]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _08094060
	.align 2, 0
_0809404C: .4byte gLinkEntity
_08094050:
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08094062
	movs r0, #1
_08094060:
	strb r0, [r2]
_08094062:
	pop {r4, pc}

	thumb_func_start sub_08094064
sub_08094064: @ 0x08094064
	push {lr}
	movs r2, #1
	ldr r1, _08094080 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r1, [r1, r3]
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	adds r1, #0x1c
	cmp r1, #0x38
	bls _0809407C
	movs r2, #0
_0809407C:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_08094080: .4byte gLinkEntity
