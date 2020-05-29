	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806A0A4
sub_0806A0A4: @ 0x0806A0A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0806A0F8 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A100
	movs r5, #4
	movs r0, #0xcf
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806A120
	movs r5, #3
	movs r0, #0xcf
	bl sub_0807CCB4
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0806A0FC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	adds r2, #8
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	b _0806A120
	.align 2, 0
_0806A0F8: .4byte gUnk_03003F80
_0806A0FC: .4byte gRoomControls
_0806A100:
	movs r5, #2
	movs r0, #0xcf
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806A120
	movs r5, #1
	movs r0, #0xdb
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806A120
	movs r5, #0
	movs r0, #0xdb
	bl sub_0807CCB4
_0806A120:
	ldr r2, _0806A13C @ =gUnk_08111F74
	ldr r0, _0806A140 @ =gUnk_02002A40
	ldrb r1, [r0, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806A13C: .4byte gUnk_08111F74
_0806A140: .4byte gUnk_02002A40

	thumb_func_start sub_0806A144
sub_0806A144: @ 0x0806A144
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #4
	ldr r0, _0806A18C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A17A
	movs r4, #3
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806A17A
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0806A17A
	movs r0, #0x85
	bl sub_0807CBD0
	movs r4, #2
	cmp r0, #0
	bne _0806A17A
	movs r4, #1
_0806A17A:
	ldr r0, _0806A190 @ =gUnk_08111FD8
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806A18C: .4byte gUnk_03003F80
_0806A190: .4byte gUnk_08111FD8

	thumb_func_start sub_0806A194
sub_0806A194: @ 0x0806A194
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A1CE
	adds r0, r4, #0
	bl sub_08069EF0
	cmp r0, #0
	beq _0806A1D4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0x23
	bl sub_08004260
	b _0806A1D4
_0806A1CE:
	adds r0, r4, #0
	bl sub_08004274
_0806A1D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806A1D8
sub_0806A1D8: @ 0x0806A1D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A1F4 @ =gUnk_081121D4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_0806A1F4: .4byte gUnk_081121D4

	thumb_func_start sub_0806A1F8
sub_0806A1F8: @ 0x0806A1F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	ldr r1, _0806A22C @ =gUnk_081121C4
	cmp r0, #0
	bne _0806A206
	ldr r1, _0806A230 @ =gUnk_081121B4
_0806A206:
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806A22A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0806A22A:
	pop {r4, pc}
	.align 2, 0
_0806A22C: .4byte gUnk_081121C4
_0806A230: .4byte gUnk_081121B4

	thumb_func_start sub_0806A234
sub_0806A234: @ 0x0806A234
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806A266
	ldr r0, _0806A268 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0806A25E
	adds r0, r4, #0
	bl sub_0806A26C
_0806A25E:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
_0806A266:
	pop {r4, pc}
	.align 2, 0
_0806A268: .4byte gUnk_030010A0

	thumb_func_start sub_0806A26C
sub_0806A26C: @ 0x0806A26C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf
	movs r1, #0x2f
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A2AE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA30
	bl sub_08000E50
	adds r5, r0, #0
	ldr r2, _0806A2B0 @ =gUnk_081121DC
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x62
	strb r0, [r3]
	lsrs r0, r5, #8
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #8
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
_0806A2AE:
	pop {r4, r5, pc}
	.align 2, 0
_0806A2B0: .4byte gUnk_081121DC

	thumb_func_start sub_0806A2B4
sub_0806A2B4: @ 0x0806A2B4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r1, #1
	mov sb, r1
	mov r2, sb
	ands r2, r0
	mov sb, r2
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #7
	mov r2, r8
	ands r2, r0
	mov r8, r2
	movs r6, #7
	ands r6, r1
	ldrb r4, [r5, #0x14]
	lsrs r4, r4, #1
	ldr r1, _0806A350 @ =gUnk_081121E4
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	ldr r0, _0806A354 @ =gUnk_08112204
	adds r4, r4, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF48
	adds r0, r5, #0
	movs r1, #1
	mov r2, r8
	bl sub_0806FF60
	adds r6, #0x1c
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_0806FF60
	movs r0, #0x1a
	add sb, r0
	adds r0, r5, #0
	movs r1, #3
	mov r2, sb
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_0806FFD8
	adds r0, r5, #0
	bl sub_0807000C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806A350: .4byte gUnk_081121E4
_0806A354: .4byte gUnk_08112204

	thumb_func_start sub_0806A358
sub_0806A358: @ 0x0806A358
	push {lr}
	ldr r2, _0806A36C @ =gUnk_08112260
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806A36C: .4byte gUnk_08112260

	thumb_func_start sub_0806A370
sub_0806A370: @ 0x0806A370
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A3D0 @ =gUnk_08112278
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806ED78
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _0806A3CC
	adds r4, #0x5a
	ldrb r0, [r4]
	cmp r0, #1
	bne _0806A3BC
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #2
	bl PlaySFX
_0806A3BC:
	ldrb r0, [r4]
	cmp r0, #2
	bne _0806A3CC
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0806A3D4 @ =0x00000219
	bl PlaySFX
_0806A3CC:
	pop {r4, pc}
	.align 2, 0
_0806A3D0: .4byte gUnk_08112278
_0806A3D4: .4byte 0x00000219

	thumb_func_start sub_0806A3D8
sub_0806A3D8: @ 0x0806A3D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0806A8C8
	ldr r1, _0806A40C @ =gUnk_08012F0C
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	pop {r4, pc}
	.align 2, 0
_0806A40C: .4byte gUnk_08012F0C

	thumb_func_start sub_0806A410
sub_0806A410: @ 0x0806A410
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	beq _0806A420
	cmp r0, #1
	beq _0806A43C
	b _0806A456
_0806A420:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A456
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	adds r0, r2, #0
	movs r1, #8
	bl sub_08004260
	b _0806A456
_0806A43C:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A456
	adds r0, r2, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_0806A9B0
_0806A456:
	pop {pc}

	thumb_func_start sub_0806A458
sub_0806A458: @ 0x0806A458
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	beq _0806A486
	cmp r0, #1
	bgt _0806A46C
	cmp r0, #0
	beq _0806A472
	b _0806A4CA
_0806A46C:
	cmp r0, #2
	beq _0806A4A8
	b _0806A4CA
_0806A472:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A4CA
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	b _0806A4CA
_0806A486:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A4CA
	movs r0, #2
	strb r0, [r2, #0xd]
	adds r0, r2, #0
	movs r1, #0xa
	bl sub_08004260
	movs r0, #0x62
	bl sub_0807CD34
	b _0806A4CA
_0806A4A8:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A4CA
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	movs r0, #0x3c
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	movs r1, #2
	bl sub_08004260
_0806A4CA:
	pop {pc}

	thumb_func_start sub_0806A4CC
sub_0806A4CC: @ 0x0806A4CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xd]
	cmp r2, #0
	beq _0806A4E0
	cmp r2, #1
	beq _0806A52C
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	b _0806A54C
_0806A4E0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A54C
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806A512
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08004260
	b _0806A54C
_0806A512:
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x6a
	strh r2, [r0]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004260
	b _0806A54C
_0806A52C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A54C
	movs r0, #2
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004260
_0806A54C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806A550
sub_0806A550: @ 0x0806A550
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806A568
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08004260
	b _0806A5B0
_0806A568:
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r0, [r5]
	cmp r0, #1
	bne _0806A590
	movs r0, #0
	strb r0, [r5]
	movs r0, #8
	movs r1, #2
	bl sub_08080964
	ldr r2, _0806A5B4 @ =gUnk_02033280
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0806A5B8 @ =0x0000011B
	bl PlaySFX
_0806A590:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A5B0
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0806A914
_0806A5B0:
	pop {r4, r5, pc}
	.align 2, 0
_0806A5B4: .4byte gUnk_02033280
_0806A5B8: .4byte 0x0000011B

	thumb_func_start nullsub_503
nullsub_503: @ 0x0806A5BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0806A5C0
sub_0806A5C0: @ 0x0806A5C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A5E6
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
_0806A5E6:
	pop {r4, pc}

	thumb_func_start sub_0806A5E8
sub_0806A5E8: @ 0x0806A5E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A60A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08004260
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xe]
_0806A60A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A628
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xcc
	bl PlaySFX
_0806A628:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0806A630
sub_0806A630: @ 0x0806A630
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A646
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x12
	bl sub_08004260
_0806A646:
	ldr r0, _0806A670 @ =gUnk_02033280
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A65A
	adds r0, r4, #0
	bl sub_08004274
_0806A65A:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0806A66E
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x72
	bl PlaySFX
_0806A66E:
	pop {r4, pc}
	.align 2, 0
_0806A670: .4byte gUnk_02033280

	thumb_func_start sub_0806A674
sub_0806A674: @ 0x0806A674
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _0806A694 @ =gUnk_08112294
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _0806A6BE
	cmp r3, #1
	bgt _0806A698
	cmp r3, #0
	beq _0806A6A0
	b _0806A82A
	.align 2, 0
_0806A694: .4byte gUnk_08112294
_0806A698:
	cmp r3, #2
	bne _0806A69E
	b _0806A824
_0806A69E:
	b _0806A82A
_0806A6A0:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x13
	bl sub_08004260
	b _0806A82A
_0806A6BE:
	ldr r0, _0806A6E0 @ =gUnk_02033280
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6E4
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	b _0806A82A
	.align 2, 0
_0806A6E0: .4byte gUnk_02033280
_0806A6E4:
	ldr r0, [r4, #0x50]
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #9
	bne _0806A7C8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r2]
	ldrb r2, [r4, #0xe]
	cmp r2, #0
	bne _0806A724
	bl sub_08000E50
	adds r2, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xe]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	add r0, sp
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	b _0806A75A
_0806A724:
	ldr r0, _0806A780 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806A75A
	subs r0, r2, #1
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r4, #0
	adds r1, #0x68
	cmp r0, #0
	bgt _0806A746
	strb r3, [r1]
_0806A746:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xf
	ble _0806A752
	movs r0, #0xff
	strb r0, [r1]
_0806A752:
	ldrb r0, [r1]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
_0806A75A:
	ldrb r2, [r4, #0xf]
	cmp r2, #0
	bne _0806A784
	bl sub_08000E50
	adds r2, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xf]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	add r0, sp
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	b _0806A82A
	.align 2, 0
_0806A780: .4byte gUnk_030010A0
_0806A784:
	ldr r0, _0806A7C4 @ =gUnk_030010A0
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806A82A
	subs r0, r2, #1
	strb r0, [r4, #0xf]
	adds r3, r4, #0
	adds r3, #0x63
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r2, r4, #0
	adds r2, #0x69
	cmp r0, #0
	blt _0806A7AA
	movs r0, #0xff
	strb r0, [r2]
_0806A7AA:
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0806A7BA
	movs r0, #1
	strb r0, [r2]
_0806A7BA:
	ldrb r0, [r2]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	b _0806A82A
	.align 2, 0
_0806A7C4: .4byte gUnk_030010A0
_0806A7C8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x62
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806A7FE
	cmp r2, #0
	ble _0806A7F0
	subs r0, #1
	strb r0, [r1]
_0806A7F0:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806A7FE
	adds r0, r2, #1
	strb r0, [r1]
_0806A7FE:
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806A82A
	cmp r2, #0
	ble _0806A814
	subs r0, #1
	strb r0, [r1]
_0806A814:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806A82A
	adds r0, r2, #1
	strb r0, [r1]
	b _0806A82A
_0806A824:
	adds r0, r4, #0
	bl sub_08004274
_0806A82A:
	add sp, #8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806A830
sub_0806A830: @ 0x0806A830
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A84E
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806A84E:
	ldr r0, _0806A88C @ =gUnk_02033280
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0806A860
	bl sub_0805E780
_0806A860:
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0806A88A
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x37
	movs r1, #5
	movs r2, #0
	bl CreateNPC
	adds r1, r0, #0
	cmp r1, #0
	beq _0806A88A
	adds r0, r4, #0
	bl sub_0806FA30
_0806A88A:
	pop {r4, pc}
	.align 2, 0
_0806A88C: .4byte gUnk_02033280

	thumb_func_start sub_0806A890
sub_0806A890: @ 0x0806A890
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806A8AE
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x15
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806A8AE:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A8C6
	bl sub_0805E780
_0806A8C6:
	pop {r4, pc}

	thumb_func_start sub_0806A8C8
sub_0806A8C8: @ 0x0806A8C8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x60
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806A8F0
	movs r0, #0x37
	movs r1, #2
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A8F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	str r5, [r4, #0x50]
_0806A8F0:
	movs r0, #0x37
	movs r1, #3
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A910
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	str r5, [r4, #0x50]
_0806A910:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806A914
sub_0806A914: @ 0x0806A914
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x37
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A938
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_0806A938:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806A93C
sub_0806A93C: @ 0x0806A93C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078778
	ldr r3, _0806A954 @ =gUnk_0811229C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_0806A954: .4byte gUnk_0811229C

	thumb_func_start sub_0806A958
sub_0806A958: @ 0x0806A958
	push {lr}
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	beq _0806A966
	ldr r1, _0806A968 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806A966:
	pop {pc}
	.align 2, 0
_0806A968: .4byte gUnk_02033280

	thumb_func_start sub_0806A96C
sub_0806A96C: @ 0x0806A96C
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	str r3, [r1, #0x14]
	movs r0, #0x39
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806A9A8
	ldrb r0, [r2, #0xc]
	cmp r0, #3
	beq _0806A992
	movs r0, #3
	strb r0, [r2, #0xc]
	strb r3, [r2, #0xd]
	b _0806A9A8
_0806A992:
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	bls _0806A9A8
	mov r4, ip
	strb r3, [r4]
	movs r0, #1
	str r0, [r1, #0x14]
	ldr r2, _0806A9AC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	orrs r0, r1
	strb r0, [r2, #7]
_0806A9A8:
	pop {r4, pc}
	.align 2, 0
_0806A9AC: .4byte gUnk_02033280

	thumb_func_start sub_0806A9B0
sub_0806A9B0: @ 0x0806A9B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	bl sub_08000E50
	ldr r2, _0806A9E4 @ =gUnk_081122A0
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #9
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #9
	bl sub_08004260
	movs r0, #0x62
	bl sub_0807CCB4
	pop {r4, pc}
	.align 2, 0
_0806A9E4: .4byte gUnk_081122A0

	thumb_func_start sub_0806A9E8
sub_0806A9E8: @ 0x0806A9E8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x37
	movs r1, #4
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AA0C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0806AA0C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806AA10
sub_0806AA10: @ 0x0806AA10
	push {lr}
	bl sub_0806A914
	pop {pc}

	thumb_func_start sub_0806AA18
sub_0806AA18: @ 0x0806AA18
	push {lr}
	adds r2, r0, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0
	beq _0806AA2C
	ldr r1, _0806AA28 @ =0x00004408
	b _0806AA3C
	.align 2, 0
_0806AA28: .4byte 0x00004408
_0806AA2C:
	ldr r0, _0806AA48 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	ldr r1, _0806AA4C @ =0x0000440D
	cmp r0, #0
	bne _0806AA3C
	subs r1, #6
_0806AA3C:
	adds r0, r1, #0
	adds r1, r2, #0
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806AA48: .4byte gUnk_030010A0
_0806AA4C: .4byte 0x0000440D

	thumb_func_start sub_0806AA50
sub_0806AA50: @ 0x0806AA50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #1
	beq _0806AB38
	cmp r0, #1
	bgt _0806AA6A
	cmp r0, #0
	beq _0806AA70
	b _0806AB64
_0806AA6A:
	cmp r0, #2
	beq _0806AB5C
	b _0806AB64
_0806AA70:
	str r0, [r5, #0x14]
	movs r0, #0x8f
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806AA84
	ldr r2, _0806AA80 @ =gUnk_081122A8
	b _0806AA9A
	.align 2, 0
_0806AA80: .4byte gUnk_081122A8
_0806AA84:
	movs r0, #0x15
	bl GetInventoryValue
	cmp r0, #0
	bne _0806AA98
	ldr r2, _0806AA94 @ =gUnk_081122B0
	b _0806AA9A
	.align 2, 0
_0806AA94: .4byte gUnk_081122B0
_0806AA98:
	ldr r2, _0806AAD0 @ =gUnk_081122B8
_0806AA9A:
	ldr r1, _0806AAD4 @ =gUnk_02034350
	ldr r0, [r1, #0x68]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r7, [r0]
	mov r8, r1
	mov r4, r8
	ldr r0, [r4, #0x68]
	adds r0, #1
	str r0, [r4, #0x68]
	cmp r0, #2
	bls _0806AAB6
	movs r0, #0
	str r0, [r4, #0x68]
_0806AAB6:
	adds r0, r7, #0
	adds r1, r6, #0
	bl TextboxNoOverlap
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _0806AAEE
	cmp r0, #1
	blo _0806AAD8
	cmp r0, #2
	beq _0806AB02
	b _0806AB1C
	.align 2, 0
_0806AAD0: .4byte gUnk_081122B8
_0806AAD4: .4byte gUnk_02034350
_0806AAD8:
	adds r0, r4, #0
	adds r0, #0xac
	str r6, [r0]
	adds r0, r6, #0
	movs r1, #7
	bl sub_0805EA78
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x20]
	b _0806AB1C
_0806AAEE:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #7
	bl sub_0805EB64
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	b _0806AB14
_0806AB02:
	mov r0, r8
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #7
	bl sub_0805EB64
	adds r1, r0, #0
	mov r0, r8
	adds r0, #0xb4
_0806AB14:
	str r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
_0806AB1C:
	ldr r0, _0806AB34 @ =0x0000441E
	cmp r7, r0
	bne _0806AB2C
	movs r0, #0x8f
	bl sub_0807CCB4
	movs r0, #1
	str r0, [r5, #0x14]
_0806AB2C:
	movs r0, #1
	strb r0, [r5, #0x18]
	b _0806AB64
	.align 2, 0
_0806AB34: .4byte 0x0000441E
_0806AB38:
	ldr r0, _0806AB58 @ =gUnk_02034350
	ldr r1, [r5, #4]
	lsls r1, r1, #2
	adds r0, #0xac
	adds r1, r1, r0
	ldr r1, [r1]
	movs r2, #0x36
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0806AB64
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	movs r0, #2
	strb r0, [r5, #0x18]
	b _0806AB64
	.align 2, 0
_0806AB58: .4byte gUnk_02034350
_0806AB5C:
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0806AB6A
_0806AB64:
	ldr r1, _0806AB70 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806AB6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806AB70: .4byte gUnk_02033280

	thumb_func_start sub_0806AB74
sub_0806AB74: @ 0x0806AB74
	push {lr}
	adds r2, r0, #0
	ldr r1, _0806AB94 @ =gUnk_02034350
	movs r0, #1
	strb r0, [r1, #3]
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	ldr r1, _0806AB98 @ =gRoomControls
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r0, #0xa7
	bgt _0806AB92
	adds r0, r1, #0
	adds r0, #0xa8
	strh r0, [r2, #0x32]
_0806AB92:
	pop {pc}
	.align 2, 0
_0806AB94: .4byte gUnk_02034350
_0806AB98: .4byte gRoomControls

	thumb_func_start sub_0806AB9C
sub_0806AB9C: @ 0x0806AB9C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #0x37
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	cmp r0, #0
	beq _0806ABBC
	bl sub_0805E7BC
_0806ABBC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807F950
	add sp, #4
	pop {r4, r5, pc}

	thumb_func_start sub_0806ABC8
sub_0806ABC8: @ 0x0806ABC8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806ABF4
	ldr r0, _0806ABF0 @ =gUnk_081126E8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	b _0806ABFA
	.align 2, 0
_0806ABF0: .4byte gUnk_081126E8
_0806ABF4:
	adds r0, r4, #0
	bl sub_0806ACC4
_0806ABFA:
	pop {r4, pc}

	thumb_func_start sub_0806ABFC
sub_0806ABFC: @ 0x0806ABFC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806AC38 @ =gUnk_08112674
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806AC36
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x6a
	strb r0, [r2]
	lsls r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	subs r2, #1
	strb r0, [r2]
	strb r1, [r4, #0xe]
_0806AC36:
	pop {r4, pc}
	.align 2, 0
_0806AC38: .4byte gUnk_08112674

	thumb_func_start sub_0806AC3C
sub_0806AC3C: @ 0x0806AC3C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0806ACBA
	ldr r4, _0806AC6C @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x18
	movs r3, #0x18
	bl sub_080041A0
	cmp r0, #0
	beq _0806AC70
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r2, r0, #0
	movs r0, #0x1e
	ands r2, r0
	b _0806AC74
	.align 2, 0
_0806AC6C: .4byte gLinkEntity
_0806AC70:
	ldrb r0, [r5, #0x14]
	lsls r2, r0, #2
_0806AC74:
	adds r0, r5, #0
	adds r0, #0x69
	ldrb r3, [r0]
	adds r4, r0, #0
	cmp r2, r3
	beq _0806AC9A
	subs r0, r2, r3
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _0806AC8E
	subs r0, r3, #1
	b _0806AC90
_0806AC8E:
	adds r0, r3, #1
_0806AC90:
	strb r0, [r4]
	ldrb r1, [r4]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r4]
_0806AC9A:
	ldrb r1, [r4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0806ACBA
	ldrb r0, [r4]
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	movs r0, #2
	eors r1, r0
	adds r0, r5, #0
	bl sub_08004260
_0806ACBA:
	adds r0, r5, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806ACC4
sub_0806ACC4: @ 0x0806ACC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0806AD28
	cmp r5, #1
	bgt _0806ACD8
	cmp r5, #0
	beq _0806ACE4
	b _0806ADEA
_0806ACD8:
	cmp r5, #2
	beq _0806ADB8
	cmp r5, #3
	bne _0806ACE2
	b _0806ADDC
_0806ACE2:
	b _0806ADEA
_0806ACE4:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806AD24 @ =gUnk_08112674
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	bne _0806ACF8
	b _0806ADFA
_0806ACF8:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x6a
	strb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r4, #0x14]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD50
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #8
	b _0806ADCE
	.align 2, 0
_0806AD24: .4byte gUnk_08112674
_0806AD28:
	adds r5, r4, #0
	adds r5, #0x39
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _0806AD44
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806ADEA
_0806AD44:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0806AEA8
	ldrb r0, [r4, #0xb]
	cmp r0, #0xa
	bne _0806AD8A
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0806AD8A
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r5]
	ldr r1, _0806ADAC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0806AFE8
_0806AD8A:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0806ADEA
	ldr r0, _0806ADAC @ =gLinkEntity
	ldrb r3, [r0, #0x14]
	lsrs r3, r3, #1
	ldr r0, _0806ADB0 @ =gUnk_081126E4
	adds r0, r3, r0
	ldrb r2, [r0]
	lsls r3, r3, #2
	ldr r0, _0806ADB4 @ =gUnk_081126D4
	adds r3, r3, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08078850
	b _0806ADEA
	.align 2, 0
_0806ADAC: .4byte gLinkEntity
_0806ADB0: .4byte gUnk_081126E4
_0806ADB4: .4byte gUnk_081126D4
_0806ADB8:
	ldr r0, _0806ADD8 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806ADEA
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
_0806ADCE:
	adds r0, r4, #0
	bl sub_08004260
	b _0806ADEA
	.align 2, 0
_0806ADD8: .4byte gTextBox
_0806ADDC:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806ADEA
	movs r0, #1
	strb r0, [r4, #0xc]
_0806ADEA:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0806ADFA
	adds r0, r4, #0
	bl sub_08004274
_0806ADFA:
	pop {r4, r5, pc}

	thumb_func_start sub_0806ADFC
sub_0806ADFC: @ 0x0806ADFC
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	bl sub_08078784
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806AE0C
sub_0806AE0C: @ 0x0806AE0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806AE62
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsrs r2, r0, #1
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806AE3C
	adds r2, #0x1c
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	b _0806AE46
_0806AE3C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_0806FF60
_0806AE46:
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	b _0806AEA4
_0806AE62:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #0xff
	beq _0806AE72
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
_0806AE72:
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AE82
	movs r2, #0xff
_0806AE82:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
_0806AEA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806AEA8
sub_0806AEA8: @ 0x0806AEA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x82
	ldrh r5, [r6]
	ldr r0, _0806AED4 @ =0x0000FFDF
	ands r0, r5
	strh r0, [r6]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _0806AECA
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
_0806AECA:
	adds r0, r4, #0
	bl sub_0807DDE4
	strh r5, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806AED4: .4byte 0x0000FFDF

	thumb_func_start sub_0806AED8
sub_0806AED8: @ 0x0806AED8
	push {lr}
	movs r1, #0
	strb r1, [r0, #0xe]
	bl sub_0806AEE4
	pop {pc}

	thumb_func_start sub_0806AEE4
sub_0806AEE4: @ 0x0806AEE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r7, r0, #0
	cmp r7, #0
	beq _0806AEF6
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0806AF5A
_0806AEF6:
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806EDD8
	adds r3, r0, #0
	cmp r3, #0
	bge _0806AF16
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r1, [r0]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	lsls r3, r1, #3
_0806AF16:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	asrs r1, r3, #1
	lsls r1, r1, #1
	ldr r2, _0806AF5C @ =gUnk_081125F4
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r5, [r0, #1]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0806AF3A
	adds r0, r3, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
_0806AF3A:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r4, #0
	adds r0, #0x5a
	strb r6, [r0]
	strb r5, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	strb r7, [r0]
	subs r1, #2
	movs r0, #0xff
	strb r0, [r1]
_0806AF5A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806AF5C: .4byte gUnk_081125F4

	thumb_func_start sub_0806AF60
sub_0806AF60: @ 0x0806AF60
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	ldr r1, [r1, #4]
	adds r1, r1, r2
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0806AF70
sub_0806AF70: @ 0x0806AF70
	movs r1, #0x90
	lsls r1, r1, #0xa
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806AF78
sub_0806AF78: @ 0x0806AF78
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	ldr r0, [r4, #0x34]
	cmp r0, #0
	blt _0806AF9E
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bgt _0806AF9E
	movs r0, #0
	str r0, [r4, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806AF70
_0806AF9E:
	pop {r4, r5, pc}

	thumb_func_start sub_0806AFA0
sub_0806AFA0: @ 0x0806AFA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806ED78
	cmp r0, #0
	beq _0806AFBA
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	rsbs r1, r1, #0
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
_0806AFBA:
	pop {r4, pc}

	thumb_func_start sub_0806AFBC
sub_0806AFBC: @ 0x0806AFBC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806AFE0 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806AFCC
	movs r0, #0
_0806AFCC:
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _0806AFE4 @ =gUnk_081126F0
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806AFE0: .4byte gUnk_02002A40
_0806AFE4: .4byte gUnk_081126F0

	thumb_func_start sub_0806AFE8
sub_0806AFE8: @ 0x0806AFE8
	push {lr}
	movs r2, #0
	str r2, [r1, #0x14]
	ldr r3, _0806B000 @ =gUnk_08112BF0
	ldrb r2, [r0, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0806B000: .4byte gUnk_08112BF0

	thumb_func_start sub_0806B004
sub_0806B004: @ 0x0806B004
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0806B050
	movs r0, #0x73
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806B048
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806B044
	movs r4, #3
	movs r0, #0x78
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B050
	movs r4, #2
	movs r0, #1
	str r0, [r5, #0x14]
	movs r0, #0x78
	bl sub_0807CCB4
	b _0806B050
_0806B044:
	movs r4, #4
	b _0806B050
_0806B048:
	movs r4, #1
	movs r0, #0x6a
	bl sub_0807CCB4
_0806B050:
	ldr r0, _0806B060 @ =gUnk_08112C40
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806B060: .4byte gUnk_08112C40

	thumb_func_start sub_0806B064
sub_0806B064: @ 0x0806B064
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0806B082
	movs r4, #1
	movs r0, #0x73
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806B082
	movs r4, #2
_0806B082:
	ldr r0, _0806B094 @ =gUnk_08112C4A
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B094: .4byte gUnk_08112C4A

	thumb_func_start sub_0806B098
sub_0806B098: @ 0x0806B098
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #2
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806B0C0
	movs r4, #1
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0806B0C0
	movs r0, #0x2a
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_0806B0C0:
	ldr r2, _0806B0DC @ =gUnk_08112C50
	ldrb r1, [r5, #0xb]
	subs r1, #7
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B0DC: .4byte gUnk_08112C50

	thumb_func_start sub_0806B0E0
sub_0806B0E0: @ 0x0806B0E0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0x38
	movs r1, #0xb8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r0, #0x48
	movs r1, #0xb8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r0, #0x38
	movs r1, #0xc8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r0, #0x48
	movs r1, #0xc8
	movs r2, #1
	bl sub_080002C0
	cmp r0, #0x57
	bne _0806B120
	movs r5, #1
_0806B120:
	ldr r0, _0806B130 @ =gUnk_08112C5C
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B130: .4byte gUnk_08112C5C

	thumb_func_start sub_0806B134
sub_0806B134: @ 0x0806B134
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x45
	bl GetInventoryValue
	cmp r0, #0
	beq _0806B158
	movs r4, #2
	movs r0, #0x7b
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B160
	movs r4, #1
	movs r0, #0x7b
	bl sub_0807CCB4
	b _0806B160
_0806B158:
	movs r4, #0
	movs r0, #0x4a
	bl sub_0807CD04
_0806B160:
	ldr r0, _0806B17C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #5
	bls _0806B16A
	movs r4, #3
_0806B16A:
	ldr r0, _0806B180 @ =gUnk_08112C60
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B17C: .4byte gUnk_02002A40
_0806B180: .4byte gUnk_08112C60

	thumb_func_start sub_0806B184
sub_0806B184: @ 0x0806B184
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B1C4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806B1C0 @ =gUnk_08112674
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B1CA
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0806B1CA
	.align 2, 0
_0806B1C0: .4byte gUnk_08112674
_0806B1C4:
	adds r0, r4, #0
	bl sub_08004274
_0806B1CA:
	pop {r4, pc}

	thumb_func_start sub_0806B1CC
sub_0806B1CC: @ 0x0806B1CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806B21E
	cmp r0, #1
	bgt _0806B1E0
	cmp r0, #0
	beq _0806B1E6
	b _0806B25C
_0806B1E0:
	cmp r0, #2
	beq _0806B24E
	b _0806B25C
_0806B1E6:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806B25C
_0806B21E:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806B238
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806B25C
_0806B238:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	b _0806B25C
_0806B24E:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806B25C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806B25C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806B260
sub_0806B260: @ 0x0806B260
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5, #0x14]
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806B29E
	movs r0, #0x29
	bl GetProgressFlag
	cmp r0, #0
	beq _0806B286
	movs r4, #2
	movs r0, #1
	str r0, [r5, #0x14]
	b _0806B2A0
_0806B286:
	movs r0, #0x7a
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B29A
	movs r4, #0
	movs r0, #0x7a
	bl sub_0807CCB4
	b _0806B2A0
_0806B29A:
	movs r4, #1
	b _0806B2A0
_0806B29E:
	movs r4, #3
_0806B2A0:
	ldr r0, _0806B2B0 @ =gUnk_08112D48
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806B2B0: .4byte gUnk_08112D48

	thumb_func_start sub_0806B2B4
sub_0806B2B4: @ 0x0806B2B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb3
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806B314
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B2D6
	movs r4, #1
	movs r0, #0
	bl sub_0807CD10
	b _0806B316
_0806B2D6:
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B2EA
	movs r4, #2
	movs r0, #1
	bl sub_0807CD10
	b _0806B316
_0806B2EA:
	movs r0, #2
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B2FE
	movs r4, #3
	movs r0, #2
	bl sub_0807CD10
	b _0806B316
_0806B2FE:
	movs r4, #4
	movs r0, #0
	bl sub_0807CD8C
	movs r0, #1
	bl sub_0807CD8C
	movs r0, #2
	bl sub_0807CD8C
	b _0806B316
_0806B314:
	movs r4, #0
_0806B316:
	ldr r0, _0806B328 @ =gUnk_08112D50
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B328: .4byte gUnk_08112D50

	thumb_func_start sub_0806B32C
sub_0806B32C: @ 0x0806B32C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806B352
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
	movs r1, #9
	bl sub_080042AC
	b _0806B358
_0806B352:
	adds r0, r2, #0
	bl sub_080042B8
_0806B358:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806B35C
sub_0806B35C: @ 0x0806B35C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r2, #0x13
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	adds r2, #0xb
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806FF88
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0806FFD8
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806B3AC
sub_0806B3AC: @ 0x0806B3AC
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B3C2
	adds r0, r2, #0
	bl sub_0806B41C
	b _0806B3C8
_0806B3C2:
	adds r0, r2, #0
	bl sub_0806B3CC
_0806B3C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806B3CC
sub_0806B3CC: @ 0x0806B3CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B3F4
	ldr r1, _0806B418 @ =gUnk_08112E1C
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B414
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08078778
_0806B3F4:
	adds r0, r4, #0
	bl sub_08004274
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0806B40E
	movs r0, #0
	strb r0, [r1]
	bl TextboxTryNoOverlap
_0806B40E:
	adds r0, r4, #0
	bl sub_0806ED78
_0806B414:
	pop {r4, pc}
	.align 2, 0
_0806B418: .4byte gUnk_08112E1C

	thumb_func_start sub_0806B41C
sub_0806B41C: @ 0x0806B41C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806B470
	cmp r0, #1
	bgt _0806B430
	cmp r0, #0
	beq _0806B436
	b _0806B4EC
_0806B430:
	cmp r0, #2
	beq _0806B4DE
	b _0806B4EC
_0806B436:
	ldr r1, _0806B46C @ =gUnk_08112E1C
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B4EC
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	bne _0806B462
	adds r0, r4, #0
	movs r1, #0x25
	movs r2, #0
	bl CreateFX
_0806B462:
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806B4EC
	.align 2, 0
_0806B46C: .4byte gUnk_08112E1C
_0806B470:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806B4D4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806B4C8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08002632
	ldr r1, _0806B4CC @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _0806B4B2
	adds r3, #6
_0806B4B2:
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0806B4D0 @ =gUnk_03003F80
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	b _0806B4EC
	.align 2, 0
_0806B4C8: .4byte gLinkEntity
_0806B4CC: .4byte gUnk_08001A7C
_0806B4D0: .4byte gUnk_03003F80
_0806B4D4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806B4EC
_0806B4DE:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806B4EC
	movs r0, #1
	strb r0, [r4, #0xc]
_0806B4EC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806B4F0
sub_0806B4F0: @ 0x0806B4F0
	push {lr}
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #3
	ldr r2, _0806B500 @ =gUnk_08112E2C
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806B500: .4byte gUnk_08112E2C

	thumb_func_start sub_0806B504
sub_0806B504: @ 0x0806B504
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #1
	movs r0, #0x21
	bl sub_0801E7F4
	cmp r0, #0
	beq _0806B518
	movs r4, #3
	b _0806B52A
_0806B518:
	movs r0, #0x86
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B52A
	movs r4, #0
	movs r0, #0x86
	bl sub_0807CCB4
_0806B52A:
	ldr r0, _0806B53C @ =gUnk_08112E54
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806B53C: .4byte gUnk_08112E54

	thumb_func_start sub_0806B540
sub_0806B540: @ 0x0806B540
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x84
	ldr r4, [r0]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0806B588
	cmp r0, #1
	bgt _0806B558
	cmp r0, #0
	beq _0806B562
	b _0806B600
_0806B558:
	cmp r0, #2
	beq _0806B5AC
	cmp r0, #3
	beq _0806B5EE
	b _0806B600
_0806B562:
	ldr r0, _0806B584 @ =0x00002312
	adds r1, r2, #0
	bl TextboxNoOverlap
	movs r0, #0x3f
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806B606
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0x3f
	bl sub_0807CCB4
	b _0806B600
	.align 2, 0
_0806B584: .4byte 0x00002312
_0806B588:
	ldr r0, _0806B5A4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806B600
	movs r0, #2
	strb r0, [r4, #0x18]
	ldr r0, _0806B5A8 @ =0x00002315
	adds r1, r2, #0
	bl TextboxNoOverlap
	b _0806B600
	.align 2, 0
_0806B5A4: .4byte gTextBox
_0806B5A8: .4byte 0x00002315
_0806B5AC:
	ldr r0, _0806B5D4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806B600
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0806B5D8 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B5DC
	movs r0, #0x58
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	b _0806B5E6
	.align 2, 0
_0806B5D4: .4byte gTextBox
_0806B5D8: .4byte gUnk_02002A40
_0806B5DC:
	movs r0, #0x3f
	movs r1, #0x64
	movs r2, #0
	bl sub_080A7C18
_0806B5E6:
	movs r0, #0xf
	bl sub_0807CD10
	b _0806B600
_0806B5EE:
	ldr r0, _0806B5FC @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _0806B600
	movs r0, #0x2d
	strh r0, [r4, #0x10]
	b _0806B606
	.align 2, 0
_0806B5FC: .4byte gLinkEntity
_0806B600:
	ldr r1, _0806B608 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806B606:
	pop {r4, pc}
	.align 2, 0
_0806B608: .4byte gUnk_02033280

	thumb_func_start sub_0806B60C
sub_0806B60C: @ 0x0806B60C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806B624
sub_0806B624: @ 0x0806B624
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B65C
	ldr r1, _0806B658 @ =gUnk_08112E1C
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806B662
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0806B662
	.align 2, 0
_0806B658: .4byte gUnk_08112E1C
_0806B65C:
	adds r0, r4, #0
	bl sub_08004274
_0806B662:
	pop {r4, pc}

	thumb_func_start sub_0806B664
sub_0806B664: @ 0x0806B664
	push {lr}
	ldr r2, _0806B678 @ =gUnk_08112F78
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806B678: .4byte gUnk_08112F78

	thumb_func_start sub_0806B67C
sub_0806B67C: @ 0x0806B67C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0xe]
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bls _0806B692
	b _0806B7B8
_0806B692:
	lsls r0, r0, #2
	ldr r1, _0806B69C @ =_0806B6A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806B69C: .4byte _0806B6A0
_0806B6A0: @ jump table
	.4byte _0806B6B8 @ case 0
	.4byte _0806B7A6 @ case 1
	.4byte _0806B70C @ case 2
	.4byte _0806B726 @ case 3
	.4byte _0806B7B0 @ case 4
	.4byte _0806B7A6 @ case 5
_0806B6B8:
	ldrh r0, [r6, #0x32]
	subs r0, #0xa0
	strh r0, [r6, #0x32]
	movs r0, #0xa0
	strb r0, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	adds r1, r6, #0
	adds r1, #0x63
	strb r0, [r1]
	movs r5, #0
_0806B6CE:
	movs r0, #0x3b
	movs r1, #2
	adds r2, r5, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806B6E0
	str r6, [r4, #0x50]
_0806B6E0:
	adds r5, #1
	cmp r5, #3
	bls _0806B6CE
	movs r0, #0x3b
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	str r6, [r4, #0x50]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	b _0806B7A6
_0806B70C:
	ldrb r1, [r6, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B71E
	ldrb r0, [r6, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x18]
_0806B71E:
	adds r0, r6, #0
	bl sub_0806B96C
	b _0806B7A6
_0806B726:
	movs r0, #1
	strb r0, [r6, #0xe]
	movs r0, #0x20
	strb r0, [r6, #0xf]
	movs r0, #0x3b
	movs r1, #4
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806B76C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	str r6, [r4, #0x50]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4, #0x1e]
_0806B76C:
	movs r0, #0x3b
	movs r1, #5
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806B7A6
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806FA24
	str r6, [r4, #0x50]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B7A6:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080042AC
	b _0806B7B8
_0806B7B0:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08004260
_0806B7B8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806B7BC
sub_0806B7BC: @ 0x0806B7BC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #3
	bl sub_0807CC3C
	cmp r0, #0
	bne _0806B7CC
	b _0806B968
_0806B7CC:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0806B84C
	cmp r0, #1
	bgt _0806B7DC
	cmp r0, #0
	beq _0806B7E6
	b _0806B93C
_0806B7DC:
	cmp r0, #2
	beq _0806B86C
	cmp r0, #3
	beq _0806B874
	b _0806B93C
_0806B7E6:
	ldrh r0, [r5, #0x32]
	adds r0, #1
	strh r0, [r5, #0x32]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B82C
	movs r0, #0x3b
	movs r1, #3
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	bne _0806B80C
	b _0806B968
_0806B80C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r0, _0806B828 @ =0x00001634
	bl TextboxTryNoOverlap
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	bl sub_0805E780
	b _0806B968
	.align 2, 0
_0806B828: .4byte 0x00001634
_0806B82C:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	ands r0, r1
	cmp r0, #0
	beq _0806B83A
	b _0806B95A
_0806B83A:
	movs r0, #0x20
	strb r0, [r5, #0xf]
	ldr r0, _0806B848 @ =0x000001A9
	bl PlaySFX
	b _0806B95A
	.align 2, 0
_0806B848: .4byte 0x000001A9
_0806B84C:
	adds r0, r5, #0
	bl sub_0806B9BC
	adds r4, r0, #0
	cmp r4, #0
	bne _0806B85C
	bl sub_0805E780
_0806B85C:
	movs r3, #0x84
	lsls r3, r3, #0xe
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	b _0806B95A
_0806B86C:
	adds r0, r5, #0
	bl sub_0806B96C
	b _0806B95A
_0806B874:
	ldrb r0, [r5, #0xd]
	cmp r0, #1
	beq _0806B8A2
	cmp r0, #1
	bgt _0806B884
	cmp r0, #0
	beq _0806B88E
	b _0806B91E
_0806B884:
	cmp r0, #2
	beq _0806B8C4
	cmp r0, #3
	beq _0806B906
	b _0806B91E
_0806B88E:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B91E
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0806B91E
_0806B8A2:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B91E
	movs r0, #2
	strb r0, [r5, #0xd]
	ldr r1, _0806B8C0 @ =0x0000013F
	adds r0, r5, #0
	bl sub_0801D2B4
	b _0806B8FA
	.align 2, 0
_0806B8C0: .4byte 0x0000013F
_0806B8C4:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B91E
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806B91E
	cmp r0, #0xa
	bne _0806B91E
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r0, #0xf4
	bl sub_08004488
	movs r0, #0
	strb r0, [r5, #0xe]
_0806B8FA:
	ldrb r1, [r5, #0xd]
	subs r1, #1
	adds r0, r5, #0
	bl sub_080042AC
	b _0806B91E
_0806B906:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B91E
	movs r0, #0
	bl sub_0807CD10
	bl sub_0805E780
_0806B91E:
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B95A
	movs r0, #0x20
	strb r0, [r5, #0xf]
	ldr r0, _0806B938 @ =0x000001A9
	bl PlaySFX
	b _0806B95A
	.align 2, 0
_0806B938: .4byte 0x000001A9
_0806B93C:
	adds r0, r5, #0
	bl sub_0806B9BC
	adds r4, r0, #0
	cmp r4, #0
	bne _0806B94E
	bl sub_0805E780
	b _0806B968
_0806B94E:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0806B968
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	beq _0806B962
_0806B95A:
	adds r0, r5, #0
	bl sub_080042B8
	b _0806B968
_0806B962:
	adds r0, r5, #0
	bl sub_08004274
_0806B968:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806B96C
sub_0806B96C: @ 0x0806B96C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806B9BC
	adds r5, r0, #0
	cmp r5, #0
	bne _0806B97E
	bl sub_0805E780
_0806B97E:
	ldrb r3, [r4, #0xb]
	lsls r3, r3, #1
	ldr r0, _0806B9B8 @ =gUnk_08112F80
	adds r3, r3, r0
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r3, #0x21
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0806B9B8: .4byte gUnk_08112F80

	thumb_func_start sub_0806B9BC
sub_0806B9BC: @ 0x0806B9BC
	push {lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0806B9CC
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0806B9CC
	movs r1, #0
_0806B9CC:
	adds r0, r1, #0
	pop {pc}

	thumb_func_start sub_0806B9D0
sub_0806B9D0: @ 0x0806B9D0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0806B9E6
	adds r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	bl sub_0807DD50
	b _0806B9EE
_0806B9E6:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0807DD94
_0806B9EE:
	pop {pc}

	thumb_func_start sub_0806B9F0
sub_0806B9F0: @ 0x0806B9F0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BA18
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD50
	ldr r1, _0806BA30 @ =gUnk_08114F30
	ldrb r2, [r4, #0x19]
	lsrs r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
_0806BA18:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0806BA30: .4byte gUnk_08114F30

	thumb_func_start sub_0806BA34
sub_0806BA34: @ 0x0806BA34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	ldr r0, _0806BA58 @ =0x00004912
	mov r8, r0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x73
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806BA60
	ldr r0, _0806BA5C @ =0x00004913
	mov r8, r0
	b _0806BB06
	.align 2, 0
_0806BA58: .4byte 0x00004912
_0806BA5C: .4byte 0x00004913
_0806BA60:
	movs r0, #0x39
	bl GetInventoryValue
	adds r7, r0, #0
	movs r0, #0x3a
	bl GetInventoryValue
	adds r6, r0, #0
	movs r0, #0x3b
	bl GetInventoryValue
	adds r5, r0, #0
	cmp r7, #1
	bne _0806BA88
	ldr r0, _0806BA84 @ =0x00004906
	mov r8, r0
	str r7, [r4, #0x14]
	b _0806BAA2
	.align 2, 0
_0806BA84: .4byte 0x00004906
_0806BA88:
	cmp r6, #1
	bne _0806BA98
	ldr r0, _0806BA94 @ =0x00004907
	mov r8, r0
	str r6, [r4, #0x14]
	b _0806BAA2
	.align 2, 0
_0806BA94: .4byte 0x00004907
_0806BA98:
	cmp r5, #1
	bne _0806BAB4
	ldr r0, _0806BAB0 @ =0x00004908
	mov r8, r0
	str r5, [r4, #0x14]
_0806BAA2:
	movs r0, #0x6b
	bl sub_0807CCB4
	movs r0, #0x6a
	bl sub_0807CCB4
	b _0806BB06
	.align 2, 0
_0806BAB0: .4byte 0x00004908
_0806BAB4:
	movs r0, #0x6a
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806BB06
	movs r0, #0x6b
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806BAD0
	ldr r0, _0806BACC @ =0x00004901
	b _0806BAD6
	.align 2, 0
_0806BACC: .4byte 0x00004901
_0806BAD0:
	cmp r7, #0
	bne _0806BAE4
	ldr r0, _0806BAE0 @ =0x00004902
_0806BAD6:
	mov r8, r0
	movs r0, #0x6b
	bl sub_0807CCB4
	b _0806BB06
	.align 2, 0
_0806BAE0: .4byte 0x00004902
_0806BAE4:
	cmp r6, #0
	bne _0806BAF8
	ldr r0, _0806BAF4 @ =0x00004903
	mov r8, r0
	movs r0, #0x6d
	bl sub_0807CCB4
	b _0806BB06
	.align 2, 0
_0806BAF4: .4byte 0x00004903
_0806BAF8:
	cmp r5, #0
	bne _0806BB06
	ldr r0, _0806BB18 @ =0x00004904
	mov r8, r0
	movs r0, #0x70
	bl sub_0807CCB4
_0806BB06:
	mov r0, r8
	mov r1, sb
	bl TextboxNoOverlap
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806BB18: .4byte 0x00004904

	thumb_func_start sub_0806BB1C
sub_0806BB1C: @ 0x0806BB1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #1
	rsbs r4, r4, #0
	movs r0, #0x39
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BB34
	movs r4, #0x39
	b _0806BB52
_0806BB34:
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BB42
	movs r4, #0x3a
	b _0806BB52
_0806BB42:
	movs r0, #0x3b
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BB4E
	movs r4, #0x3b
_0806BB4E:
	cmp r4, #0
	ble _0806BB78
_0806BB52:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0806BB70
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08095BE0
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_08004260
	movs r0, #0xcd
	bl PlaySFX
	b _0806BB78
_0806BB70:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807CAA0
_0806BB78:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806BB7C
sub_0806BB7C: @ 0x0806BB7C
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x39
	bl GetInventoryValue
	cmp r0, #2
	bne _0806BBAC
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #2
	bne _0806BBAC
	movs r0, #0x3b
	bl GetInventoryValue
	cmp r0, #2
	bne _0806BBAC
	movs r0, #0x73
	bl sub_0807CCB4
	movs r0, #1
	str r0, [r4, #0x14]
_0806BBAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BBB0
sub_0806BBB0: @ 0x0806BBB0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806BBCC
	movs r0, #0x29
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	b _0806BBCE
_0806BBCC:
	movs r1, #2
_0806BBCE:
	ldr r0, _0806BBE0 @ =gUnk_08113078
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806BBE0: .4byte gUnk_08113078

	thumb_func_start sub_0806BBE4
sub_0806BBE4: @ 0x0806BBE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BC40
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806BC28 @ =gUnk_08113140
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806BC54
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0806BC2C
	movs r0, #6
	b _0806BC2E
	.align 2, 0
_0806BC28: .4byte gUnk_08113140
_0806BC2C:
	movs r0, #2
_0806BC2E:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0806BC58
	adds r0, r4, #0
	bl sub_0807DD64
_0806BC40:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
_0806BC54:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BC58
sub_0806BC58: @ 0x0806BC58
	push {lr}
	movs r1, #2
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BC64
sub_0806BC64: @ 0x0806BC64
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806BC94
sub_0806BC94: @ 0x0806BC94
	push {lr}
	ldrb r3, [r0, #0x18]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	rsbs r2, r3, #0
	orrs r2, r3
	asrs r2, r2, #0x1f
	movs r3, #8
	ands r2, r3
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	adds r1, r1, r2
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BCB8
sub_0806BCB8: @ 0x0806BCB8
	ldrb r1, [r0, #0xe]
	strb r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806BCC0
sub_0806BCC0: @ 0x0806BCC0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0806BCD0
	adds r0, r1, #0
	bl sub_0806F188
_0806BCD0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BCD4
sub_0806BCD4: @ 0x0806BCD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BCE8
sub_0806BCE8: @ 0x0806BCE8
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _0806BCF8 @ =gUnk_08113158
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806BCF8: .4byte gUnk_08113158

	thumb_func_start sub_0806BCFC
sub_0806BCFC: @ 0x0806BCFC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BD4C
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806BD48 @ =gUnk_08113140
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806BD52
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0806BC58
	adds r0, r4, #0
	movs r1, #3
	bl sub_080042AC
	b _0806BD52
	.align 2, 0
_0806BD48: .4byte gUnk_08113140
_0806BD4C:
	adds r0, r4, #0
	bl sub_080042B8
_0806BD52:
	pop {r4, pc}

	thumb_func_start sub_0806BD54
sub_0806BD54: @ 0x0806BD54
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BD6A
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806BD72
_0806BD6A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_0806BD72:
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806BD94
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
_0806BD94:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806BDAA
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x7c
	bl sub_08004488
_0806BDAA:
	pop {r4, pc}

	thumb_func_start sub_0806BDAC
sub_0806BDAC: @ 0x0806BDAC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806BDE6
	cmp r0, #1
	bgt _0806BDC0
	cmp r0, #0
	beq _0806BDC6
	b _0806BE3A
_0806BDC0:
	cmp r0, #2
	beq _0806BE26
	b _0806BE3A
_0806BDC6:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806BE3A
_0806BDE6:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806BE1C
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806BE18 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _0806BE3A
	.align 2, 0
_0806BE18: .4byte gLinkEntity
_0806BE1C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806BE3A
_0806BE26:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806BE3A
	movs r0, #1
	strb r0, [r4, #0xc]
_0806BE3A:
	pop {r4, pc}

	thumb_func_start sub_0806BE3C
sub_0806BE3C: @ 0x0806BE3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806BE54
sub_0806BE54: @ 0x0806BE54
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806BE7A
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
	bl sub_080042AC
	b _0806BE80
_0806BE7A:
	adds r0, r2, #0
	bl sub_080042B8
_0806BE80:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806BE84
sub_0806BE84: @ 0x0806BE84
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r5, #1
	movs r0, #0x69
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806BEA6
	movs r5, #0
	movs r0, #0x69
	bl sub_0807CCB4
	movs r0, #1
	str r0, [r4, #0x14]
_0806BEA6:
	movs r0, #0x3c
	bl GetInventoryValue
	cmp r0, #1
	bls _0806BEB2
	movs r5, #2
_0806BEB2:
	ldr r0, _0806BEC4 @ =gUnk_08113344
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806BEC4: .4byte gUnk_08113344

	thumb_func_start sub_0806BEC8
sub_0806BEC8: @ 0x0806BEC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	str r4, [r5, #0x14]
	movs r0, #0x3c
	bl GetInventoryValue
	cmp r0, #1
	bne _0806BEE2
	movs r4, #1
	str r4, [r5, #0x14]
	b _0806BEE8
_0806BEE2:
	cmp r0, #1
	bls _0806BEE8
	movs r4, #2
_0806BEE8:
	ldr r0, _0806BEF8 @ =gUnk_0811334A
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806BEF8: .4byte gUnk_0811334A

	thumb_func_start sub_0806BEFC
sub_0806BEFC: @ 0x0806BEFC
	push {lr}
	movs r0, #0xbf
	lsls r0, r0, #1
	ldr r1, _0806BF2C @ =0x0000058E
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0806BF30 @ =0x0000017F
	ldr r1, _0806BF34 @ =0x0000058F
	movs r2, #1
	bl sub_0807B314
	movs r0, #0xc0
	lsls r0, r0, #1
	ldr r1, _0806BF38 @ =0x000005CE
	movs r2, #1
	bl sub_0807B314
	ldr r0, _0806BF3C @ =0x00000181
	ldr r1, _0806BF40 @ =0x000005CF
	movs r2, #1
	bl sub_0807B314
	pop {pc}
	.align 2, 0
_0806BF2C: .4byte 0x0000058E
_0806BF30: .4byte 0x0000017F
_0806BF34: .4byte 0x0000058F
_0806BF38: .4byte 0x000005CE
_0806BF3C: .4byte 0x00000181
_0806BF40: .4byte 0x000005CF

	thumb_func_start sub_0806BF44
sub_0806BF44: @ 0x0806BF44
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r3, _0806BF78 @ =gRoomControls
	movs r5, #0xa
	ldrsh r1, [r3, r5]
	subs r0, r0, r1
	adds r0, #0x10
	ldr r1, _0806BF7C @ =0x0000010F
	cmp r0, r1
	bhi _0806BF76
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	adds r0, #0x18
	cmp r0, #0xcf
	bhi _0806BF76
	movs r0, #1
	str r0, [r4, #0x14]
_0806BF76:
	pop {r4, r5, pc}
	.align 2, 0
_0806BF78: .4byte gRoomControls
_0806BF7C: .4byte 0x0000010F

	thumb_func_start sub_0806BF80
sub_0806BF80: @ 0x0806BF80
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806BFBE
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BFA2
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
_0806BFA2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806BFD8
	b _0806BFD4
_0806BFBE:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806BFD4
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0806BFD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BFD8
sub_0806BFD8: @ 0x0806BFD8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r5, #3
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #1
	beq _0806BFF0
	cmp r1, #2
	beq _0806C002
	b _0806C00A
_0806BFF0:
	bl sub_08000E50
	adds r1, r0, #0
	ands r1, r5
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_08004260
	b _0806C00A
_0806C002:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0806C00A:
	pop {r4, r5, pc}

	thumb_func_start sub_0806C00C
sub_0806C00C: @ 0x0806C00C
	push {lr}
	adds r2, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0806C022
	movs r0, #1
_0806C022:
	str r0, [r2, #0x14]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806C028
sub_0806C028: @ 0x0806C028
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	ldr r1, [r1, #4]
	adds r1, r1, r2
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_0806C038
sub_0806C038: @ 0x0806C038
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806C074 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r4, r0, #5
	cmp r4, #0
	beq _0806C048
	movs r4, #0
_0806C048:
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806C086
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #0
	bne _0806C078
	movs r4, #6
	movs r0, #0xaf
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806C086
	movs r4, #5
	movs r0, #0xaf
	bl sub_0807CCB4
	b _0806C086
	.align 2, 0
_0806C074: .4byte gUnk_02002A40
_0806C078:
	movs r4, #7
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #1
	bls _0806C086
	movs r4, #0
_0806C086:
	ldr r0, _0806C098 @ =gUnk_081133A4
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806C098: .4byte gUnk_081133A4

	thumb_func_start sub_0806C09C
sub_0806C09C: @ 0x0806C09C
	push {lr}
	ldr r3, _0806C0AC @ =gUnk_081133B4
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	pop {pc}
	.align 2, 0
_0806C0AC: .4byte gUnk_081133B4

	thumb_func_start sub_0806C0B0
sub_0806C0B0: @ 0x0806C0B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r5, r0, #0
	cmp r5, #0
	bne _0806C104
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	ldr r1, _0806C100 @ =gLCDControls
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	strh r0, [r4, #0x24]
	str r5, [r4, #0x20]
	b _0806C134
	.align 2, 0
_0806C100: .4byte gLCDControls
_0806C104:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsls r3, r0, #8
	ldr r0, [r4, #0x20]
	adds r3, r3, r0
	asrs r3, r3, #0x10
	cmp r3, #0x10
	ble _0806C11E
	movs r3, #0x10
_0806C11E:
	cmp r3, #3
	bgt _0806C124
	movs r3, #4
_0806C124:
	ldr r2, _0806C138 @ =gLCDControls
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	strh r1, [r4, #0x24]
_0806C134:
	pop {r4, r5, pc}
	.align 2, 0
_0806C138: .4byte gLCDControls

	thumb_func_start sub_0806C13C
sub_0806C13C: @ 0x0806C13C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806C182
	cmp r0, #1
	bgt _0806C150
	cmp r0, #0
	beq _0806C156
	b _0806C1D2
_0806C150:
	cmp r0, #2
	beq _0806C1BE
	b _0806C1D2
_0806C156:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C1D2
_0806C182:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C1B4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806C1B0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C1D2
	.align 2, 0
_0806C1B0: .4byte gLinkEntity
_0806C1B4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806C1D2
_0806C1BE:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806C1D2
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x88
	bl sub_0807CCB4
_0806C1D2:
	pop {r4, pc}

	thumb_func_start sub_0806C1D4
sub_0806C1D4: @ 0x0806C1D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806C1FA
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
	bl sub_080042AC
	b _0806C200
_0806C1FA:
	adds r0, r2, #0
	bl sub_080042B8
_0806C200:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806C204
sub_0806C204: @ 0x0806C204
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0806C21A
	adds r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	bl sub_0807DD50
	b _0806C222
_0806C21A:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0807DD94
_0806C222:
	pop {pc}

	thumb_func_start sub_0806C224
sub_0806C224: @ 0x0806C224
	push {lr}
	ldr r0, _0806C234 @ =gUnk_0813AD60
	bl sub_08080840
	ldr r1, _0806C238 @ =gUnk_030010A0
	movs r0, #6
	strb r0, [r1, #9]
	pop {pc}
	.align 2, 0
_0806C234: .4byte gUnk_0813AD60
_0806C238: .4byte gUnk_030010A0

	thumb_func_start sub_0806C23C
sub_0806C23C: @ 0x0806C23C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xf
	movs r2, #0x43
	movs r3, #0
	bl sub_080A2988
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0806C27C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, #0x38
	ldrb r2, [r4]
	movs r0, #0x73
	bl sub_0807B314
	movs r0, #0x73
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_0806C27C: .4byte gRoomControls

	thumb_func_start sub_0806C280
sub_0806C280: @ 0x0806C280
	push {lr}
	movs r0, #0x50
	bl sub_0807CD04
	ldr r0, _0806C298 @ =gUnk_0813AD74
	bl sub_08080840
	ldr r1, _0806C29C @ =gUnk_030010A0
	movs r0, #6
	strb r0, [r1, #9]
	pop {pc}
	.align 2, 0
_0806C298: .4byte gUnk_0813AD74
_0806C29C: .4byte gUnk_030010A0

	thumb_func_start sub_0806C2A0
sub_0806C2A0: @ 0x0806C2A0
	push {lr}
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0806C2AE
	cmp r0, #1
	beq _0806C2B8
	b _0806C2C0
_0806C2AE:
	movs r0, #0xd
	movs r1, #4
	bl DoFade
	b _0806C2C0
_0806C2B8:
	movs r0, #0xc
	movs r1, #4
	bl DoFade
_0806C2C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806C2C4
sub_0806C2C4: @ 0x0806C2C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806C2FA
	cmp r0, #1
	bgt _0806C2D8
	cmp r0, #0
	beq _0806C2DE
	b _0806C350
_0806C2D8:
	cmp r0, #2
	beq _0806C342
	b _0806C350
_0806C2DE:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C350
_0806C2FA:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C338
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806C334 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C350
	.align 2, 0
_0806C334: .4byte gLinkEntity
_0806C338:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806C350
_0806C342:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806C350
	movs r0, #1
	strb r0, [r4, #0xc]
_0806C350:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806C354
sub_0806C354: @ 0x0806C354
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806C36C
sub_0806C36C: @ 0x0806C36C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806C392
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
	movs r1, #6
	bl sub_080042AC
	b _0806C398
_0806C392:
	adds r0, r2, #0
	bl sub_080042B8
_0806C398:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806C39C
sub_0806C39C: @ 0x0806C39C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0806C3E2
	cmp r5, #1
	bgt _0806C3B0
	cmp r5, #0
	beq _0806C3B6
	b _0806C450
_0806C3B0:
	cmp r5, #2
	beq _0806C436
	b _0806C450
_0806C3B6:
	adds r0, r4, #0
	bl sub_0806C454
	cmp r0, #0
	beq _0806C450
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C450
_0806C3E2:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C420
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806C41C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C450
	.align 2, 0
_0806C41C: .4byte gLinkEntity
_0806C420:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	b _0806C450
_0806C436:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806C450
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
_0806C450:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806C454
sub_0806C454: @ 0x0806C454
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806C470 @ =gUnk_08113754
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806C474
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #1
	b _0806C476
	.align 2, 0
_0806C470: .4byte gUnk_08113754
_0806C474:
	movs r0, #0
_0806C476:
	pop {r4, pc}

	thumb_func_start sub_0806C478
sub_0806C478: @ 0x0806C478
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806C4A8
sub_0806C4A8: @ 0x0806C4A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0806C4D8
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r1, r0, #0
	cmp r1, #0
	bge _0806C4CC
	movs r1, #3
_0806C4CC:
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
	movs r0, #1
_0806C4D8:
	str r0, [r5, #0x14]
	pop {r4, r5, pc}

	thumb_func_start sub_0806C4DC
sub_0806C4DC: @ 0x0806C4DC
	push {lr}
	ldr r1, _0806C4F0 @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _0806C4F4 @ =gUnk_08113760
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806C4F0: .4byte gUnk_02002A40
_0806C4F4: .4byte gUnk_08113760

	thumb_func_start sub_0806C4F8
sub_0806C4F8: @ 0x0806C4F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806C510
sub_0806C510: @ 0x0806C510
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806C548
	adds r0, r4, #0
	bl sub_0806C454
	cmp r0, #0
	beq _0806C54E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	subs r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0806C54E
_0806C548:
	adds r0, r4, #0
	bl sub_08004274
_0806C54E:
	pop {r4, pc}

	thumb_func_start sub_0806C550
sub_0806C550: @ 0x0806C550
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806C56E
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C576
_0806C56E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_0806C576:
	pop {r4, pc}

	thumb_func_start sub_0806C578
sub_0806C578: @ 0x0806C578
	push {lr}
	ldr r0, _0806C584 @ =gUnk_0813AD10
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806C584: .4byte gUnk_0813AD10

	thumb_func_start sub_0806C588
sub_0806C588: @ 0x0806C588
	push {lr}
	ldr r0, _0806C594 @ =gUnk_0813AD24
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806C594: .4byte gUnk_0813AD24

	thumb_func_start sub_0806C598
sub_0806C598: @ 0x0806C598
	push {lr}
	ldr r0, _0806C5A4 @ =gUnk_0813AD38
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806C5A4: .4byte gUnk_0813AD38

	thumb_func_start sub_0806C5A8
sub_0806C5A8: @ 0x0806C5A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xc]
	cmp r4, #1
	beq _0806C604
	cmp r4, #1
	bgt _0806C5BC
	cmp r4, #0
	beq _0806C5C2
	b _0806C670
_0806C5BC:
	cmp r4, #2
	beq _0806C656
	b _0806C670
_0806C5C2:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806C600 @ =gUnk_08113910
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806C670
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xe]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x69
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0807DD50
	b _0806C670
	.align 2, 0
_0806C600: .4byte gUnk_08113910
_0806C604:
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C64C
	movs r0, #0
	strb r1, [r5, #0xc]
	strb r0, [r2]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806C648 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	bl sub_0806F5A4
	ldrb r1, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08004260
	adds r0, r5, #0
	bl sub_0806F118
	b _0806C670
	.align 2, 0
_0806C648: .4byte gLinkEntity
_0806C64C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806C670
_0806C656:
	adds r0, r5, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806C670
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08004260
_0806C670:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806C674
sub_0806C674: @ 0x0806C674
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806C68C
sub_0806C68C: @ 0x0806C68C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	ldrb r6, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r5, #0x3f
	ands r5, r0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806C6D2
	adds r2, #3
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	b _0806C70A
_0806C6D2:
	adds r2, #6
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	adds r2, r5, #3
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806FF88
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0806FFD8
	adds r0, r4, #0
	bl sub_0807000C
_0806C70A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0806C70C
sub_0806C70C: @ 0x0806C70C
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806C730 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806C71C
	movs r0, #0
_0806C71C:
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _0806C734 @ =gUnk_08113930
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806C730: .4byte gUnk_02002A40
_0806C734: .4byte gUnk_08113930

	thumb_func_start sub_0806C738
sub_0806C738: @ 0x0806C738
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806C778
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806C774 @ =gUnk_08113910
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806C77E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0806C77E
	.align 2, 0
_0806C774: .4byte gUnk_08113910
_0806C778:
	adds r0, r4, #0
	bl sub_08004274
_0806C77E:
	pop {r4, pc}

	thumb_func_start sub_0806C780
sub_0806C780: @ 0x0806C780
	push {lr}
	ldr r2, _0806C794 @ =gUnk_08113A7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806C794: .4byte gUnk_08113A7C

	thumb_func_start sub_0806C798
sub_0806C798: @ 0x0806C798
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806C7D0 @ =gUnk_08113A1C
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806C7CE
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0807DD50
	adds r0, r4, #0
	bl sub_0806C7D4
_0806C7CE:
	pop {r4, pc}
	.align 2, 0
_0806C7D0: .4byte gUnk_08113A1C

	thumb_func_start sub_0806C7D4
sub_0806C7D4: @ 0x0806C7D4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0806C7F4
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C82C
_0806C7F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bne _0806C82C
	movs r0, #0x58
	bl GetProgressFlag
	cmp r0, #0
	bne _0806C82C
	movs r0, #0x63
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806C82C
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	beq _0806C82C
	movs r0, #7
	strb r0, [r4, #0xb]
	ldr r1, _0806C830 @ =gUnk_08014A80
	adds r0, r4, #0
	bl sub_0807DD80
_0806C82C:
	pop {r4, pc}
	.align 2, 0
_0806C830: .4byte gUnk_08014A80

	thumb_func_start sub_0806C834
sub_0806C834: @ 0x0806C834
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806C858 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806C856
	ldrb r0, [r2, #0xc]
	subs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
	adds r0, r2, #0
	bl sub_08004260
_0806C856:
	pop {pc}
	.align 2, 0
_0806C858: .4byte gTextBox

	thumb_func_start sub_0806C85C
sub_0806C85C: @ 0x0806C85C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806C86C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806C86C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806C870
sub_0806C870: @ 0x0806C870
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806C888
sub_0806C888: @ 0x0806C888
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r7, #0x3f
	ands r7, r1
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0806C8D4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #9
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	adds r2, r7, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_0806FFD8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	b _0806C90A
_0806C8D4:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C8E2
	movs r6, #1
	movs r5, #0
	b _0806C8E6
_0806C8E2:
	movs r6, #0
	movs r5, #1
_0806C8E6:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FF60
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
_0806C90A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0806C90C
sub_0806C90C: @ 0x0806C90C
	push {lr}
	movs r2, #0
	str r2, [r1, #0x14]
	ldr r3, _0806C924 @ =gUnk_08113A8C
	ldrb r2, [r0, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0806C924: .4byte gUnk_08113A8C

	thumb_func_start sub_0806C928
sub_0806C928: @ 0x0806C928
	push {lr}
	ldr r1, _0806C93C @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _0806C940 @ =gUnk_08113ABC
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806C93C: .4byte gUnk_02002A40
_0806C940: .4byte gUnk_08113ABC

	thumb_func_start sub_0806C944
sub_0806C944: @ 0x0806C944
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	bl GetProgressFlag
	cmp r0, #0
	bne _0806C956
	movs r1, #0
	b _0806C964
_0806C956:
	movs r0, #0x63
	bl sub_0807CBD0
	movs r1, #2
	cmp r0, #0
	beq _0806C964
	movs r1, #1
_0806C964:
	ldr r0, _0806C974 @ =gUnk_08113B0C
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806C974: .4byte gUnk_08113B0C

	thumb_func_start sub_0806C978
sub_0806C978: @ 0x0806C978
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, _0806C998 @ =gUnk_08113B12
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806C998: .4byte gUnk_08113B12

	thumb_func_start sub_0806C99C
sub_0806C99C: @ 0x0806C99C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x58
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r4, r1, #0x1f
	movs r0, #2
	ands r4, r0
	movs r0, #0x63
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806C9BC
	adds r4, #1
_0806C9BC:
	ldr r0, _0806C9CC @ =gUnk_08113B16
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806C9CC: .4byte gUnk_08113B16

	thumb_func_start sub_0806C9D0
sub_0806C9D0: @ 0x0806C9D0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x64
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806C9E2
	movs r4, #1
_0806C9E2:
	ldr r0, _0806C9F4 @ =gUnk_08113B1E
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806C9F4: .4byte gUnk_08113B1E

	thumb_func_start sub_0806C9F8
sub_0806C9F8: @ 0x0806C9F8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, _0806CA18 @ =gUnk_08113B22
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806CA18: .4byte gUnk_08113B22

	thumb_func_start sub_0806CA1C
sub_0806CA1C: @ 0x0806CA1C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806CA28 @ =0x0000251B
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806CA28: .4byte 0x0000251B

	thumb_func_start sub_0806CA2C
sub_0806CA2C: @ 0x0806CA2C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806CA38 @ =0x00002527
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806CA38: .4byte 0x00002527

	thumb_func_start sub_0806CA3C
sub_0806CA3C: @ 0x0806CA3C
	push {lr}
	ldr r1, _0806CA48 @ =gUnk_08113B28
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806CA48: .4byte gUnk_08113B28

	thumb_func_start sub_0806CA4C
sub_0806CA4C: @ 0x0806CA4C
	push {lr}
	ldr r1, _0806CA58 @ =gUnk_08113B30
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806CA58: .4byte gUnk_08113B30

	thumb_func_start sub_0806CA5C
sub_0806CA5C: @ 0x0806CA5C
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, _0806CA8C @ =gUnk_08113B38
	ldrb r1, [r4, #0x18]
	adds r2, r1, #1
	strb r2, [r4, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r1, r3
	ldrb r1, [r1]
	strh r1, [r4, #0x10]
	ldrb r0, [r0, #0xb]
	cmp r0, #0xa
	bne _0806CA7E
	movs r0, #0xe8
	bl sub_08004488
_0806CA7E:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0806CA8A
	ldr r1, _0806CA90 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806CA8A:
	pop {r4, pc}
	.align 2, 0
_0806CA8C: .4byte gUnk_08113B38
_0806CA90: .4byte gUnk_02033280

	thumb_func_start sub_0806CA94
sub_0806CA94: @ 0x0806CA94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806CAD4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _0806CAD0 @ =gUnk_08113A1C
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806CADA
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _0806CADA
	.align 2, 0
_0806CAD0: .4byte gUnk_08113A1C
_0806CAD4:
	adds r0, r4, #0
	bl sub_08004274
_0806CADA:
	pop {r4, pc}

	thumb_func_start sub_0806CADC
sub_0806CADC: @ 0x0806CADC
	push {lr}
	ldr r2, _0806CAF0 @ =gUnk_08113D8C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806CAF0: .4byte gUnk_08113D8C

	thumb_func_start sub_0806CAF4
sub_0806CAF4: @ 0x0806CAF4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0806CB66
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #0x4a
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806CB2C
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0806CB2C:
	movs r0, #0x4a
	movs r1, #2
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806CB4E
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_0806CB4E:
	adds r0, r5, #0
	bl sub_0807DD64
	adds r0, r5, #0
	bl sub_08078778
	ldr r3, _0806CB7C @ =gUnk_08113D84
	ldrb r2, [r3, #4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08078850
_0806CB66:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_0806CB7C: .4byte gUnk_08113D84

	thumb_func_start sub_0806CB80
sub_0806CB80: @ 0x0806CB80
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806CB9E
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806CB9E:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0806CBB0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	adds r0, #0x21
	strb r0, [r4, #0x1e]
_0806CBB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CBB4
sub_0806CBB4: @ 0x0806CBB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806CBD6
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_08004260
_0806CBD6:
	adds r0, r4, #0
	bl sub_08004274
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0806CC06
	ldrb r0, [r4, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r0
	strb r2, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806CC06
	adds r0, r2, #0
	ands r0, r3
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0806CC06:
	pop {r4, pc}

	thumb_func_start sub_0806CC08
sub_0806CC08: @ 0x0806CC08
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806CC40
	cmp r0, #1
	bgt _0806CC1C
	cmp r0, #0
	beq _0806CC22
	b _0806CCB0
_0806CC1C:
	cmp r0, #2
	beq _0806CC96
	b _0806CCB0
_0806CC22:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_0806CC40:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806CC80
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806CC7C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _0806CCB0
	.align 2, 0
_0806CC7C: .4byte gLinkEntity
_0806CC80:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	b _0806CCB0
_0806CC96:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806CCB0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080042AC
_0806CCB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CCB4
sub_0806CCB4: @ 0x0806CCB4
	push {lr}
	adds r2, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0806CCCA
	movs r0, #1
_0806CCCA:
	str r0, [r2, #0x14]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806CCD0
sub_0806CCD0: @ 0x0806CCD0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	cmp r2, #0
	beq _0806CCF4
	ldrb r1, [r3, #0x14]
	lsrs r1, r1, #1
	adds r1, r2, r1
	adds r0, r3, #0
	bl sub_08004260
	movs r0, #1
	str r0, [r4, #0x14]
	b _0806CCF6
_0806CCF4:
	str r2, [r4, #0x14]
_0806CCF6:
	pop {r4, pc}

	thumb_func_start sub_0806CCF8
sub_0806CCF8: @ 0x0806CCF8
	push {lr}
	movs r1, #0x85
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD04
sub_0806CD04: @ 0x0806CD04
	push {lr}
	ldr r1, _0806CD10 @ =0x0000010B
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0806CD10: .4byte 0x0000010B

	thumb_func_start sub_0806CD14
sub_0806CD14: @ 0x0806CD14
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD20
sub_0806CD20: @ 0x0806CD20
	push {lr}
	ldr r1, _0806CD2C @ =0x0000010D
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0806CD2C: .4byte 0x0000010D

	thumb_func_start sub_0806CD30
sub_0806CD30: @ 0x0806CD30
	push {lr}
	movs r1, #0x87
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD3C
sub_0806CD3C: @ 0x0806CD3C
	push {lr}
	ldr r1, _0806CD48 @ =0x0000010F
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0806CD48: .4byte 0x0000010F

	thumb_func_start sub_0806CD4C
sub_0806CD4C: @ 0x0806CD4C
	push {lr}
	movs r1, #0x88
	lsls r1, r1, #1
	bl sub_0801D2B4
	pop {pc}

	thumb_func_start sub_0806CD58
sub_0806CD58: @ 0x0806CD58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806CD70
sub_0806CD70: @ 0x0806CD70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806CD9E
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #6
	bl sub_080042AC
	b _0806CDA4
_0806CD9E:
	adds r0, r4, #0
	bl sub_080042B8
_0806CDA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CDA8
sub_0806CDA8: @ 0x0806CDA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #1
	beq _0806CDE8
	cmp r1, #1
	bgt _0806CDBC
	cmp r1, #0
	beq _0806CDC2
	b _0806CE58
_0806CDBC:
	cmp r1, #2
	beq _0806CE3E
	b _0806CE58
_0806CDC2:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806CE58
_0806CDE8:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806CE28
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806CE24 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _0806CE58
	.align 2, 0
_0806CE24: .4byte gLinkEntity
_0806CE28:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	b _0806CE58
_0806CE3E:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806CE58
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080042AC
_0806CE58:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806CE5C
sub_0806CE5C: @ 0x0806CE5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	ldr r3, _0806CE7C @ =gUnk_08113F44
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_0806CE7C: .4byte gUnk_08113F44

	thumb_func_start sub_0806CE80
sub_0806CE80: @ 0x0806CE80
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806CEB4 @ =gUnk_02002A40
	ldrb r4, [r0, #8]
	cmp r4, #5
	bne _0806CED6
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806CEC0
	movs r0, #0x70
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806CEBC
	movs r0, #0x71
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806CEB8
	movs r4, #0xb
	movs r0, #0x71
	bl sub_0807CCB4
	b _0806CED6
	.align 2, 0
_0806CEB4: .4byte gUnk_02002A40
_0806CEB8:
	movs r4, #0xc
	b _0806CED6
_0806CEBC:
	movs r4, #0xa
	b _0806CED6
_0806CEC0:
	movs r0, #0x89
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806CED4
	movs r4, #0xd
	movs r0, #0x89
	bl sub_0807CCB4
	b _0806CED6
_0806CED4:
	movs r4, #0xe
_0806CED6:
	lsls r1, r4, #3
	ldr r0, _0806CEE4 @ =gUnk_08113F48
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_0806F1AC
	pop {r4, r5, pc}
	.align 2, 0
_0806CEE4: .4byte gUnk_08113F48

	thumb_func_start sub_0806CEE8
sub_0806CEE8: @ 0x0806CEE8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806CF0E
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
	movs r1, #8
	bl sub_080042AC
	b _0806CF14
_0806CF0E:
	adds r0, r2, #0
	bl sub_080042B8
_0806CF14:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806CF18
sub_0806CF18: @ 0x0806CF18
	push {lr}
	ldr r2, _0806CF2C @ =gUnk_081140D4
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806CF2C: .4byte gUnk_081140D4

	thumb_func_start sub_0806CF30
sub_0806CF30: @ 0x0806CF30
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0806CF5E
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	ldrh r1, [r5, #0x2e]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0806D0B0
	adds r0, r5, #0
	bl sub_0807DD64
	b _0806CF6C
_0806CF5E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
_0806CF6C:
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	beq _0806CFD4
	cmp r0, #2
	bgt _0806D000
	cmp r0, #0
	blt _0806D000
	ldr r0, _0806CFCC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806D000
	ldr r0, _0806CFD0 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldrh r3, [r5, #0x2e]
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	adds r4, r0, #0
	cmp r2, r1
	bge _0806CFA8
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	subs r0, #0x20
	cmp r0, r1
	bge _0806CFA8
	subs r0, r3, #1
	strh r0, [r5, #0x2e]
_0806CFA8:
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	ldrh r2, [r5, #0x2e]
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	cmp r1, r0
	ble _0806D000
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r0, #0x20
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	cmp r0, r1
	ble _0806D000
	adds r0, r2, #1
	strh r0, [r5, #0x2e]
	b _0806D000
	.align 2, 0
_0806CFCC: .4byte gUnk_030010A0
_0806CFD0: .4byte gLinkEntity
_0806CFD4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D000
	bl sub_08000E50
	adds r4, r0, #0
	ldr r1, _0806D008 @ =gUnk_081140CC
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySFX
	movs r0, #7
	ands r4, r0
	lsls r4, r4, #4
	adds r4, #0x80
	strb r4, [r5, #0xe]
_0806D000:
	adds r0, r5, #0
	bl sub_0806D02C
	pop {r4, r5, pc}
	.align 2, 0
_0806D008: .4byte gUnk_081140CC

	thumb_func_start sub_0806D00C
sub_0806D00C: @ 0x0806D00C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #0
	bl sub_0805EB2C
	cmp r0, #0
	beq _0806D028
	str r0, [r4, #0x50]
_0806D028:
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_0806D02C
sub_0806D02C: @ 0x0806D02C
	push {lr}
	bl sub_0806D164
	ldr r2, _0806D0A8 @ =gLCDControls
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _0806D0AC @ =0x00003F3F
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3d
	strh r0, [r1]
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r0, r3
	cmp r0, #0
	bge _0806D060
	movs r0, #0
_0806D060:
	cmp r0, #0xf0
	ble _0806D066
	movs r0, #0xf0
_0806D066:
	cmp r1, #0
	bge _0806D06C
	movs r1, #0
_0806D06C:
	cmp r1, #0xf0
	ble _0806D072
	movs r1, #0xf0
_0806D072:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	adds r1, r0, r3
	cmp r0, #0
	bge _0806D08A
	movs r0, #0
_0806D08A:
	cmp r0, #0xa0
	ble _0806D090
	movs r0, #0xa0
_0806D090:
	cmp r1, #0
	bge _0806D096
	movs r1, #0
_0806D096:
	cmp r1, #0xa0
	ble _0806D09C
	movs r1, #0xa0
_0806D09C:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1]
	pop {pc}
	.align 2, 0
_0806D0A8: .4byte gLCDControls
_0806D0AC: .4byte 0x00003F3F

	thumb_func_start sub_0806D0B0
sub_0806D0B0: @ 0x0806D0B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806D0E8 @ =gUnk_0200B650
	movs r1, #0
	str r1, [r0]
	movs r0, #0x30
	bl sub_0801D7EC
	bl sub_0806D110
	ldr r5, _0806D0EC @ =gUnk_02002F00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_0801D630
	cmp r4, #0
	beq _0806D0DA
	adds r0, r4, #0
	bl sub_0806D164
_0806D0DA:
	ldr r0, _0806D0F0 @ =gLCDControls
	ldr r1, _0806D0F4 @ =0x00001D47
	strh r1, [r0, #0x14]
	str r5, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_0806D0E8: .4byte gUnk_0200B650
_0806D0EC: .4byte gUnk_02002F00
_0806D0F0: .4byte gLCDControls
_0806D0F4: .4byte 0x00001D47

	thumb_func_start sub_0806D0F8
sub_0806D0F8: @ 0x0806D0F8
	push {lr}
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	bl sub_0805EB00
	cmp r0, #0
	beq _0806D10C
	bl sub_0806D0B0
_0806D10C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D110
sub_0806D110: @ 0x0806D110
	push {r4, r5, lr}
	ldr r4, _0806D134 @ =gUnk_02002F00
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D138
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r5, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D138
	pop {r4, r5, pc}
	.align 2, 0
_0806D134: .4byte gUnk_02002F00

	thumb_func_start sub_0806D138
sub_0806D138: @ 0x0806D138
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, _0806D15C @ =0x040000D4
	ldr r6, _0806D160 @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_0806D146:
	str r3, [r2]
	str r1, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	adds r3, #0x40
	adds r1, r1, r5
	cmp r4, #0x1f
	bls _0806D146
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806D15C: .4byte 0x040000D4
_0806D160: .4byte 0x80000020

	thumb_func_start sub_0806D164
sub_0806D164: @ 0x0806D164
	push {r4, r5, r6, r7, lr}
	ldr r5, _0806D1B8 @ =gRoomControls
	movs r1, #0xa
	ldrsh r2, [r5, r1]
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	subs r2, r2, r1
	adds r2, #0xa0
	ldr r4, _0806D1BC @ =gLCDControls
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	strh r1, [r4, #0x16]
	ldrh r1, [r5, #0xc]
	ldrh r0, [r0, #0x32]
	subs r1, r1, r0
	adds r1, #0xb0
	strh r1, [r4, #0x18]
	ldr r3, _0806D1C0 @ =gUnk_02006F00
	ldr r0, _0806D1C4 @ =0xFFFFC000
	adds r6, r3, r0
	movs r5, #0x20
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r3, r2, r3
	adds r7, r4, #0
	ldr r1, _0806D1C8 @ =0x040000D4
	ldr r4, _0806D1CC @ =0x80000020
	movs r2, #0x80
	lsls r2, r2, #1
_0806D1A0:
	str r3, [r1]
	str r6, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, r3, r2
	adds r6, #0x40
	subs r5, #1
	cmp r5, #0
	bne _0806D1A0
	movs r0, #1
	strh r0, [r7, #0x1a]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806D1B8: .4byte gRoomControls
_0806D1BC: .4byte gLCDControls
_0806D1C0: .4byte gUnk_02006F00
_0806D1C4: .4byte 0xFFFFC000
_0806D1C8: .4byte 0x040000D4
_0806D1CC: .4byte 0x80000020

	thumb_func_start sub_0806D1D0
sub_0806D1D0: @ 0x0806D1D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _0806D21A
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D1E6
	bl sub_0805E780
_0806D1E6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x1e]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806D21A:
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0806D25A
	cmp r0, #1
	ble _0806D228
	cmp r0, #2
	beq _0806D25E
_0806D228:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D24A
	bl sub_08000E50
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	movs r0, #1
	strb r0, [r4, #0x1e]
_0806D24A:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0806D268
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0806D268
_0806D25A:
	strb r0, [r4, #0x1e]
	b _0806D268
_0806D25E:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0806D268:
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x32]
	pop {r4, r5, pc}

	thumb_func_start sub_0806D274
sub_0806D274: @ 0x0806D274
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D2CA
	adds r0, r4, #0
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D28C
	bl sub_0805E780
_0806D28C:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0x1e]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #0x4c
	movs r1, #3
	movs r2, #0
	bl CreateNPC
	cmp r0, #0
	beq _0806D2CA
	str r4, [r0, #0x54]
_0806D2CA:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _0806D2F4
	lsls r0, r0, #2
	ldr r1, _0806D2DC @ =_0806D2E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806D2DC: .4byte _0806D2E0
_0806D2E0: @ jump table
	.4byte _0806D2F4 @ case 0
	.4byte _0806D2F4 @ case 1
	.4byte _0806D31C @ case 2
	.4byte _0806D334 @ case 3
	.4byte _0806D338 @ case 4
_0806D2F4:
	ldr r0, _0806D318 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0806D338
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D33C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	movs r1, #1
	eors r0, r1
	b _0806D33A
	.align 2, 0
_0806D318: .4byte gTextBox
_0806D31C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D33C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	movs r1, #1
	eors r0, r1
	b _0806D33A
_0806D334:
	movs r0, #4
	b _0806D33A
_0806D338:
	movs r0, #2
_0806D33A:
	strb r0, [r4, #0x1e]
_0806D33C:
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x32]
	pop {r4, pc}

	thumb_func_start sub_0806D348
sub_0806D348: @ 0x0806D348
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D39A
	adds r0, r4, #0
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D360
	bl sub_0805E780
_0806D360:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #5
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806D39A:
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0x1e]
	cmp r0, #4
	bne _0806D3AA
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	b _0806D3B2
_0806D3AA:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_0806D3B2:
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x32]
	pop {r4, pc}

	thumb_func_start sub_0806D3C0
sub_0806D3C0: @ 0x0806D3C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D3F4
	adds r0, r4, #0
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D3D8
	bl sub_0805E780
_0806D3D8:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0806D3F0 @ =gUnk_080FD180
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
	b _0806D408
	.align 2, 0
_0806D3F0: .4byte gUnk_080FD180
_0806D3F4:
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x2e]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
_0806D408:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D40C
sub_0806D40C: @ 0x0806D40C
	push {lr}
	ldrb r1, [r0, #0x18]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x18]
	bl sub_0806D41C
	pop {pc}

	thumb_func_start sub_0806D41C
sub_0806D41C: @ 0x0806D41C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D45E
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	b _0806D46C
_0806D45E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
_0806D46C:
	ldr r0, _0806D4A8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806D4BE
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r0, #0x20
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x40
	movs r3, #0x40
	bl sub_0806FBFC
	cmp r0, #0
	beq _0806D4AC
	adds r2, r4, #0
	adds r2, #0x63
	ldrb r3, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806D4BE
	subs r0, r3, #1
	strb r0, [r2]
	b _0806D4BE
	.align 2, 0
_0806D4A8: .4byte gUnk_030010A0
_0806D4AC:
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806D4BE
	adds r0, r2, #1
	strb r0, [r1]
_0806D4BE:
	pop {r4, pc}

	thumb_func_start sub_0806D4C0
sub_0806D4C0: @ 0x0806D4C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, #6
	movs r0, #0x4c
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D4EE
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806D4EE:
	pop {r4, r5, pc}

	thumb_func_start sub_0806D4F0
sub_0806D4F0: @ 0x0806D4F0
	push {lr}
	movs r1, #0
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D4FC
sub_0806D4FC: @ 0x0806D4FC
	push {lr}
	movs r1, #1
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D508
sub_0806D508: @ 0x0806D508
	push {lr}
	movs r1, #2
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D514
sub_0806D514: @ 0x0806D514
	push {lr}
	movs r1, #3
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D520
sub_0806D520: @ 0x0806D520
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D540
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0806D5B0 @ =gUnk_08114100
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r0, #6
	strb r0, [r4, #0xf]
	strb r0, [r4, #0x1e]
	movs r0, #8
	strb r0, [r4, #0xe]
_0806D540:
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r1, [r0, #0x32]
	strh r1, [r4, #0x32]
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806D590
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	lsls r1, r3, #4
	subs r0, r0, r1
	adds r0, #0xc
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x18
	movs r3, #0x40
	bl sub_0806FBFC
	cmp r0, #0
	beq _0806D5B4
_0806D590:
	ldrb r1, [r4, #0x1e]
	ldrb r0, [r4, #0xf]
	adds r0, #2
	cmp r1, r0
	bge _0806D5D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D5D0
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	b _0806D5CE
	.align 2, 0
_0806D5B0: .4byte gUnk_08114100
_0806D5B4:
	ldrb r1, [r4, #0x1e]
	ldrb r0, [r4, #0xf]
	cmp r1, r0
	bls _0806D5D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D5D0
	movs r0, #8
	strb r0, [r4, #0xe]
	subs r0, r1, #1
_0806D5CE:
	strb r0, [r4, #0x1e]
_0806D5D0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D5D4
sub_0806D5D4: @ 0x0806D5D4
	push {lr}
	bl sub_08053500
	movs r0, #0xd
	bl sub_0805436C
	adds r1, r0, #0
	cmp r1, #2
	beq _0806D5F0
	ldr r0, _0806D5FC @ =gUnk_02002A40
	adds r0, #0xb4
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
_0806D5F0:
	movs r0, #0xd
	movs r1, #0
	bl sub_0807CAA0
	pop {pc}
	.align 2, 0
_0806D5FC: .4byte gUnk_02002A40

	thumb_func_start sub_0806D600
sub_0806D600: @ 0x0806D600
	push {lr}
	movs r2, #0
	ldr r0, _0806D618 @ =gUnk_02002A40
	ldr r3, _0806D61C @ =0x00000494
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D612
	movs r2, #1
_0806D612:
	str r2, [r1, #0x14]
	pop {pc}
	.align 2, 0
_0806D618: .4byte gUnk_02002A40
_0806D61C: .4byte 0x00000494

	thumb_func_start sub_0806D620
sub_0806D620: @ 0x0806D620
	push {lr}
	movs r0, #0xd
	movs r1, #0
	bl sub_0807CAA0
	movs r0, #0xe
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D638
sub_0806D638: @ 0x0806D638
	ldrh r1, [r0, #0x32]
	subs r1, #0x20
	strh r1, [r0, #0x32]
	bx lr

	thumb_func_start sub_0806D640
sub_0806D640: @ 0x0806D640
	ldrh r1, [r0, #0x32]
	adds r1, #0x20
	movs r2, #0
	strh r1, [r0, #0x32]
	adds r0, #0x39
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D650
sub_0806D650: @ 0x0806D650
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D658
sub_0806D658: @ 0x0806D658
	ldr r1, [r1, #4]
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D660
sub_0806D660: @ 0x0806D660
	ldrb r1, [r0, #0x1b]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D66C
sub_0806D66C: @ 0x0806D66C
	ldrb r2, [r0, #0x1b]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D67C
sub_0806D67C: @ 0x0806D67C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0806D6CC @ =gUnk_08114104
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806D6CA
	adds r6, r1, #0
_0806D690:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	movs r2, #0x40
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D6C0
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldrb r0, [r4, #3]
	strb r0, [r1, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
_0806D6C0:
	adds r4, #4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, r6
	bne _0806D690
_0806D6CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806D6CC: .4byte gUnk_08114104

	thumb_func_start sub_0806D6D0
sub_0806D6D0: @ 0x0806D6D0
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D6EE
	movs r0, #2
	strb r0, [r1, #0xd]
_0806D6EE:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D706
	movs r0, #1
	strb r0, [r1, #0xd]
_0806D706:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D70C
sub_0806D70C: @ 0x0806D70C
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r2, r0, #0
	cmp r2, #0
	beq _0806D728
	strb r4, [r2, #0xd]
_0806D728:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r2, r0, #0
	cmp r2, #0
	beq _0806D746
	strb r4, [r2, #0xd]
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
_0806D746:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D74C
sub_0806D74C: @ 0x0806D74C
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D76A
	movs r0, #3
	strb r0, [r1, #0xd]
_0806D76A:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D782
	movs r0, #2
	strb r0, [r1, #0xd]
_0806D782:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D788
sub_0806D788: @ 0x0806D788
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D7A6
	movs r0, #4
	strb r0, [r1, #0xd]
_0806D7A6:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D7BE
	movs r0, #1
	strb r0, [r1, #0xd]
_0806D7BE:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D7C4
sub_0806D7C4: @ 0x0806D7C4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0806D800 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	movs r2, #0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0x18
	strh r0, [r4, #0x32]
	str r2, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	cmp r0, #0
	beq _0806D7FC
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DEDC
_0806D7FC:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_0806D800: .4byte gLinkEntity

	thumb_func_start sub_0806D804
sub_0806D804: @ 0x0806D804
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D83A
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806D83A:
	ldr r0, _0806D854 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	subs r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DEDC
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_0806D854: .4byte gLinkEntity

	thumb_func_start sub_0806D858
sub_0806D858: @ 0x0806D858
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D86C
sub_0806D86C: @ 0x0806D86C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D888
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
_0806D888:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D8A0
sub_0806D8A0: @ 0x0806D8A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	movs r0, #8
	strb r0, [r3, #0x19]
	ldr r0, [r3, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #8]
	str r2, [r3, #0x14]
	movs r2, #0x10
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0806D8C2
	rsbs r2, r2, #0
_0806D8C2:
	ldr r1, _0806D900 @ =gLinkEntity
	movs r5, #0x2e
	ldrsh r0, [r1, r5]
	adds r2, r2, r0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	adds r1, #2
	strh r2, [r3, #0x1e]
	strh r1, [r3, #0x22]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	subs r1, r1, r0
	adds r0, r2, #0
	bl sub_080045DA
	strb r0, [r4, #0x15]
	ldrb r2, [r4, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _0806D904 @ =gUnk_08114134
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r4, #0x14]
	pop {r4, r5, pc}
	.align 2, 0
_0806D900: .4byte gLinkEntity
_0806D904: .4byte gUnk_08114134

	thumb_func_start sub_0806D908
sub_0806D908: @ 0x0806D908
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldr r3, _0806D93C @ =gLinkEntity
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	ldrb r2, [r4, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _0806D940 @ =gUnk_08114144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r4, #0x14]
	pop {r4, r5, pc}
	.align 2, 0
_0806D93C: .4byte gLinkEntity
_0806D940: .4byte gUnk_08114144

	thumb_func_start sub_0806D944
sub_0806D944: @ 0x0806D944
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	movs r3, #0x41
	rsbs r3, r3, #0
	ands r3, r0
	strb r3, [r2, #0x18]
	ldr r0, _0806D968 @ =gLinkEntity
	ldr r1, [r2, #0x2c]
	ldr r0, [r0, #0x2c]
	cmp r1, r0
	bgt _0806D964
	movs r1, #0x40
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #0x18]
_0806D964:
	pop {pc}
	.align 2, 0
_0806D968: .4byte gLinkEntity

	thumb_func_start sub_0806D96C
sub_0806D96C: @ 0x0806D96C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x42
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _0806D99C
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _0806D9A0 @ =0xFFE80000
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0
	bl PositionRelative
_0806D99C:
	pop {r4, pc}
	.align 2, 0
_0806D9A0: .4byte 0xFFE80000

	thumb_func_start sub_0806D9A4
sub_0806D9A4: @ 0x0806D9A4
	push {lr}
	ldr r1, _0806D9BC @ =gLinkEntity
	ldr r2, [r0, #0x2c]
	ldr r0, [r1, #0x2c]
	adds r3, r1, #0
	cmp r2, r0
	bgt _0806D9C0
	ldrb r1, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0806D9C6
	.align 2, 0
_0806D9BC: .4byte gLinkEntity
_0806D9C0:
	ldrb r0, [r3, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0806D9C6:
	strb r0, [r3, #0x18]
	movs r0, #4
	strb r0, [r3, #0x14]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D9D0
sub_0806D9D0: @ 0x0806D9D0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806D9F8
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, _0806D9F4 @ =gUnk_080FD170
	str r0, [r2, #0x48]
	adds r0, r2, #0
	bl sub_0807DD50
	b _0806DA00
	.align 2, 0
_0806D9F4: .4byte gUnk_080FD170
_0806D9F8:
	adds r0, r2, #0
	movs r1, #0
	bl sub_0807DD94
_0806DA00:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806DA04
sub_0806DA04: @ 0x0806DA04
	push {lr}
	ldr r3, [r1, #4]
	lsls r3, r3, #3
	ldr r1, _0806DA18 @ =gUnk_0811415C
	adds r3, r3, r1
	ldrb r2, [r3, #4]
	movs r1, #1
	bl sub_08078850
	pop {pc}
	.align 2, 0
_0806DA18: .4byte gUnk_0811415C

	thumb_func_start sub_0806DA1C
sub_0806DA1C: @ 0x0806DA1C
	push {lr}
	ldr r3, _0806DA34 @ =gUnk_081141A4
	ldr r2, [r1, #4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _0806DA38 @ =gUnk_081141E4
	adds r2, r2, r1
	ldrb r1, [r2]
	bl sub_0808091C
	pop {pc}
	.align 2, 0
_0806DA34: .4byte gUnk_081141A4
_0806DA38: .4byte gUnk_081141E4

	thumb_func_start sub_0806DA3C
sub_0806DA3C: @ 0x0806DA3C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	subs r0, #1
	cmp r0, #0xa
	bhi _0806DA84
	lsls r0, r0, #2
	ldr r1, _0806DA54 @ =_0806DA58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DA54: .4byte _0806DA58
_0806DA58: @ jump table
	.4byte _0806DA88 @ case 0
	.4byte _0806DA8C @ case 1
	.4byte _0806DA90 @ case 2
	.4byte _0806DA94 @ case 3
	.4byte _0806DA98 @ case 4
	.4byte _0806DAA0 @ case 5
	.4byte _0806DAA0 @ case 6
	.4byte _0806DAA0 @ case 7
	.4byte _0806DAA0 @ case 8
	.4byte _0806DAA0 @ case 9
	.4byte _0806DA9C @ case 10
_0806DA84:
	movs r0, #0
	b _0806DAA6
_0806DA88:
	movs r0, #1
	b _0806DAA6
_0806DA8C:
	movs r0, #2
	b _0806DAA6
_0806DA90:
	movs r0, #3
	b _0806DAA6
_0806DA94:
	movs r0, #4
	b _0806DAA6
_0806DA98:
	movs r0, #5
	b _0806DAA6
_0806DA9C:
	movs r0, #9
	b _0806DAA6
_0806DAA0:
	adds r0, r2, #0
	bl sub_0801E99C
_0806DAA6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {pc}

	thumb_func_start sub_0806DAAC
sub_0806DAAC: @ 0x0806DAAC
	push {r4, lr}
	adds r4, r1, #0
	bl sub_0806DA3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801E7F4
	str r0, [r4, #0x14]
	ldr r2, _0806DACC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0806DACC: .4byte gUnk_02033280

	thumb_func_start sub_0806DAD0
sub_0806DAD0: @ 0x0806DAD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806DA3C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08078790
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DAE8
sub_0806DAE8: @ 0x0806DAE8
	push {lr}
	ldrb r0, [r0, #0xa]
	subs r0, #1
	cmp r0, #4
	bhi _0806DB3A
	lsls r0, r0, #2
	ldr r1, _0806DAFC @ =_0806DB00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DAFC: .4byte _0806DB00
_0806DB00: @ jump table
	.4byte _0806DB14 @ case 0
	.4byte _0806DB1C @ case 1
	.4byte _0806DB24 @ case 2
	.4byte _0806DB2C @ case 3
	.4byte _0806DB34 @ case 4
_0806DB14:
	movs r0, #0xee
	bl sub_0807CCB4
	b _0806DB3A
_0806DB1C:
	movs r0, #0xef
	bl sub_0807CCB4
	b _0806DB3A
_0806DB24:
	movs r0, #0xf0
	bl sub_0807CCB4
	b _0806DB3A
_0806DB2C:
	movs r0, #0xf1
	bl sub_0807CCB4
	b _0806DB3A
_0806DB34:
	movs r0, #0xf2
	bl sub_0807CCB4
_0806DB3A:
	movs r0, #0xcd
	bl PlaySFX
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806DB44
sub_0806DB44: @ 0x0806DB44
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0xee
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xef
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xf0
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xf1
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806DB82
	movs r0, #0xf2
	bl sub_0807CBD0
	cmp r0, #0
	beq _0806DB82
	movs r0, #1
	str r0, [r4, #0x14]
_0806DB82:
	pop {r4, pc}

	thumb_func_start sub_0806DB84
sub_0806DB84: @ 0x0806DB84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806DBE4 @ =gUnk_08114154
	str r0, [r5, #0x48]
	movs r0, #0x3e
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DBB6
	ldr r2, _0806DBE8 @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldr r1, _0806DBEC @ =gUnk_08016030
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_0806DBB6:
	movs r0, #0x3e
	movs r1, #5
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DBE2
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldr r1, _0806DBF0 @ =gUnk_0801606C
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
_0806DBE2:
	pop {r4, r5, pc}
	.align 2, 0
_0806DBE4: .4byte gUnk_08114154
_0806DBE8: .4byte 0xFFF80000
_0806DBEC: .4byte gUnk_08016030
_0806DBF0: .4byte gUnk_0801606C

	thumb_func_start sub_0806DBF4
sub_0806DBF4: @ 0x0806DBF4
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #1
	blo _0806DC36
	cmp r4, #4
	bls _0806DC04
	cmp r4, #6
	bne _0806DC36
_0806DC04:
	movs r4, #1
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC12
	movs r4, #2
_0806DC12:
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC1E
	movs r4, #3
_0806DC1E:
	movs r0, #4
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC2A
	movs r4, #4
_0806DC2A:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _0806DC36
	movs r4, #6
_0806DC36:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DC3C
sub_0806DC3C: @ 0x0806DC3C
	ldr r2, _0806DC54 @ =gUnk_02002A40
	adds r1, r2, #0
	adds r1, #0xb4
	ldrb r3, [r1]
	adds r1, r0, #0
	adds r1, #0x68
	strb r3, [r1]
	adds r2, #0xb5
	ldrb r1, [r2]
	adds r0, #0x69
	strb r1, [r0]
	bx lr
	.align 2, 0
_0806DC54: .4byte gUnk_02002A40

	thumb_func_start sub_0806DC58
sub_0806DC58: @ 0x0806DC58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x68
	ldrb r0, [r0]
	bl sub_0806DBF4
	movs r1, #0
	bl sub_08054414
	adds r4, #0x69
	ldrb r0, [r4]
	bl sub_0806DBF4
	movs r1, #1
	bl sub_08054414
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DC7C
sub_0806DC7C: @ 0x0806DC7C
	push {r4, lr}
	ldr r4, _0806DC84 @ =gUnk_081141F4
	b _0806DC94
	.align 2, 0
_0806DC84: .4byte gUnk_081141F4
_0806DC88:
	ldrh r1, [r4]
	adds r4, #2
	ldr r0, _0806DC9C @ =0x00004072
	movs r2, #1
	bl sub_0807B314
_0806DC94:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0806DC88
	pop {r4, pc}
	.align 2, 0
_0806DC9C: .4byte 0x00004072

	thumb_func_start sub_0806DCA0
sub_0806DCA0: @ 0x0806DCA0
	push {r4, lr}
	ldr r4, _0806DCA8 @ =gUnk_081141F4
	b _0806DCB6
	.align 2, 0
_0806DCA8: .4byte gUnk_081141F4
_0806DCAC:
	ldrh r0, [r4]
	adds r4, #2
	movs r1, #1
	bl sub_0807BA8C
_0806DCB6:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0806DCAC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DCC0
sub_0806DCC0: @ 0x0806DCC0
	ldr r0, _0806DCD0 @ =gUnk_030010A0
	movs r1, #0xf9
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	movs r1, #0xf8
	strh r1, [r0, #0x22]
	bx lr
	.align 2, 0
_0806DCD0: .4byte gUnk_030010A0

	thumb_func_start sub_0806DCD4
sub_0806DCD4: @ 0x0806DCD4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806DD40
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	subs r0, #1
	cmp r0, #0xa
	bhi _0806DD40
	lsls r0, r0, #2
	ldr r1, _0806DCF4 @ =_0806DCF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DCF4: .4byte _0806DCF8
_0806DCF8: @ jump table
	.4byte _0806DD24 @ case 0
	.4byte _0806DD24 @ case 1
	.4byte _0806DD24 @ case 2
	.4byte _0806DD24 @ case 3
	.4byte _0806DD24 @ case 4
	.4byte _0806DD2C @ case 5
	.4byte _0806DD2C @ case 6
	.4byte _0806DD2C @ case 7
	.4byte _0806DD2C @ case 8
	.4byte _0806DD2C @ case 9
	.4byte _0806DD34 @ case 10
_0806DD24:
	adds r0, r4, #0
	bl sub_0809623C
	b _0806DD40
_0806DD2C:
	adds r0, r4, #0
	bl sub_08096260
	b _0806DD40
_0806DD34:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806DB84
	movs r0, #0
	str r0, [r4, #0x48]
_0806DD40:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DD44
sub_0806DD44: @ 0x0806DD44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806DD5A
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080042AC
_0806DD5A:
	adds r0, r4, #0
	bl sub_080042B8
	adds r4, #0x59
	ldrb r0, [r4]
	cmp r0, #0xfe
	bne _0806DD74
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x14
	strb r0, [r4]
_0806DD74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DD78
sub_0806DD78: @ 0x0806DD78
	push {lr}
	ldr r2, _0806DD8C @ =gUnk_0811423C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806DD8C: .4byte gUnk_0811423C

	thumb_func_start sub_0806DD90
sub_0806DD90: @ 0x0806DD90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #1
	strb r0, [r7, #0xc]
	movs r0, #0x3b
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x3c
	bl GetProgressFlag
	cmp r0, #0
	beq _0806DDB8
	movs r4, #2
_0806DDB8:
	movs r0, #0x3d
	bl GetProgressFlag
	cmp r0, #0
	beq _0806DDC4
	movs r4, #3
_0806DDC4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08004260
	movs r0, #0x2e
	ldrsh r5, [r7, r0]
	movs r1, #0x32
	ldrsh r4, [r7, r1]
	ldr r2, _0806DEC0 @ =0x00004072
	mov sl, r2
	ldr r0, _0806DEC4 @ =gRoomControls
	mov r8, r0
	ldrh r1, [r0, #6]
	adds r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	ldrh r0, [r0, #8]
	adds r0, #0x10
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r7, #0x38
	mov sb, r7
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl sub_0800015E
	mov r2, r8
	ldrh r1, [r2, #6]
	adds r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl sub_0800015E
	mov r2, r8
	ldrh r1, [r2, #6]
	adds r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	subs r0, #0x10
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl sub_0800015E
	mov r2, r8
	ldrh r1, [r2, #6]
	subs r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	adds r0, #0x10
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl sub_0800015E
	mov r2, r8
	ldrh r1, [r2, #6]
	subs r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl sub_0800015E
	mov r1, r8
	ldrh r0, [r1, #6]
	subs r0, #0x18
	subs r5, r5, r0
	lsrs r5, r5, #4
	ands r5, r6
	ldrh r0, [r1, #8]
	subs r0, #0x10
	subs r4, r4, r0
	lsrs r4, r4, #4
	ands r4, r6
	lsls r4, r4, #6
	orrs r5, r4
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	adds r1, r5, #0
	bl sub_0800015E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806DEC0: .4byte 0x00004072
_0806DEC4: .4byte gRoomControls

	thumb_func_start sub_0806DEC8
sub_0806DEC8: @ 0x0806DEC8
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0806DED0
sub_0806DED0: @ 0x0806DED0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806DEF8 @ =gUnk_081142BC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806DEF4
	ldr r2, _0806DEFC @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
_0806DEF4:
	pop {r4, pc}
	.align 2, 0
_0806DEF8: .4byte gUnk_081142BC
_0806DEFC: .4byte gUnk_03003F80

	thumb_func_start sub_0806DF00
sub_0806DF00: @ 0x0806DF00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	bne _0806DF5C
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x51
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	str r0, [r4, #0x68]
	str r4, [r0, #0x50]
	movs r0, #0x51
	movs r1, #1
	movs r2, #1
	bl CreateNPC
	str r0, [r4, #0x6c]
	str r4, [r0, #0x50]
	movs r0, #0x51
	movs r1, #1
	movs r2, #2
	bl CreateNPC
	str r0, [r4, #0x70]
	str r4, [r0, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _0806DF58 @ =gUnk_030010A0
	strh r1, [r0, #6]
	adds r0, r4, #0
	bl sub_0806E014
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806DF6E
	.align 2, 0
_0806DF58: .4byte gUnk_030010A0
_0806DF5C:
	ldr r0, _0806DF70 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806E0DC
_0806DF6E:
	pop {r4, r5, pc}
	.align 2, 0
_0806DF70: .4byte gUnk_080FD150

	thumb_func_start sub_0806DF74
sub_0806DF74: @ 0x0806DF74
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	beq _0806DFB0
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806DF96
	ldr r1, [r4, #0x70]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
_0806DF96:
	ldr r1, [r4, #0x68]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x6c]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xe]
	movs r0, #0
	bl sub_0807CD10
_0806DFB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DFB4
sub_0806DFB4: @ 0x0806DFB4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x39
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806DFD6
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0xb]
	b _0806E00C
_0806DFD6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0806E00C
	strb r2, [r4, #0xe]
	ldrb r2, [r4, #0xf]
	movs r0, #0x35
	movs r1, #2
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0806DFF8
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
_0806DFF8:
	adds r0, r4, #0
	bl sub_080788E0
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	movs r0, #0x74
	movs r2, #2
	bl sub_0807B7D8
_0806E00C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_111
nullsub_111: @ 0x0806E010
	bx lr
	.align 2, 0

	thumb_func_start sub_0806E014
sub_0806E014: @ 0x0806E014
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08000E50
	movs r1, #0x70
	ands r1, r0
	lsrs r4, r1, #4
	movs r0, #0xff
	strb r0, [r5, #0xb]
	movs r0, #1
	rsbs r0, r0, #0
	adds r7, r0, #0
	strb r0, [r5, #0xe]
	movs r0, #0x93
	bl sub_0807CBD0
	adds r1, r0, #0
	cmp r1, #0
	bne _0806E088
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	lsls r1, r4, #1
	ldr r0, _0806E084 @ =gUnk_081142CC
	adds r6, r1, r0
	ldr r1, [r5, #0x68]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x68]
	movs r4, #0x90
	lsls r4, r4, #0xf
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x6c]
	ldrb r0, [r6, #1]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x6c]
	movs r2, #0xd0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x70]
	ldrb r0, [r1, #0xf]
	orrs r0, r7
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x70]
	adds r0, r5, #0
	bl sub_0806FA24
	b _0806E0D6
	.align 2, 0
_0806E084: .4byte gUnk_081142CC
_0806E088:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	lsls r1, r4, #2
	ldr r0, _0806E0D8 @ =gUnk_081142DC
	adds r6, r1, r0
	ldr r1, [r5, #0x68]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x68]
	movs r2, #0xe0
	lsls r2, r2, #0xe
	movs r4, #0x90
	lsls r4, r4, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x6c]
	ldrb r0, [r6, #1]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x6c]
	movs r2, #0xb0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x70]
	ldrb r0, [r6, #2]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x70]
	movs r2, #0xf0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
_0806E0D6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806E0D8: .4byte gUnk_081142DC

	thumb_func_start sub_0806E0DC
sub_0806E0DC: @ 0x0806E0DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	strb r6, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0xff
	beq _0806E138
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0806E134 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x76
	strh r1, [r5]
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0806E120
	bl sub_0805E7BC
	str r6, [r4, #0x54]
_0806E120:
	adds r0, r4, #0
	bl sub_08078828
	ldrh r1, [r5]
	movs r0, #0x73
	movs r2, #2
	bl sub_0807B7D8
	b _0806E13C
	.align 2, 0
_0806E134: .4byte gRoomControls
_0806E138:
	movs r0, #3
	strb r0, [r4, #0xc]
_0806E13C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806E140
sub_0806E140: @ 0x0806E140
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldrb r1, [r3, #0xb]
	cmp r1, #0
	beq _0806E1AC
	movs r0, #1
	str r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r2, [r1]
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	bne _0806E16E
	lsls r0, r2, #1
	b _0806E172
_0806E16E:
	lsls r0, r2, #1
	adds r0, r0, r2
_0806E172:
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806E18C @ =0x000003E7
	cmp r0, r1
	bls _0806E194
	strh r1, [r4]
	movs r0, #0
	str r0, [r5, #0x14]
	ldr r0, _0806E190 @ =0x0000421B
	bl TextboxTryNoOverlap
	b _0806E1C0
	.align 2, 0
_0806E18C: .4byte 0x000003E7
_0806E190: .4byte 0x0000421B
_0806E194:
	ldr r0, _0806E1A4 @ =0x00004218
	bl TextboxTryNoOverlap
	ldr r1, _0806E1A8 @ =gTextBox
	ldrh r0, [r4]
	str r0, [r1, #0x10]
	b _0806E1C0
	.align 2, 0
_0806E1A4: .4byte 0x00004218
_0806E1A8: .4byte gTextBox
_0806E1AC:
	str r1, [r5, #0x14]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r4, r3, #0
	adds r4, #0x76
	strh r1, [r4]
	ldr r0, _0806E1D4 @ =0x0000421C
	bl TextboxTryNoOverlap
_0806E1C0:
	ldr r1, _0806E1D8 @ =gUnk_030010A0
	ldrh r0, [r4]
	strh r0, [r1, #6]
	ldr r2, _0806E1DC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0806E1D4: .4byte 0x0000421C
_0806E1D8: .4byte gUnk_030010A0
_0806E1DC: .4byte gUnk_02033280

	thumb_func_start sub_0806E1E0
sub_0806E1E0: @ 0x0806E1E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E014
	ldr r0, [r4, #0x68]
	bl sub_0806E0DC
	ldr r0, [r4, #0x6c]
	bl sub_0806E0DC
	ldr r0, [r4, #0x70]
	bl sub_0806E0DC
	pop {r4, pc}

	thumb_func_start sub_0806E1FC
sub_0806E1FC: @ 0x0806E1FC
	push {lr}
	ldr r0, _0806E208 @ =gUnk_0813AD4C
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806E208: .4byte gUnk_0813AD4C

	thumb_func_start sub_0806E20C
sub_0806E20C: @ 0x0806E20C
	push {r4, lr}
	ldr r4, _0806E224 @ =gUnk_030010A0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _0806E230
	ldr r0, _0806E228 @ =0x0000421F
	bl TextboxTryNoOverlap
	ldr r1, _0806E22C @ =gTextBox
	ldrh r0, [r4, #6]
	str r0, [r1, #0x10]
	b _0806E236
	.align 2, 0
_0806E224: .4byte gUnk_030010A0
_0806E228: .4byte 0x0000421F
_0806E22C: .4byte gTextBox
_0806E230:
	ldr r0, _0806E238 @ =0x00004220
	bl TextboxTryNoOverlap
_0806E236:
	pop {r4, pc}
	.align 2, 0
_0806E238: .4byte 0x00004220

	thumb_func_start sub_0806E23C
sub_0806E23C: @ 0x0806E23C
	push {lr}
	ldr r1, _0806E24C @ =gUnk_030010A0
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0806E24A
	bl ModRupees
_0806E24A:
	pop {pc}
	.align 2, 0
_0806E24C: .4byte gUnk_030010A0

	thumb_func_start sub_0806E250
sub_0806E250: @ 0x0806E250
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x31
	bl sub_0801E7F4
	cmp r0, #0
	beq _0806E266
	movs r0, #1
	str r0, [r4, #0x14]
_0806E266:
	ldr r2, _0806E274 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0806E274: .4byte gUnk_02033280

	thumb_func_start sub_0806E278
sub_0806E278: @ 0x0806E278
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806E2A8
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0806E2A0 @ =gUnk_081142FC
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0807DD50
	ldr r3, _0806E2A4 @ =gUnk_08114304
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	b _0806E2B0
	.align 2, 0
_0806E2A0: .4byte gUnk_081142FC
_0806E2A4: .4byte gUnk_08114304
_0806E2A8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_0806E2B0:
	ldr r0, _0806E2CC @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E2D0
	ldrb r0, [r4, #0x18]
	subs r1, #0x84
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _0806E2DA
	.align 2, 0
_0806E2CC: .4byte gUnk_03003F80
_0806E2D0:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0806E2DA:
	pop {r4, pc}

	thumb_func_start sub_0806E2DC
sub_0806E2DC: @ 0x0806E2DC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806E300 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806E2EC
	movs r0, #0
_0806E2EC:
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _0806E304 @ =gUnk_08114308
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806E300: .4byte gUnk_02002A40
_0806E304: .4byte gUnk_08114308

	thumb_func_start sub_0806E308
sub_0806E308: @ 0x0806E308
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _0806E34C
	cmp r5, #1
	bgt _0806E31C
	cmp r5, #0
	beq _0806E322
	b _0806E3E0
_0806E31C:
	cmp r5, #2
	beq _0806E3C6
	b _0806E3E0
_0806E322:
	ldr r1, _0806E348 @ =gUnk_081144F0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806E3E0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806E3E0
	.align 2, 0
_0806E348: .4byte gUnk_081144F0
_0806E34C:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806E3BC
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _0806E3B0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08002632
	ldr r1, _0806E3B4 @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0x32
	bne _0806E398
	adds r3, #6
_0806E398:
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0806E3B8 @ =gUnk_03003F80
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	b _0806E3E0
	.align 2, 0
_0806E3B0: .4byte gLinkEntity
_0806E3B4: .4byte gUnk_08001A7C
_0806E3B8: .4byte gUnk_03003F80
_0806E3BC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806E3E0
_0806E3C6:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806E3E0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
_0806E3E0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806E3E4
sub_0806E3E4: @ 0x0806E3E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r2, #8
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_0806E418
sub_0806E418: @ 0x0806E418
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806E438 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806E428
	movs r0, #0
_0806E428:
	lsls r1, r0, #3
	ldr r0, _0806E43C @ =gUnk_081144FC
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806E438: .4byte gUnk_02002A40
_0806E43C: .4byte gUnk_081144FC

	thumb_func_start sub_0806E440
sub_0806E440: @ 0x0806E440
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806E458
sub_0806E458: @ 0x0806E458
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806E498
	ldr r1, _0806E494 @ =gUnk_081144F0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806E49E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08004260
	b _0806E49E
	.align 2, 0
_0806E494: .4byte gUnk_081144F0
_0806E498:
	adds r0, r4, #0
	bl sub_08004274
_0806E49E:
	pop {r4, pc}

	thumb_func_start sub_0806E4A0
sub_0806E4A0: @ 0x0806E4A0
	push {lr}
	ldr r2, _0806E4B4 @ =gUnk_081145B4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806E4B4: .4byte gUnk_081145B4

	thumb_func_start sub_0806E4B8
sub_0806E4B8: @ 0x0806E4B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_080787A8
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806E4EC
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806E4EC
sub_0806E4EC: @ 0x0806E4EC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0806E50E
	adds r0, #1
	strb r0, [r5, #0xd]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080042AC
_0806E50E:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E552
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0806E52A
	movs r0, #3
	b _0806E52C
_0806E52A:
	movs r0, #2
_0806E52C:
	strb r0, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, #0xd]
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0806E552
	ldr r4, _0806E560 @ =gUnk_081145C8
	bl sub_08000E50
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl sub_08004488
_0806E552:
	adds r0, r5, #0
	bl sub_0806E65C
	adds r0, r5, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0806E560: .4byte gUnk_081145C8

	thumb_func_start sub_0806E564
sub_0806E564: @ 0x0806E564
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806E5AA
	adds r0, #1
	strb r0, [r4, #0xd]
	bl sub_08000E50
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0806E590
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r2
	lsls r1, r1, #6
	subs r2, #0x42
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x18]
_0806E590:
	bl sub_08000E50
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
_0806E5AA:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0806E5D4
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806E5CE
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	b _0806E5D4
_0806E5CE:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0806E5D4:
	adds r0, r4, #0
	bl sub_0806E65C
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806E5E4
sub_0806E5E4: @ 0x0806E5E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806E622
	adds r0, #1
	strb r0, [r4, #0xd]
	bl sub_08000E50
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0806E612
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r5
	lsls r1, r1, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x18]
_0806E612:
	bl sub_08000E50
	adds r1, r0, #0
	ands r1, r5
	adds r1, #2
	adds r0, r4, #0
	bl sub_080042AC
_0806E622:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E638
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806E638:
	adds r0, r4, #0
	bl sub_0806E65C
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806E648
sub_0806E648: @ 0x0806E648
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806E658
	movs r0, #1
	strb r0, [r4, #0xc]
_0806E658:
	pop {r4, pc}
	.align 2, 0
	