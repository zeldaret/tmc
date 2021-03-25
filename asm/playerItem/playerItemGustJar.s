	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start PlayerItemGustJar
PlayerItemGustJar: @ 0x080ADA30
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080ADA60 @ =gPlayerState
	ldr r0, [r1, #0x2c]
	cmp r0, r4
	bne _080ADA42
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _080ADA46
_080ADA42:
	bl DeleteThisEntity
_080ADA46:
	ldr r1, _080ADA64 @ =gUnk_08132700
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _080ADA68 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, pc}
	.align 2, 0
_080ADA60: .4byte gPlayerState
_080ADA64: .4byte gUnk_08132700
_080ADA68: .4byte gPlayerEntity


	thumb_func_start sub_080ADA6C
sub_080ADA6C: @ 0x080ADA6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r0, _080ADAA4 @ =gUnk_08132B28
	str r0, [r4, #0x48]
	movs r1, #3
	strb r1, [r0, #4]
	strb r1, [r0, #3]
	movs r1, #6
	strb r1, [r0, #5]
	strb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_080ADC84
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0
_080ADAA4: .4byte gUnk_08132B28

	thumb_func_start sub_080ADAA8
sub_080ADAA8: @ 0x080ADAA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080ADC84
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ADACC
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080ADCA0
	b _080ADAD2
_080ADACC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080ADAD2:
	pop {r4, pc}

	thumb_func_start sub_080ADAD4
sub_080ADAD4: @ 0x080ADAD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _080ADAF4 @ =gPlayerState
	ldrb r1, [r3, #0x1c]
	adds r0, r1, #0
	cmp r0, #3
	bne _080ADAFC
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ADAF8 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, #8
	b _080ADB0C
	.align 2, 0
_080ADAF4: .4byte gPlayerState
_080ADAF8: .4byte gPlayerEntity
_080ADAFC:
	cmp r0, #6
	bne _080ADB18
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, _080ADB14 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
_080ADB0C:
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _080ADC08
	.align 2, 0
_080ADB14: .4byte gPlayerEntity
_080ADB18:
	movs r5, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080ADB58
	cmp r0, #1
	bne _080ADB36
	adds r0, r4, #0
	movs r1, #4
	bl sub_080ADCA0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080ADBE0
_080ADB36:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080ADCDC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080ADBE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080ADCA0
	strb r5, [r4, #0xa]
	b _080ADBE0
_080ADB58:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	bne _080ADB68
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #0x7f
	strb r0, [r1]
_080ADB68:
	ldrb r0, [r3, #0x1d]
	cmp r0, #2
	beq _080ADB94
	cmp r0, #2
	bgt _080ADB78
	cmp r0, #1
	beq _080ADBB0
	b _080ADBCA
_080ADB78:
	cmp r0, #3
	bne _080ADBCA
	adds r0, r4, #0
	movs r1, #3
	bl sub_080ADCDC
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
	movs r2, #3
	movs r5, #0xe9
	b _080ADBCA
_080ADB94:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080ADCDC
	ldrb r0, [r4, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #0x1a]
	movs r2, #2
	movs r5, #0xe8
	b _080ADBCA
_080ADBB0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080ADCDC
	ldrb r0, [r4, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x1a]
	movs r2, #1
	movs r5, #0xe7
_080ADBCA:
	ldr r0, _080ADC0C @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #7
	bne _080ADBDA
	movs r5, #0xee
	movs r2, #1
_080ADBDA:
	ldrb r0, [r4, #0xf]
	subs r0, r0, r2
	strb r0, [r4, #0xf]
_080ADBE0:
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080ADBF6
	cmp r5, #0
	beq _080ADBF2
	adds r0, r5, #0
	bl SoundReq
_080ADBF2:
	movs r0, #0xf
	strb r0, [r4, #0xf]
_080ADBF6:
	ldr r2, _080ADC10 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	ldrb r0, [r2, #0x1e]
	subs r0, r0, r1
	strb r0, [r4, #0x1e]
_080ADC08:
	pop {r4, r5, pc}
	.align 2, 0
_080ADC0C: .4byte gPlayerState
_080ADC10: .4byte gPlayerEntity

	thumb_func_start sub_080ADC14
sub_080ADC14: @ 0x080ADC14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ADC40 @ =gPlayerState
	ldrb r0, [r0, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _080ADC48
	cmp r1, #6
	bne _080ADC56
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ADC44 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _080ADC5C
	.align 2, 0
_080ADC40: .4byte gPlayerState
_080ADC44: .4byte gPlayerEntity
_080ADC48:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080ADCA0
	movs r0, #2
	strb r0, [r4, #0xc]
	b _080ADC5C
_080ADC56:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080ADC5C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ADC60
sub_080ADC60: @ 0x080ADC60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ADC7C
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _080ADC82
_080ADC7C:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_080ADC82:
	pop {pc}

	thumb_func_start sub_080ADC84
sub_080ADC84: @ 0x080ADC84
	ldr r1, _080ADC9C @ =gPlayerEntity
	ldrb r1, [r1, #0x18]
	movs r2, #0x40
	ands r2, r1
	ldrb r3, [r0, #0x18]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #0x18]
	bx lr
	.align 2, 0
_080ADC9C: .4byte gPlayerEntity

	thumb_func_start sub_080ADCA0
sub_080ADCA0: @ 0x080ADCA0
	push {r4, lr}
	ldr r3, _080ADCD4 @ =gUnk_08132714
	ldr r2, _080ADCD8 @ =gPlayerEntity
	ldrb r2, [r2, #0x14]
	lsrs r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	str r2, [r0, #0x5c]
	ldrb r1, [r2]
	adds r3, r0, #0
	adds r3, #0x58
	strb r1, [r3]
	adds r1, r2, #1
	str r1, [r0, #0x5c]
	ldrb r2, [r2, #1]
	movs r4, #0x59
	strb r2, [r4, r0]
	adds r1, #1
	str r1, [r0, #0x5c]
	ldrb r1, [r3]
	ldrh r2, [r0, #0x12]
	bl sub_080042D0
	pop {r4, pc}
	.align 2, 0
_080ADCD4: .4byte gUnk_08132714
_080ADCD8: .4byte gPlayerEntity

	thumb_func_start sub_080ADCDC
sub_080ADCDC: @ 0x080ADCDC
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #0x59
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	subs r0, r0, r1
	mov r1, ip
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080ADD2E
	ldr r1, [r3, #0x5c]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080ADD06
	adds r0, r1, #1
	str r0, [r3, #0x5c]
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	str r0, [r3, #0x5c]
_080ADD06:
	ldr r1, [r3, #0x5c]
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0x58
	strb r0, [r2]
	adds r1, #1
	str r1, [r3, #0x5c]
	ldrb r0, [r1]
	mov r4, ip
	ldrb r4, [r4]
	adds r0, r0, r4
	mov r5, ip
	strb r0, [r5]
	adds r1, #1
	str r1, [r3, #0x5c]
	ldrb r1, [r2]
	ldrh r2, [r3, #0x12]
	adds r0, r3, #0
	bl sub_080042D0
_080ADD2E:
	pop {r4, r5, pc}
