	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805FFD8
sub_0805FFD8: @ 0x0805FFD8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _08060044
	cmp r5, #1
	bgt _0805FFEC
	cmp r5, #0
	beq _0805FFF2
	b _0806008C
_0805FFEC:
	cmp r5, #2
	beq _0806007E
	b _0806008C
_0805FFF2:
	ldr r1, _0806003C @ =gUnk_0810A348
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806008C
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	ldr r1, _08060040 @ =gUnk_08109D18
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0807DAD0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806008C
	.align 2, 0
_0806003C: .4byte gUnk_0810A348
_08060040: .4byte gUnk_08109D18
_08060044:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806005E
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806008C
_0806005E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0xf0
	beq _0806008C
	adds r0, r4, #0
	bl sub_080600F0
	b _0806008C
_0806007E:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806008C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806008C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08060090
sub_08060090: @ 0x08060090
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

	thumb_func_start sub_080600A8
sub_080600A8: @ 0x080600A8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #0xff
	beq _080600BA
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
_080600BA:
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080600CA
	movs r2, #0xff
_080600CA:
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
	.align 2, 0

	thumb_func_start sub_080600F0
sub_080600F0: @ 0x080600F0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r3, [r0]
	cmp r3, #7
	bhi _08060120
	adds r0, #2
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060114
	movs r1, #0xfc
	ands r1, r3
	ldrb r0, [r4, #0xf]
	lsrs r0, r0, #1
	adds r3, r1, r0
	b _08060120
_08060114:
	movs r0, #0xfc
	ands r0, r3
	ldrb r2, [r4, #0x14]
	lsrs r1, r2, #1
	adds r3, r0, r1
	strb r2, [r4, #0xf]
_08060120:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r3, r0
	beq _08060132
	adds r0, r4, #0
	adds r1, r3, #0
	bl LoadAnimation
_08060132:
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08060144
	movs r1, #2
_08060144:
	adds r0, r4, #0
	bl sub_080042BA
	pop {r4, pc}

	thumb_func_start sub_0806014C
sub_0806014C: @ 0x0806014C
	push {lr}
	movs r1, #0
	strb r1, [r0, #0xe]
	bl sub_08060158
	pop {pc}

	thumb_func_start sub_08060158
sub_08060158: @ 0x08060158
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r7, r0, #0
	cmp r7, #0
	beq _0806016A
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080601CC
_0806016A:
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806EDD8
	adds r3, r0, #0
	cmp r3, #0
	bge _08060188
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	lsls r3, r0, #2
_08060188:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	asrs r1, r3, #1
	lsls r1, r1, #1
	ldr r2, _080601D0 @ =gUnk_08109C98
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r5, [r0, #1]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _080601AC
	adds r0, r3, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
_080601AC:
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
	movs r0, #0xf0
	strb r0, [r1]
_080601CC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080601D0: .4byte gUnk_08109C98

	thumb_func_start sub_080601D4
sub_080601D4: @ 0x080601D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080601E6
	movs r1, #2
	b _080601F2
_080601E6:
	movs r0, #0x17
	bl sub_0801E7F4
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
_080601F2:
	ldr r0, _08060204 @ =gUnk_0810A354
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_08060204: .4byte gUnk_0810A354

	thumb_func_start sub_08060208
sub_08060208: @ 0x08060208
	push {lr}
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #5
	ldr r2, _08060218 @ =gUnk_08109DC8
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_08060218: .4byte gUnk_08109DC8

	thumb_func_start sub_0806021C
sub_0806021C: @ 0x0806021C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5b
	bl GetInventoryValue
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _08060238
	movs r4, #2
_08060238:
	movs r0, #0x13
	bl GetInventoryValue
	cmp r0, #0
	beq _08060244
	movs r4, #3
_08060244:
	ldrb r1, [r5, #0xb]
	lsls r1, r1, #5
	lsls r0, r4, #3
	ldr r2, _08060258 @ =gUnk_08109DC8
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_0806F1AC
	pop {r4, r5, pc}
	.align 2, 0
_08060258: .4byte gUnk_08109DC8

	thumb_func_start sub_0806025C
sub_0806025C: @ 0x0806025C
	push {lr}
	ldrb r1, [r0, #0xb]
	lsls r1, r1, #5
	ldr r2, _0806026C @ =gUnk_08109DC8
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806026C: .4byte gUnk_08109DC8

	thumb_func_start sub_08060270
sub_08060270: @ 0x08060270
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _08060294
	movs r4, #1
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080602A8
	movs r4, #0
	movs r0, #0x29
	bl SetGlobalFlag
	b _080602A8
_08060294:
	movs r4, #3
	movs r0, #0x76
	bl CheckLocalFlag
	cmp r0, #0
	bne _080602A8
	movs r4, #2
	movs r0, #0x76
	bl SetLocalFlag
_080602A8:
	ldr r0, _080602B8 @ =gUnk_0810A35A
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_080602B8: .4byte gUnk_0810A35A

	thumb_func_start sub_080602BC
sub_080602BC: @ 0x080602BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x48
	bl GetInventoryValue
	cmp r0, #0
	beq _080602D6
	bl Random
	movs r1, #1
	ands r1, r0
	adds r2, r1, #2
	b _080602F0
_080602D6:
	ldr r0, _08060300 @ =gUnk_02002A40
	adds r2, r0, #0
	adds r2, #0xac
	ldr r1, _08060304 @ =gBombBagSizes
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r2]
	movs r2, #0
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080602F0
	movs r2, #1
_080602F0:
	ldr r0, _08060308 @ =gUnk_0810A362
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_08060300: .4byte gUnk_02002A40
_08060304: .4byte gBombBagSizes
_08060308: .4byte gUnk_0810A362

	thumb_func_start sub_0806030C
sub_0806030C: @ 0x0806030C
	push {lr}
	ldr r0, [r1, #4]
	bl ModBombs
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08060318
sub_08060318: @ 0x08060318
	push {r4, r5, lr}
	movs r5, #2
_0806031C:
	movs r0, #8
	movs r1, #2
	movs r2, #2
	bl sub_0805EB00
	adds r4, r0, #0
	cmp r4, #0
	beq _08060336
	bl sub_080A29BC
	adds r0, r4, #0
	bl DeleteEntity
_08060336:
	subs r5, #1
	cmp r5, #0
	bge _0806031C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08060340
sub_08060340: @ 0x08060340
	ldr r0, _08060350 @ =gUnk_02002A40
	movs r2, #0x92
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r0, [r0, #0x50]
	str r0, [r1]
	bx lr
	.align 2, 0
_08060350: .4byte gUnk_02002A40

	thumb_func_start sub_08060354
sub_08060354: @ 0x08060354
	push {r4, lr}
	ldr r0, _08060378 @ =gUnk_02002A40
	movs r2, #0x92
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r2, [r0, #0x50]
	ldr r0, [r1]
	subs r4, r2, r0
	movs r0, #0x3b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08060380
	cmp r4, #4
	ble _080603B0
	ldr r0, _0806037C @ =0x00008444
	b _080603B2
	.align 2, 0
_08060378: .4byte gUnk_02002A40
_0806037C: .4byte 0x00008444
_08060380:
	movs r0, #0x3c
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08060398
	cmp r4, #9
	ble _080603B0
	ldr r0, _08060394 @ =0x00008444
	b _080603B2
	.align 2, 0
_08060394: .4byte 0x00008444
_08060398:
	movs r0, #0x3d
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080603B0
	cmp r4, #0xe
	ble _080603B0
	ldr r0, _080603AC @ =0x00008444
	b _080603B2
	.align 2, 0
_080603AC: .4byte 0x00008444
_080603B0:
	movs r0, #0
_080603B2:
	pop {r4, pc}

	thumb_func_start sub_080603B4
sub_080603B4: @ 0x080603B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080603F4
	ldr r1, _080603F0 @ =gUnk_0810A348
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _080603FA
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
	movs r1, #6
	bl UpdateSprite
	b _080603FA
	.align 2, 0
_080603F0: .4byte gUnk_0810A348
_080603F4:
	adds r0, r4, #0
	bl sub_08004274
_080603FA:
	pop {r4, pc}
