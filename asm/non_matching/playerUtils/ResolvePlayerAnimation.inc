	.syntax unified
	push {r4, lr}
	ldr r3, _08079954 @ =gPlayerState
	ldr r2, [r3, #0x30]
	movs r0, #8
	ands r0, r2
	mov ip, r3
	cmp r0, #0
	beq _080799E4
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _0807995C
	ldr r4, _08079958 @ =0x0000092C
	b _08079AD8
	.align 2, 0
_08079954: .4byte gPlayerState
_08079958: .4byte 0x0000092C
_0807995C:
	mov r0, ip
	adds r0, #0x3d
	mov r3, ip
	ldrb r1, [r3, #0x1c]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _0807996E
	b _08079B14
_0807996E:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r2
	cmp r0, #0
	bne _08079A1E
	mov r4, ip
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079988
	ldr r4, _08079984 @ =0x00000414
	b _08079AD8
	.align 2, 0
_08079984: .4byte 0x00000414
_08079988:
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079A5C
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079A6C
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	beq _080799AA
	b _08079B14
_080799AA:
	cmp r1, #0
	beq _080799B0
	b _08079AA4
_080799B0:
	mov r1, ip
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080799BA
	b _08079B14
_080799BA:
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _080799D0
	ldr r0, _080799D8 @ =gArea
	ldrb r0, [r0, #0x17]
	cmp r0, #4
	bne _080799CC
	b _08079AD4
_080799CC:
	cmp r0, #5
	bne _080799DC
_080799D0:
	movs r4, #0x80
	lsls r4, r4, #3
	b _08079AD8
	.align 2, 0
_080799D8: .4byte gArea
_080799DC:
	ldr r4, _080799E0 @ =0x000002C2
	b _08079AD8
	.align 2, 0
_080799E0: .4byte 0x000002C2
_080799E4:
	mov r4, ip
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _080799F2
	movs r4, #0xd4
	lsls r4, r4, #2
	b _08079AD8
_080799F2:
	mov r0, ip
	adds r0, #0x3d
	mov r4, ip
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	beq _08079A04
	b _08079B14
_08079A04:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08079A14
	movs r4, #0x8b
	lsls r4, r4, #4
	b _08079AD8
_08079A14:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08079A24
_08079A1E:
	movs r4, #0x81
	lsls r4, r4, #4
	b _08079AD8
_08079A24:
	mov r1, ip
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08079A32
	movs r4, #0xa6
	lsls r4, r4, #2
	b _08079AD8
_08079A32:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	beq _08079A44
	ldr r4, _08079A40 @ =0x0000070C
	b _08079AD8
	.align 2, 0
_08079A40: .4byte 0x0000070C
_08079A44:
	mov r4, ip
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079A52
	movs r4, #0xb2
	lsls r4, r4, #1
	b _08079AD8
_08079A52:
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079A62
_08079A5C:
	movs r4, #0xa0
	lsls r4, r4, #2
	b _08079AD8
_08079A62:
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079A72
_08079A6C:
	movs r4, #0xa3
	lsls r4, r4, #2
	b _08079AD8
_08079A72:
	mov r0, ip
	ldrb r1, [r0, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	bne _08079B14
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _08079AA0
	ldr r0, _08079A98 @ =gArea
	ldrb r0, [r0, #0x17]
	ldr r4, _08079A9C @ =0x000002C2
	cmp r0, #4
	bne _08079AD8
	movs r4, #0xa6
	lsls r4, r4, #3
	b _08079AD8
	.align 2, 0
_08079A98: .4byte gArea
_08079A9C: .4byte 0x000002C2
_08079AA0:
	cmp r1, #0
	beq _08079AAA
_08079AA4:
	movs r4, #0xb4
	lsls r4, r4, #1
	b _08079AD8
_08079AAA:
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne _08079B14
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079AD4
	ldr r0, _08079ACC @ =gUnk_03000B80
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079B14
	ldr r4, _08079AD0 @ =0x00000604
	b _08079AD8
	.align 2, 0
_08079ACC: .4byte gUnk_03000B80
_08079AD0: .4byte 0x00000604
_08079AD4:
	movs r4, #0x80
	lsls r4, r4, #1
_08079AD8:
	mov r1, ip
	strh r4, [r1, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08079B10
	movs r3, #0
	movs r2, #0
	ldr r1, _08079B18 @ =gUnk_03000B80
_08079AE8:
	ldrb r0, [r1, #0xf]
	cmp r0, r3
	bls _08079AF0
	adds r3, r0, #0
_08079AF0:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _08079AE8
	mov r2, ip
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	blo _08079B14
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r2]
	cmp r0, r3
	bne _08079B10
	ldr r0, _08079B1C @ =gPlayerEntity
	bl UpdateAnimationSingleFrame
_08079B10:
	ldr r0, _08079B20 @ =gPlayerState
	strb r4, [r0]
_08079B14:
	pop {r4, pc}
	.align 2, 0
_08079B18: .4byte gUnk_03000B80
_08079B1C: .4byte gPlayerEntity
_08079B20: .4byte gPlayerState
	.syntax divided
