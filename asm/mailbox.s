	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080631E8
sub_080631E8: @ 0x080631E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806320C @ =gUnk_0810C804
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _08063208
	adds r0, r4, #0
	bl sub_0806ED78
_08063208:
	pop {r4, pc}
	.align 2, 0
_0806320C: .4byte gUnk_0810C804

	thumb_func_start sub_08063210
sub_08063210: @ 0x08063210
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	bl LoadAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063220
sub_08063220: @ 0x08063220
	push {lr}
	adds r2, r0, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08063238
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r1, #8
	b _0806323A
_08063238:
	movs r1, #0
_0806323A:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _0806324C
	adds r0, r2, #0
	bl LoadAnimation
	b _08063252
_0806324C:
	adds r0, r2, #0
	bl sub_08063280
_08063252:
	pop {pc}

	thumb_func_start sub_08063254
sub_08063254: @ 0x08063254
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08063280
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08063274
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0
	bl TextboxTryNoOverlap
_08063274:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08063278
sub_08063278: @ 0x08063278
	push {lr}
	bl sub_08063280
	pop {pc}

	thumb_func_start sub_08063280
sub_08063280: @ 0x08063280
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r1, #0x7f
	ands r1, r2
	adds r0, r1, #0
	eors r0, r2
	strb r0, [r3]
	cmp r1, #2
	bne _080632A6
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0
	bl CreateFX
_080632A6:
	pop {r4, pc}
