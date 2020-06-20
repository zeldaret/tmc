	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Beedle
Beedle: @ 0x080632A8
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080632BE
	adds r0, r2, #0
	bl sub_08063410
	b _080632C4
_080632BE:
	adds r0, r2, #0
	bl sub_080632C8
_080632C4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080632C8
sub_080632C8: @ 0x080632C8
	push {lr}
	ldr r2, _080632DC @ =gUnk_0810C8E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080632DC: .4byte gUnk_0810C8E0

	thumb_func_start sub_080632E0
sub_080632E0: @ 0x080632E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08063310 @ =gUnk_0810C8D4
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806330E
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08078778
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
_0806330E:
	pop {r4, pc}
	.align 2, 0
_08063310: .4byte gUnk_0810C8D4

	thumb_func_start sub_08063314
sub_08063314: @ 0x08063314
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08063342
	adds r0, r4, #0
	bl sub_080633C8
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _08063342
	adds r0, r4, #0
	bl InitializeAnimation
_08063342:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08063360
	ldrb r0, [r4, #0xe]
	ldr r1, _08063368 @ =0x00000A01
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_08063360:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08063368: .4byte 0x00000A01

	thumb_func_start sub_0806336C
sub_0806336C: @ 0x0806336C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806338C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806338A
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #8
	bl InitializeAnimation
_0806338A:
	pop {pc}
	.align 2, 0
_0806338C: .4byte gTextBox

	thumb_func_start sub_08063390
sub_08063390: @ 0x08063390
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080633BE
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08078778
_080633BE:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080633C8
sub_080633C8: @ 0x080633C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	cmp r0, #0
	bge _080633DE
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
_080633DE:
	pop {r4, pc}

	thumb_func_start Beedle_Head
Beedle_Head: @ 0x080633E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_08063410
sub_08063410: @ 0x08063410
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _08063442
	ldr r1, _08063464 @ =gUnk_0810C8D4
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08063462
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08063436
	ldr r0, _08063468 @ =gUnk_0810C894
	str r0, [r4, #0x48]
	strb r5, [r4, #0xb]
_08063436:
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08078778
_08063442:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0806344E
	adds r0, r4, #0
	bl sub_0806346C
_0806344E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl GetNextFrame
_08063462:
	pop {r4, r5, pc}
	.align 2, 0
_08063464: .4byte gUnk_0810C8D4
_08063468: .4byte gUnk_0810C894

	thumb_func_start sub_0806346C
sub_0806346C: @ 0x0806346C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _080634D8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	subs r3, r1, r0
	adds r4, #0x30
	adds r3, #0x18
	cmp r4, #0
	bge _08063490
	movs r4, #0
_08063490:
	cmp r4, #0x50
	ble _08063496
	movs r4, #0x50
_08063496:
	cmp r3, #0
	bge _0806349C
	movs r3, #0
_0806349C:
	cmp r3, #0x40
	ble _080634A2
	movs r3, #0x40
_080634A2:
	asrs r4, r4, #4
	asrs r3, r3, #4
	ldr r2, _080634DC @ =gUnk_0810C8F0
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r0, r4, #2
	adds r1, r1, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r4, [r1]
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	beq _080634D6
	lsls r3, r4, #3
	ldr r0, _080634E0 @ =gUnk_0810C89C
	adds r3, r3, r0
	movs r2, #4
	ldrsb r2, [r3, r2]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08078850
	strb r4, [r5, #0xb]
_080634D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080634D8: .4byte gLinkEntity
_080634DC: .4byte gUnk_0810C8F0
_080634E0: .4byte gUnk_0810C89C

	thumb_func_start sub_080634E4
sub_080634E4: @ 0x080634E4
	ldrb r0, [r0, #0xb]
	str r0, [r1, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_080634EC
sub_080634EC: @ 0x080634EC
	ldr r2, _080634FC @ =gRoomVars
	ldr r1, _08063500 @ =gUnk_0810C88C
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #6]
	bx lr
	.align 2, 0
_080634FC: .4byte gRoomVars
_08063500: .4byte gUnk_0810C88C

	thumb_func_start sub_08063504
sub_08063504: @ 0x08063504
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _08063520 @ =gUnk_0810C88C
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080544DC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_08063520: .4byte gUnk_0810C88C
