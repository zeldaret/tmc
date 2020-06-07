	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08062B98
sub_08062B98: @ 0x08062B98
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08062BBC
	ldr r0, _08062BB8 @ =gUnk_0810C2DC
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08062BCC
	.align 2, 0
_08062BB8: .4byte gUnk_0810C2DC
_08062BBC:
	ldr r0, _08062BD0 @ =gUnk_0810C2CC
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08062BCC:
	pop {pc}
	.align 2, 0
_08062BD0: .4byte gUnk_0810C2CC

	thumb_func_start sub_08062BD4
sub_08062BD4: @ 0x08062BD4
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
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_08062BF8
sub_08062BF8: @ 0x08062BF8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08062C1C
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0805E47C
_08062C1C:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}

	thumb_func_start sub_08062C24
sub_08062C24: @ 0x08062C24
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062C4E
	adds r0, r4, #0
	movs r1, #4
	bl UpdateSprite
	ldr r0, _08062C50 @ =0x00000A01
	bl TextboxTryNoOverlap
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_08062C4E:
	pop {r4, pc}
	.align 2, 0
_08062C50: .4byte 0x00000A01

	thumb_func_start sub_08062C54
sub_08062C54: @ 0x08062C54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08062C78 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08062C76
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0805E584
_08062C76:
	pop {r4, pc}
	.align 2, 0
_08062C78: .4byte gTextBox

	thumb_func_start sub_08062C7C
sub_08062C7C: @ 0x08062C7C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	movs r1, #0x25
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_08062CA4
	pop {r4, pc}

	thumb_func_start sub_08062CA4
sub_08062CA4: @ 0x08062CA4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08062CBC
sub_08062CBC: @ 0x08062CBC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2c
	bl sub_0801E7F4
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #3
	ldr r0, _08062CDC @ =gUnk_0810C2E4
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806F1AC
	pop {r4, pc}
	.align 2, 0
_08062CDC: .4byte gUnk_0810C2E4

	thumb_func_start sub_08062CE0
sub_08062CE0: @ 0x08062CE0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _08062CEE
	movs r0, #1
	strb r0, [r1, #0xc]
_08062CEE:
	pop {pc}
