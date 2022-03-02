	.syntax unified
	push {r4, r5, lr}
	ldr r4, _08079804 @ =gPlayerState
	ldr r1, [r4, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807985C
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0807980C
	ldr r5, _08079808 @ =0x00000934
	b _0807991E
	.align 2, 0
_08079804: .4byte gPlayerState
_08079808: .4byte 0x00000934
_0807980C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079818
	movs r5, #0x82
	lsls r5, r5, #3
	b _0807991E
_08079818:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _080798A0
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	cmp r0, #0
	bne _0807991E
	movs r5, #0xb6
	lsls r5, r5, #1
	ldrb r1, [r4, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	bne _080798C2
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080798CE
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08079852
	movs r0, #1
	strb r0, [r1]
_08079852:
	ldr r5, _08079858 @ =0x00000404
	b _0807991E
	.align 2, 0
_08079858: .4byte 0x00000404
_0807985C:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0807992E
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0807986E
	movs r5, #0xd2
	lsls r5, r5, #2
	b _0807991E
_0807986E:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0807987A
	movs r5, #0xa6
	lsls r5, r5, #2
	b _0807991E
_0807987A:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0807988A
	movs r5, #0xe2
	lsls r5, r5, #3
	b _0807991E
_0807988A:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08079896
	movs r5, #0xb0
	lsls r5, r5, #1
	b _0807991E
_08079896:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080798A6
_080798A0:
	movs r5, #0xa1
	lsls r5, r5, #2
	b _0807991E
_080798A6:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	movs r5, #0xa4
	lsls r5, r5, #2
	cmp r0, #0
	bne _0807991E
	movs r5, #0xb6
	lsls r5, r5, #1
	ldrb r1, [r4, #0x1b]
	movs r0, #0x48
	ands r0, r1
	cmp r0, #0
	beq _080798C8
_080798C2:
	movs r0, #0x6c
	strb r0, [r4]
	b _0807992E
_080798C8:
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _080798FC
_080798CE:
	movs r0, #0
	bl sub_080793E4
	cmp r0, #0
	beq _0807991E
	bl sub_0807A500
	ldr r1, _080798F8 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xff
	beq _0807991E
	ldrb r1, [r4, #0x1b]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4, #0x1b]
	movs r5, #0xb8
	lsls r5, r5, #1
	b _0807991E
	.align 2, 0
_080798F8: .4byte gPlayerEntity
_080798FC:
	adds r1, r4, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807990A
	movs r0, #1
	strb r0, [r1]
_0807990A:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	movs r5, #0x82
	lsls r5, r5, #1
	cmp r0, #0
	beq _0807991E
	movs r5, #0xc1
	lsls r5, r5, #3
_0807991E:
	ldr r0, _08079930 @ =gPlayerState
	strh r5, [r0, #8]
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0807992E
	ldr r0, _08079934 @ =gPlayerEntity
	bl UpdateAnimationSingleFrame
_0807992E:
	pop {r4, r5, pc}
	.align 2, 0
_08079930: .4byte gPlayerState
_08079934: .4byte gPlayerEntity
	.syntax divided
