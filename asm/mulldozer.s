	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08032C74
sub_08032C74: @ 0x08032C74
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08032C90 @ =gUnk_080CEA1C
	bl sub_0800129E
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08032C90: .4byte gUnk_080CEA1C

	thumb_func_start sub_08032C94
sub_08032C94: @ 0x08032C94
	push {lr}
	ldr r2, _08032CA8 @ =gUnk_080CEA34
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08032CA8: .4byte gUnk_080CEA34

	thumb_func_start sub_08032CAC
sub_08032CAC: @ 0x08032CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032CC0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08032CC0:
	ldr r1, _08032D18 @ =gUnk_080CEA1C
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032D3A
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	bgt _08032D2C
	cmp r0, #2
	blt _08032D2C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	movs r1, #0xc8
	cmp r0, #0
	beq _08032CF0
	movs r1, #0x5a
_08032CF0:
	strb r1, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	ldrb r5, [r4, #0x15]
	bl Random
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08032D1C
	adds r2, r5, #4
	b _08032D20
	.align 2, 0
_08032D18: .4byte gUnk_080CEA1C
_08032D1C:
	adds r2, r5, #0
	adds r2, #0x1c
_08032D20:
	movs r1, #0
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r4, #0x15]
	strh r1, [r4, #0x24]
	b _08032D3A
_08032D2C:
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
_08032D3A:
	pop {r4, r5, pc}

	thumb_func_start sub_08032D3C
sub_08032D3C: @ 0x08032D3C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032D66
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	adds r0, r4, #0
	bl sub_080331E8
_08032D66:
	adds r0, r4, #0
	bl sub_08001324

	thumb_func_start nullsub_156
nullsub_156: @ 0x08032D6C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_157
nullsub_157: @ 0x08032D70
	bx lr
	.align 2, 0

	thumb_func_start sub_08032D74
sub_08032D74: @ 0x08032D74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_08033058
	pop {r4, pc}

	thumb_func_start sub_08032D84
sub_08032D84: @ 0x08032D84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032D9C
	adds r0, r4, #0
	bl sub_080330C0
	b _08032DAC
_08032D9C:
	adds r0, r4, #0
	bl sub_08033364
	cmp r0, #0
	beq _08032DAC
	adds r0, r4, #0
	bl sub_08033100
_08032DAC:
	adds r0, r4, #0
	bl sub_08032F64
	pop {r4, pc}

	thumb_func_start sub_08032DB4
sub_08032DB4: @ 0x08032DB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032DCA
	adds r0, r4, #0
	bl sub_08033058
_08032DCA:
	adds r0, r4, #0
	bl sub_08032F48
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032DD4
sub_08032DD4: @ 0x08032DD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032E3C
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080331B4
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032E18
	ldrb r0, [r4, #0x15]
	adds r0, #0x1c
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	b _08032E28
_08032E18:
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
_08032E28:
	strb r0, [r2]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	b _08032E4E
_08032E3C:
	adds r0, r4, #0
	bl sub_08032F90
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_08032F64
_08032E4E:
	pop {r4, pc}

	thumb_func_start sub_08032E50
sub_08032E50: @ 0x08032E50
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032E70
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
	b _08032E82
_08032E70:
	adds r0, r4, #0
	bl sub_08033000
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_08032F64
_08032E82:
	pop {r4, pc}

	thumb_func_start sub_08032E84
sub_08032E84: @ 0x08032E84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032EA4
	adds r0, r4, #0
	bl sub_08033320
	adds r0, r4, #0
	bl sub_080330C0
	b _08032EC0
_08032EA4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08032EC0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08032EC0
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080332A8
_08032EC0:
	adds r0, r4, #0
	bl sub_080331E8
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032ED0
sub_08032ED0: @ 0x08032ED0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08032F48
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032F06
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	adds r0, r4, #0
	bl sub_080331E8
_08032F06:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	ands r0, r5
	cmp r0, #0
	bne _08032F20
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08033174
_08032F20:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08032F24
sub_08032F24: @ 0x08032F24
	push {lr}
	adds r2, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032F38
	movs r1, #0
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	b _08032F3C
_08032F38:
	movs r1, #4
	ldrb r0, [r2, #0x14]
_08032F3C:
	adds r1, r1, r0
	adds r0, r2, #0
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08032F48
sub_08032F48: @ 0x08032F48
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bne _08032F5A
	adds r0, r4, #0
	bl sub_08004274
_08032F5A:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08032F64
sub_08032F64: @ 0x08032F64
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08032F82
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
_08032F82:
	adds r0, r4, #0
	bl sub_08032F48
	adds r0, r4, #0
	bl sub_080AEF88
	pop {r4, pc}

	thumb_func_start sub_08032F90
sub_08032F90: @ 0x08032F90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08032FC0
	ldrb r0, [r2, #0xe]
	cmp r0, #0x10
	bne _08032FA8
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
_08032FA8:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032FFE
	movs r0, #8
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	bl sub_08033280
	b _08032FFE
_08032FC0:
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032FFE
	movs r0, #4
	strb r0, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032FE4
	ldrb r0, [r2, #0x15]
	adds r0, #0x1c
	b _08032FE8
_08032FE4:
	ldrb r0, [r2, #0x15]
	adds r0, #4
_08032FE8:
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl UpdateSprite
_08032FFE:
	pop {pc}

	thumb_func_start sub_08033000
sub_08033000: @ 0x08033000
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033056
	movs r0, #0x10
	strb r0, [r2, #0xf]
	adds r3, r2, #0
	adds r3, #0x82
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033034
	ldrb r0, [r2, #0x15]
	adds r0, #0x18
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	b _08033044
_08033034:
	ldrb r0, [r2, #0x15]
	adds r0, #8
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r2, #0x15]
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
_08033044:
	strb r0, [r3]
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	strb r0, [r2, #0x14]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl UpdateSprite
_08033056:
	pop {pc}

	thumb_func_start sub_08033058
sub_08033058: @ 0x08033058
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	adds r0, #0x80
	strb r6, [r0]
	bl Random
	ldr r1, _080330A0 @ =gUnk_080CEA50
	movs r4, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080330A8
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _080330A8
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	ldr r1, _080330A4 @ =gUnk_080CEA54
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r4
	b _080330AC
	.align 2, 0
_080330A0: .4byte gUnk_080CEA50
_080330A4: .4byte gUnk_080CEA54
_080330A8:
	bl Random
_080330AC:
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_08032F24
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080330C0
sub_080330C0: @ 0x080330C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080330E2
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x18
	b _080330E4
_080330E2:
	movs r0, #6
_080330E4:
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_08033100
sub_08033100: @ 0x08033100
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08033132
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	b _08033150
_08033132:
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080331B4
	ldrb r0, [r4, #0xe]
	adds r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_08033150:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_08033174
sub_08033174: @ 0x08033174
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080331A4
	bl Random
	movs r1, #0x18
	ands r0, r1
	adds r0, #0x18
	b _080331A6
_080331A4:
	movs r0, #0xc
_080331A6:
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08032F24
	pop {r4, pc}

	thumb_func_start sub_080331B4
sub_080331B4: @ 0x080331B4
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	adds r1, r0, #0
	movs r0, #0xf0
	ands r1, r0
	movs r2, #0x1e
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080331D0
	movs r2, #0x3c
	b _080331E4
_080331D0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080331DA
	movs r2, #0x2d
_080331DA:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _080331E4
	movs r2, #0x4b
_080331E4:
	strb r2, [r4, #0xe]
	pop {r4, pc}

	thumb_func_start sub_080331E8
sub_080331E8: @ 0x080331E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r3, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #5
	beq _08033220
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803320C
	movs r0, #0xf
	b _0803320E
_0803320C:
	movs r0, #7
_0803320E:
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033238
	movs r3, #1
	ldrb r0, [r5, #0x14]
	lsls r6, r0, #1
	b _08033238
_08033220:
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	cmp r0, #0
	bne _08033238
	movs r3, #1
	ldrb r0, [r5, #0x15]
	lsrs r6, r0, #1
_08033238:
	cmp r3, #0
	beq _08033278
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0x40
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08033278
	ldr r2, _0803327C @ =gUnk_080CEA56
	adds r2, r6, r2
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r0, [r3]
	movs r1, #0x20
	eors r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
_08033278:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803327C: .4byte gUnk_080CEA56

	thumb_func_start sub_08033280
sub_08033280: @ 0x08033280
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #2
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080332A4
	strb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	bl UpdateSprite
_080332A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080332A8
sub_080332A8: @ 0x080332A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0x15]
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	strb r0, [r5]
	strb r6, [r4, #0x15]
	ldrb r0, [r5]
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	asrs r6, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r6, r0
	beq _080332E4
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080332E8
_080332E4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080332E8
sub_080332E8: @ 0x080332E8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x82
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	subs r2, r1, r0
	cmp r2, #0
	ble _08033304
	cmp r2, #4
	bgt _08033310
	movs r0, #1
	b _08033312
_08033304:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08033310
	movs r0, #1
	b _08033312
_08033310:
	movs r0, #2
_08033312:
	strb r0, [r3]
	strb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl UpdateSprite
	pop {r4, pc}

	thumb_func_start sub_08033320
sub_08033320: @ 0x08033320
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	lsls r5, r0, #2
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08033360
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #1
	beq _08033350
	cmp r1, #2
	beq _08033354
	bl Random
	movs r1, #0x10
	ands r1, r0
	movs r0, #0x1c
	cmp r1, #0
	beq _08033356
_08033350:
	movs r0, #4
	b _08033356
_08033354:
	movs r0, #0x1c
_08033356:
	adds r0, r0, r5
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _08033362
_08033360:
	strb r5, [r4, #0x15]
_08033362:
	pop {r4, r5, pc}

	thumb_func_start sub_08033364
sub_08033364: @ 0x08033364
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	movs r3, #0x38
	cmp r0, #0
	beq _0803337E
	movs r3, #0x48
_0803337E:
	adds r0, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	beq _080333B4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080333AA
	ldr r0, _080333B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r1, #2
	movs r0, #0x1c
	ands r1, r0
	lsrs r1, r1, #2
	ldrb r0, [r4, #0x14]
	cmp r0, r1
	bne _080333B4
_080333AA:
	movs r0, #1
	b _080333B6
	.align 2, 0
_080333B0: .4byte gUnk_020000B0
_080333B4:
	movs r0, #0
_080333B6:
	pop {r4, pc}
