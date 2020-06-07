	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080692D0
sub_080692D0: @ 0x080692D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080692F4
	ldr r0, _080692F0 @ =gUnk_08111A8C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806930A
	.align 2, 0
_080692F0: .4byte gUnk_08111A8C
_080692F4:
	ldr r0, _0806930C @ =gUnk_08111A80
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_0806930A:
	pop {r4, pc}
	.align 2, 0
_0806930C: .4byte gUnk_08111A80

	thumb_func_start sub_08069310
sub_08069310: @ 0x08069310
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078778
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069328
sub_08069328: @ 0x08069328
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _0806934E
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	cmp r0, #0
	blt _0806934E
	strb r0, [r4, #0x14]
_0806934E:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _08069362
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
_08069362:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806938E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0805E47C
	adds r0, r4, #0
	movs r1, #8
	bl LoadAnimation
	ldrb r0, [r4, #0xe]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	bl TextboxTryNoOverlap
_0806938E:
	pop {r4, pc}

	thumb_func_start sub_08069390
sub_08069390: @ 0x08069390
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, _080693C0 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _080693BC
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0805E584
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
_080693BC:
	pop {r4, pc}
	.align 2, 0
_080693C0: .4byte gTextBox

	thumb_func_start sub_080693C4
sub_080693C4: @ 0x080693C4
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	bl sub_0807DD50
	pop {pc}

	thumb_func_start sub_080693D0
sub_080693D0: @ 0x080693D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	bl sub_0807DD94
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	bne _08069422
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r0, [r0]
	movs r1, #0xf
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r0, [r4]
	cmp r0, #1
	bne _0806940C
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08069424 @ =0xFFF80000
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08069428
_0806940C:
	ldrb r0, [r4]
	cmp r0, #2
	bne _08069422
	movs r0, #0
	strb r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08069428
_08069422:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08069424: .4byte 0xFFF80000

	thumb_func_start sub_08069428
sub_08069428: @ 0x08069428
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08069452
	ldr r3, _0806947C @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_08069452:
	cmp r6, #0
	beq _0806947A
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _0806947A
	ldr r3, _0806947C @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_0806947A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806947C: .4byte 0xFFF00000

	thumb_func_start sub_08069480
sub_08069480: @ 0x08069480
	push {lr}
	bl sub_0801E99C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {pc}

	thumb_func_start sub_0806948C
sub_0806948C: @ 0x0806948C
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08069480
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801E7F4
	str r0, [r4, #0x14]
	ldr r2, _080694AC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_080694AC: .4byte gUnk_02033280

	thumb_func_start sub_080694B0
sub_080694B0: @ 0x080694B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08069480
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _080694CE
	adds r0, r4, #0
	bl sub_08078778
	b _080694D6
_080694CE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078784
_080694D6:
	pop {r4, r5, pc}

	thumb_func_start sub_080694D8
sub_080694D8: @ 0x080694D8
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _080694E8 @ =gUnk_08111A94
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_080694E8: .4byte gUnk_08111A94

	thumb_func_start sub_080694EC
sub_080694EC: @ 0x080694EC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r5, #2
	movs r0, #0x2f
	bl sub_0801E7F4
	cmp r0, #0
	bne _08069502
	movs r5, #8
_08069502:
	adds r0, r4, #0
	adds r1, r5, #0
	bl LoadAnimation
	adds r0, r4, #0
	adds r0, #0x80
	strh r5, [r0]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08069514
sub_08069514: @ 0x08069514
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806953A
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #2
	bl LoadAnimation
	b _08069540
_0806953A:
	adds r0, r2, #0
	bl sub_080042B8
_08069540:
	pop {pc}
	.align 2, 0
