	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08023CE0
sub_08023CE0: @ 0x08023CE0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08023D48
	cmp r0, #1
	bgt _08023CF4
	cmp r0, #0
	beq _08023CFA
	b _08023DC0
_08023CF4:
	cmp r0, #2
	beq _08023D6E
	b _08023DC0
_08023CFA:
	adds r0, r4, #0
	bl sub_0804A720
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	bne _08023D1C
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08023D12
	strb r1, [r4, #0xe]
_08023D12:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08023D20
_08023D1C:
	movs r0, #1
	strb r0, [r4, #0xc]
_08023D20:
	ldr r0, _08023D44 @ =0x0000FF80
	strh r0, [r4, #0x36]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _08023E0A
	.align 2, 0
_08023D44: .4byte 0x0000FF80
_08023D48:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x20
	bl sub_08049F64
	cmp r0, #0
	beq _08023E0A
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08023D64
	movs r0, #8
	strb r0, [r4, #0xe]
_08023D64:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _08023E0A
_08023D6E:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08023D94
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023E0A
	ldr r0, _08023D90 @ =0x0000012D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _08023E0A
	.align 2, 0
_08023D90: .4byte 0x0000012D
_08023D94:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08023E0A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x84
	bl sub_08004488
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	b _08023E0A
_08023DC0:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	cmp r1, #0
	beq _08023E0A
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08023DF2
	movs r0, #0x10
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _08023E0A
	adds r0, r4, #0
	bl sub_0804A4E4
	bl sub_0805E780
	b _08023E0A
_08023DF2:
	ldr r1, _08023E0C @ =gUnk_080CBDF4
	ldrb r0, [r2]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r4, #0x32]
	strb r1, [r2]
_08023E0A:
	pop {r4, pc}
	.align 2, 0
_08023E0C: .4byte gUnk_080CBDF4
