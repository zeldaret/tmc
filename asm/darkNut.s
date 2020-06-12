	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08020B80
sub_08020B80: @ 0x08020B80
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08020B9C @ =gUnk_080CAA98
	bl EnemyFunctionHandler
	movs r3, #0x16
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_08020B9C: .4byte gUnk_080CAA98

	thumb_func_start sub_08020BA0
sub_08020BA0: @ 0x08020BA0
	push {lr}
	ldr r2, _08020BB4 @ =gUnk_080CAAB0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08020BB4: .4byte gUnk_080CAAB0

	thumb_func_start sub_08020BB8
sub_08020BB8: @ 0x08020BB8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r1, r2, #0
	ands r1, r0
	cmp r1, #0x1c
	beq _08020BE0
	cmp r1, #0x1c
	bgt _08020BD4
	cmp r1, #0x16
	beq _08020C24
	b _08020D32
_08020BD4:
	cmp r1, #0x4b
	beq _08020C68
	cmp r1, #0x4c
	bne _08020BDE
	b _08020CF0
_08020BDE:
	b _08020D32
_08020BE0:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	ldr r1, _08020C20 @ =gUnk_080CAB0C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #0x10
	eors r2, r0
	adds r2, #4
	movs r0, #0x18
	ands r2, r0
	asrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #8
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	b _08020CE2
	.align 2, 0
_08020C20: .4byte gUnk_080CAB0C
_08020C24:
	movs r0, #0xb
	strb r0, [r4, #0xc]
	ldr r1, _08020C64 @ =gUnk_080CAB10
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #0x10
	eors r2, r0
	adds r2, #4
	movs r0, #0x18
	ands r2, r0
	asrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #8
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	b _08020CE2
	.align 2, 0
_08020C64: .4byte gUnk_080CAB10
_08020C68:
	ldrb r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0xd
	beq _08020D58
	cmp r0, #0xf
	beq _08020D58
	cmp r0, #0x13
	beq _08020D58
	cmp r0, #0x12
	beq _08020D58
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #4
	blt _08020CC0
	cmp r0, #6
	ble _08020CAC
	cmp r0, #0xc
	bgt _08020CC0
	cmp r0, #8
	blt _08020CC0
	ldr r0, _08020CA8 @ =gUnk_080CAB04
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7a
	b _08020CC6
	.align 2, 0
_08020CA8: .4byte gUnk_080CAB04
_08020CAC:
	ldr r0, _08020CBC @ =gUnk_080CAB00
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x7a
	b _08020CC6
	.align 2, 0
_08020CBC: .4byte gUnk_080CAB00
_08020CC0:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0
_08020CC6:
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08021218
	ldr r0, _08020CEC @ =0x0000015D
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08021588
_08020CE2:
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	b _08020D58
	.align 2, 0
_08020CEC: .4byte 0x0000015D
_08020CF0:
	ldrb r0, [r4, #0xc]
	adds r6, r4, #0
	adds r6, #0x45
	adds r5, r4, #0
	adds r5, #0x78
	cmp r0, #0xf
	bne _08020D58
	movs r1, #0xff
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08020D0E
	adds r0, #0x41
	ldrb r0, [r0]
	adds r1, r2, #0
	ands r1, r0
_08020D0E:
	cmp r1, #2
	bne _08020D28
	ldr r0, _08020D24 @ =gUnk_080CAB08
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080213D0
	b _08020D58
	.align 2, 0
_08020D24: .4byte gUnk_080CAB08
_08020D28:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
	b _08020D58
_08020D32:
	adds r2, r4, #0
	adds r2, #0x45
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r1, [r2]
	adds r6, r2, #0
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r1, r0
	beq _08020D58
	adds r0, r4, #0
	bl sub_08021588
	adds r0, r4, #0
	bl sub_08021390
	adds r0, r4, #0
	bl sub_0804AA1C
_08020D58:
	ldrb r0, [r6]
	strb r0, [r5]
	ldr r1, _08020D68 @ =gUnk_080CAA98
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08020D68: .4byte gUnk_080CAA98

	thumb_func_start nullsub_129
nullsub_129: @ 0x08020D6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08020D70
sub_08020D70: @ 0x08020D70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	subs r0, #0x30
	ldrb r1, [r0]
	adds r0, #0x33
	strb r1, [r0]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_08021218
	pop {r4, pc}

	thumb_func_start sub_08020D9C
sub_08020D9C: @ 0x08020D9C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08020DB0
	adds r0, r4, #0
	bl sub_080213F0
_08020DB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020DB4
sub_08020DB4: @ 0x08020DB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020DD0
	adds r0, r4, #0
	bl sub_08021390
_08020DD0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020DD4
sub_08020DD4: @ 0x08020DD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _08020DE8
	adds r0, r4, #0
	bl sub_080213F0
	b _08020E26
_08020DE8:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08020E08
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08021218
	b _08020E26
_08020E08:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020E1A
	adds r0, r4, #0
	bl sub_08021540
_08020E1A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
_08020E26:
	pop {r4, pc}

	thumb_func_start sub_08020E28
sub_08020E28: @ 0x08020E28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E44
	adds r0, r4, #0
	bl sub_080213B0
_08020E44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020E48
sub_08020E48: @ 0x08020E48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _08020E5C
	adds r0, r4, #0
	bl sub_080213F0
	b _08020E76
_08020E5C:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E76
	adds r0, r4, #0
	bl sub_080213B0
_08020E76:
	pop {r4, pc}

	thumb_func_start sub_08020E78
sub_08020E78: @ 0x08020E78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020E94
	adds r0, r4, #0
	bl sub_08021390
_08020E94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020E98
sub_08020E98: @ 0x08020E98
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _08020EF6
	ldr r5, _08020EDC @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_0802169C
	cmp r0, #0
	bne _08020ECA
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _08020EE0
_08020ECA:
	movs r0, #8
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08021218
	b _08020F26
	.align 2, 0
_08020EDC: .4byte gUnk_020000B0
_08020EE0:
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0802124C
	adds r0, r4, #0
	bl sub_08021644
	b _08020F26
_08020EF6:
	ldr r0, _08020F08 @ =gUnk_020000B0
	ldr r1, [r0]
	cmp r1, #0
	bne _08020F0C
	adds r0, r4, #0
	bl sub_08021414
	b _08020F26
	.align 2, 0
_08020F08: .4byte gUnk_020000B0
_08020F0C:
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_0802124C
	adds r0, r4, #0
	bl sub_08021644
_08020F26:
	pop {r4, r5, pc}

	thumb_func_start sub_08020F28
sub_08020F28: @ 0x08020F28
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020F44
	adds r0, r4, #0
	bl sub_08021400
_08020F44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08020F48
sub_08020F48: @ 0x08020F48
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _08020FA4
	ldr r5, _08020F98 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_08021664
	cmp r0, #0
	beq _08020F9C
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #9
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08020F9C
	movs r0, #0xe
	strb r0, [r4, #0xc]
	lsrs r2, r2, #3
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08021218
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A98C
	cmp r0, #0
	beq _08020FAA
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	b _08020FAA
	.align 2, 0
_08020F98: .4byte gUnk_020000B0
_08020F9C:
	adds r0, r4, #0
	bl sub_08021424
	b _08020FAA
_08020FA4:
	adds r0, r4, #0
	bl sub_08021390
_08020FAA:
	pop {r4, r5, pc}

	thumb_func_start sub_08020FAC
sub_08020FAC: @ 0x08020FAC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020FDC
	adds r1, r2, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020FCC
	subs r0, #1
	strb r0, [r1]
	b _08020FE2
_08020FCC:
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08021390
	b _08020FE2
_08020FDC:
	adds r0, r2, #0
	bl sub_080042B8
_08020FE2:
	pop {pc}

	thumb_func_start sub_08020FE4
sub_08020FE4: @ 0x08020FE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802100C
	movs r0, #0xc
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08021218
	adds r0, r4, #0
	bl sub_0804AA1C
_0802100C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021010
sub_08021010: @ 0x08021010
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021034
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x56
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080213F0
_08021034:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021038
sub_08021038: @ 0x08021038
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08021066
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021066
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0802105E
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0802105E:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
_08021066:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021090
	adds r0, r4, #0
	bl sub_08021588
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021088
	subs r0, #1
	b _080210A2
_08021088:
	adds r0, r4, #0
	bl sub_08021390
	b _080210A4
_08021090:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r5]
	cmp r0, #4
	bne _080210A4
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
_080210A2:
	strb r0, [r1]
_080210A4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080210A8
sub_080210A8: @ 0x080210A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080210D4
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08021588
	ldr r0, _080210D0 @ =0x0000015D
	bl sub_08004488
	b _080210E2
	.align 2, 0
_080210D0: .4byte 0x0000015D
_080210D4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080210E2
	adds r0, r4, #0
	bl sub_08021390
_080210E2:
	pop {r4, pc}

	thumb_func_start sub_080210E4
sub_080210E4: @ 0x080210E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802111A
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_0804A98C
	cmp r0, #0
	beq _08021112
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08021112:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
_0802111A:
	adds r0, r4, #0
	bl sub_08021644
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021154
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	beq _0802114A
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08021154
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021154
_0802114A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
	b _0802116C
_08021154:
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802116C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080213D0
_0802116C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08021170
sub_08021170: @ 0x08021170
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021198
	adds r1, r2, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021190
	subs r0, #1
	strb r0, [r1]
	b _0802119E
_08021190:
	adds r0, r2, #0
	bl sub_08021390
	b _0802119E
_08021198:
	adds r0, r2, #0
	bl sub_080042B8
_0802119E:
	pop {pc}

	thumb_func_start sub_080211A0
sub_080211A0: @ 0x080211A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080214FC
	cmp r0, #0
	beq _080211B4
	adds r0, r4, #0
	bl sub_08021390
	b _080211CE
_080211B4:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080211CE
	adds r0, r4, #0
	bl sub_080213B0
_080211CE:
	pop {r4, pc}

	thumb_func_start sub_080211D0
sub_080211D0: @ 0x080211D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802159C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080211F2
	adds r0, r4, #0
	bl sub_08021390
_080211F2:
	pop {r4, pc}

	thumb_func_start sub_080211F4
sub_080211F4: @ 0x080211F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08021600
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08021216
	adds r0, r4, #0
	bl sub_08021390
_08021216:
	pop {r4, pc}

	thumb_func_start sub_08021218
sub_08021218: @ 0x08021218
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x74
	ldrb r0, [r4]
	cmp r0, r1
	bne _0802122C
	ldrb r0, [r3, #0x14]
	cmp r0, r2
	beq _08021244
_0802122C:
	strb r2, [r3, #0x14]
	strb r1, [r4]
	lsls r0, r1, #1
	ldr r1, _08021248 @ =gUnk_080CAB14
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	strh r1, [r3, #0x12]
	ldrb r1, [r0]
	adds r1, r1, r2
	adds r0, r3, #0
	bl LoadAnimation
_08021244:
	pop {r4, pc}
	.align 2, 0
_08021248: .4byte gUnk_080CAB14

	thumb_func_start sub_0802124C
sub_0802124C: @ 0x0802124C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0x15]
	bl sub_08021274
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0802126C
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08021218
	b _08021272
_0802126C:
	adds r0, r4, #0
	bl sub_080042B8
_08021272:
	pop {r4, pc}

	thumb_func_start sub_08021274
sub_08021274: @ 0x08021274
	push {lr}
	adds r2, r0, #0
	movs r0, #7
	ands r0, r1
	subs r0, #3
	cmp r0, #2
	bhi _0802129A
	movs r3, #0x18
	adds r0, r1, #0
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
	adds r0, r1, #0
	adds r0, #8
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
_0802129A:
	adds r0, r1, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r1, r0, #3
	cmp r2, r1
	beq _080212AA
	adds r0, r1, #0
	b _080212AC
_080212AA:
	movs r0, #0xff
_080212AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080212B0
sub_080212B0: @ 0x080212B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #1
	beq _080212D0
	cmp r0, #2
	beq _080212DC
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080212CC @ =gUnk_080CAB3A
	b _080212E2
	.align 2, 0
_080212CC: .4byte gUnk_080CAB3A
_080212D0:
	movs r0, #2
	strb r0, [r1]
	ldr r4, _080212D8 @ =gUnk_080CAB42
	b _080212E2
	.align 2, 0
_080212D8: .4byte gUnk_080CAB42
_080212DC:
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0802131C @ =gUnk_080CAB4A
_080212E2:
	bl Random
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r2, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _08021306
	cmp r2, #2
	bne _08021306
	ldr r4, _08021320 @ =gUnk_080CAB52
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r2, [r1]
_08021306:
	movs r0, #0
	str r0, [r5, #0x54]
	ldr r1, _08021324 @ =gUnk_080CAB58
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0802131C: .4byte gUnk_080CAB4A
_08021320: .4byte gUnk_080CAB52
_08021324: .4byte gUnk_080CAB58

	thumb_func_start sub_08021328
sub_08021328: @ 0x08021328
	push {lr}
	movs r1, #0xd
	strb r1, [r0, #0xc]
	ldr r2, _08021348 @ =gUnk_080CAB68
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x7c
	strb r2, [r1]
	ldrb r2, [r0, #0x14]
	movs r1, #0xc
	bl sub_08021218
	pop {pc}
	.align 2, 0
_08021348: .4byte gUnk_080CAB68

	thumb_func_start sub_0802134C
sub_0802134C: @ 0x0802134C
	push {lr}
	movs r1, #0xf
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0x14]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x76
	movs r1, #0x78
	strh r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #0xe
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021370
sub_08021370: @ 0x08021370
	push {lr}
	movs r1, #0x12
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #0x10
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021380
sub_08021380: @ 0x08021380
	push {lr}
	movs r1, #0x13
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #0x11
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021390
sub_08021390: @ 0x08021390
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x56
	strb r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #6
	bl sub_08021218
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080213B0
sub_080213B0: @ 0x080213B0
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0xe]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x76
	movs r1, #0xf0
	strh r1, [r2]
	ldrb r2, [r0, #0x14]
	movs r1, #3
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_080213D0
sub_080213D0: @ 0x080213D0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	ldrb r2, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_08021218
	adds r0, r4, #0
	bl sub_08021588
	pop {r4, pc}

	thumb_func_start sub_080213F0
sub_080213F0: @ 0x080213F0
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #1
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021400
sub_08021400: @ 0x08021400
	push {lr}
	movs r1, #9
	strb r1, [r0, #0xc]
	movs r1, #0x60
	strh r1, [r0, #0x24]
	ldrb r2, [r0, #0x14]
	movs r1, #0xa
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021414
sub_08021414: @ 0x08021414
	push {lr}
	movs r1, #0x11
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x14]
	movs r1, #5
	bl sub_08021218
	pop {pc}

	thumb_func_start sub_08021424
sub_08021424: @ 0x08021424
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08021450 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080045C4
	adds r1, r0, #0
	ldrb r0, [r5, #0x14]
	bl sub_08021274
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08021454
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08021218
	b _08021456
	.align 2, 0
_08021450: .4byte gUnk_020000B0
_08021454:
	ldrb r4, [r5, #0x14]
_08021456:
	cmp r4, #1
	beq _08021490
	cmp r4, #1
	blo _08021478
	cmp r4, #2
	beq _080214A8
	ldr r0, _08021474 @ =gUnk_020000B0
	ldr r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	adds r2, #0x24
	movs r4, #0x32
	ldrsh r3, [r1, r4]
	b _080214B8
	.align 2, 0
_08021474: .4byte gUnk_020000B0
_08021478:
	ldr r0, _0802148C @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r4, #0x32
	ldrsh r0, [r0, r4]
	adds r3, r0, #0
	adds r3, #0x2c
	b _080214B8
	.align 2, 0
_0802148C: .4byte gUnk_020000B0
_08021490:
	ldr r0, _080214A4 @ =gUnk_020000B0
	ldr r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x24
	movs r4, #0x32
	ldrsh r3, [r1, r4]
	b _080214B8
	.align 2, 0
_080214A4: .4byte gUnk_020000B0
_080214A8:
	ldr r0, _080214F0 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r4, #0x32
	ldrsh r0, [r0, r4]
	adds r3, r0, #0
	subs r3, #0x1d
_080214B8:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	adds r0, #3
	cmp r0, #6
	bhi _080214D0
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r0, r3, r0
	adds r0, #2
	cmp r0, #4
	bls _080214E8
_080214D0:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	bl sub_080045D4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080214F4
_080214E8:
	adds r0, r5, #0
	bl sub_080212B0
	b _080214FA
	.align 2, 0
_080214F0: .4byte gUnk_020000B0
_080214F4:
	adds r0, r5, #0
	bl sub_080042B8
_080214FA:
	pop {r4, r5, pc}

	thumb_func_start sub_080214FC
sub_080214FC: @ 0x080214FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802153C
	ldr r0, _08021538 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	subs r0, r2, r0
	subs r0, #2
	cmp r0, #4
	bhi _0802153C
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	movs r0, #1
	b _0802153E
	.align 2, 0
_08021538: .4byte gUnk_020000B0
_0802153C:
	movs r0, #0
_0802153E:
	pop {r4, pc}

	thumb_func_start sub_08021540
sub_08021540: @ 0x08021540
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08021566
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08021566
	adds r0, r4, #0
	bl sub_08049EE4
	adds r1, r0, #4
	b _08021568
_08021566:
	lsrs r1, r5, #0x10
_08021568:
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	bl sub_08021274
	adds r2, r0, #0
	cmp r2, #0xff
	beq _08021582
	adds r0, r4, #0
	movs r1, #3
	bl sub_08021218
_08021582:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	pop {r4, r5, pc}

	thumb_func_start sub_08021588
sub_08021588: @ 0x08021588
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x54]
	cmp r1, #0
	beq _08021598
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x54]
_08021598:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802159C
sub_0802159C: @ 0x0802159C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #1
	bne _080215D4
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl sub_0804A98C
	cmp r0, #0
	beq _080215CA
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_080215CA:
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_08004488
	b _080215F8
_080215D4:
	cmp r0, #2
	bne _080215E4
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08021588
	b _080215F8
_080215E4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080215F8
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080215FC @ =0x00000115
	bl sub_08004488
_080215F8:
	pop {r4, pc}
	.align 2, 0
_080215FC: .4byte 0x00000115

	thumb_func_start sub_08021600
sub_08021600: @ 0x08021600
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _08021634
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x1b
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_0804A98C
	cmp r0, #0
	beq _0802162A
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0802162A:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_08004488
	b _08021642
_08021634:
	cmp r0, #2
	bne _08021642
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08021588
_08021642:
	pop {r4, pc}

	thumb_func_start sub_08021644
sub_08021644: @ 0x08021644
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021660
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x7d
	bl sub_08004488
_08021660:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08021664
sub_08021664: @ 0x08021664
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	beq _08021690
	cmp r2, #1
	bgt _08021676
	cmp r2, #0
	beq _08021680
	b _08021698
_08021676:
	cmp r2, #2
	beq _08021688
	cmp r2, #3
	beq _08021690
	b _08021698
_08021680:
	movs r2, #0x22
	bl sub_08049F1C
	b _0802169A
_08021688:
	movs r2, #0x13
	bl sub_08049F1C
	b _0802169A
_08021690:
	movs r2, #0x1a
	bl sub_08049F1C
	b _0802169A
_08021698:
	movs r0, #0
_0802169A:
	pop {pc}

	thumb_func_start sub_0802169C
sub_0802169C: @ 0x0802169C
	push {lr}
	ldrb r2, [r0, #0x14]
	cmp r2, #1
	beq _080216C0
	cmp r2, #1
	bgt _080216AE
	cmp r2, #0
	beq _080216B8
	b _080216CE
_080216AE:
	cmp r2, #2
	beq _080216BC
	cmp r2, #3
	beq _080216C0
	b _080216CE
_080216B8:
	movs r2, #0x2c
	b _080216C2
_080216BC:
	movs r2, #0x1d
	b _080216C2
_080216C0:
	movs r2, #0x24
_080216C2:
	bl sub_08049F1C
	cmp r0, #0
	bne _080216CE
	movs r0, #1
	b _080216D0
_080216CE:
	movs r0, #0
_080216D0:
	pop {pc}
	.align 2, 0
