	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080AD90C
sub_080AD90C: @ 0x080AD90C
	ldr r1, _080AD914 @ =gUnk_03000000
	movs r0, #0
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_080AD914: .4byte gUnk_03000000

	thumb_func_start sub_080AD918
sub_080AD918: @ 0x080AD918
	push {r4, lr}
	ldr r1, _080AD948 @ =gUnk_03001000
	ldrb r0, [r1, #0xb]
	adds r2, r0, #0
	cmp r2, #0
	bne _080AD958
	ldr r1, _080AD94C @ =gUnk_03000000
	movs r3, #0xa4
	lsls r3, r3, #3
	adds r0, r1, r3
	strb r2, [r0]
	ldr r3, _080AD950 @ =0x00000664
	adds r0, r1, r3
	strb r2, [r0]
	movs r3, #0xf5
	lsls r3, r3, #3
	adds r0, r1, r3
	strb r2, [r0]
	ldr r3, _080AD954 @ =0x000008EC
	adds r0, r1, r3
	strb r2, [r0]
	adds r4, r1, #0
	b _080AD95E
	.align 2, 0
_080AD948: .4byte gUnk_03001000
_080AD94C: .4byte gUnk_03000000
_080AD950: .4byte 0x00000664
_080AD954: .4byte 0x000008EC
_080AD958:
	subs r0, #1
	strb r0, [r1, #0xb]
	ldr r4, _080AD9A8 @ =gUnk_03000000
_080AD95E:
	ldrb r1, [r4, #3]
	movs r0, #0x80
	subs r2, r0, r1
	cmp r2, #0
	ble _080AD980
	lsls r1, r1, #3
	adds r0, r4, #0
	adds r0, #0x20
	adds r1, r1, r0
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r0, r3, #0
_080AD976:
	strh r0, [r1]
	adds r1, #8
	subs r2, #1
	cmp r2, #0
	bne _080AD976
_080AD980:
	adds r1, r4, #0
	ldr r0, _080AD9AC @ =0x00000427
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080AD9A0
	movs r0, #0
	strb r0, [r2]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r1, r2
	adds r1, #0x26
	movs r2, #0x20
	movs r3, #8
	bl ObjAffineSet
_080AD9A0:
	movs r0, #1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080AD9A8: .4byte gUnk_03000000
_080AD9AC: .4byte 0x00000427

	thumb_func_start sub_080AD9B0
sub_080AD9B0: @ 0x080AD9B0
	push {lr}
	ldr r2, _080AD9F4 @ =gUnk_03000000
	ldr r0, _080AD9F8 @ =gScreenTransition
	adds r0, #0x2f
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _080AD9C2
	movs r1, #0xf
_080AD9C2:
	strb r1, [r2, #0xe]
	ldr r1, _080AD9FC @ =gRoomControls
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #4]
	adds r0, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #6]
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	ldr r0, _080ADA00 @ =gUnk_03006164
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080AD9F4: .4byte gUnk_03000000
_080AD9F8: .4byte gScreenTransition
_080AD9FC: .4byte gRoomControls
_080ADA00: .4byte gUnk_03006164

	thumb_func_start sub_080ADA04
sub_080ADA04: @ 0x080ADA04
	push {lr}
	ldr r2, _080ADA10 @ =gUnk_0300659C
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_080ADA10: .4byte gUnk_0300659C

	thumb_func_start sub_080ADA14
sub_080ADA14: @ 0x080ADA14
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r4, _080ADA28 @ =gUnk_03006580
	ldr r0, _080ADA2C @ =gUnk_03001010
	adds r1, r3, #0
	bl _call_via_r4
	pop {r4, pc}
	.align 2, 0
_080ADA28: .4byte gUnk_03006580
_080ADA2C: .4byte gUnk_03001010

	thumb_func_start sub_080ADA30
sub_080ADA30: @ 0x080ADA30
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
	bl PlaySFX
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

	thumb_func_start sub_080ADD30
sub_080ADD30: @ 0x080ADD30
	push {r4, r5, r6, lr}
	ldr r4, _080ADD6C @ =gUnk_02024490
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r4, #0
	bl _DmaZero
	movs r5, #0
	adds r4, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	adds r6, r0, #0
_080ADD48:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_080AE104
	ldrb r0, [r4]
	ands r0, r6
	movs r1, #6
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x80
	strb r0, [r4, #2]
	adds r4, #0xc
	adds r5, #1
	cmp r5, #3
	bls _080ADD48
	pop {r4, r5, r6, pc}
	.align 2, 0
_080ADD6C: .4byte gUnk_02024490

	thumb_func_start sub_080ADD70
sub_080ADD70: @ 0x080ADD70
	push {r4, r5, lr}
	ldr r1, _080ADD88 @ =gUnk_02024490
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ADDD6
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080ADD8C
	bl sub_080ADE24
	b _080ADDD6
	.align 2, 0
_080ADD88: .4byte gUnk_02024490
_080ADD8C:
	movs r4, #0
	movs r5, #0
_080ADD90:
	ldr r0, _080ADDB0 @ =gUnk_02024494
	adds r2, r5, r0
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _080ADDB4
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080ADDCE
	.align 2, 0
_080ADDB0: .4byte gUnk_02024494
_080ADDB4:
	cmp r0, #2
	blt _080ADDCE
	cmp r0, #6
	bgt _080ADDCE
	cmp r0, #4
	blt _080ADDCE
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x30
	bne _080ADDCE
	adds r0, r4, #0
	bl sub_080ADE74
_080ADDCE:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #0x2b
	bls _080ADD90
_080ADDD6:
	pop {r4, r5, pc}

	thumb_func_start sub_080ADDD8
sub_080ADDD8: @ 0x080ADDD8
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080ADDFC @ =gUnk_02024494
	adds r3, r1, r0
	ldr r0, _080ADE00 @ =0x00FFFFFC
	ands r0, r2
	ldr r1, _080ADE04 @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	str r0, [r3, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ADE0C
	ldr r0, _080ADE08 @ =0x0000FFFF
	b _080ADE14
	.align 2, 0
_080ADDFC: .4byte gUnk_02024494
_080ADE00: .4byte 0x00FFFFFC
_080ADE04: .4byte gGlobalGfxAndPalettes
_080ADE08: .4byte 0x0000FFFF
_080ADE0C:
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r2
	lsrs r0, r0, #0x14
_080ADE14:
	strh r0, [r3, #6]
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x30
	orrs r1, r0
	strb r1, [r3]
	pop {pc}

	thumb_func_start sub_080ADE24
sub_080ADE24: @ 0x080ADE24
	push {r4, r5, lr}
	ldr r1, _080ADE50 @ =gUnk_02024490
	movs r0, #1
	strb r0, [r1, #3]
	movs r4, #0
	movs r5, #0
_080ADE30:
	ldr r0, _080ADE54 @ =gUnk_02024494
	adds r1, r5, r0
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	beq _080ADE60
	cmp r0, #3
	blt _080ADE58
	cmp r0, #6
	bgt _080ADE58
	adds r0, r4, #0
	bl sub_080ADE74
	b _080ADE60
	.align 2, 0
_080ADE50: .4byte gUnk_02024490
_080ADE54: .4byte gUnk_02024494
_080ADE58:
	adds r0, r1, #0
	movs r1, #0xc
	bl _DmaZero
_080ADE60:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #0x2b
	bls _080ADE30
	movs r1, #0
	ldr r0, _080ADE70 @ =gUnk_02024490
	strb r1, [r0, #3]
	pop {r4, r5, pc}
	.align 2, 0
_080ADE70: .4byte gUnk_02024490

	thumb_func_start sub_080ADE74
sub_080ADE74: @ 0x080ADE74
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080ADF00 @ =gUnk_02024494
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _080ADF7C
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r3, #6]
	ldr r0, _080ADF04 @ =0x0000FFFF
	cmp r1, r0
	beq _080ADF18
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _080ADF18
	lsls r0, r0, #6
	ldr r1, _080ADF08 @ =gUnk_020000C0
	adds r4, r0, r1
	movs r5, #4
	movs r6, #9
	rsbs r6, r6, #0
_080ADEB0:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080ADEF6
	ldr r0, _080ADF0C @ =gUnk_02024490
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _080ADECA
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080ADEF6
_080ADECA:
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #9]
	lsls r2, r0, #5
	cmp r2, #0
	beq _080ADEF6
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #5
	ldr r3, _080ADF10 @ =0x06010000
	adds r1, r0, r3
	ldr r3, _080ADF14 @ =0x040000D4
	ldr r0, [r4, #0xc]
	str r0, [r3]
	str r1, [r3, #4]
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_080ADEF6:
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bgt _080ADEB0
	b _080ADF7C
	.align 2, 0
_080ADF00: .4byte gUnk_02024494
_080ADF04: .4byte 0x0000FFFF
_080ADF08: .4byte gUnk_020000C0
_080ADF0C: .4byte gUnk_02024490
_080ADF10: .4byte 0x06010000
_080ADF14: .4byte 0x040000D4
_080ADF18:
	lsls r0, r2, #9
	ldr r2, _080ADF4C @ =0x06012800
	adds r1, r0, r2
	ldrh r2, [r3, #6]
	cmp r2, #0
	beq _080ADF58
	ldr r0, _080ADF50 @ =0x0000FFFF
	cmp r2, r0
	beq _080ADF62
	ldr r2, _080ADF54 @ =0x040000D4
	ldr r0, [r3, #8]
	str r0, [r2]
	str r1, [r2, #4]
	ldrh r0, [r3, #6]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r3, #6]
	subs r2, #0x10
	cmp r2, #0
	ble _080ADF7C
	b _080ADF70
	.align 2, 0
_080ADF4C: .4byte 0x06012800
_080ADF50: .4byte 0x0000FFFF
_080ADF54: .4byte 0x040000D4
_080ADF58:
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r3]
	b _080ADF7C
_080ADF62:
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _080ADF7C
	ldr r0, [r3, #8]
	bl LZ77UnCompVram
	b _080ADF7C
_080ADF70:
	adds r3, #0xc
	movs r0, #0
	strh r0, [r3, #6]
	subs r2, #0x10
	cmp r2, #0
	bgt _080ADF70
_080ADF7C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start LoadFixedGFX
LoadFixedGFX: @ 0x080ADF80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	cmp r7, #0
	beq _080ADFFC
	movs r5, #4
	ldr r0, _080ADFD4 @ =gUnk_02024490
	adds r0, #0x30
_080ADF94:
	ldrh r1, [r0, #8]
	cmp r7, r1
	beq _080ADFF2
	adds r0, #0xc
	adds r5, #1
	cmp r5, #0x2b
	bls _080ADF94
	ldr r0, _080ADFD8 @ =gUnk_08132B30
	lsls r4, r7, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0xfe
	lsls r1, r1, #0x17
	ands r0, r1
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	bl sub_080AE174
	adds r5, r0, #0
	cmp r5, #0
	bne _080ADFDC
	bl sub_080AE1D8
	adds r0, r6, #0
	bl sub_080AE174
	adds r5, r0, #0
	cmp r5, #0
	bne _080ADFDC
	movs r0, #0
	b _080ADFFE
	.align 2, 0
_080ADFD4: .4byte gUnk_02024490
_080ADFD8: .4byte gUnk_08132B30
_080ADFDC:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_080AE104
	ldr r0, _080AE004 @ =gUnk_08132B30
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080ADDD8
_080ADFF2:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #4
	bl sub_080AE0C8
_080ADFFC:
	movs r0, #1
_080ADFFE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE004: .4byte gUnk_08132B30

	thumb_func_start sub_080AE008
sub_080AE008: @ 0x080AE008
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	bne _080AE030
	adds r0, r5, #0
	bl sub_080AE174
	adds r4, r0, #0
	cmp r4, #0
	bne _080AE030
	bl sub_080AE1D8
	adds r0, r5, #0
	bl sub_080AE174
	adds r4, r0, #0
	cmp r4, #0
	beq _080AE058
_080AE030:
	ldr r0, _080AE064 @ =gUnk_02024490
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	cmp r2, #6
	beq _080AE050
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_080AE104
	movs r2, #5
_080AE050:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080AE0C8
_080AE058:
	adds r0, r4, #0
	cmp r0, #0
	beq _080AE060
	movs r0, #1
_080AE060:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AE064: .4byte gUnk_02024490

	thumb_func_start sub_080AE068
sub_080AE068: @ 0x080AE068
	push {r4, r5, lr}
	adds r0, #0x26
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	cmp r2, #0
	beq _080AE0C2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080AE0C4 @ =gUnk_02024494
	adds r3, r0, r1
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _080AE0C2
	cmp r0, #4
	blt _080AE0C2
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _080AE0C2
	subs r0, #1
	strb r0, [r3, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE0C2
	ldrb r2, [r3, #1]
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	ble _080AE0C2
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #1
_080AE0AE:
	ldrb r0, [r3]
	adds r1, r5, #0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3]
	adds r3, #0xc
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt _080AE0AE
_080AE0C2:
	pop {r4, r5, pc}
	.align 2, 0
_080AE0C4: .4byte gUnk_02024494

	thumb_func_start sub_080AE0C8
sub_080AE0C8: @ 0x080AE0C8
	push {r4, lr}
	adds r4, r2, #0
	lsls r2, r0, #4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	adds r3, r1, #0
	adds r3, #0x60
	strh r2, [r3]
	adds r1, #0x26
	strb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080AE100 @ =gUnk_02024494
	adds r1, r1, r0
	ldrb r2, [r1, #2]
	movs r0, #2
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080AE0F6
	adds r0, r2, #1
	strb r0, [r1, #2]
_080AE0F6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080AE134
	pop {r4, pc}
	.align 2, 0
_080AE100: .4byte gUnk_02024494

	thumb_func_start sub_080AE104
sub_080AE104: @ 0x080AE104
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080AE130 @ =gUnk_02024494
	adds r4, r4, r0
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r4, #0
	bl _DmaZero
	strb r5, [r4, #1]
	strh r6, [r4, #4]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080AE134
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AE130: .4byte gUnk_02024494

	thumb_func_start sub_080AE134
sub_080AE134: @ 0x080AE134
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r6, #0xf
	adds r0, r4, #0
	ands r0, r6
	ldrb r2, [r3]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r2, [r3, #1]
	cmp r4, #6
	beq _080AE156
	movs r4, #3
_080AE156:
	subs r2, #1
	cmp r2, #0
	ble _080AE170
	ands r4, r6
_080AE15E:
	adds r3, #0xc
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	subs r2, #1
	cmp r2, #0
	bgt _080AE15E
_080AE170:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AE174
sub_080AE174: @ 0x080AE174
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #4
	ldr r0, _080AE194 @ =gUnk_02024490
	adds r3, r0, #0
	adds r3, #0x30
_080AE182:
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _080AE198
	adds r1, #1
	cmp r4, r1
	bhi _080AE19A
	b _080AE1BC
	.align 2, 0
_080AE194: .4byte gUnk_02024490
_080AE198:
	movs r1, #0
_080AE19A:
	adds r3, #0xc
	adds r2, #1
	cmp r2, #0x2b
	bls _080AE182
	movs r1, #0
	movs r2, #4
	ldr r0, _080AE1C4 @ =gUnk_02024490
	adds r3, r0, #0
	adds r3, #0x30
_080AE1AC:
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bhi _080AE1C8
	adds r1, #1
	cmp r4, r1
	bhi _080AE1CA
_080AE1BC:
	subs r0, r2, r1
	adds r0, #1
	b _080AE1D4
	.align 2, 0
_080AE1C4: .4byte gUnk_02024490
_080AE1C8:
	movs r1, #0
_080AE1CA:
	adds r3, #0xc
	adds r2, #1
	cmp r2, #0x2b
	bls _080AE1AC
	movs r0, #0
_080AE1D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AE1D8
sub_080AE1D8: @ 0x080AE1D8
	push {r4, r5, lr}
	ldr r0, _080AE1E8 @ =gUnk_02024490
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AE216
	movs r5, #4
	b _080AE20A
	.align 2, 0
_080AE1E8: .4byte gUnk_02024490
_080AE1EC:
	bl sub_080AE3B8
	adds r4, r0, #0
	cmp r4, r5
	bhi _080AE208
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080AE218
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080AE324
	adds r5, r4, #0
_080AE208:
	adds r5, #1
_080AE20A:
	adds r0, r5, #0
	bl sub_080AE384
	adds r5, r0, #0
	cmp r5, #0
	bne _080AE1EC
_080AE216:
	pop {r4, r5, pc}

	thumb_func_start sub_080AE218
sub_080AE218: @ 0x080AE218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	lsls r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov ip, r0
	mov r2, sl
	lsls r0, r2, #4
	adds r3, r0, r1
	ldr r1, _080AE30C @ =gUnk_02024490
	lsls r0, r2, #1
	add r0, sl
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	lsls r0, r0, #4
	adds r7, r3, r0
	movs r4, #0
	ldr r6, _080AE310 @ =gUnk_020000C0
	mov sb, r6
	ldr r0, _080AE314 @ =gPlayerEntity
	adds r2, r0, #0
	adds r2, #0x26
	adds r5, r0, #0
_080AE254:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AE276
	ldrb r0, [r2]
	cmp sl, r0
	bne _080AE264
	mov r1, r8
	strb r1, [r2]
_080AE264:
	ldrh r0, [r2, #0x3a]
	cmp r3, r0
	bhi _080AE276
	cmp r7, r0
	bls _080AE276
	subs r0, r0, r3
	mov r6, ip
	adds r1, r0, r6
	strh r1, [r2, #0x3a]
_080AE276:
	adds r2, #0x88
	adds r5, #0x88
	adds r4, #1
	cmp r4, #0x4f
	bls _080AE254
	movs r0, #0
_080AE282:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	lsls r5, r0, #6
_080AE28A:
	lsls r0, r4, #4
	add r0, sb
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE2B4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080AE2B4
	ldrh r1, [r2, #0xa]
	cmp r3, r1
	bhi _080AE2B4
	cmp r7, r1
	bls _080AE2B4
	subs r0, r1, r3
	mov r6, ip
	adds r1, r0, r6
	strh r1, [r2, #0xa]
_080AE2B4:
	adds r4, #1
	cmp r4, #3
	bls _080AE28A
	mov r0, r8
	cmp r0, #0x2f
	bls _080AE282
	movs r4, #0
	ldr r0, _080AE318 @ =0xFFFFFC00
	mov sl, r0
	ldr r5, _080AE31C @ =gUnk_03000000
	adds r5, #0x24
	ldr r1, _080AE320 @ =0x000003FF
	mov sb, r1
	movs r2, #1
	mov r8, r2
_080AE2D2:
	ldrh r2, [r5]
	lsls r0, r2, #0x16
	lsrs r1, r0, #0x16
	cmp r3, r1
	bhi _080AE2F8
	cmp r7, r1
	bls _080AE2F8
	subs r0, r1, r3
	mov r6, ip
	adds r1, r0, r6
	mov r0, sb
	ands r1, r0
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r5]
	mov r2, r8
	ldr r1, _080AE31C @ =gUnk_03000000
	strb r2, [r1]
_080AE2F8:
	adds r5, #8
	adds r4, #1
	cmp r4, #0x7f
	bls _080AE2D2
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE30C: .4byte gUnk_02024490
_080AE310: .4byte gUnk_020000C0
_080AE314: .4byte gPlayerEntity
_080AE318: .4byte 0xFFFFFC00
_080AE31C: .4byte gUnk_03000000
_080AE320: .4byte 0x000003FF

	thumb_func_start sub_080AE324
sub_080AE324: @ 0x080AE324
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r1, #0
	ldr r2, _080AE380 @ =gUnk_02024490
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r5, r1, r2
	ldrb r4, [r5, #5]
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _080AE372
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r8, r0
	adds r0, r1, #4
	adds r6, r0, r2
_080AE350:
	mov r0, r8
	adds r0, #4
	adds r1, r5, #4
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	adds r0, r6, #0
	movs r1, #0xc
	bl _DmaZero
	adds r6, #0xc
	adds r5, #0xc
	movs r0, #0xc
	add r8, r0
	subs r4, #1
	subs r0, #0xd
	cmp r4, r0
	bne _080AE350
_080AE372:
	ldr r1, _080AE380 @ =gUnk_02024490
	movs r0, #1
	strb r0, [r1, #3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE380: .4byte gUnk_02024490

	thumb_func_start sub_080AE384
sub_080AE384: @ 0x080AE384
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x2a
	bhi _080AE3B4
	ldr r1, _080AE3A8 @ =gUnk_02024490
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r1
_080AE396:
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _080AE3AC
	cmp r0, #4
	blt _080AE3AC
	adds r0, r2, #0
	b _080AE3B6
	.align 2, 0
_080AE3A8: .4byte gUnk_02024490
_080AE3AC:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #0x2a
	bls _080AE396
_080AE3B4:
	movs r0, #0
_080AE3B6:
	pop {pc}

	thumb_func_start sub_080AE3B8
sub_080AE3B8: @ 0x080AE3B8
	push {lr}
	movs r1, #4
	ldr r0, _080AE3D4 @ =gUnk_02024490
	adds r2, r0, #0
	adds r2, #0x30
_080AE3C2:
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _080AE3D8
	cmp r0, #0
	blt _080AE3D8
	adds r0, r1, #0
	b _080AE3E2
	.align 2, 0
_080AE3D4: .4byte gUnk_02024490
_080AE3D8:
	adds r2, #0xc
	adds r1, #1
	cmp r1, #0x2b
	bls _080AE3C2
	movs r0, #0
_080AE3E2:
	pop {pc}

	thumb_func_start sub_080AE3E4
sub_080AE3E4: @ 0x080AE3E4
	movs r0, #0
	bx lr

	thumb_func_start sub_080AE3E8
sub_080AE3E8: @ 0x080AE3E8
	movs r0, #1
	bx lr

	thumb_func_start sub_080AE3EC
sub_080AE3EC: @ 0x080AE3EC
	adds r2, r0, #0
	ldr r0, _080AE404 @ =gUnk_08133918
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE404: .4byte gUnk_08133918

	thumb_func_start sub_080AE408
sub_080AE408: @ 0x080AE408
	adds r2, r0, #0
	ldr r0, _080AE420 @ =gUnk_08133938
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE420: .4byte gUnk_08133938

	thumb_func_start sub_080AE424
sub_080AE424: @ 0x080AE424
	adds r2, r0, #0
	ldr r0, _080AE43C @ =gUnk_08133958
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE43C: .4byte gUnk_08133958

	thumb_func_start sub_080AE440
sub_080AE440: @ 0x080AE440
	adds r2, r0, #0
	ldr r0, _080AE458 @ =gUnk_08133978
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE458: .4byte gUnk_08133978

	thumb_func_start sub_080AE45C
sub_080AE45C: @ 0x080AE45C
	adds r2, r0, #0
	ldr r0, _080AE474 @ =gUnk_08133998
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE474: .4byte gUnk_08133998

	thumb_func_start sub_080AE478
sub_080AE478: @ 0x080AE478
	adds r2, r0, #0
	ldr r0, _080AE490 @ =gUnk_081339B8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE490: .4byte gUnk_081339B8

	thumb_func_start sub_080AE494
sub_080AE494: @ 0x080AE494
	adds r2, r0, #0
	ldr r0, _080AE4AC @ =gUnk_081339D8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE4AC: .4byte gUnk_081339D8

	thumb_func_start sub_080AE4B0
sub_080AE4B0: @ 0x080AE4B0
	adds r2, r0, #0
	ldr r0, _080AE4C8 @ =gUnk_081339F8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE4C8: .4byte gUnk_081339F8

	thumb_func_start sub_080AE4CC
sub_080AE4CC: @ 0x080AE4CC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r1, _080AE4FC @ =gRoomControls
	ldrh r2, [r1, #6]
	subs r2, r6, r2
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	ldrh r1, [r1, #8]
	subs r1, r5, r1
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	adds r0, r0, r2
	ldrb r3, [r0]
	cmp r3, #0
	bne _080AE500
	cmp r4, #4
	beq _080AE588
	b _080AE516
	.align 2, 0
_080AE4FC: .4byte gRoomControls
_080AE500:
	cmp r3, #0xf
	bhi _080AE53E
	ldr r2, _080AE51C @ =gUnk_08133A40
	lsls r1, r4, #1
	adds r0, r3, #1
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _080AE520
_080AE516:
	movs r0, #0
	b _080AE58A
	.align 2, 0
_080AE51C: .4byte gUnk_08133A40
_080AE520:
	cmp r0, #1
	beq _080AE588
	movs r0, #8
	ands r5, r0
	cmp r5, #0
	bne _080AE52E
	lsrs r3, r3, #2
_080AE52E:
	ands r6, r0
	cmp r6, #0
	bne _080AE536
	lsrs r3, r3, #1
_080AE536:
	movs r0, #1
	ands r3, r0
	adds r0, r3, #0
	b _080AE58A
_080AE53E:
	cmp r3, #0xff
	bne _080AE558
	ldr r1, _080AE550 @ =gUnk_08133A18
	ldr r0, _080AE554 @ =gUnk_08133A5A
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080AE572
	.align 2, 0
_080AE550: .4byte gUnk_08133A18
_080AE554: .4byte gUnk_08133A5A
_080AE558:
	cmp r3, #0x6f
	bhi _080AE588
	ldr r2, _080AE580 @ =gUnk_08133A18
	ldr r1, _080AE584 @ =gUnk_08133A67
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r3
	subs r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
_080AE572:
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r2
	b _080AE58A
	.align 2, 0
_080AE580: .4byte gUnk_08133A18
_080AE584: .4byte gUnk_08133A67
_080AE588:
	movs r0, #1
_080AE58A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080AE58C
sub_080AE58C: @ 0x080AE58C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	ldr r1, _080AE624 @ =0x00002004
	adds r5, r0, r1
	ldr r2, [sp]
	ldr r2, [r2, #0x48]
	str r2, [sp, #8]
	ldr r0, [sp]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [sp]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r2, #2]
	mov sb, r0
	ldrb r1, [r2, #3]
	mov r8, r1
	movs r0, #0xf
	ldr r2, [sp, #4]
	ands r0, r2
	cmp r0, #0
	beq _080AE65C
	cmp r2, #0xf
	bhi _080AE628
	ldr r7, [sp, #0xc]
	add r7, sb
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r2, sl
	add r2, r8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	mov r0, sl
	mov r1, r8
	subs r2, r0, r1
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #6
	b _080AE6D2
	.align 2, 0
_080AE624: .4byte 0x00002004
_080AE628:
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r7, r2, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r2, sl
	add r2, r8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	mov r1, sl
	mov r0, r8
	subs r2, r1, r0
	adds r0, r5, #0
	adds r1, r7, #0
	b _080AE6C8
_080AE65C:
	ldr r7, [sp, #0xc]
	add r7, sb
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r1, sl
	add r1, r8
	str r1, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x10]
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	mov r2, sl
	mov r0, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #2
	ldr r1, [sp, #0xc]
	mov r2, sb
	subs r7, r1, r2
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x10]
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
_080AE6C8:
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #2
_080AE6D2:
	ldr r0, [sp, #8]
	ldrb r0, [r0, #4]
	mov sb, r0
	ldr r1, [sp, #8]
	ldrb r1, [r1, #5]
	mov r8, r1
	ldr r2, [sp, #4]
	subs r2, #8
	str r2, [sp, #4]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080AE760
	cmp r2, #0xf
	bhi _080AE72C
	mov r7, sl
	add r7, r8
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r0, [sp, #0xc]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #5
	b _080AE7D6
_080AE72C:
	mov r0, sl
	mov r1, r8
	subs r7, r0, r1
	lsls r6, r6, #4
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r1, r2, r0
	adds r0, r5, #0
	b _080AE7CA
_080AE760:
	mov r7, sl
	add r7, r8
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	str r1, [sp, #0x14]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r2, r2, r0
	mov sb, r2
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #2
	mov r1, sl
	mov r2, r8
	subs r7, r1, r2
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	mov r1, sb
_080AE7CA:
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
_080AE7D6:
	ldr r0, [sp]
	strh r6, [r0, #0x2a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AE7E8
sub_080AE7E8: @ 0x080AE7E8
	push {r4, r5, lr}
	ldr r5, _080AE7FC @ =gUnk_08133F48
	lsls r4, r2, #2
	adds r4, r4, r5
	lsls r2, r2, #3
	ldr r4, [r4]
	bl _call_via_r4
	pop {r4, r5, pc}
	.align 2, 0
_080AE7FC: .4byte gUnk_08133F48

	thumb_func_start sub_080AE800
sub_080AE800: @ 0x080AE800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r2, r3, #0
	movs r6, #0
	mov r8, r6
	ldrh r1, [r4, #0x2a]
	movs r7, #0xe
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE89C
	cmp r0, #2
	bne _080AE85C
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	ldr r0, _080AE858 @ =gSineTable
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov r8, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AE8AC
	.align 2, 0
_080AE858: .4byte gSineTable
_080AE85C:
	cmp r0, #4
	bne _080AE8AE
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	ldr r0, _080AE898 @ =gSineTable
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov r8, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AE8AC
	.align 2, 0
_080AE898: .4byte gSineTable
_080AE89C:
	ldr r0, _080AE8C4 @ =gSineTable
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
_080AE8AC:
	str r0, [r4, #0x30]
_080AE8AE:
	ldr r1, _080AE8C8 @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AE8CC @ =0x00006665
	cmp r0, r1
	bhi _080AE8D0
	ldr r0, _080AE8C8 @ =0x00003333
	add r0, r8
	cmp r0, r1
	bhi _080AE8D0
	movs r0, #0
	b _080AE8D2
	.align 2, 0
_080AE8C4: .4byte gSineTable
_080AE8C8: .4byte 0x00003333
_080AE8CC: .4byte 0x00006665
_080AE8D0:
	movs r0, #1
_080AE8D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AE8D8
sub_080AE8D8: @ 0x080AE8D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #8
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AE904
	cmp r2, #0
	bne _080AE99E
_080AE904:
	orrs r1, r2
	cmp r1, #0
	bne _080AE928
	ldr r1, _080AE924 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AE98A
	.align 2, 0
_080AE924: .4byte gSineTable
_080AE928:
	mov r2, ip
	cmp r2, #2
	bne _080AE942
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #4
	mov r2, sb
	bl sub_080AE58C
	b _080AE95C
_080AE942:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	bne _080AE95C
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #4
	mov r2, sb
	bl sub_080AE58C
_080AE95C:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AE97E
	ldr r1, _080AE9B4 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AE97E:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080AE99E
	ldr r1, _080AE9B4 @ =gSineTable
_080AE98A:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AE99E:
	ldr r2, _080AE9B8 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AE9BC @ =0x00006665
	cmp r0, r1
	bhi _080AE9C0
	ldr r2, _080AE9B8 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AE9C0
	movs r0, #0
	b _080AE9C2
	.align 2, 0
_080AE9B4: .4byte gSineTable
_080AE9B8: .4byte 0x00003333
_080AE9BC: .4byte 0x00006665
_080AE9C0:
	movs r0, #1
_080AE9C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AE9CC
sub_080AE9CC: @ 0x080AE9CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r6, #0
	mov sb, r6
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	lsls r0, r0, #8
	mov r8, r0
	mov r1, r8
	ands r1, r2
	cmp r1, #0
	beq _080AEA7C
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080AEA34
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AEA90
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEA90
	ldr r1, _080AEA30 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEA8E
	.align 2, 0
_080AEA30: .4byte gSineTable
_080AEA34:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bne _080AEA90
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEA90
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #4
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEA90
	ldr r1, _080AEA78 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEA8E
	.align 2, 0
_080AEA78: .4byte gSineTable
_080AEA7C:
	ldr r1, _080AEAA8 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
_080AEA8E:
	str r0, [r4, #0x2c]
_080AEA90:
	ldr r1, _080AEAAC @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AEAB0 @ =0x00006665
	cmp r0, r1
	bhi _080AEAB4
	ldr r0, _080AEAAC @ =0x00003333
	add r0, sb
	cmp r0, r1
	bhi _080AEAB4
	movs r0, #0
	b _080AEAB6
	.align 2, 0
_080AEAA8: .4byte gSineTable
_080AEAAC: .4byte 0x00003333
_080AEAB0: .4byte 0x00006665
_080AEAB4:
	movs r0, #1
_080AEAB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEAC0
sub_080AEAC0: @ 0x080AEAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe0
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #8
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AEAEC
	cmp r2, #0
	bne _080AEB86
_080AEAEC:
	orrs r1, r2
	cmp r1, #0
	bne _080AEB10
	ldr r1, _080AEB0C @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AEB72
	.align 2, 0
_080AEB0C: .4byte gSineTable
_080AEB10:
	mov r2, ip
	cmp r2, #0x20
	bne _080AEB2A
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sb
	bl sub_080AE58C
	b _080AEB44
_080AEB2A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r3, r0
	bne _080AEB44
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sb
	bl sub_080AE58C
_080AEB44:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AEB66
	ldr r1, _080AEB9C @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AEB66:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080AEB86
	ldr r1, _080AEB9C @ =gSineTable
_080AEB72:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AEB86:
	ldr r2, _080AEBA0 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AEBA4 @ =0x00006665
	cmp r0, r1
	bhi _080AEBA8
	ldr r2, _080AEBA0 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AEBA8
	movs r0, #0
	b _080AEBAA
	.align 2, 0
_080AEB9C: .4byte gSineTable
_080AEBA0: .4byte 0x00003333
_080AEBA4: .4byte 0x00006665
_080AEBA8:
	movs r0, #1
_080AEBAA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEBB4
sub_080AEBB4: @ 0x080AEBB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r2, r3, #0
	movs r6, #0
	mov sb, r6
	ldrh r1, [r4, #0x2a]
	movs r0, #0xe0
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _080AEC64
	cmp r0, #0x20
	bne _080AEC1C
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	ldr r1, _080AEC18 @ =gSineTable
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AEC7A
	.align 2, 0
_080AEC18: .4byte gSineTable
_080AEC1C:
	cmp r0, #0x40
	bne _080AEC7C
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	ldr r1, _080AEC60 @ =gSineTable
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AEC7A
	.align 2, 0
_080AEC60: .4byte gSineTable
_080AEC64:
	ldr r1, _080AEC94 @ =gSineTable
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
_080AEC7A:
	str r0, [r4, #0x30]
_080AEC7C:
	ldr r1, _080AEC98 @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AEC9C @ =0x00006665
	cmp r0, r1
	bhi _080AECA0
	ldr r0, _080AEC98 @ =0x00003333
	add r0, sb
	cmp r0, r1
	bhi _080AECA0
	movs r0, #0
	b _080AECA2
	.align 2, 0
_080AEC94: .4byte gSineTable
_080AEC98: .4byte 0x00003333
_080AEC9C: .4byte 0x00006665
_080AECA0:
	movs r0, #1
_080AECA2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AECAC
sub_080AECAC: @ 0x080AECAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe0
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #4
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AECD8
	cmp r2, #0
	bne _080AED72
_080AECD8:
	orrs r1, r2
	cmp r1, #0
	bne _080AECFC
	ldr r1, _080AECF8 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AED5E
	.align 2, 0
_080AECF8: .4byte gSineTable
_080AECFC:
	mov r2, ip
	cmp r2, #0x40
	bne _080AED16
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x14
	mov r2, sb
	bl sub_080AE58C
	b _080AED30
_080AED16:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	bne _080AED30
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x14
	mov r2, sb
	bl sub_080AE58C
_080AED30:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AED52
	ldr r1, _080AED88 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AED52:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080AED72
	ldr r1, _080AED88 @ =gSineTable
_080AED5E:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AED72:
	ldr r2, _080AED8C @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AED90 @ =0x00006665
	cmp r0, r1
	bhi _080AED94
	ldr r2, _080AED8C @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AED94
	movs r0, #0
	b _080AED96
	.align 2, 0
_080AED88: .4byte gSineTable
_080AED8C: .4byte 0x00003333
_080AED90: .4byte 0x00006665
_080AED94:
	movs r0, #1
_080AED96:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEDA0
sub_080AEDA0: @ 0x080AEDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r6, #0
	mov sb, r6
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	lsls r0, r0, #4
	mov r8, r0
	mov r1, r8
	ands r1, r2
	cmp r1, #0
	beq _080AEE50
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080AEE08
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AEE64
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEE64
	ldr r1, _080AEE04 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEE62
	.align 2, 0
_080AEE04: .4byte gSineTable
_080AEE08:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _080AEE64
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEE64
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEE64
	ldr r1, _080AEE4C @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEE62
	.align 2, 0
_080AEE4C: .4byte gSineTable
_080AEE50:
	ldr r1, _080AEE7C @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
_080AEE62:
	str r0, [r4, #0x2c]
_080AEE64:
	ldr r1, _080AEE80 @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AEE84 @ =0x00006665
	cmp r0, r1
	bhi _080AEE88
	ldr r0, _080AEE80 @ =0x00003333
	add r0, sb
	cmp r0, r1
	bhi _080AEE88
	movs r0, #0
	b _080AEE8A
	.align 2, 0
_080AEE7C: .4byte gSineTable
_080AEE80: .4byte 0x00003333
_080AEE84: .4byte 0x00006665
_080AEE88:
	movs r0, #1
_080AEE8A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEE94
sub_080AEE94: @ 0x080AEE94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #4
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AEEC0
	cmp r2, #0
	bne _080AEF5A
_080AEEC0:
	orrs r1, r2
	cmp r1, #0
	bne _080AEEE4
	ldr r1, _080AEEE0 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AEF46
	.align 2, 0
_080AEEE0: .4byte gSineTable
_080AEEE4:
	mov r2, ip
	cmp r2, #4
	bne _080AEEFE
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x1c
	mov r2, sb
	bl sub_080AE58C
	b _080AEF18
_080AEEFE:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bne _080AEF18
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	mov r2, sb
	bl sub_080AE58C
_080AEF18:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEF3A
	ldr r1, _080AEF70 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AEF3A:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080AEF5A
	ldr r1, _080AEF70 @ =gSineTable
_080AEF46:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AEF5A:
	ldr r2, _080AEF74 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AEF78 @ =0x00006665
	cmp r0, r1
	bhi _080AEF7C
	ldr r2, _080AEF74 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AEF7C
	movs r0, #0
	b _080AEF7E
	.align 2, 0
_080AEF70: .4byte gSineTable
_080AEF74: .4byte 0x00003333
_080AEF78: .4byte 0x00006665
_080AEF7C:
	movs r0, #1
_080AEF7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start ProcessMovement
ProcessMovement: @ 0x080AEF88
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AEFB0
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #0
	bl sub_080AE7E8
	b _080AEFB2
_080AEFB0:
	movs r0, #0
_080AEFB2:
	pop {r4, pc}

	thumb_func_start sub_080AEFB4
sub_080AEFB4: @ 0x080AEFB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AEFDC
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #1
	bl sub_080AE7E8
	b _080AEFDE
_080AEFDC:
	movs r0, #0
_080AEFDE:
	pop {r4, pc}

	thumb_func_start sub_080AEFE0
sub_080AEFE0: @ 0x080AEFE0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF008
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #2
	bl sub_080AE7E8
	b _080AF00A
_080AF008:
	movs r0, #0
_080AF00A:
	pop {r4, pc}

	thumb_func_start sub_080AF00C
sub_080AF00C: @ 0x080AF00C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF034
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_080AE7E8
	b _080AF036
_080AF034:
	movs r0, #0
_080AF036:
	pop {r4, pc}

	thumb_func_start sub_080AF038
sub_080AF038: @ 0x080AF038
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF060
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_080AE7E8
	b _080AF062
_080AF060:
	movs r0, #0
_080AF062:
	pop {r4, pc}

	thumb_func_start sub_080AF064
sub_080AF064: @ 0x080AF064
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _080AF08A
	adds r0, r5, #0
	movs r2, #0
	bl sub_080AE58C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080AE7E8
	b _080AF08C
_080AF08A:
	movs r0, #0
_080AF08C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AF090
sub_080AF090: @ 0x080AF090
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF0C2
	adds r0, r4, #0
	bl sub_080AF0C8
	cmp r0, #0
	bne _080AF0C2
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #3
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #3
	bl sub_080AE7E8
	b _080AF0C4
_080AF0C2:
	movs r0, #0
_080AF0C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AF0C8
sub_080AF0C8: @ 0x080AF0C8
	push {r4, lr}
	adds r4, r0, #0
	bl GetTileTypeByEntity
	cmp r0, #0x88
	beq _080AF10A
	cmp r0, #0x88
	bhi _080AF0DE
	cmp r0, #0x87
	beq _080AF0E8
	b _080AF130
_080AF0DE:
	cmp r0, #0x89
	beq _080AF11A
	cmp r0, #0x8a
	beq _080AF0F8
	b _080AF130
_080AF0E8:
	ldrb r0, [r4, #0x15]
	adds r0, #7
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe
	b _080AF12A
_080AF0F8:
	ldrb r0, [r4, #0x15]
	subs r0, #1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe0
	lsls r0, r0, #8
	b _080AF12A
_080AF10A:
	ldrb r0, [r4, #0x15]
	subs r0, #9
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe0
	b _080AF12A
_080AF11A:
	ldrb r0, [r4, #0x15]
	subs r0, #0x11
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe0
	lsls r0, r0, #4
_080AF12A:
	strh r0, [r4, #0x2a]
	movs r0, #1
	b _080AF132
_080AF130:
	movs r0, #0
_080AF132:
	pop {r4, pc}

	thumb_func_start sub_080AF134
sub_080AF134: @ 0x080AF134
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF15C
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #4
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #4
	bl sub_080AE7E8
	b _080AF15E
_080AF15C:
	movs r0, #0
_080AF15E:
	pop {r4, pc}

	thumb_func_start sub_080AF160
sub_080AF160: @ 0x080AF160
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF188
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #5
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #5
	bl sub_080AE7E8
	b _080AF18A
_080AF188:
	movs r0, #0
_080AF18A:
	pop {r4, pc}

	thumb_func_start sub_080AF18C
sub_080AF18C: @ 0x080AF18C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #2
	bl sub_080AE7E8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AF1BC
sub_080AF1BC: @ 0x080AF1BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #1
	bl sub_080AE7E8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AF1EC
sub_080AF1EC: @ 0x080AF1EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF214
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #6
	bl sub_080AE7E8
	b _080AF216
_080AF214:
	movs r0, #0
_080AF216:
	pop {r4, pc}

	thumb_func_start sub_080AF218
sub_080AF218: @ 0x080AF218
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _080AF23E
	adds r0, r5, #0
	movs r2, #6
	bl sub_080AE58C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE7E8
	b _080AF240
_080AF23E:
	movs r0, #0
_080AF240:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AF244
sub_080AF244: @ 0x080AF244
	push {lr}
	movs r3, #2
	bl sub_080AE7E8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AF250
sub_080AF250: @ 0x080AF250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08052E8C
	adds r1, r0, #0
	ldr r0, _080AF26C @ =gArea
	ldr r2, _080AF270 @ =0x0000085C
	adds r0, r0, r2
	str r1, [r0]
	cmp r4, #0
	beq _080AF278
	ldr r0, _080AF274 @ =gUnk_08135190
	b _080AF27A
	.align 2, 0
_080AF26C: .4byte gArea
_080AF270: .4byte 0x0000085C
_080AF274: .4byte gUnk_08135190
_080AF278:
	ldr r0, _080AF280 @ =gUnk_08135168
_080AF27A:
	str r0, [r1, #0x18]
	pop {r4, pc}
	.align 2, 0
_080AF280: .4byte gUnk_08135168

	thumb_func_start sub_080AF284
sub_080AF284: @ 0x080AF284
	push {lr}
	ldr r0, _080AF2AC @ =gRoomControls
	ldrh r1, [r0, #0x20]
	subs r1, #0x50
	movs r0, #0x78
	movs r2, #0x78
	movs r3, #0x50
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _080AF2BC
	bl sub_08052E8C
	ldr r1, _080AF2B0 @ =gArea
	ldr r2, _080AF2B4 @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080AF2B8 @ =gUnk_08135048
	b _080AF2D4
	.align 2, 0
_080AF2AC: .4byte gRoomControls
_080AF2B0: .4byte gArea
_080AF2B4: .4byte 0x0000085C
_080AF2B8: .4byte gUnk_08135048
_080AF2BC:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _080AF2D6
	bl sub_08052E8C
	ldr r1, _080AF2D8 @ =gArea
	ldr r2, _080AF2DC @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080AF2E0 @ =gUnk_08134FBC
_080AF2D4:
	str r1, [r0, #0x18]
_080AF2D6:
	pop {pc}
	.align 2, 0
_080AF2D8: .4byte gArea
_080AF2DC: .4byte 0x0000085C
_080AF2E0: .4byte gUnk_08134FBC

	thumb_func_start sub_080AF2E4
sub_080AF2E4: @ 0x080AF2E4
	push {lr}
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _080AF300
	bl sub_08052E8C
	ldr r1, _080AF304 @ =gArea
	ldr r2, _080AF308 @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080AF30C @ =gUnk_0813A76C
	str r1, [r0, #0x18]
_080AF300:
	pop {pc}
	.align 2, 0
_080AF304: .4byte gArea
_080AF308: .4byte 0x0000085C
_080AF30C: .4byte gUnk_0813A76C
