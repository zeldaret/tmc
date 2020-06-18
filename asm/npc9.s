	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start NPC9
NPC9: @ 0x08062AD8
	push {lr}
	ldr r2, _08062AEC @ =gUnk_0810C290
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08062AEC: .4byte gUnk_0810C290

	thumb_func_start sub_08062AF0
sub_08062AF0: @ 0x08062AF0
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
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_08062B14
sub_08062B14: @ 0x08062B14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08062B40
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0805E47C
_08062B40:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}

	thumb_func_start sub_08062B48
sub_08062B48: @ 0x08062B48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062B6A
	ldr r0, _08062B6C @ =0x00000A01
	bl TextboxNoOverlapFollow
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_08062B6A:
	pop {r4, pc}
	.align 2, 0
_08062B6C: .4byte 0x00000A01

	thumb_func_start sub_08062B70
sub_08062B70: @ 0x08062B70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08062B94 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08062B92
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0805E584
_08062B92:
	pop {r4, pc}
	.align 2, 0
_08062B94: .4byte gTextBox
