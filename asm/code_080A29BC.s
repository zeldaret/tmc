	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080A29BC
sub_080A29BC: @ 0x080A29BC
	push {lr}
	movs r1, #2
	movs r2, #0
	bl CreateFX
	pop {pc}

	thumb_func_start sub_080A29C8
sub_080A29C8: @ 0x080A29C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A29F4
	ldr r1, _080A29F8 @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	adds r0, r0, r4
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, r0, r5
	strh r0, [r2, #0x32]
	adds r0, r2, #0
	adds r0, #0x38
	strb r6, [r0]
_080A29F4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A29F8: .4byte gUnk_03000BF0

	thumb_func_start sub_080A29FC
sub_080A29FC: @ 0x080A29FC
	push {lr}
	movs r1, #0x11
	movs r2, #0
	bl CreateFX
	pop {pc}

	thumb_func_start sub_080A2A08
sub_080A2A08: @ 0x080A2A08
	push {lr}
	movs r1, #6
	movs r2, #0
	bl CreateFX
	pop {pc}

	thumb_func_start sub_080A2A14
sub_080A2A14: @ 0x080A2A14
	push {lr}
	movs r1, #0xb
	movs r2, #0
	bl CreateFX
	pop {pc}

	thumb_func_start sub_080A2A20
sub_080A2A20: @ 0x080A2A20
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _080A2A38
	movs r0, #5
	strb r0, [r1, #0xe]
_080A2A38:
	adds r0, r1, #0
	pop {r4, pc}

	thumb_func_start sub_080A2A3C
sub_080A2A3C: @ 0x080A2A3C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080A2988
	adds r1, r0, #0
	cmp r1, #0
	beq _080A2A5E
	movs r0, #5
	strb r0, [r1, #0xe]
	adds r0, r1, #0
	adds r0, #0x86
	strh r6, [r0]
_080A2A5E:
	adds r0, r1, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A2A64
sub_080A2A64: @ 0x080A2A64
	push {lr}
	movs r1, #0x20
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _080A2A80
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
_080A2A80:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_080A2A84
sub_080A2A84: @ 0x080A2A84
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	bl sub_080A2A64
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2AD2
	bl sub_08000E50
	adds r4, r0, #0
	adds r5, #1
	adds r1, r5, #0
	bl __modsi3
	adds r1, r0, #0
	lsrs r4, r4, #8
	movs r7, #1
	adds r0, r4, #0
	ands r0, r7
	cmp r0, #0
	beq _080A2AB0
	rsbs r1, r1, #0
_080A2AB0:
	ldrh r0, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	lsrs r4, r4, #8
	adds r0, r4, #0
	adds r1, r5, #0
	bl __modsi3
	adds r1, r0, #0
	lsrs r4, r4, #8
	ands r4, r7
	cmp r4, #0
	beq _080A2ACC
	rsbs r1, r1, #0
_080A2ACC:
	ldrh r0, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
_080A2AD2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080A2AD4
sub_080A2AD4: @ 0x080A2AD4
	push {lr}
	movs r1, #0x21
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _080A2AF0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
_080A2AF0:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_080A2AF4
sub_080A2AF4: @ 0x080A2AF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_080A2AD4
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2B74
	bl sub_08000E50
	adds r7, r0, #0
	subs r1, r4, r5
	adds r1, #1
	bl __modsi3
	adds r4, r0, #0
	adds r4, r4, r5
	asrs r7, r7, #0x10
	movs r0, #0xff
	ands r7, r0
	ldr r0, _080A2B7C @ =gUnk_080C9160
	mov r8, r0
	lsls r0, r7, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x30]
	subs r1, r1, r0
	str r1, [r6, #0x30]
_080A2B74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2B7C: .4byte gUnk_080C9160

	thumb_func_start sub_080A2B80
sub_080A2B80: @ 0x080A2B80
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf
	movs r1, #0x26
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A2BE0
	bl sub_08000E50
	adds r3, r0, #0
	movs r1, #0xf
	adds r2, r3, #0
	ands r2, r1
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080A2BAA
	rsbs r2, r2, #0
_080A2BAA:
	lsrs r0, r3, #8
	ands r0, r1
	cmp r0, #4
	ble _080A2BB4
	rsbs r0, r0, #0
_080A2BB4:
	lsls r2, r2, #0x10
	lsls r3, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
_080A2BE0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A2BE4
sub_080A2BE4: @ 0x080A2BE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A2CBA
	lsrs r0, r1, #3
	cmp r0, #1
	beq _080A2C3C
	cmp r0, #1
	bgt _080A2C04
	cmp r0, #0
	beq _080A2C0E
	b _080A2CBA
_080A2C04:
	cmp r0, #2
	beq _080A2C68
	cmp r0, #3
	beq _080A2C94
	b _080A2CBA
_080A2C0E:
	ldrh r5, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r1, [r4, #0x32]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C38 @ =gLinkEntity
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C38: .4byte gLinkEntity
_080A2C3C:
	ldrh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r1, [r4, #0x2e]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C64 @ =gLinkEntity
	lsls r1, r1, #8
	movs r2, #8
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C64: .4byte gLinkEntity
_080A2C68:
	ldrh r5, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r1, [r4, #0x32]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2C90 @ =gLinkEntity
	lsls r1, r1, #8
	movs r2, #0x10
	bl sub_080044AE
	b _080A2CBA
	.align 2, 0
_080A2C90: .4byte gLinkEntity
_080A2C94:
	ldrh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r1, [r4, #0x2e]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A2CBA
	cmp r6, #0
	beq _080A2CBA
	ldr r0, _080A2CBC @ =gLinkEntity
	lsls r1, r1, #8
	movs r2, #0x18
	bl sub_080044AE
_080A2CBA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A2CBC: .4byte gLinkEntity

	thumb_func_start sub_080A2CC0
sub_080A2CC0: @ 0x080A2CC0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, [r5]
	cmp r3, #0
	beq _080A2CF8
	ldrh r0, [r3]
	cmp r0, #0xfe
	bne _080A2CDC
	ldrh r1, [r3, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, r3, r0
_080A2CDC:
	ldrh r0, [r3]
	cmp r0, #0xff
	bne _080A2CEA
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #0
	b _080A2CEE
_080A2CEA:
	strb r0, [r4, #0x15]
	ldrh r0, [r3, #4]
_080A2CEE:
	strh r0, [r4, #0x24]
	ldrh r0, [r3, #2]
	strh r0, [r2]
	adds r0, r3, #6
	str r0, [r5]
_080A2CF8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A2CFC
sub_080A2CFC: @ 0x080A2CFC
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080A2D2C
	pop {r4, pc}

	thumb_func_start sub_080A2D0C
sub_080A2D0C: @ 0x080A2D0C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_080A2D2C
	pop {r4, pc}

	thumb_func_start sub_080A2D1C
sub_080A2D1C: @ 0x080A2D1C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_080A2D2C
	pop {r4, pc}

	thumb_func_start sub_080A2D2C
sub_080A2D2C: @ 0x080A2D2C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	movs r0, #0x56
	movs r1, #0
	adds r2, r4, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A2D6E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x62
	strb r6, [r0]
	adds r0, #1
	strb r7, [r0]
	ldrb r1, [r5, #0x11]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r4, #0
	bl sub_0805E3A0
_080A2D6E:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A2D74
sub_080A2D74: @ 0x080A2D74
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x6c]
	cmp r0, #0
	beq _080A2D82
	subs r0, #1
	str r0, [r2, #0x6c]
_080A2D82:
	ldr r0, _080A2D94 @ =gUnk_081271D4
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A2D94: .4byte gUnk_081271D4

	thumb_func_start sub_080A2D98
sub_080A2D98: @ 0x080A2D98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A2DD0 @ =gUnk_03003F80
	str r4, [r0, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	subs r0, #0x11
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080A2DD8
	movs r0, #0x27
	str r0, [r4, #0x70]
	ldr r1, _080A2DD4 @ =gUnk_081271DC
	ldrb r0, [r1, #1]
	str r0, [r4, #0x78]
	str r2, [r4, #0x74]
	str r1, [r4, #0x7c]
	b _080A2DDA
	.align 2, 0
_080A2DD0: .4byte gUnk_03003F80
_080A2DD4: .4byte gUnk_081271DC
_080A2DD8:
	str r2, [r4, #0x70]
_080A2DDA:
	ldr r0, _080A2DFC @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_080A2E00
	pop {r4, pc}
	.align 2, 0
_080A2DFC: .4byte gLinkEntity

	thumb_func_start sub_080A2E00
sub_080A2E00: @ 0x080A2E00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _080A2E90 @ =gLinkEntity
	mov ip, r0
	mov r1, ip
	adds r1, #0x3d
	ldrb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A2E1A
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A2E40
_080A2E1A:
	adds r5, r4, #0
	adds r5, #0x3d
	ldrb r0, [r5]
	movs r2, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x3e
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x42
	ldrb r1, [r3]
	mov r0, ip
	adds r0, #0x42
	strb r1, [r0]
	strb r2, [r3]
	strb r2, [r5]
_080A2E40:
	ldr r0, _080A2E94 @ =gUnk_03003F80
	ldrb r3, [r0, #3]
	adds r7, r0, #0
	cmp r3, #0
	beq _080A2F20
	ldr r0, [r7, #0x2c]
	cmp r4, r0
	bne _080A2F20
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080A2E9C
	ldr r1, _080A2E98 @ =gUnk_08127240
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	ldr r0, _080A2E90 @ =gLinkEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0x20
	adds r2, r4, #0
	adds r2, #0x3c
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r3
	strb r0, [r7, #3]
	adds r0, r4, #0
	bl sub_080176E4
	b _080A2F30
	.align 2, 0
_080A2E90: .4byte gLinkEntity
_080A2E94: .4byte gUnk_03003F80
_080A2E98: .4byte gUnk_08127240
_080A2E9C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A2F30
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x42
	bne _080A2F06
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0xe
	bne _080A2F06
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080A2F06
	ldrb r3, [r5]
	movs r0, #0x15
	movs r1, #0
	movs r2, #0
	bl sub_08077CB8
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080A2EF4
	movs r0, #1
	strb r0, [r1, #0xf]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r2, #0x15]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
_080A2EF4:
	ldr r1, _080A2F1C @ =gUnk_08127220
	ldrb r0, [r1, #1]
	str r0, [r4, #0x78]
	str r6, [r4, #0x74]
	str r1, [r4, #0x7c]
	ldrb r0, [r7, #3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #3]
_080A2F06:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _080A2F30
	movs r0, #0x8c
	lsls r0, r0, #1
	bl sub_080A3268
	movs r0, #8
	str r0, [r4, #0x6c]
	b _080A2F30
	.align 2, 0
_080A2F1C: .4byte gUnk_08127220
_080A2F20:
	movs r1, #0
	strb r1, [r7, #3]
	ldr r0, [r7, #0x2c]
	cmp r0, r4
	bne _080A2F2C
	str r1, [r7, #0x2c]
_080A2F2C:
	bl sub_0805E780
_080A2F30:
	ldr r6, _080A301C @ =gLinkEntity
	ldrh r0, [r6, #0x12]
	cmp r0, #1
	beq _080A2F3E
	cmp r0, #4
	beq _080A2F3E
	b _080A3064
_080A2F3E:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x25
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3e
	bls _080A2F4C
	b _080A3064
_080A2F4C:
	ldrb r2, [r6, #0x18]
	movs r1, #0x40
	ands r1, r2
	ldrb r3, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	lsrs r2, r2, #7
	lsls r2, r2, #7
	movs r3, #0x7f
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r2, [r6, #0x1e]
	ldr r1, [r4, #0x70]
	adds r0, r1, #0
	subs r0, #0x25
	adds r0, r2, r0
	adds r5, r4, #0
	adds r5, #0x68
	ldrb r7, [r4, #0x1e]
	cmp r0, r7
	beq _080A2FA2
	adds r0, r1, #0
	adds r0, #0xdb
	adds r0, r2, r0
	strb r0, [r4, #0x1e]
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _080A2F98
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080A2FA2
_080A2F98:
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A2FA2:
	ldrb r0, [r5]
	cmp r0, #0xe
	bne _080A303E
	ldr r0, _080A301C @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080A303E
	ldr r0, [r4, #0x78]
	subs r3, r0, #1
	str r3, [r4, #0x78]
	cmp r3, #0
	bne _080A303E
	ldr r0, [r4, #0x74]
	adds r0, #1
	str r0, [r4, #0x74]
	lsls r0, r0, #2
	ldr r1, [r4, #0x7c]
	adds r2, r1, r0
	ldrb r0, [r2]
	ldr r7, _080A3020 @ =gUnk_03003F80
	cmp r0, #0xff
	bne _080A2FEC
	ldrb r1, [r7, #3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A2FE8
	ldr r0, _080A3024 @ =gUnk_081271DC
	str r0, [r4, #0x7c]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r7, #3]
_080A2FE8:
	str r3, [r4, #0x74]
	ldr r1, [r4, #0x7c]
_080A2FEC:
	ldr r0, [r4, #0x74]
	lsls r0, r0, #2
	adds r2, r1, r0
	ldrb r0, [r2, #1]
	str r0, [r4, #0x78]
	ldrb r1, [r7, #3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A3028
	ldr r0, _080A301C @ =gLinkEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	adds r1, #8
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A303E
	.align 2, 0
_080A301C: .4byte gLinkEntity
_080A3020: .4byte gUnk_03003F80
_080A3024: .4byte gUnk_081271DC
_080A3028:
	ldr r0, _080A3060 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A303E:
	ldr r1, _080A3060 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x5a
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08078E84
	b _080A3068
	.align 2, 0
_080A3060: .4byte gLinkEntity
_080A3064:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A3068:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A306C
sub_080A306C: @ 0x080A306C
	push {lr}
	ldr r2, _080A3080 @ =gUnk_08127270
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A3080: .4byte gUnk_08127270

	thumb_func_start sub_080A3084
sub_080A3084: @ 0x080A3084
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r5, #1
	strb r5, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A30F8
	ldr r0, _080A30EC @ =gLinkEntity
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _080A30F0 @ =gUnk_08127278
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A30CC
	strb r5, [r4, #0xb]
_080A30CC:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x3c
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A30F4 @ =0x0000013F
	bl sub_080A3268
	b _080A30FC
	.align 2, 0
_080A30EC: .4byte gLinkEntity
_080A30F0: .4byte gUnk_08127278
_080A30F4: .4byte 0x0000013F
_080A30F8:
	movs r0, #6
	strb r0, [r4, #0xe]
_080A30FC:
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A310C
	pop {r4, r5, pc}

	thumb_func_start sub_080A310C
sub_080A310C: @ 0x080A310C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A312A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A3200
	bl sub_0805E780
	b _080A3200
_080A312A:
	adds r0, r4, #0
	bl sub_08004274
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A31FC
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A315C
	adds r0, r4, #0
	bl sub_0800451C
_080A315C:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A31F0 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A31F4 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080A31AE
	ldr r1, _080A31F8 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080A31AE
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080A31AE:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A31C6
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080A31C6:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _080A31D6
	bl sub_0805E780
_080A31D6:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r3, [r0]
	movs r0, #0x15
	movs r1, #1
	movs r2, #0
	bl sub_08077CB8
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _080A3200
	str r4, [r0, #0x50]
	b _080A3200
	.align 2, 0
_080A31F0: .4byte gUnk_03000BF0
_080A31F4: .4byte gLinkEntity
_080A31F8: .4byte gUnk_08003E44
_080A31FC:
	bl sub_0805E780
_080A3200:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A3204
sub_080A3204: @ 0x080A3204
	push {lr}
	bl sub_080A3210
	bl m4aSoundInit
	pop {pc}

	thumb_func_start sub_080A3210
sub_080A3210: @ 0x080A3210
	push {r4, lr}
	ldr r4, _080A3230 @ =gUnk_02021EE0
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_0801D630
	bl sub_080A35C8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r0, [r4, #4]
	bl m4aMPlayAllStop
	pop {r4, pc}
	.align 2, 0
_080A3230: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3234
sub_080A3234: @ 0x080A3234
	push {lr}
	ldr r1, _080A3244 @ =gUnk_02021EE0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x14]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A3244: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3248
sub_080A3248: @ 0x080A3248
	push {lr}
	ldr r1, _080A3258 @ =gUnk_02021EE0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x14]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A3258: .4byte gUnk_02021EE0

	thumb_func_start sub_080A325C
sub_080A325C: @ 0x080A325C
	ldr r1, _080A3264 @ =gUnk_02021EE0
	strh r0, [r1, #0x12]
	bx lr
	.align 2, 0
_080A3264: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3268
sub_080A3268: @ 0x080A3268
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080A32AC @ =gUnk_03001000
	ldrb r2, [r0, #7]
	cmp r2, #0
	beq _080A3276
	b _080A347C
_080A3276:
	ldr r5, _080A32B0 @ =gUnk_02021EE0
	ldr r4, _080A32B4 @ =0x0000FFFF
	ands r4, r3
	ldr r1, _080A32B8 @ =0xFFFF0000
	ands r1, r3
	ldr r0, _080A32BC @ =0x80090000
	cmp r1, r0
	bne _080A3288
	b _080A33A0
_080A3288:
	cmp r1, r0
	bhi _080A3310
	ldr r0, _080A32C0 @ =0x80040000
	cmp r1, r0
	bne _080A3294
	b _080A33F4
_080A3294:
	cmp r1, r0
	bhi _080A32D8
	ldr r0, _080A32C4 @ =0x80020000
	cmp r1, r0
	bne _080A32A0
	b _080A3384
_080A32A0:
	cmp r1, r0
	bhi _080A32CC
	ldr r0, _080A32C8 @ =0x80010000
	cmp r1, r0
	beq _080A337C
	b _080A3458
	.align 2, 0
_080A32AC: .4byte gUnk_03001000
_080A32B0: .4byte gUnk_02021EE0
_080A32B4: .4byte 0x0000FFFF
_080A32B8: .4byte 0xFFFF0000
_080A32BC: .4byte 0x80090000
_080A32C0: .4byte 0x80040000
_080A32C4: .4byte 0x80020000
_080A32C8: .4byte 0x80010000
_080A32CC:
	ldr r0, _080A32D4 @ =0x80030000
	cmp r1, r0
	beq _080A338C
	b _080A3458
	.align 2, 0
_080A32D4: .4byte 0x80030000
_080A32D8:
	ldr r0, _080A32F0 @ =0x80060000
	cmp r1, r0
	bne _080A32E0
	b _080A340A
_080A32E0:
	cmp r1, r0
	bhi _080A32F8
	ldr r0, _080A32F4 @ =0x80050000
	cmp r1, r0
	bne _080A32EC
	b _080A33FE
_080A32EC:
	b _080A3458
	.align 2, 0
_080A32F0: .4byte 0x80060000
_080A32F4: .4byte 0x80050000
_080A32F8:
	ldr r0, _080A3308 @ =0x80070000
	cmp r1, r0
	bne _080A3300
	b _080A340E
_080A3300:
	ldr r0, _080A330C @ =0x80080000
	cmp r1, r0
	beq _080A3398
	b _080A3458
	.align 2, 0
_080A3308: .4byte 0x80070000
_080A330C: .4byte 0x80080000
_080A3310:
	ldr r0, _080A3330 @ =0x800D0000
	cmp r1, r0
	bne _080A3318
	b _080A343A
_080A3318:
	cmp r1, r0
	bhi _080A3348
	ldr r0, _080A3334 @ =0x800B0000
	cmp r1, r0
	bne _080A3324
	b _080A3420
_080A3324:
	cmp r1, r0
	bhi _080A333C
	ldr r0, _080A3338 @ =0x800A0000
	cmp r1, r0
	beq _080A33B6
	b _080A3458
	.align 2, 0
_080A3330: .4byte 0x800D0000
_080A3334: .4byte 0x800B0000
_080A3338: .4byte 0x800A0000
_080A333C:
	ldr r0, _080A3344 @ =0x800C0000
	cmp r1, r0
	beq _080A33CC
	b _080A3458
	.align 2, 0
_080A3344: .4byte 0x800C0000
_080A3348:
	ldr r0, _080A335C @ =0x800F0000
	cmp r1, r0
	bne _080A3350
	b _080A344E
_080A3350:
	cmp r1, r0
	bhi _080A3364
	ldr r0, _080A3360 @ =0x800E0000
	cmp r1, r0
	beq _080A3446
	b _080A3458
	.align 2, 0
_080A335C: .4byte 0x800F0000
_080A3360: .4byte 0x800E0000
_080A3364:
	ldr r0, _080A3374 @ =0x80100000
	cmp r1, r0
	beq _080A343E
	ldr r0, _080A3378 @ =0x80110000
	cmp r1, r0
	beq _080A3454
	b _080A3458
	.align 2, 0
_080A3374: .4byte 0x80100000
_080A3378: .4byte 0x80110000
_080A337C:
	strh r2, [r5, #0x14]
	bl m4aMPlayAllStop
	b _080A347C
_080A3384:
	movs r0, #0
	bl sub_080A3234
	b _080A347C
_080A338C:
	bl sub_080A35C8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x12]
	b _080A3418
_080A3398:
	ldrh r0, [r5, #0x14]
	bl sub_080A35B4
	b _080A347C
_080A33A0:
	cmp r4, #0
	bne _080A33A6
	ldrh r4, [r5, #0x14]
_080A33A6:
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A347C
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStart
	b _080A33C4
_080A33B6:
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A347C
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStartOrContinue
_080A33C4:
	adds r0, r4, #0
	bl sub_080A35A0
	b _080A347C
_080A33CC:
	ldr r2, _080A33EC @ =gUnk_08A11C3C
	ldr r1, _080A33F0 @ =gUnk_08A11DBC
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r4, #0
	bl m4aMPlayTempoControl
	b _080A347C
	.align 2, 0
_080A33EC: .4byte gUnk_08A11C3C
_080A33F0: .4byte gUnk_08A11DBC
_080A33F4:
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	b _080A347C
_080A33FE:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _080A347C
	bl m4aSongNumStop
	b _080A347C
_080A340A:
	bl m4aSoundVSyncOn
_080A340E:
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _080A347C
	bl m4aSongNumStartOrContinue
_080A3418:
	ldrh r0, [r5, #0x14]
	bl sub_080A353C
	b _080A347C
_080A3420:
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A347C
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStartOrContinue
	bl sub_080A35C8
	adds r0, r4, #0
	bl sub_080A353C
	b _080A347C
_080A343A:
	strh r2, [r5, #0x10]
	b _080A347C
_080A343E:
	strh r2, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #2]
	b _080A347C
_080A3446:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x10]
	b _080A347C
_080A344E:
	bl sub_080A35C8
	b _080A347C
_080A3454:
	strh r2, [r5, #0x14]
	b _080A347C
_080A3458:
	cmp r4, #0
	beq _080A347C
	subs r0, r4, #1
	cmp r0, #0x62
	bhi _080A3470
	strh r4, [r5, #0x14]
	adds r0, r4, #0
	bl m4aSongNumStart
	bl sub_080A35C8
	b _080A3476
_080A3470:
	adds r0, r4, #0
	bl m4aSongNumStart
_080A3476:
	adds r0, r4, #0
	bl sub_080A353C
_080A347C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A3480
sub_080A3480: @ 0x080A3480
	push {r4, lr}
	ldr r4, _080A34A4 @ =gUnk_02021EE0
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080A34C4
	adds r0, r1, #0
	movs r2, #8
	ldrsh r1, [r4, r2]
	bl sub_080A3518
	adds r1, r0, #0
	cmp r1, #0
	bne _080A34A8
	ldrh r0, [r4, #0xa]
	b _080A34AC
	.align 2, 0
_080A34A4: .4byte gUnk_02021EE0
_080A34A8:
	ldrh r0, [r4, #8]
	adds r0, r0, r1
_080A34AC:
	strh r0, [r4, #8]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080A34BC
	movs r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #8]
_080A34BC:
	ldrh r0, [r4, #0x14]
	bl sub_080A353C
	b _080A3516
_080A34C4:
	movs r2, #0x10
	ldrsh r1, [r4, r2]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	beq _080A3516
	adds r0, r1, #0
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	bl sub_080A3518
	adds r1, r0, #0
	cmp r1, #0
	bne _080A34FC
	ldrb r0, [r4, #2]
	ldrh r2, [r4, #0x10]
	cmp r0, #0
	beq _080A34F8
	cmp r2, #0
	bne _080A34F8
	strb r1, [r4, #2]
	strh r1, [r4, #0x14]
	movs r0, #0
	bl m4aSongNumStop
	b _080A3502
_080A34F8:
	strh r2, [r4, #0xe]
	b _080A3502
_080A34FC:
	ldrh r0, [r4, #0xe]
	adds r0, r0, r1
	strh r0, [r4, #0xe]
_080A3502:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080A3510
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0xe]
_080A3510:
	ldrh r0, [r4, #0x14]
	bl sub_080A353C
_080A3516:
	pop {r4, pc}

	thumb_func_start sub_080A3518
sub_080A3518: @ 0x080A3518
	push {lr}
	adds r2, r0, #0
	subs r0, r2, r1
	cmp r0, #0
	ble _080A352C
	adds r1, #4
	cmp r2, r1
	ble _080A3532
	movs r0, #4
	b _080A353A
_080A352C:
	subs r1, #4
	cmp r2, r1
	blt _080A3536
_080A3532:
	movs r0, #0
	b _080A353A
_080A3536:
	movs r0, #4
	rsbs r0, r0, #0
_080A353A:
	pop {pc}

	thumb_func_start sub_080A353C
sub_080A353C: @ 0x080A353C
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _080A358C
	subs r0, r3, #1
	cmp r0, #0x62
	bhi _080A3558
	ldr r0, _080A3554 @ =gUnk_02021EE0
	movs r1, #0xe
	ldrsh r5, [r0, r1]
	b _080A355E
	.align 2, 0
_080A3554: .4byte gUnk_02021EE0
_080A3558:
	ldr r0, _080A3590 @ =gUnk_02021EE0
	movs r1, #0x12
	ldrsh r5, [r0, r1]
_080A355E:
	movs r1, #8
	ldrsh r0, [r0, r1]
	muls r0, r5, r0
	lsrs r5, r0, #8
	ldr r2, _080A3594 @ =gUnk_08A11C3C
	ldr r1, _080A3598 @ =gUnk_08A11DBC
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _080A359C @ =0x0000FFFF
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl m4aMPlayVolumeControl
_080A358C:
	pop {r4, r5, pc}
	.align 2, 0
_080A3590: .4byte gUnk_02021EE0
_080A3594: .4byte gUnk_08A11C3C
_080A3598: .4byte gUnk_08A11DBC
_080A359C: .4byte 0x0000FFFF

	thumb_func_start sub_080A35A0
sub_080A35A0: @ 0x080A35A0
	push {lr}
	ldr r2, _080A35B0 @ =gUnk_02021EE0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2, #0xa]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A35B0: .4byte gUnk_02021EE0

	thumb_func_start sub_080A35B4
sub_080A35B4: @ 0x080A35B4
	push {lr}
	ldr r2, _080A35C4 @ =gUnk_02021EE0
	movs r1, #0
	strh r1, [r2, #0xa]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A35C4: .4byte gUnk_02021EE0

	thumb_func_start sub_080A35C8
sub_080A35C8: @ 0x080A35C8
	ldr r1, _080A35DC @ =gUnk_02021EE0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080A35DC: .4byte gUnk_02021EE0

	thumb_func_start sub_080A35E0
sub_080A35E0: @ 0x080A35E0
	push {lr}
	ldr r1, _080A35FC @ =gUnk_030010A0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _080A3600 @ =gUnk_08127D00
	ldr r0, _080A3604 @ =gUnk_03001000
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A35FC: .4byte gUnk_030010A0
_080A3600: .4byte gUnk_08127D00
_080A3604: .4byte gUnk_03001000

	thumb_func_start sub_080A3608
sub_080A3608: @ 0x080A3608
	push {r4, r5, lr}
	ldr r0, _080A3640 @ =gUnk_02002A40
	movs r5, #0
	movs r4, #1
	strb r4, [r0, #6]
	movs r0, #0x55
	bl sub_0807CD04
	ldr r0, _080A3644 @ =gUnk_03001000
	strb r4, [r0, #3]
	ldr r2, _080A3648 @ =gUnk_02000080
	strb r5, [r2, #5]
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r2, #8]
	movs r0, #5
	strb r0, [r2, #0x16]
	movs r0, #4
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #1
	bls _080A3650
	ldr r0, _080A364C @ =gUnk_08127998
	b _080A365E
	.align 2, 0
_080A3640: .4byte gUnk_02002A40
_080A3644: .4byte gUnk_03001000
_080A3648: .4byte gUnk_02000080
_080A364C: .4byte gUnk_08127998
_080A3650:
	cmp r0, #1
	bne _080A365C
	ldr r0, _080A3658 @ =gUnk_08127644
	b _080A365E
	.align 2, 0
_080A3658: .4byte gUnk_08127644
_080A365C:
	ldr r0, _080A36B0 @ =gUnk_081272F0
_080A365E:
	str r0, [r2, #0xc]
	movs r0, #0
	bl sub_0801DA90
	movs r0, #0xb
	bl sub_0801D714
	movs r0, #0xc
	bl sub_0801D714
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	ldr r2, _080A36B4 @ =gUnk_03000F50
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080A36B8 @ =0x00002442
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _080A36BC @ =0x00001E4D
	strh r0, [r2, #0x14]
	subs r0, #0x8a
	strh r0, [r2, #0x20]
	bl sub_080A3210
	bl sub_0805E5B4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	pop {r4, r5, pc}
	.align 2, 0
_080A36B0: .4byte gUnk_081272F0
_080A36B4: .4byte gUnk_03000F50
_080A36B8: .4byte 0x00002442
_080A36BC: .4byte 0x00001E4D

	thumb_func_start sub_080A36C0
sub_080A36C0: @ 0x080A36C0
	push {lr}
	ldr r1, _080A36D4 @ =gUnk_08127D10
	ldr r0, _080A36D8 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A36D4: .4byte gUnk_08127D10
_080A36D8: .4byte gUnk_02000080

	thumb_func_start sub_080A36DC
sub_080A36DC: @ 0x080A36DC
	push {lr}
	ldr r1, _080A36F4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A36F0
	bl sub_080A3954
_080A36F0:
	pop {pc}
	.align 2, 0
_080A36F4: .4byte gUnk_02000080

	thumb_func_start sub_080A36F8
sub_080A36F8: @ 0x080A36F8
	push {r4, r5, lr}
	ldr r0, _080A3754 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3752
	ldr r5, _080A3758 @ =gUnk_02000080
	movs r0, #0x10
	ldrsh r4, [r5, r0]
	lsls r4, r4, #1
	ldr r0, _080A375C @ =gUnk_08127CEC
	adds r4, r4, r0
	ldrb r0, [r4]
	bl sub_0801D714
	ldrb r0, [r4, #1]
	bl sub_0801D7EC
	ldr r0, _080A3760 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r1, _080A3764 @ =gUnk_03000F50
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldrh r0, [r5, #0x12]
	strh r0, [r1, #0x22]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	strb r2, [r5, #5]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _080A374A
	movs r0, #1
	strb r0, [r5, #0x1a]
	movs r0, #9
	bl sub_080A3268
_080A374A:
	movs r0, #4
	movs r1, #8
	bl sub_08050054
_080A3752:
	pop {r4, r5, pc}
	.align 2, 0
_080A3754: .4byte gUnk_03000FD0
_080A3758: .4byte gUnk_02000080
_080A375C: .4byte gUnk_08127CEC
_080A3760: .4byte gUnk_02021F30
_080A3764: .4byte gUnk_03000F50

	thumb_func_start sub_080A3768
sub_080A3768: @ 0x080A3768
	push {r4, lr}
	ldr r4, _080A377C @ =gUnk_02000080
	ldrb r1, [r4, #6]
	cmp r1, #1
	beq _080A37C4
	cmp r1, #1
	bgt _080A3780
	cmp r1, #0
	beq _080A378A
	b _080A384C
	.align 2, 0
_080A377C: .4byte gUnk_02000080
_080A3780:
	cmp r1, #2
	beq _080A3804
	cmp r1, #3
	beq _080A3812
	b _080A384C
_080A378A:
	ldr r0, _080A37B8 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r2, _080A37BC @ =gUnk_081272E0
	ldrb r1, [r4, #0x19]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_0805F46C
	ldr r1, _080A37C0 @ =gUnk_03000F50
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	strb r2, [r4, #0x18]
	b _080A385E
	.align 2, 0
_080A37B8: .4byte gUnk_02021F30
_080A37BC: .4byte gUnk_081272E0
_080A37C0: .4byte gUnk_03000F50
_080A37C4:
	ldr r0, _080A37F8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A385E
	ldr r0, _080A37FC @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080A385E
	ldrb r1, [r4, #0x18]
	adds r1, #1
	strb r1, [r4, #0x18]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _080A3800 @ =gUnk_03000F50
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #8
	orrs r0, r3
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xf
	bls _080A385E
	b _080A383C
	.align 2, 0
_080A37F8: .4byte gUnk_03000FD0
_080A37FC: .4byte gUnk_030010A0
_080A3800: .4byte gUnk_03000F50
_080A3804:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A385E
	b _080A383C
_080A3812:
	ldr r0, _080A3844 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A385E
	ldrb r1, [r4, #0x18]
	subs r1, #1
	strb r1, [r4, #0x18]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _080A3848 @ =gUnk_03000F50
	movs r0, #0x10
	subs r0, r0, r3
	lsls r0, r0, #8
	orrs r0, r3
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080A385E
_080A383C:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _080A385E
	.align 2, 0
_080A3844: .4byte gUnk_030010A0
_080A3848: .4byte gUnk_03000F50
_080A384C:
	ldr r1, _080A3860 @ =gUnk_03000FD0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A385E
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	bl sub_080A3954
_080A385E:
	pop {r4, pc}
	.align 2, 0
_080A3860: .4byte gUnk_03000FD0

	thumb_func_start sub_080A3864
sub_080A3864: @ 0x080A3864
	push {lr}
	ldr r1, _080A3884 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A3880
	bl sub_080A3954
	movs r0, #5
	movs r1, #8
	bl sub_08050054
_080A3880:
	pop {pc}
	.align 2, 0
_080A3884: .4byte gUnk_02000080

	thumb_func_start sub_080A3888
sub_080A3888: @ 0x080A3888
	push {lr}
	ldr r1, _080A38A8 @ =gUnk_03000FD0
	ldr r0, _080A38AC @ =0xFFFF7FFF
	str r0, [r1, #4]
	movs r0, #5
	movs r1, #4
	bl sub_08050054
	ldr r0, _080A38B0 @ =gUnk_02000080
	ldrh r0, [r0, #8]
	bl sub_08050038
	bl sub_080A3954
	pop {pc}
	.align 2, 0
_080A38A8: .4byte gUnk_03000FD0
_080A38AC: .4byte 0xFFFF7FFF
_080A38B0: .4byte gUnk_02000080

	thumb_func_start sub_080A38B4
sub_080A38B4: @ 0x080A38B4
	push {lr}
	movs r0, #4
	movs r1, #4
	bl sub_08050054
	ldr r0, _080A38CC @ =gUnk_02000080
	ldrh r0, [r0, #8]
	bl sub_08050038
	bl sub_080A3954
	pop {pc}
	.align 2, 0
_080A38CC: .4byte gUnk_02000080

	thumb_func_start sub_080A38D0
sub_080A38D0: @ 0x080A38D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _080A391C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3914
	ldr r0, _080A3920 @ =gUnk_02021F30
	movs r6, #0x80
	lsls r6, r6, #4
	adds r1, r6, #0
	bl sub_0801D630
	ldr r4, _080A3924 @ =gUnk_03000F50
	movs r0, #0
	mov r8, r0
	movs r5, #1
	strh r5, [r4, #0x1a]
	ldr r0, _080A3928 @ =gUnk_020344B0
	adds r1, r6, #0
	bl sub_0801D630
	strh r5, [r4, #0x26]
	adds r4, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4]
	ldr r0, _080A392C @ =gUnk_02000080
	mov r1, r8
	strb r1, [r0, #5]
	movs r0, #4
	movs r1, #8
	bl sub_08050054
_080A3914:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A391C: .4byte gUnk_03000FD0
_080A3920: .4byte gUnk_02021F30
_080A3924: .4byte gUnk_03000F50
_080A3928: .4byte gUnk_020344B0
_080A392C: .4byte gUnk_02000080

	thumb_func_start sub_080A3930
sub_080A3930: @ 0x080A3930
	push {lr}
	ldr r0, _080A394C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3948
	movs r0, #7
	movs r1, #8
	bl sub_08050054
	ldr r1, _080A3950 @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #3]
_080A3948:
	pop {pc}
	.align 2, 0
_080A394C: .4byte gUnk_03000FD0
_080A3950: .4byte gUnk_03001000

	thumb_func_start sub_080A3954
sub_080A3954: @ 0x080A3954
	ldr r2, _080A397C @ =gUnk_02000080
	ldr r1, [r2, #0xc]
	ldrb r0, [r1]
	movs r3, #0
	strb r0, [r2, #5]
	strb r3, [r2, #6]
	ldrh r0, [r1, #6]
	strh r0, [r2, #0x10]
	ldrh r0, [r1, #4]
	strh r0, [r2, #8]
	ldrh r0, [r1, #8]
	strh r0, [r2, #0x12]
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0x14]
	ldrb r0, [r1, #1]
	strb r0, [r2, #0x19]
	adds r1, #0xc
	str r1, [r2, #0xc]
	bx lr
	.align 2, 0
_080A397C: .4byte gUnk_02000080

	thumb_func_start sub_080A3980
sub_080A3980: @ 0x080A3980
	push {lr}
	ldr r0, _080A3990 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A398E
	bl sub_080560A8
_080A398E:
	pop {pc}
	.align 2, 0
_080A3990: .4byte gUnk_03000FD0

	thumb_func_start sub_080A3994
sub_080A3994: @ 0x080A3994
	push {r4, r5, lr}
	ldr r0, _080A39AC @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r2, r0, #0
	cmp r1, #4
	bls _080A39A2
	b _080A3B14
_080A39A2:
	lsls r0, r1, #2
	ldr r1, _080A39B0 @ =_080A39B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A39AC: .4byte gUnk_02000080
_080A39B0: .4byte _080A39B4
_080A39B4: @ jump table
	.4byte _080A39C8 @ case 0
	.4byte _080A3A38 @ case 1
	.4byte _080A3AB8 @ case 2
	.4byte _080A3AEE @ case 3
	.4byte _080A3B14 @ case 4
_080A39C8:
	movs r5, #1
	strb r5, [r2, #6]
	movs r4, #0
	movs r0, #0x1e
	strh r0, [r2, #8]
	strb r4, [r2, #3]
	movs r0, #1
	bl sub_0801DA90
	bl sub_080A3210
	bl sub_080A4D34
	movs r0, #0xa
	bl sub_0801D714
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	movs r0, #4
	bl sub_0801D7EC
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x20
	bl sub_0801D630
	movs r0, #0
	movs r1, #0
	bl sub_08052418
	ldr r2, _080A3A2C @ =gUnk_03000F50
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A3A30 @ =0x00001C01
	strh r0, [r2, #0x14]
	ldr r0, _080A3A34 @ =0x00001D05
	strh r0, [r2, #0x20]
	strh r5, [r2, #0x26]
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	b _080A3B36
	.align 2, 0
_080A3A2C: .4byte gUnk_03000F50
_080A3A30: .4byte 0x00001C01
_080A3A34: .4byte 0x00001D05
_080A3A38:
	ldr r0, _080A3A50 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A3A42
	b _080A3B36
_080A3A42:
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080A3A54
	subs r0, #1
	strh r0, [r2, #8]
	b _080A3B36
	.align 2, 0
_080A3A50: .4byte gUnk_03000FD0
_080A3A54:
	ldrb r4, [r2, #3]
	ldr r0, _080A3A68 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _080A3A72
	cmp r0, #0x40
	bgt _080A3A6C
	cmp r0, #1
	beq _080A3A7A
	b _080A3A9A
	.align 2, 0
_080A3A68: .4byte gUnk_03000FF0
_080A3A6C:
	cmp r0, #0x80
	beq _080A3A76
	b _080A3A9A
_080A3A72:
	movs r4, #0
	b _080A3A9A
_080A3A76:
	movs r4, #1
	b _080A3A9A
_080A3A7A:
	cmp r4, #0
	beq _080A3A82
	movs r0, #4
	b _080A3A8C
_080A3A82:
	movs r0, #8
	movs r1, #0
	bl sub_08050318
	movs r0, #2
_080A3A8C:
	ldr r1, _080A3AB4 @ =gUnk_02000080
	strb r0, [r1, #6]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #0x6a
	bl sub_080A3268
_080A3A9A:
	ldr r1, _080A3AB4 @ =gUnk_02000080
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080A3B36
	strb r4, [r1, #3]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl sub_080A3268
	b _080A3B36
	.align 2, 0
_080A3AB4: .4byte gUnk_02000080
_080A3AB8:
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	ldr r4, _080A3AD8 @ =gUnk_02000080
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080A3ADC
	cmp r1, #1
	bne _080A3B36
	movs r0, #4
	strb r0, [r4, #6]
	b _080A3B36
	.align 2, 0
_080A3AD8: .4byte gUnk_02000080
_080A3ADC:
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #9
	movs r1, #0
	bl sub_08050318
	movs r0, #3
	strb r0, [r4, #6]
	b _080A3B36
_080A3AEE:
	adds r1, r2, #0
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _080A3AFC
	subs r0, #1
	strh r0, [r1, #8]
	b _080A3B36
_080A3AFC:
	ldr r0, _080A3B10 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A3B36
	movs r0, #1
	strb r0, [r2, #6]
	b _080A3B36
	.align 2, 0
_080A3B10: .4byte gUnk_03000FF0
_080A3B14:
	ldr r2, _080A3B38 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _080A3B3C @ =0x0000FDFF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	bl sub_08050384
	movs r0, #7
	movs r1, #8
	bl sub_08050054
	ldr r1, _080A3B40 @ =gUnk_03001000
	movs r0, #3
	strb r0, [r1, #3]
	ldr r0, _080A3B44 @ =gUnk_02000080
	strb r4, [r0, #6]
_080A3B36:
	pop {r4, r5, pc}
	.align 2, 0
_080A3B38: .4byte gUnk_03000F50
_080A3B3C: .4byte 0x0000FDFF
_080A3B40: .4byte gUnk_03001000
_080A3B44: .4byte gUnk_02000080

	thumb_func_start sub_080A3B48
sub_080A3B48: @ 0x080A3B48
	push {lr}
	movs r1, #0
	ldr r0, _080A3B6C @ =gUnk_02002A40
	ldr r3, _080A3B70 @ =0x0000012B
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A3B66
_080A3B58:
	adds r1, #1
	cmp r1, #0x12
	bhi _080A3B66
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3B58
_080A3B66:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_080A3B6C: .4byte gUnk_02002A40
_080A3B70: .4byte 0x0000012B

	thumb_func_start sub_080A3B74
sub_080A3B74: @ 0x080A3B74
	ldr r0, _080A3B80 @ =gUnk_02000080
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_080A3B80: .4byte gUnk_02000080

	thumb_func_start sub_080A3B84
sub_080A3B84: @ 0x080A3B84
	push {r4, r5, lr}
	ldr r4, _080A3BC4 @ =gUnk_030010A0
	adds r4, #0x2c
	movs r5, #0
	movs r0, #2
	strb r0, [r4]
	bl sub_080AD90C
	ldr r1, _080A3BC8 @ =gUnk_081280C4
	ldr r0, _080A3BCC @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A3B74
	bl sub_080A4054
	bl sub_0801C1D4
	bl sub_0801C208
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	strb r5, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_080A3BC4: .4byte gUnk_030010A0
_080A3BC8: .4byte gUnk_081280C4
_080A3BCC: .4byte gUnk_02000080

	thumb_func_start sub_080A3BD0
sub_080A3BD0: @ 0x080A3BD0
	push {r4, lr}
	ldr r0, _080A3C54 @ =gUnk_02000080
	movs r1, #0
	movs r4, #1
	strb r4, [r0, #1]
	adds r0, #0x2a
	strb r1, [r0]
	bl sub_080A4D34
	movs r0, #0xcb
	bl sub_0801D714
	movs r0, #0x75
	bl sub_0801D7EC
	bl sub_080A4494
	adds r1, r0, #7
	cmp r1, #0
	bge _080A3BFA
	adds r1, #7
_080A3BFA:
	asrs r0, r1, #3
	subs r0, #6
	cmp r0, #0
	bge _080A3C04
	movs r0, #0
_080A3C04:
	cmp r0, #6
	ble _080A3C0A
	movs r0, #6
_080A3C0A:
	adds r0, #0x76
	bl sub_0801D7EC
	ldr r1, _080A3C58 @ =gUnk_03000F50
	ldrh r2, [r1]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080A3C5C @ =0x00001C01
	strh r0, [r1, #0x14]
	ldr r0, _080A3C60 @ =0x00001D02
	strh r0, [r1, #0x20]
	ldr r0, _080A3C64 @ =0x00001E0B
	strh r0, [r1, #0x2c]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #0x26]
	strh r4, [r1, #0x32]
	bl sub_080A4528
	bl sub_080A4398
	movs r0, #0
	bl sub_0801E738
	ldr r0, _080A3C68 @ =gUnk_081280DC
	bl sub_080A70AC
	movs r0, #1
	bl sub_080A7114
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080A3C54: .4byte gUnk_02000080
_080A3C58: .4byte gUnk_03000F50
_080A3C5C: .4byte 0x00001C01
_080A3C60: .4byte 0x00001D02
_080A3C64: .4byte 0x00001E0B
_080A3C68: .4byte gUnk_081280DC

	thumb_func_start sub_080A3C6C
sub_080A3C6C: @ 0x080A3C6C
	push {r4, r5, lr}
	ldr r0, _080A3C9C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A3C78
	b _080A3DA8
_080A3C78:
	ldr r5, _080A3CA0 @ =gUnk_02000080
	movs r0, #2
	strb r0, [r5, #1]
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r2, r0, #0x10
	ldr r0, [r5, #0x10]
	subs r4, r2, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _080A3C92
	rsbs r1, r4, #0
_080A3C92:
	ldr r0, _080A3CA4 @ =0x00001FFD
	cmp r1, r0
	bhi _080A3CA8
	str r2, [r5, #0x10]
	b _080A3CDE
	.align 2, 0
_080A3C9C: .4byte gUnk_03000FD0
_080A3CA0: .4byte gUnk_02000080
_080A3CA4: .4byte 0x00001FFD
_080A3CA8:
	movs r0, #1
	strb r0, [r5, #1]
	adds r0, r4, #0
	bl sub_08000E44
	adds r2, r0, #0
	adds r0, r4, #0
	cmp r0, #0
	bge _080A3CBE
	ldr r1, _080A3D18 @ =0x0001FFFF
	adds r0, r0, r1
_080A3CBE:
	asrs r4, r0, #0x11
	cmp r4, #0
	bge _080A3CC6
	rsbs r4, r4, #0
_080A3CC6:
	cmp r4, #5
	ble _080A3CCC
	movs r4, #5
_080A3CCC:
	ldr r0, _080A3D1C @ =gUnk_081280EE
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080A3D20 @ =0x00000666
	muls r0, r2, r0
	muls r1, r0, r1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
_080A3CDE:
	adds r3, r5, #0
	adds r3, #0x29
	ldrb r2, [r3]
	ldr r0, [r5, #0x10]
	adds r1, r0, #0
	cmp r0, #0
	bge _080A3CF0
	ldr r4, _080A3D24 @ =0x0000FFFF
	adds r1, r0, r4
_080A3CF0:
	asrs r1, r1, #0x10
	cmp r2, r1
	beq _080A3CFE
	strb r1, [r3]
	movs r0, #0x69
	bl sub_080A3268
_080A3CFE:
	ldr r2, _080A3D28 @ =gUnk_03000FF0
	ldrh r1, [r2, #2]
	ldr r0, _080A3D2C @ =0x0000020A
	ands r0, r1
	cmp r0, #0
	beq _080A3D30
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6c
	bl sub_080A3268
	b _080A3DA8
	.align 2, 0
_080A3D18: .4byte 0x0001FFFF
_080A3D1C: .4byte gUnk_081280EE
_080A3D20: .4byte 0x00000666
_080A3D24: .4byte 0x0000FFFF
_080A3D28: .4byte gUnk_03000FF0
_080A3D2C: .4byte 0x0000020A
_080A3D30:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r4, [r0]
	ldrh r1, [r2, #4]
	adds r5, r0, #0
	cmp r1, #0x20
	beq _080A3D56
	cmp r1, #0x20
	bgt _080A3D4C
	cmp r1, #1
	beq _080A3D5E
	cmp r1, #0x10
	beq _080A3D5A
	b _080A3D8A
_080A3D4C:
	cmp r1, #0x40
	beq _080A3D56
	cmp r1, #0x80
	beq _080A3D5A
	b _080A3D8A
_080A3D56:
	subs r4, #1
	b _080A3D8A
_080A3D5A:
	adds r4, #1
	b _080A3D8A
_080A3D5E:
	ldr r2, _080A3DAC @ =gUnk_02000080
	ldrb r0, [r2, #1]
	cmp r0, #2
	bne _080A3D8A
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bge _080A3D70
	ldr r1, _080A3DB0 @ =0x0000FFFF
	adds r0, r0, r1
_080A3D70:
	asrs r4, r0, #0x10
	ldr r0, _080A3DB4 @ =gUnk_02002A40
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x2a
	strb r1, [r0]
	movs r0, #3
	bl sub_080A7114
_080A3D8A:
	bl sub_080A3B48
	cmp r0, r4
	bgt _080A3D94
	subs r4, r0, #1
_080A3D94:
	cmp r0, #1
	bgt _080A3D9A
	movs r4, #0
_080A3D9A:
	cmp r4, #0
	bge _080A3DA0
	movs r4, #0
_080A3DA0:
	ldrb r0, [r5]
	cmp r0, r4
	beq _080A3DA8
	strb r4, [r5]
_080A3DA8:
	pop {r4, r5, pc}
	.align 2, 0
_080A3DAC: .4byte gUnk_02000080
_080A3DB0: .4byte 0x0000FFFF
_080A3DB4: .4byte gUnk_02002A40

	thumb_func_start sub_080A3DB8
sub_080A3DB8: @ 0x080A3DB8
	push {lr}
	ldr r0, _080A3DDC @ =gUnk_02000080
	ldrb r1, [r0, #1]
	cmp r1, #6
	bne _080A3DEE
	ldr r0, _080A3DE0 @ =gUnk_02022740
	strb r1, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	ldr r1, _080A3DE4 @ =gUnk_080C9CBC
	adds r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080A3DE8
	ldrb r1, [r1, #4]
	bl sub_080A7138
	b _080A3DF8
	.align 2, 0
_080A3DDC: .4byte gUnk_02000080
_080A3DE0: .4byte gUnk_02022740
_080A3DE4: .4byte gUnk_080C9CBC
_080A3DE8:
	bl sub_080A71DC
	b _080A3DF8
_080A3DEE:
	ldr r1, _080A3DFC @ =gUnk_02022740
	movs r0, #5
	strb r0, [r1]
	bl sub_080A71DC
_080A3DF8:
	pop {pc}
	.align 2, 0
_080A3DFC: .4byte gUnk_02022740

	thumb_func_start sub_080A3E00
sub_080A3E00: @ 0x080A3E00
	push {lr}
	ldr r1, _080A3E18 @ =gUnk_02000080
	movs r0, #3
	strb r0, [r1, #1]
	ldr r2, _080A3E1C @ =gUnk_081280F4
	ldrb r0, [r1, #6]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A3E18: .4byte gUnk_02000080
_080A3E1C: .4byte gUnk_081280F4

	thumb_func_start sub_080A3E20
sub_080A3E20: @ 0x080A3E20
	push {lr}
	ldr r2, _080A3E44 @ =gUnk_02000080
	movs r0, #0
	strh r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x45
	ble _080A3E42
	movs r0, #0x46
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2, #6]
_080A3E42:
	pop {pc}
	.align 2, 0
_080A3E44: .4byte gUnk_02000080

	thumb_func_start sub_080A3E48
sub_080A3E48: @ 0x080A3E48
	push {r4, lr}
	ldr r2, _080A3E78 @ =gUnk_080C9CBC
	ldr r3, _080A3E7C @ =gUnk_02000080
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #5]
	ldr r0, _080A3E80 @ =gUnk_02022740
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	cmp r1, r0
	beq _080A3E84
	movs r0, #0x8c
	lsls r0, r0, #1
	bl sub_080A3268
	movs r0, #4
	bl sub_080A7114
	b _080A3EC8
	.align 2, 0
_080A3E78: .4byte gUnk_080C9CBC
_080A3E7C: .4byte gUnk_02000080
_080A3E80: .4byte gUnk_02022740
_080A3E84:
	movs r2, #0
	movs r0, #2
	strb r0, [r3, #6]
	movs r0, #0x14
	strh r0, [r3, #8]
	ldr r3, _080A3ECC @ =gUnk_03000F50
	ldrh r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x58
	ldr r0, _080A3ED0 @ =0x00006887
	strh r0, [r1]
	adds r1, #4
	ldr r0, _080A3ED4 @ =0x0000405F
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #4
	ldr r0, _080A3ED8 @ =0x00003F90
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x6a
	strh r2, [r0]
	movs r0, #0xfa
	bl sub_080A3268
_080A3EC8:
	pop {r4, pc}
	.align 2, 0
_080A3ECC: .4byte gUnk_03000F50
_080A3ED0: .4byte 0x00006887
_080A3ED4: .4byte 0x0000405F
_080A3ED8: .4byte 0x00003F90

	thumb_func_start sub_080A3EDC
sub_080A3EDC: @ 0x080A3EDC
	push {lr}
	ldr r2, _080A3F08 @ =gUnk_03000F50
	adds r1, r2, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _080A3F04
	movs r0, #0
	strh r0, [r1]
	ldrh r1, [r2]
	ldr r0, _080A3F0C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #5
	bl sub_080A7114
_080A3F04:
	pop {pc}
	.align 2, 0
_080A3F08: .4byte gUnk_03000F50
_080A3F0C: .4byte 0x0000DFFF

	thumb_func_start sub_080A3F10
sub_080A3F10: @ 0x080A3F10
	push {r4, lr}
	ldr r2, _080A3F48 @ =gUnk_02000080
	movs r0, #4
	strb r0, [r2, #1]
	adds r3, r2, #0
	adds r3, #0x2c
	ldrb r1, [r3]
	subs r1, #3
	strb r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	lsls r1, r1, #0x18
	cmp r1, #0
	bge _080A3F46
	movs r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #0x6d
	bl sub_080A3268
_080A3F46:
	pop {r4, pc}
	.align 2, 0
_080A3F48: .4byte gUnk_02000080

	thumb_func_start sub_080A3F4C
sub_080A3F4C: @ 0x080A3F4C
	push {lr}
	ldr r1, _080A3F60 @ =gUnk_08128100
	ldr r0, _080A3F64 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A3F60: .4byte gUnk_08128100
_080A3F64: .4byte gUnk_02000080

	thumb_func_start sub_080A3F68
sub_080A3F68: @ 0x080A3F68
	push {r4, r5, lr}
	ldr r5, _080A3FB4 @ =gUnk_02000080
	movs r0, #5
	strb r0, [r5, #1]
	ldr r4, _080A3FB8 @ =gUnk_02002C81
	ldr r0, _080A3FBC @ =gUnk_02022740
	ldrb r1, [r0, #3]
	adds r0, r4, #0
	bl sub_0801D5BC
	ldr r0, _080A3FC0 @ =0xFFFFFED6
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bls _080A3F96
	ldr r0, _080A3FC4 @ =0xFFFFFED5
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_080A3F96:
	bl sub_080A4468
	movs r0, #0xcd
	bl sub_080A3268
	ldr r0, _080A3FC8 @ =0x00000702
	movs r1, #0xe
	bl sub_080563C8
	movs r0, #1
	strb r0, [r5, #6]
	movs r0, #0x78
	strh r0, [r5, #8]
	pop {r4, r5, pc}
	.align 2, 0
_080A3FB4: .4byte gUnk_02000080
_080A3FB8: .4byte gUnk_02002C81
_080A3FBC: .4byte gUnk_02022740
_080A3FC0: .4byte 0xFFFFFED6
_080A3FC4: .4byte 0xFFFFFED5
_080A3FC8: .4byte 0x00000702

	thumb_func_start sub_080A3FCC
sub_080A3FCC: @ 0x080A3FCC
	push {lr}
	ldr r0, _080A3FE8 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080A3FE6
	ldr r0, _080A3FEC @ =gUnk_02000080
	movs r1, #2
	strb r1, [r0, #6]
	ldr r0, _080A3FF0 @ =0x00000147
	bl sub_080A3268
_080A3FE6:
	pop {pc}
	.align 2, 0
_080A3FE8: .4byte gUnk_02000050
_080A3FEC: .4byte gUnk_02000080
_080A3FF0: .4byte 0x00000147

	thumb_func_start sub_080A3FF4
sub_080A3FF4: @ 0x080A3FF4
	push {lr}
	ldr r2, _080A4014 @ =gUnk_02000080
	ldrh r0, [r2, #8]
	subs r0, #1
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A4018
	ldrh r0, [r2, #0x1a]
	ldrh r3, [r2, #0x18]
	adds r1, r0, r3
	strh r1, [r2, #0x18]
	adds r0, #0x20
	strh r0, [r2, #0x1a]
	b _080A4036
	.align 2, 0
_080A4014: .4byte gUnk_02000080
_080A4018:
	movs r0, #6
	strb r0, [r2, #1]
	movs r0, #3
	strb r0, [r2, #6]
	movs r0, #0x4f
	strh r0, [r2, #8]
	movs r0, #0xb3
	movs r1, #1
	movs r2, #0
	bl CreateObject
	movs r0, #0xe5
	lsls r0, r0, #1
	bl sub_080A3268
_080A4036:
	pop {pc}

	thumb_func_start sub_080A4038
sub_080A4038: @ 0x080A4038
	push {lr}
	ldr r1, _080A4050 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A404E
	movs r0, #2
	bl sub_080A7114
_080A404E:
	pop {pc}
	.align 2, 0
_080A4050: .4byte gUnk_02000080

	thumb_func_start sub_080A4054
sub_080A4054: @ 0x080A4054
	push {lr}
	bl sub_080A422C
	bl sub_080A414C
	bl sub_080A4080
	movs r2, #0
	ldr r0, _080A407C @ =gUnk_02019EE0
	adds r1, r0, #1
_080A4068:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080A4072
	subs r0, #1
	strb r0, [r1]
_080A4072:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _080A4068
	pop {pc}
	.align 2, 0
_080A407C: .4byte gUnk_02019EE0

	thumb_func_start sub_080A4080
sub_080A4080: @ 0x080A4080
	push {r4, r5, r6, r7, lr}
	ldr r4, _080A4134 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r5, _080A4138 @ =gUnk_02000080
	adds r0, r5, #0
	adds r0, #0x2f
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #2]
	movs r0, #0x40
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #8]
	ldr r0, _080A413C @ =0x000001FB
	movs r1, #0
	bl sub_080ADA14
	movs r0, #0x94
	strh r0, [r4, #2]
	movs r0, #0x50
	strh r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #8]
	movs r7, #0xfd
	lsls r7, r7, #1
	adds r0, r7, #0
	movs r1, #0
	bl sub_080ADA14
	movs r0, #0xb8
	strh r0, [r4]
	movs r0, #0x94
	lsls r0, r0, #3
	strh r0, [r4, #8]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080ADA14
	ldr r0, _080A4140 @ =gUnk_03001000
	ldrh r0, [r0, #0xc]
	lsrs r0, r0, #2
	movs r1, #0xe
	ands r0, r1
	ldr r1, _080A4144 @ =gUnk_08128110
	adds r6, r0, r1
	ldrb r1, [r6]
	movs r0, #0xa
	subs r0, r0, r1
	strh r0, [r4]
	movs r0, #0x9c
	lsls r0, r0, #3
	strh r0, [r4, #8]
	bl sub_080A3B48
	subs r0, #1
	cmp r0, #0
	ble _080A4130
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bge _080A4108
	ldr r2, _080A4148 @ =0x0000FFFF
	adds r1, r1, r2
_080A4108:
	asrs r5, r1, #0x10
	cmp r5, r0
	beq _080A411C
	ldrb r0, [r6, #1]
	adds r0, #0x77
	strh r0, [r4, #2]
	adds r0, r7, #0
	movs r1, #3
	bl sub_080ADA14
_080A411C:
	cmp r5, #0
	beq _080A4130
	ldrb r1, [r6, #1]
	movs r0, #0x27
	subs r0, r0, r1
	strh r0, [r4, #2]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080ADA14
_080A4130:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4134: .4byte gUnk_03001010
_080A4138: .4byte gUnk_02000080
_080A413C: .4byte 0x000001FB
_080A4140: .4byte gUnk_03001000
_080A4144: .4byte gUnk_08128110
_080A4148: .4byte 0x0000FFFF

	thumb_func_start sub_080A414C
sub_080A414C: @ 0x080A414C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _080A4210 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, _080A4214 @ =gUnk_02000080
	ldrh r0, [r0, #0x10]
	ldr r1, _080A4218 @ =0x00000B21
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #3
	rsbs r5, r5, #0
	movs r1, #0xff
	mov r8, r1
	adds r7, r4, #0
	ldr r6, _080A421C @ =gUnk_080C9160
	rsbs r0, r0, #0
	adds r4, r0, #0
	subs r4, #0x45
	ldr r2, _080A4220 @ =gUnk_02002B6B
	mov sb, r2
_080A4180:
	adds r2, r4, #0
	mov r3, r8
	ands r2, r3
	lsls r0, r2, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080A419A
	adds r0, #0xff
_080A419A:
	asrs r0, r0, #8
	adds r0, #0x4f
	strh r0, [r7, #2]
	adds r0, r2, #0
	adds r0, #0x40
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	cmp r0, #0
	bge _080A41BC
	adds r0, #0xff
_080A41BC:
	asrs r0, r0, #8
	subs r0, #0x10
	strh r0, [r7]
	ldr r2, _080A4214 @ =gUnk_02000080
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bge _080A41CE
	ldr r3, _080A4224 @ =0x0000FFFF
	adds r0, r0, r3
_080A41CE:
	asrs r0, r0, #0x10
	adds r3, r0, r5
	cmp r3, #0
	blt _080A4200
	mov r1, sb
	adds r0, r3, r1
	ldrb r1, [r0]
	ldr r0, _080A4228 @ =gUnk_02002A40
	cmp r5, #0
	bne _080A41EE
	ldrb r2, [r2, #1]
	cmp r2, #4
	bgt _080A41EE
	cmp r2, #3
	blt _080A41EE
	subs r1, #1
_080A41EE:
	cmp r1, #0
	ble _080A4200
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r3, r0
	ldrb r0, [r0]
	bl sub_080A42E0
_080A4200:
	adds r4, #0x17
	adds r5, #1
	cmp r5, #3
	ble _080A4180
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4210: .4byte gUnk_03001010
_080A4214: .4byte gUnk_02000080
_080A4218: .4byte 0x00000B21
_080A421C: .4byte gUnk_080C9160
_080A4220: .4byte gUnk_02002B6B
_080A4224: .4byte 0x0000FFFF
_080A4228: .4byte gUnk_02002A40

	thumb_func_start sub_080A422C
sub_080A422C: @ 0x080A422C
	push {r4, r5, lr}
	ldr r5, _080A42A4 @ =gUnk_02000080
	ldrh r0, [r5, #0x18]
	lsrs r0, r0, #8
	movs r1, #0x1b
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080A42A8 @ =gUnk_08128120
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #4
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805ECEC
	ldr r1, _080A42AC @ =gUnk_03001010
	movs r0, #0
	strh r4, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x4f
	strh r0, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	adds r4, #0x80
	ldrb r0, [r5, #1]
	cmp r0, #5
	beq _080A42B6
	cmp r0, #5
	bgt _080A42B0
	cmp r0, #3
	blt _080A42C4
	adds r4, r5, #0
	adds r4, #0x2c
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #0x32
	strh r0, [r1]
	adds r0, r2, #0
	movs r1, #0
	bl sub_080A42E0
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x46
	bl __divsi3
	movs r1, #0x8a
	subs r4, r1, r0
	b _080A42C6
	.align 2, 0
_080A42A4: .4byte gUnk_02000080
_080A42A8: .4byte gUnk_08128120
_080A42AC: .4byte gUnk_03001010
_080A42B0:
	cmp r0, #6
	beq _080A42C6
	b _080A42C4
_080A42B6:
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r2, #0
	movs r1, #0xff
	bl sub_080A42E0
	b _080A42C6
_080A42C4:
	movs r4, #0x8a
_080A42C6:
	ldr r0, _080A42D8 @ =gUnk_03001010
	strh r4, [r0]
	ldr r0, _080A42DC @ =gUnk_02022740
	ldrb r0, [r0, #3]
	movs r1, #0
	bl sub_080A42E0
	pop {r4, r5, pc}
	.align 2, 0
_080A42D8: .4byte gUnk_03001010
_080A42DC: .4byte gUnk_02022740

	thumb_func_start sub_080A42E0
sub_080A42E0: @ 0x080A42E0
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #3
	ldr r1, _080A42F4 @ =gUnk_080C9CBC
	adds r7, r0, r1
	cmp r4, #0xff
	bne _080A42F8
	ldrb r0, [r7, #2]
	b _080A42FA
	.align 2, 0
_080A42F4: .4byte gUnk_080C9CBC
_080A42F8:
	ldrb r0, [r7, #1]
_080A42FA:
	bl sub_080A43A8
	adds r6, r0, #0
	cmp r4, #0
	beq _080A4372
	cmp r4, #0xff
	beq _080A4372
	lsls r1, r6, #2
	ldr r0, _080A4348 @ =gUnk_02019EE0
	adds r1, r1, r0
	lsls r5, r6, #1
	ldrb r0, [r1, #2]
	cmp r4, r0
	beq _080A4324
	strb r4, [r1, #2]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r4, #0
	bl sub_0801C2F0
_080A4324:
	ldr r1, _080A434C @ =gUnk_03001010
	ldr r2, _080A4350 @ =0x00003AE0
	adds r0, r5, r2
	strh r0, [r1, #8]
	movs r0, #0
	ldrsh r4, [r1, r0]
	movs r2, #2
	ldrsh r5, [r1, r2]
	ldr r0, _080A4354 @ =gUnk_02000080
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _080A4358
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #9
	b _080A4362
	.align 2, 0
_080A4348: .4byte gUnk_02019EE0
_080A434C: .4byte gUnk_03001010
_080A4350: .4byte 0x00003AE0
_080A4354: .4byte gUnk_02000080
_080A4358:
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #0xa
_080A4362:
	strh r0, [r1, #2]
	movs r0, #0
	movs r1, #5
	bl sub_080ADA14
	ldr r0, _080A4394 @ =gUnk_03001010
	strh r4, [r0]
	strh r5, [r0, #2]
_080A4372:
	ldrb r1, [r7]
	lsls r1, r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r1, r0
	lsls r0, r6, #4
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	orrs r1, r0
	ldr r0, _080A4394 @ =gUnk_03001010
	strh r1, [r0, #8]
	movs r0, #0
	movs r1, #3
	bl sub_080ADA14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4394: .4byte gUnk_03001010

	thumb_func_start sub_080A4398
sub_080A4398: @ 0x080A4398
	push {lr}
	ldr r0, _080A43A4 @ =gUnk_02019EE0
	movs r1, #0x40
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_080A43A4: .4byte gUnk_02019EE0

	thumb_func_start sub_080A43A8
sub_080A43A8: @ 0x080A43A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080A43DC
	adds r4, r0, #0
	cmp r4, #0xf
	bls _080A43C8
	movs r0, #0xf
	ands r4, r0
	lsls r1, r4, #4
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_080A4418
_080A43C8:
	lsls r0, r4, #2
	ldr r1, _080A43D8 @ =gUnk_02019EE0
	adds r0, r0, r1
	strb r5, [r0]
	movs r1, #2
	strb r1, [r0, #1]
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_080A43D8: .4byte gUnk_02019EE0

	thumb_func_start sub_080A43DC
sub_080A43DC: @ 0x080A43DC
	push {lr}
	movs r1, #0
	ldr r2, _080A43EC @ =gUnk_02019EE0
_080A43E2:
	ldrb r3, [r2]
	cmp r0, r3
	bne _080A43F0
	adds r0, r1, #0
	b _080A4416
	.align 2, 0
_080A43EC: .4byte gUnk_02019EE0
_080A43F0:
	adds r2, #4
	adds r1, #1
	cmp r1, #0xf
	bls _080A43E2
	movs r1, #0
	ldr r2, _080A4408 @ =gUnk_02019EE0
_080A43FC:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _080A440C
	adds r0, r1, #0
	adds r0, #0x10
	b _080A4416
	.align 2, 0
_080A4408: .4byte gUnk_02019EE0
_080A440C:
	adds r2, #4
	adds r1, #1
	cmp r1, #0xf
	bls _080A43FC
	movs r0, #0
_080A4416:
	pop {pc}

	thumb_func_start sub_080A4418
sub_080A4418: @ 0x080A4418
	push {lr}
	lsls r1, r1, #5
	ldr r2, _080A4444 @ =0x06010000
	adds r3, r1, r2
	ldr r1, _080A4448 @ =gUnk_080CA06C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ands r2, r1
	mvns r0, r2
	ands r0, r1
	ldr r1, _080A444C @ =gUnk_085A2E80
	adds r1, r0, r1
	cmp r2, #0
	beq _080A4450
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompVram
	b _080A445C
	.align 2, 0
_080A4444: .4byte 0x06010000
_080A4448: .4byte gUnk_080CA06C
_080A444C: .4byte gUnk_085A2E80
_080A4450:
	ldr r0, _080A4460 @ =0x040000D4
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _080A4464 @ =0x84000080
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_080A445C:
	pop {pc}
	.align 2, 0
_080A4460: .4byte 0x040000D4
_080A4464: .4byte 0x84000080

	thumb_func_start sub_080A4468
sub_080A4468: @ 0x080A4468
	push {lr}
	ldr r0, _080A4488 @ =gUnk_03003DF0
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, [r0, #4]
	strb r1, [r0, #3]
	ldr r0, _080A448C @ =gUnk_02022740
	ldrb r0, [r0, #3]
	bl sub_0801E6C8
	ldr r0, _080A4490 @ =gUnk_02000080
	adds r0, #0x2a
	ldrb r0, [r0]
	bl sub_0801E798
	pop {pc}
	.align 2, 0
_080A4488: .4byte gUnk_03003DF0
_080A448C: .4byte gUnk_02022740
_080A4490: .4byte gUnk_02000080

	thumb_func_start sub_080A4494
sub_080A4494: @ 0x080A4494
	push {r4, r5, lr}
	bl sub_0805F2C8
	adds r4, r0, #0
	cmp r4, #0
	beq _080A44D0
	ldr r0, _080A44D4 @ =gUnk_02000D00
	str r0, [r4, #8]
	movs r1, #0
	strb r1, [r4, #2]
	movs r0, #5
	strb r0, [r4, #3]
	strb r1, [r4, #1]
	ldr r1, _080A44D8 @ =gUnk_02002AC0
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_080A44E0
	ldr r0, _080A44DC @ =gUnk_02022740
	ldr r0, [r0, #0xc]
	bl sub_08002632
	adds r0, r4, #0
	movs r2, #0xa0
	bl sub_080A44E0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0805F300
_080A44D0:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
_080A44D4: .4byte gUnk_02000D00
_080A44D8: .4byte gUnk_02002AC0
_080A44DC: .4byte gUnk_02022740

	thumb_func_start sub_080A44E0
sub_080A44E0: @ 0x080A44E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r8, r0
	ldr r0, [r4, #8]
	mov r1, r8
	bl sub_0801D630
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805F76C
	adds r6, r0, #0
	ldr r0, [r4, #8]
	lsls r5, r5, #5
	ldr r1, _080A4524 @ =0x06010000
	adds r5, r5, r1
	adds r1, r5, #0
	mov r2, r8
	bl sub_0801D66C
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4524: .4byte 0x06010000

	thumb_func_start sub_080A4528
sub_080A4528: @ 0x080A4528
	push {r4, lr}
	ldr r0, _080A4540 @ =gUnk_02022740
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #8]
	cmp r0, #7
	bne _080A4544
	ldrb r0, [r2, #9]
	ldrb r1, [r2, #0xa]
	ldrb r2, [r2, #0xb]
	bl sub_0806ED50
	b _080A4550
	.align 2, 0
_080A4540: .4byte gUnk_02022740
_080A4544:
	cmp r0, #3
	bne _080A45A2
	ldrb r0, [r2, #9]
	ldrb r1, [r2, #0xa]
	bl CreateEnemy
_080A4550:
	adds r4, r0, #0
	cmp r4, #0
	beq _080A45A2
	ldrb r0, [r4, #8]
	cmp r0, #7
	bne _080A456A
	adds r0, r4, #0
	bl sub_0806EC78
	ldrb r0, [r4, #9]
	strb r0, [r4, #0xf]
	movs r0, #0x56
	b _080A4576
_080A456A:
	adds r0, r4, #0
	bl sub_0804A57C
	ldrb r0, [r4, #9]
	strb r0, [r4, #0xf]
	movs r0, #0x66
_080A4576:
	strb r0, [r4, #9]
	movs r2, #0
	movs r0, #0xcc
	strh r0, [r4, #0x2e]
	movs r0, #0x60
	strh r0, [r4, #0x32]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x99
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	str r2, [r4, #0x48]
_080A45A2:
	pop {r4, pc}

	thumb_func_start sub_080A45A4
sub_080A45A4: @ 0x080A45A4
	push {lr}
	bl sub_080AD90C
	ldr r0, _080A45C4 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne _080A45D0
	ldr r1, _080A45C8 @ =gUnk_0812815C
	ldr r0, _080A45CC @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _080A45E0
	.align 2, 0
_080A45C4: .4byte gUnk_02032EC0
_080A45C8: .4byte gUnk_0812815C
_080A45CC: .4byte gUnk_02000080
_080A45D0:
	ldr r1, _080A4600 @ =gUnk_0812814C
	ldr r0, _080A4604 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_080A45E0:
	bl sub_0805E5C0
	bl sub_0801C1D4
	bl sub_0801C208
	bl sub_080AD9B0
	bl sub_080A4978
	bl sub_080AD918
	bl sub_080A4B44
	pop {pc}
	.align 2, 0
_080A4600: .4byte gUnk_0812814C
_080A4604: .4byte gUnk_02000080

	thumb_func_start sub_080A4608
sub_080A4608: @ 0x080A4608
	push {r4, lr}
	movs r0, #0x80
	bl sub_080A3248
	movs r0, #3
	bl sub_080A4DA8
	ldr r4, _080A46A0 @ =gUnk_020176A0
	movs r1, #0xfb
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0
	bl sub_0801D79C
	movs r0, #0xae
	lsls r0, r0, #1
	movs r2, #0xd3
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	bl sub_0801D79C
	ldr r0, _080A46A4 @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r0, _080A46A8 @ =gUnk_02001A40
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0801D630
	ldr r2, _080A46AC @ =gUnk_03000F50
	adds r1, r2, #0
	adds r1, #0x58
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r0, _080A46B0 @ =0x00007898
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1d
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2, #0x1a]
	movs r2, #0xee
	ldr r3, _080A46B4 @ =gUnk_02000080
	movs r1, #0xf
	adds r0, r3, #0
	adds r0, #0x1f
_080A4674:
	strb r2, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge _080A4674
	ldr r0, _080A46B8 @ =gUnk_02032EC0
	ldrb r1, [r0, #3]
	ldr r0, _080A46BC @ =gUnk_02002A40
	ldrb r0, [r0, #6]
	movs r2, #0x88
	cmp r0, #0
	bne _080A468E
	movs r2, #0x82
_080A468E:
	cmp r2, r1
	bge _080A4694
	movs r1, #1
_080A4694:
	strb r1, [r3, #0x1c]
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080A46A0: .4byte gUnk_020176A0
_080A46A4: .4byte gUnk_02034CB0
_080A46A8: .4byte gUnk_02001A40
_080A46AC: .4byte gUnk_03000F50
_080A46B0: .4byte 0x00007898
_080A46B4: .4byte gUnk_02000080
_080A46B8: .4byte gUnk_02032EC0
_080A46BC: .4byte gUnk_02002A40

	thumb_func_start sub_080A46C0
sub_080A46C0: @ 0x080A46C0
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_080A3248
	movs r0, #0x6c
	bl sub_080A3268
	movs r0, #2
	bl sub_0807CD8C
	bl sub_080A71DC
	pop {pc}

	thumb_func_start sub_080A46DC
sub_080A46DC: @ 0x080A46DC
	push {lr}
	bl sub_080A4608
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A46EC
sub_080A46EC: @ 0x080A46EC
	push {lr}
	ldr r0, _080A4714 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4710
	ldr r1, _080A4718 @ =gUnk_080FC3E4
	ldr r0, _080A471C @ =gUnk_02000080
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #7]
	movs r0, #0xa2
	movs r2, #0
	bl CreateObject
	movs r0, #2
	bl sub_080A7114
_080A4710:
	pop {pc}
	.align 2, 0
_080A4714: .4byte gUnk_03000FD0
_080A4718: .4byte gUnk_080FC3E4
_080A471C: .4byte gUnk_02000080

	thumb_func_start sub_080A4720
sub_080A4720: @ 0x080A4720
	push {r4, lr}
	ldr r4, _080A4744 @ =gUnk_02000080
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A47C4
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0x40
	beq _080A4748
	cmp r0, #0x80
	beq _080A4788
	b _080A475A
	.align 2, 0
_080A4744: .4byte gUnk_02000080
_080A4748:
	ldr r0, _080A477C @ =gUnk_02002B0E
	ldrb r1, [r4, #0x1c]
	bl sub_0801D5BC
	adds r1, r4, #0
	adds r1, #0x21
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #1]
_080A475A:
	ldr r0, _080A4780 @ =gUnk_02000080
	adds r0, #0x20
	ldrb r0, [r0]
	lsrs r1, r0, #2
	cmp r1, #0x10
	bls _080A476A
	movs r0, #0x20
	subs r1, r0, r1
_080A476A:
	ldr r0, _080A4784 @ =gUnk_03000F50
	adds r2, r0, #0
	adds r2, #0x6a
	strh r1, [r2]
	adds r0, #0x66
	movs r1, #0xbf
	strh r1, [r0]
	b _080A47C4
	.align 2, 0
_080A477C: .4byte gUnk_02002B0E
_080A4780: .4byte gUnk_02000080
_080A4784: .4byte gUnk_03000F50
_080A4788:
	ldr r2, _080A47C8 @ =gUnk_03000F50
	adds r0, r2, #0
	adds r0, #0x6a
	strh r3, [r0]
	subs r0, #4
	strh r3, [r0]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #3
	bl sub_080A7114
	ldr r0, _080A47CC @ =gUnk_0812813C
	bl sub_080A70AC
	movs r0, #0x15
	strb r0, [r4, #1]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	movs r1, #0x6d
	cmp r0, #0
	bne _080A47BE
	adds r1, #0x9c
_080A47BE:
	adds r0, r1, #0
	bl sub_080A3268
_080A47C4:
	pop {r4, pc}
	.align 2, 0
_080A47C8: .4byte gUnk_03000F50
_080A47CC: .4byte gUnk_0812813C

	thumb_func_start sub_080A47D0
sub_080A47D0: @ 0x080A47D0
	push {r4, lr}
	ldr r0, _080A47EC @ =gUnk_02000080
	movs r4, #0x1f
	ldrsb r4, [r0, r4]
	ldr r0, _080A47F0 @ =gUnk_03000FF0
	ldrh r0, [r0, #4]
	cmp r0, #8
	beq _080A47FE
	cmp r0, #8
	bgt _080A47F4
	cmp r0, #2
	beq _080A47FE
	b _080A480A
	.align 2, 0
_080A47EC: .4byte gUnk_02000080
_080A47F0: .4byte gUnk_03000FF0
_080A47F4:
	cmp r0, #0x10
	beq _080A4804
	cmp r0, #0x20
	beq _080A4808
	b _080A480A
_080A47FE:
	bl sub_080A46C0
	b _080A480A
_080A4804:
	adds r4, #8
	b _080A480A
_080A4808:
	subs r4, #8
_080A480A:
	ldr r1, _080A4828 @ =gUnk_02000080
	ldrb r0, [r1, #0x1e]
	cmp r4, #0
	bge _080A4814
	movs r4, #0
_080A4814:
	cmp r0, r4
	bge _080A481A
	adds r4, r0, #0
_080A481A:
	strb r4, [r1, #0x1f]
	ldr r1, _080A482C @ =gUnk_03000F50
	adds r0, r4, #0
	subs r0, #0x70
	strh r0, [r1, #0x18]
	pop {r4, pc}
	.align 2, 0
_080A4828: .4byte gUnk_02000080
_080A482C: .4byte gUnk_03000F50

	thumb_func_start sub_080A4830
sub_080A4830: @ 0x080A4830
	push {lr}
	bl sub_080A4608
	ldr r2, _080A4858 @ =gUnk_03000F50
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A485C @ =gUnk_0812813C
	bl sub_080A70AC
	ldr r1, _080A4860 @ =gUnk_02000080
	movs r0, #0xff
	strb r0, [r1, #1]
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A4858: .4byte gUnk_03000F50
_080A485C: .4byte gUnk_0812813C
_080A4860: .4byte gUnk_02000080

	thumb_func_start sub_080A4864
sub_080A4864: @ 0x080A4864
	push {r4, r5, r6, lr}
	ldr r0, _080A4894 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4926
	ldr r0, _080A4898 @ =gUnk_02000080
	movs r5, #0x1f
	ldrsb r5, [r0, r5]
	ldrb r4, [r0, #0x1c]
	ldr r0, _080A489C @ =gUnk_03000FF0
	ldrh r1, [r0, #4]
	cmp r1, #0x20
	beq _080A48DC
	cmp r1, #0x20
	bgt _080A48A0
	cmp r1, #2
	beq _080A48C0
	cmp r1, #2
	ble _080A48DE
	cmp r1, #8
	beq _080A48C0
	cmp r1, #0x10
	beq _080A48D8
	b _080A48DE
	.align 2, 0
_080A4894: .4byte gUnk_03000FD0
_080A4898: .4byte gUnk_02000080
_080A489C: .4byte gUnk_03000FF0
_080A48A0:
	cmp r1, #0x80
	beq _080A48D4
	cmp r1, #0x80
	bgt _080A48AE
	cmp r1, #0x40
	beq _080A48D0
	b _080A48DE
_080A48AE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A48CC
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080A48C8
	b _080A48DE
_080A48C0:
	movs r0, #3
	bl sub_080A7114
	b _080A48DE
_080A48C8:
	subs r4, #5
	b _080A48DE
_080A48CC:
	adds r4, #5
	b _080A48DE
_080A48D0:
	subs r4, #1
	b _080A48DE
_080A48D4:
	adds r4, #1
	b _080A48DE
_080A48D8:
	adds r5, #8
	b _080A48DE
_080A48DC:
	subs r5, #8
_080A48DE:
	ldr r0, _080A4928 @ =gUnk_02002A40
	ldrb r0, [r0, #6]
	movs r1, #0x88
	cmp r0, #0
	bne _080A48EA
	movs r1, #0x82
_080A48EA:
	cmp r4, #0
	bgt _080A48F0
	movs r4, #1
_080A48F0:
	cmp r1, r4
	bge _080A48F6
	adds r4, r1, #0
_080A48F6:
	ldr r6, _080A492C @ =gUnk_02000080
	ldrb r0, [r6, #0x1c]
	cmp r0, r4
	beq _080A490E
	strb r4, [r6, #0x1c]
	movs r0, #0x69
	bl sub_080A3268
	movs r0, #2
	bl sub_080A7114
	movs r5, #0
_080A490E:
	ldrb r0, [r6, #0x1e]
	cmp r5, #0
	bge _080A4916
	movs r5, #0
_080A4916:
	cmp r0, r5
	bge _080A491C
	adds r5, r0, #0
_080A491C:
	strb r5, [r6, #0x1f]
	ldr r1, _080A4930 @ =gUnk_03000F50
	adds r0, r5, #0
	subs r0, #0x70
	strh r0, [r1, #0x18]
_080A4926:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4928: .4byte gUnk_02002A40
_080A492C: .4byte gUnk_02000080
_080A4930: .4byte gUnk_03000F50

	thumb_func_start sub_080A4934
sub_080A4934: @ 0x080A4934
	push {lr}
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A4940
sub_080A4940: @ 0x080A4940
	push {lr}
	bl sub_080A46C0
	pop {pc}

	thumb_func_start sub_080A4948
sub_080A4948: @ 0x080A4948
	push {r4, lr}
	adds r1, r0, #0
	movs r4, #0
	ldr r3, _080A4974 @ =gUnk_02002A40
	ldrb r0, [r3, #6]
	movs r2, #0x88
	cmp r0, #0
	bne _080A495A
	movs r2, #0x82
_080A495A:
	cmp r1, #0
	bgt _080A4962
	cmp r2, r1
	blt _080A4970
_080A4962:
	adds r0, r3, #0
	adds r0, #0xce
	bl sub_0801D5A8
	cmp r0, #0
	beq _080A4970
	movs r4, #1
_080A4970:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_080A4974: .4byte gUnk_02002A40

	thumb_func_start sub_080A4978
sub_080A4978: @ 0x080A4978
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080A4B1C @ =gUnk_03001010
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #8]
	movs r0, #0x9c
	strh r0, [r5]
	movs r0, #0x48
	strh r0, [r5, #2]
	movs r7, #0xfe
	lsls r7, r7, #1
	adds r0, r7, #0
	movs r1, #0
	bl sub_080ADA14
	ldr r0, _080A4B20 @ =gUnk_02002A40
	ldrb r0, [r0, #6]
	movs r2, #0x88
	cmp r0, #0
	bne _080A49AC
	movs r2, #0x82
_080A49AC:
	ldr r3, _080A4B24 @ =gUnk_02000080
	ldrb r1, [r3, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A4A10
	ldrb r4, [r3, #0x1c]
	cmp r2, r4
	blt _080A4A10
	movs r6, #0xe8
	strh r6, [r5]
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r1, r2, #0
	bl __divsi3
	subs r1, r4, #1
	muls r0, r1, r0
	cmp r0, #0
	bge _080A49D6
	adds r0, #0xff
_080A49D6:
	asrs r0, r0, #8
	adds r0, #0x20
	strh r0, [r5, #2]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080ADA14
	ldr r0, _080A4B28 @ =gUnk_03001000
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r4, #2
	cmp r0, #0
	beq _080A49F4
	movs r4, #4
_080A49F4:
	strh r6, [r5]
	movs r0, #0x1a
	strh r0, [r5, #2]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080ADA14
	strh r6, [r5]
	movs r0, #0x76
	strh r0, [r5, #2]
	adds r1, r4, #1
	adds r0, r7, #0
	bl sub_080ADA14
_080A4A10:
	ldr r0, _080A4B28 @ =gUnk_03001000
	ldrh r1, [r0, #0xc]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4A6A
	ldr r5, _080A4B24 @ =gUnk_02000080
	ldrb r1, [r5, #1]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4A6A
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080A4A6A
	ldr r4, _080A4B1C @ =gUnk_03001010
	strh r2, [r4, #2]
	movs r0, #0x1f
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080A4A4E
	movs r0, #6
	strh r0, [r4]
	movs r0, #0x9c
	strh r0, [r4, #2]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #6
	bl sub_080ADA14
_080A4A4E:
	ldrb r1, [r5, #0x1e]
	movs r0, #0x1f
	ldrsb r0, [r5, r0]
	cmp r1, r0
	ble _080A4A6A
	movs r0, #0xea
	strh r0, [r4]
	movs r0, #0x9c
	strh r0, [r4, #2]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #7
	bl sub_080ADA14
_080A4A6A:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A4ABE
	ldr r2, _080A4B24 @ =gUnk_02000080
	ldrb r1, [r2, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A4ABE
	ldr r1, _080A4B1C @ =gUnk_03001010
	movs r0, #0x10
	strh r0, [r1, #2]
	ldrb r4, [r2, #0x1c]
	movs r6, #2
	adds r7, r1, #0
	movs r5, #0x6b
_080A4A8E:
	strh r5, [r7]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #1
	movs r2, #0x9e
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	movs r0, #0
	movs r1, #9
	bl sub_080ADA14
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	subs r5, #7
	subs r6, #1
	cmp r6, #0
	bge _080A4A8E
_080A4ABE:
	ldr r4, _080A4B24 @ =gUnk_02000080
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4B3A
	ldrb r0, [r4, #0x1c]
	bl sub_080A4948
	cmp r0, #0
	beq _080A4B3A
	ldr r1, _080A4B1C @ =gUnk_03001010
	movs r0, #0x2c
	strh r0, [r1]
	movs r0, #0x48
	strh r0, [r1, #2]
	movs r0, #0xd4
	lsls r0, r0, #7
	strh r0, [r1, #8]
	movs r0, #0xfc
	lsls r0, r0, #1
	ldrb r1, [r4, #0x1c]
	subs r1, #1
	bl sub_080ADA14
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r4, #0x1d]
	cmp r0, r1
	beq _080A4B3A
	strb r1, [r4, #0x1d]
	ldrb r4, [r4, #0x1c]
	lsls r4, r4, #4
	ldr r0, _080A4B2C @ =gUnk_081281A8
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #9
	bl sub_0801D754
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _080A4B34
	ldr r1, _080A4B30 @ =0x06014000
	bl LZ77UnCompVram
	b _080A4B3A
	.align 2, 0
_080A4B1C: .4byte gUnk_03001010
_080A4B20: .4byte gUnk_02002A40
_080A4B24: .4byte gUnk_02000080
_080A4B28: .4byte gUnk_03001000
_080A4B2C: .4byte gUnk_081281A8
_080A4B30: .4byte 0x06014000
_080A4B34:
	ldr r1, _080A4B40 @ =0x06014000
	bl sub_08000E96
_080A4B3A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4B40: .4byte 0x06014000

	thumb_func_start sub_080A4B44
sub_080A4B44: @ 0x080A4B44
	push {r4, r5, lr}
	ldr r5, _080A4B9C @ =gUnk_02000080
	ldrb r4, [r5, #0x1c]
	ldrb r1, [r5, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A4B5C
	adds r0, r4, #0
	bl sub_080A4CBC
	strb r0, [r5, #0x1e]
_080A4B5C:
	ldrb r1, [r5, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A4B6E
	adds r0, r4, #0
	movs r1, #2
	bl sub_080A4BA0
_080A4B6E:
	ldrb r1, [r5, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A4B98
	subs r0, r4, #2
	movs r1, #0
	bl sub_080A4BA0
	subs r0, r4, #1
	movs r1, #1
	bl sub_080A4BA0
	adds r0, r4, #1
	movs r1, #3
	bl sub_080A4BA0
	adds r0, r4, #2
	movs r1, #4
	bl sub_080A4BA0
_080A4B98:
	pop {r4, r5, pc}
	.align 2, 0
_080A4B9C: .4byte gUnk_02000080

	thumb_func_start sub_080A4BA0
sub_080A4BA0: @ 0x080A4BA0
	push {r4, r5, r6, lr}
	sub sp, #0x54
	adds r5, r0, #0
	adds r6, r1, #0
	add r0, sp, #0x18
	movs r1, #0x30
	bl sub_0801D630
	ldr r0, _080A4C08 @ =gUnk_0812816C
	mov r1, sp
	movs r2, #0x18
	bl sub_0801D66C
	ldr r0, _080A4C0C @ =gUnk_08128184
	add r4, sp, #0x48
	adds r1, r4, #0
	movs r2, #0xc
	bl sub_0801D66C
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r2, r1, #9
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	mov r2, sp
	mov r0, sp
	lsls r1, r1, #4
	ldrh r0, [r0, #0x10]
	adds r1, r1, r0
	strh r1, [r2, #0x10]
	lsls r1, r6, #7
	ldr r0, [sp]
	adds r0, r0, r1
	str r0, [sp]
	cmp r6, #2
	bne _080A4BEE
	mov r0, sp
	strb r6, [r0, #0x14]
_080A4BEE:
	ldr r0, _080A4C10 @ =gUnk_02002A40
	ldrb r0, [r0, #6]
	movs r1, #0x88
	cmp r0, #0
	bne _080A4BFA
	movs r1, #0x82
_080A4BFA:
	cmp r5, #0
	ble _080A4C02
	cmp r1, r5
	bge _080A4C14
_080A4C02:
	movs r5, #1
	rsbs r5, r5, #0
	b _080A4C3E
	.align 2, 0
_080A4C08: .4byte gUnk_0812816C
_080A4C0C: .4byte gUnk_08128184
_080A4C10: .4byte gUnk_02002A40
_080A4C14:
	ldr r1, _080A4C30 @ =gUnk_020227E8
	ldr r2, _080A4C34 @ =0x00303030
	adds r0, r5, #0
	bl sub_08057044
	adds r0, r5, #0
	bl sub_080A4948
	cmp r0, #0
	bne _080A4C38
	movs r0, #0x80
	lsls r0, r0, #8
	b _080A4C3C
	.align 2, 0
_080A4C30: .4byte gUnk_020227E8
_080A4C34: .4byte 0x00303030
_080A4C38:
	movs r0, #0x80
	lsls r0, r0, #4
_080A4C3C:
	adds r5, r5, r0
_080A4C3E:
	ldr r0, _080A4C94 @ =gUnk_02000080
	lsls r1, r6, #1
	adds r0, #0x10
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, r5
	beq _080A4CB2
	strh r5, [r1]
	ldr r0, _080A4C98 @ =0x0000F00B
	cmp r6, #2
	bne _080A4C56
	subs r0, #7
_080A4C56:
	ldr r1, [sp]
	movs r2, #0x80
	bl sub_0801D5EC
	cmp r5, #0
	ble _080A4CAC
	ldr r0, _080A4C9C @ =0x00007FFF
	cmp r5, r0
	ble _080A4C6A
	ldr r5, _080A4CA0 @ =0x00000889
_080A4C6A:
	adds r0, r5, #0
	cmp r5, #0
	bge _080A4C72
	adds r0, #0xff
_080A4C72:
	asrs r0, r0, #8
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	ldr r0, [sp]
	adds r0, #0x16
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080A4CA4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0805F46C
	b _080A4CAC
	.align 2, 0
_080A4C94: .4byte gUnk_02000080
_080A4C98: .4byte 0x0000F00B
_080A4C9C: .4byte 0x00007FFF
_080A4CA0: .4byte 0x00000889
_080A4CA4:
	adds r0, r5, #0
	mov r1, sp
	bl sub_0805F46C
_080A4CAC:
	ldr r1, _080A4CB8 @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0x32]
_080A4CB2:
	add sp, #0x54
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4CB8: .4byte gUnk_03000F50

	thumb_func_start sub_080A4CBC
sub_080A4CBC: @ 0x080A4CBC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _080A4D0C @ =gUnk_02000080
	ldrb r0, [r1, #0x1a]
	cmp r0, r6
	beq _080A4CFE
	strb r6, [r1, #0x1a]
	ldr r4, _080A4D10 @ =gUnk_02021F30
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801D630
	ldr r1, _080A4D14 @ =0x0600E000
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0801D66C
	adds r0, r6, #0
	bl sub_080A4948
	cmp r0, #0
	beq _080A4CF8
	movs r1, #0x90
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, _080A4D18 @ =gUnk_08128190
	bl sub_0805F46C
_080A4CF8:
	ldr r1, _080A4D1C @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0x1a]
_080A4CFE:
	ldr r0, _080A4D18 @ =gUnk_08128190
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	b _080A4D28
	.align 2, 0
_080A4D0C: .4byte gUnk_02000080
_080A4D10: .4byte gUnk_02021F30
_080A4D14: .4byte 0x0600E000
_080A4D18: .4byte gUnk_08128190
_080A4D1C: .4byte gUnk_03000F50
_080A4D20:
	adds r1, #0x40
	adds r2, #1
	cmp r2, #0x13
	bhi _080A4D2E
_080A4D28:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A4D20
_080A4D2E:
	lsls r0, r2, #3
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A4D34
sub_080A4D34: @ 0x080A4D34
	push {lr}
	bl sub_08053320
	movs r0, #0xb5
	bl sub_0801D714
	ldr r1, _080A4D50 @ =gUnk_02002A40
	adds r2, r1, #0
	adds r2, #0xaa
	ldrb r0, [r2]
	cmp r0, #8
	bhi _080A4D54
	movs r1, #2
	b _080A4D66
	.align 2, 0
_080A4D50: .4byte gUnk_02002A40
_080A4D54:
	adds r0, r1, #0
	adds r0, #0xab
	ldrb r0, [r0]
	ldrb r1, [r2]
	subs r0, r0, r1
	movs r1, #1
	cmp r0, #8
	bgt _080A4D66
	movs r1, #0
_080A4D66:
	adds r0, r1, #0
	adds r0, #0x56
	bl sub_0801D7EC
	ldr r1, _080A4D80 @ =gUnk_03000F50
	movs r0, #0
	strh r0, [r1, #0x2e]
	strh r0, [r1, #0x30]
	ldr r0, _080A4D84 @ =0x00001E0B
	strh r0, [r1, #0x2c]
	movs r0, #1
	strh r0, [r1, #0x32]
	pop {pc}
	.align 2, 0
_080A4D80: .4byte gUnk_03000F50
_080A4D84: .4byte 0x00001E0B

	thumb_func_start sub_080A4D88
sub_080A4D88: @ 0x080A4D88
	push {lr}
	ldr r0, _080A4DA4 @ =gUnk_020344A0
	movs r1, #8
	bl sub_0801D630
	movs r0, #1
	movs r1, #0
	bl sub_080A7138
	movs r0, #0x80
	bl sub_080A3248
	pop {pc}
	.align 2, 0
_080A4DA4: .4byte gUnk_020344A0

	thumb_func_start sub_080A4DA8
sub_080A4DA8: @ 0x080A4DA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080A4D34
	adds r0, r4, #0
	bl sub_080A4DB8
	pop {r4, pc}

	thumb_func_start sub_080A4DB8
sub_080A4DB8: @ 0x080A4DB8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08056250
	ldr r0, _080A4E58 @ =gUnk_02034CB0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _080A4E5C @ =gUnk_02021F30
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _080A4E60 @ =gUnk_020344B0
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _080A4E64 @ =gUnk_0200AF34
	movs r1, #0xc0
	lsls r1, r1, #2
	bl sub_0801D630
	ldr r4, _080A4E68 @ =gUnk_02000080
	adds r0, r4, #0
	movs r1, #0x30
	bl sub_0801D630
	ldr r0, _080A4E6C @ =0x0000FFFF
	strh r0, [r4, #0x2e]
	ldr r0, _080A4E70 @ =gUnk_02034490
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	movs r3, #0
	strb r0, [r4, #3]
	ldr r0, _080A4E74 @ =gUnk_08128A38
	lsls r5, r5, #3
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #3
	ldr r1, _080A4E78 @ =gUnk_08128AD8
	adds r4, r0, r1
	ldr r1, _080A4E7C @ =gUnk_03000F50
	ldrh r2, [r4, #2]
	movs r5, #0xca
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r1]
	strh r3, [r1, #0xa]
	strh r3, [r1, #0xc]
	movs r2, #1
	strh r2, [r1, #0xe]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x14]
	strh r2, [r1, #0x1a]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x24]
	ldrh r0, [r4, #6]
	strh r0, [r1, #0x20]
	strh r2, [r1, #0x26]
	strh r3, [r1, #0x2e]
	strh r3, [r1, #0x30]
	ldr r0, _080A4E80 @ =0x00001E0B
	strh r0, [r1, #0x2c]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A4E4A
	bl sub_0801D714
_080A4E4A:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _080A4E54
	bl sub_0801D7EC
_080A4E54:
	pop {r4, r5, pc}
	.align 2, 0
_080A4E58: .4byte gUnk_02034CB0
_080A4E5C: .4byte gUnk_02021F30
_080A4E60: .4byte gUnk_020344B0
_080A4E64: .4byte gUnk_0200AF34
_080A4E68: .4byte gUnk_02000080
_080A4E6C: .4byte 0x0000FFFF
_080A4E70: .4byte gUnk_02034490
_080A4E74: .4byte gUnk_08128A38
_080A4E78: .4byte gUnk_08128AD8
_080A4E7C: .4byte gUnk_03000F50
_080A4E80: .4byte 0x00001E0B

	thumb_func_start sub_080A4E84
sub_080A4E84: @ 0x080A4E84
	ldr r1, _080A4E8C @ =gUnk_02034490
	strb r0, [r1, #0x14]
	bx lr
	.align 2, 0
_080A4E8C: .4byte gUnk_02034490

	thumb_func_start sub_080A4E90
sub_080A4E90: @ 0x080A4E90
	ldr r1, _080A4E9C @ =gUnk_02034490
	movs r2, #0
	strb r0, [r1, #0x11]
	strb r2, [r1, #0x12]
	bx lr
	.align 2, 0
_080A4E9C: .4byte gUnk_02034490

	thumb_func_start sub_080A4EA0
sub_080A4EA0: @ 0x080A4EA0
	push {r4, lr}
	ldr r4, _080A4EB8 @ =gUnk_02034490
	ldrb r0, [r4, #0x11]
	cmp r0, #6
	bne _080A4EBC
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_080A3248
	bl sub_080A71DC
	b _080A4F14
	.align 2, 0
_080A4EB8: .4byte gUnk_02034490
_080A4EBC:
	bl sub_080AD90C
	ldr r1, _080A4F18 @ =gUnk_08128B30
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5128
	bl sub_0801C1D4
	bl sub_0801C208
	ldrb r0, [r4, #0x11]
	cmp r0, #4
	beq _080A4EF0
	ldr r0, _080A4F1C @ =gUnk_08128A38
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_080A4EF0:
	bl sub_080AD918
	movs r3, #0x16
	ldrsb r3, [r4, r3]
	movs r1, #0
	cmp r3, #0
	beq _080A4F00
	ldr r1, _080A4F20 @ =0x00000E46
_080A4F00:
	ldr r2, _080A4F24 @ =gUnk_03000F50
	adds r0, r2, #0
	adds r0, #0x66
	strh r1, [r0]
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
_080A4F14:
	pop {r4, pc}
	.align 2, 0
_080A4F18: .4byte gUnk_08128B30
_080A4F1C: .4byte gUnk_08128A38
_080A4F20: .4byte 0x00000E46
_080A4F24: .4byte gUnk_03000F50

	thumb_func_start sub_080A4F28
sub_080A4F28: @ 0x080A4F28
	push {r4, lr}
	bl sub_0801E8D4
	bl sub_080A4D34
	movs r1, #4
	ldr r3, _080A4F90 @ =gUnk_02034492
	movs r2, #0
_080A4F38:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0xd
	ble _080A4F38
	ldr r1, _080A4F94 @ =gUnk_030010A0
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	bl sub_080A6A80
	ldr r4, _080A4F98 @ =gUnk_02034490
	ldrb r0, [r0, #4]
	strb r0, [r4, #6]
	bl sub_0801DB94
	strb r0, [r4, #7]
	movs r0, #0x10
	bl sub_0805436C
	movs r1, #0xf
	cmp r0, #2
	beq _080A4F66
	movs r1, #0x10
_080A4F66:
	strb r1, [r4, #0x15]
	ldr r1, _080A4F9C @ =gUnk_08128A38
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	bl sub_080A50A0
	strb r0, [r4, #1]
	strb r0, [r4, #0x14]
	bl sub_080A4DB8
	movs r0, #4
	movs r1, #0x20
	bl sub_08050054
	movs r0, #1
	bl sub_080A4E90
	pop {r4, pc}
	.align 2, 0
_080A4F90: .4byte gUnk_02034492
_080A4F94: .4byte gUnk_030010A0
_080A4F98: .4byte gUnk_02034490
_080A4F9C: .4byte gUnk_08128A38

	thumb_func_start sub_080A4FA0
sub_080A4FA0: @ 0x080A4FA0
	push {lr}
	ldr r0, _080A4FB4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4FB0
	movs r0, #2
	bl sub_080A4E90
_080A4FB0:
	pop {pc}
	.align 2, 0
_080A4FB4: .4byte gUnk_03000FD0

	thumb_func_start sub_080A4FB8
sub_080A4FB8: @ 0x080A4FB8
	push {r4, r5, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5052
	ldr r0, _080A4FE4 @ =gUnk_02000080
	ldr r1, [r0, #0xc]
	adds r2, r0, #0
	cmp r1, #0
	beq _080A5052
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _080A4FE8 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	cmp r1, #8
	beq _080A4FFE
	cmp r1, #8
	bgt _080A4FEC
	cmp r1, #2
	beq _080A500A
	b _080A500C
	.align 2, 0
_080A4FE4: .4byte gUnk_02000080
_080A4FE8: .4byte gUnk_03000FF0
_080A4FEC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A5006
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080A5002
	b _080A500C
_080A4FFE:
	movs r4, #0
	b _080A5010
_080A5002:
	movs r4, #1
	b _080A5010
_080A5006:
	movs r4, #2
	b _080A5010
_080A500A:
	movs r4, #3
_080A500C:
	cmp r4, #0
	blt _080A5052
_080A5010:
	ldr r0, [r2, #0xc]
	adds r0, r0, r4
	ldrb r5, [r0]
	cmp r5, #6
	bgt _080A5024
	cmp r5, #4
	bge _080A5028
	cmp r5, #0
	beq _080A5052
	b _080A5042
_080A5024:
	cmp r5, #0xf
	bne _080A5042
_080A5028:
	movs r0, #0x47
	bl GetInventoryValue
	cmp r0, #0
	bne _080A5042
	movs r1, #1
	cmp r4, #1
	bne _080A503A
	movs r1, #2
_080A503A:
	ldr r0, _080A5078 @ =gUnk_02000080
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r5, [r0]
_080A5042:
	ldr r0, _080A507C @ =gUnk_02034490
	movs r4, #0
	strb r5, [r0, #0x14]
	movs r0, #0x65
	bl sub_080A3268
	ldr r0, _080A5078 @ =gUnk_02000080
	str r4, [r0, #0xc]
_080A5052:
	ldr r4, _080A507C @ =gUnk_02034490
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	bl sub_080A50A0
	adds r5, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, r5
	beq _080A5096
	strb r5, [r4, #0x14]
	bl sub_080A51D4
	cmp r5, #0xe
	bne _080A5080
	movs r0, #6
	bl sub_080A4E90
	b _080A5096
	.align 2, 0
_080A5078: .4byte gUnk_02000080
_080A507C: .4byte gUnk_02034490
_080A5080:
	movs r0, #3
	bl sub_080A4E90
	ldr r0, _080A5098 @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r1, _080A509C @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
_080A5096:
	pop {r4, r5, pc}
	.align 2, 0
_080A5098: .4byte gUnk_02034CB0
_080A509C: .4byte gUnk_03000F50

	thumb_func_start sub_080A50A0
sub_080A50A0: @ 0x080A50A0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xf
	bne _080A50B4
	bl sub_08052690
	movs r1, #4
	cmp r0, #0
	beq _080A50B4
	movs r1, #5
_080A50B4:
	adds r0, r1, #0
	pop {pc}

	thumb_func_start sub_080A50B8
sub_080A50B8: @ 0x080A50B8
	push {r4, lr}
	ldr r4, _080A50DC @ =gUnk_02034490
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	adds r0, #2
	cmp r0, #0x10
	ble _080A50D8
	ldr r2, _080A50E0 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _080A50E4 @ =0x0000F8FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #4
	bl sub_080A4E90
	movs r0, #0x10
_080A50D8:
	strb r0, [r4, #0x16]
	pop {r4, pc}
	.align 2, 0
_080A50DC: .4byte gUnk_02034490
_080A50E0: .4byte gUnk_03000F50
_080A50E4: .4byte 0x0000F8FF

	thumb_func_start sub_080A50E8
sub_080A50E8: @ 0x080A50E8
	push {lr}
	ldr r1, _080A5104 @ =gUnk_02034490
	movs r0, #0x10
	strb r0, [r1, #0x16]
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	strb r0, [r1, #1]
	bl sub_080A4DB8
	movs r0, #5
	bl sub_080A4E90
	pop {pc}
	.align 2, 0
_080A5104: .4byte gUnk_02034490

	thumb_func_start sub_080A5108
sub_080A5108: @ 0x080A5108
	push {r4, lr}
	ldr r4, _080A5124 @ =gUnk_02034490
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	subs r0, #2
	cmp r0, #0
	bge _080A511E
	movs r0, #2
	bl sub_080A4E90
	movs r0, #0
_080A511E:
	strb r0, [r4, #0x16]
	pop {r4, pc}
	.align 2, 0
_080A5124: .4byte gUnk_02034490

	thumb_func_start sub_080A5128
sub_080A5128: @ 0x080A5128
	push {r4, r5, lr}
	sub sp, #0x18
	ldr r0, _080A5140 @ =gUnk_02034490
	ldrb r1, [r0, #1]
	adds r2, r0, #0
	cmp r1, #7
	blt _080A515A
	cmp r1, #8
	ble _080A5144
	cmp r1, #0xb
	bgt _080A515A
	b _080A51C6
	.align 2, 0
_080A5140: .4byte gUnk_02034490
_080A5144:
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	subs r0, #0x28
	str r0, [sp, #8]
	movs r1, #0x48
	str r1, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A5182
_080A515A:
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r4, #0x10
	subs r0, r4, r0
	str r0, [sp, #4]
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r4, r4, r0
	str r4, [sp, #8]
	movs r1, #0x48
	str r1, [sp, #0xc]
	adds r0, #0xe0
_080A5182:
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r4, _080A51CC @ =gUnk_03001010
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #8]
	ldr r0, [sp]
	strh r0, [r4]
	ldr r0, [sp, #4]
	strh r0, [r4, #2]
	ldr r5, _080A51D0 @ =0x000001FB
	adds r0, r5, #0
	movs r1, #0
	bl sub_080ADA14
	ldr r0, [sp, #8]
	strh r0, [r4]
	ldr r0, [sp, #0xc]
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #1
	bl sub_080ADA14
	ldr r0, [sp, #0x10]
	strh r0, [r4]
	ldr r0, [sp, #0x14]
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #2
	bl sub_080ADA14
_080A51C6:
	add sp, #0x18
	pop {r4, r5, pc}
	.align 2, 0
_080A51CC: .4byte gUnk_03001010
_080A51D0: .4byte 0x000001FB

	thumb_func_start sub_080A51D4
sub_080A51D4: @ 0x080A51D4
	push {lr}
	ldr r0, _080A51EC @ =gUnk_02034490
	ldrb r1, [r0, #1]
	cmp r1, #0xd
	bhi _080A51E8
	adds r0, #2
	adds r0, r1, r0
	ldr r1, _080A51F0 @ =gUnk_02000080
	ldrb r1, [r1, #3]
	strb r1, [r0]
_080A51E8:
	pop {pc}
	.align 2, 0
_080A51EC: .4byte gUnk_02034490
_080A51F0: .4byte gUnk_02000080

	thumb_func_start sub_080A51F4
sub_080A51F4: @ 0x080A51F4
	push {lr}
	movs r1, #1
	ldr r0, _080A5210 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A5202
	movs r1, #0
_080A5202:
	ldr r0, _080A5214 @ =gUnk_02034490
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	beq _080A520C
	movs r1, #0
_080A520C:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_080A5210: .4byte gUnk_03000FD0
_080A5214: .4byte gUnk_02034490

	thumb_func_start sub_080A5218
sub_080A5218: @ 0x080A5218
	push {lr}
	ldr r1, _080A5230 @ =gUnk_08128B48
	ldr r0, _080A5234 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5384
	pop {pc}
	.align 2, 0
_080A5230: .4byte gUnk_08128B48
_080A5234: .4byte gUnk_02000080

	thumb_func_start sub_080A5238
sub_080A5238: @ 0x080A5238
	push {r4, r5, lr}
	ldr r4, _080A528C @ =gUnk_02000080
	movs r0, #0
	str r0, [r4, #0xc]
	ldr r0, _080A5290 @ =gUnk_08128B50
	bl sub_080A70AC
	movs r5, #1
	adds r4, #0x10
_080A524A:
	adds r0, r5, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _080A527E
	ldr r1, _080A5294 @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0x11
	bhi _080A527E
	cmp r5, #0x10
	bhi _080A526C
	cmp r5, #0xf
	blo _080A526C
	ldr r0, _080A5298 @ =gUnk_02034490
	ldrb r5, [r0, #0x15]
_080A526C:
	adds r0, r1, r4
	strb r5, [r0]
	lsls r1, r1, #3
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_080A5F48
_080A527E:
	adds r5, #1
	cmp r5, #0x1f
	bls _080A524A
	movs r0, #1
	bl sub_080A7114
	pop {r4, r5, pc}
	.align 2, 0
_080A528C: .4byte gUnk_02000080
_080A5290: .4byte gUnk_08128B50
_080A5294: .4byte gUnk_080FD5B4
_080A5298: .4byte gUnk_02034490

	thumb_func_start sub_080A529C
sub_080A529C: @ 0x080A529C
	push {r4, r5, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5380
	ldr r1, _080A52D0 @ =gUnk_02000080
	ldr r0, _080A52D4 @ =gUnk_08128BF4
	str r0, [r1, #0xc]
	ldrb r4, [r1, #3]
	lsls r1, r4, #3
	ldr r0, _080A52D8 @ =gUnk_08128B64
	adds r1, r1, r0
	ldr r0, _080A52DC @ =gUnk_03000FF0
	ldrh r2, [r0, #2]
	adds r3, r0, #0
	cmp r2, #1
	beq _080A52E0
	cmp r2, #2
	beq _080A52EC
	ldrh r0, [r3, #4]
	cmp r0, #0x20
	beq _080A5330
	cmp r0, #0x20
	bgt _080A531E
	b _080A5318
	.align 2, 0
_080A52D0: .4byte gUnk_02000080
_080A52D4: .4byte gUnk_08128BF4
_080A52D8: .4byte gUnk_08128B64
_080A52DC: .4byte gUnk_03000FF0
_080A52E0:
	cmp r4, #0x10
	bne _080A52EC
	movs r0, #0xb
	bl sub_080A4E84
	b _080A530A
_080A52EC:
	ldr r0, _080A5314 @ =gUnk_02000080
	adds r0, #0x10
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A5336
	ldrh r0, [r3, #2]
	movs r1, #1
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldrb r0, [r2]
	bl sub_08054414
_080A530A:
	movs r0, #0x6a
	bl sub_080A3268
	b _080A5336
	.align 2, 0
_080A5314: .4byte gUnk_02000080
_080A5318:
	cmp r0, #0x10
	beq _080A5334
	b _080A5336
_080A531E:
	cmp r0, #0x40
	beq _080A5328
	cmp r0, #0x80
	beq _080A532C
	b _080A5336
_080A5328:
	ldrb r4, [r1]
	b _080A5336
_080A532C:
	ldrb r4, [r1, #1]
	b _080A5336
_080A5330:
	ldrb r4, [r1, #2]
	b _080A5336
_080A5334:
	ldrb r4, [r1, #3]
_080A5336:
	ldr r5, _080A535C @ =gUnk_02000080
	ldrb r0, [r5, #3]
	cmp r0, r4
	beq _080A5346
	strb r4, [r5, #3]
	movs r0, #0x69
	bl sub_080A3268
_080A5346:
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldrb r1, [r0]
	cmp r4, #0xc
	blo _080A5376
	cmp r4, #0xf
	bls _080A5360
	cmp r4, #0x10
	beq _080A5374
	b _080A5376
	.align 2, 0
_080A535C: .4byte gUnk_02000080
_080A5360:
	cmp r1, #0
	beq _080A5376
	ldr r0, _080A5370 @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r1, [r0]
	b _080A5376
	.align 2, 0
_080A5370: .4byte gUnk_02002A40
_080A5374:
	movs r1, #0x73
_080A5376:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r1, r0
	bl sub_080A6F6C
_080A5380:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A5384
sub_080A5384: @ 0x080A5384
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5400 @ =gUnk_03001010
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r5, #0
	ldr r4, _080A5404 @ =gUnk_02002A40
	movs r0, #0xb6
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0xac
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0xad
	adds r2, r2, r4
	mov r8, r2
	movs r6, #0
_080A53B4:
	ldr r0, _080A5408 @ =gUnk_02000080
	adds r0, #0x10
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A5456
	ldr r0, _080A540C @ =gUnk_08128B64
	adds r1, r6, r0
	ldrb r0, [r1, #6]
	ldr r3, _080A5400 @ =gUnk_03001010
	strh r0, [r3]
	ldrb r0, [r1, #7]
	strh r0, [r3, #2]
	ldrb r3, [r2]
	cmp r3, #0x1f
	bhi _080A53E0
	cmp r3, #0x1c
	blo _080A53E0
	adds r0, r3, #0
	subs r0, #0x1c
	add r0, sl
	ldrb r3, [r0]
_080A53E0:
	movs r2, #3
	cmp r3, #7
	blo _080A542E
	cmp r3, #8
	bhi _080A5414
	ldr r0, _080A5410 @ =gUnk_080FD5A0
	adds r1, r4, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r7, sb
	ldrb r7, [r7]
	cmp r0, r7
	bhi _080A542E
	b _080A542C
	.align 2, 0
_080A5400: .4byte gUnk_03001010
_080A5404: .4byte gUnk_02002A40
_080A5408: .4byte gUnk_02000080
_080A540C: .4byte gUnk_08128B64
_080A5410: .4byte gUnk_080FD5A0
_080A5414:
	cmp r3, #0xa
	bhi _080A542E
	ldr r0, _080A552C @ =gUnk_080FD5A4
	adds r1, r4, #0
	adds r1, #0xaf
	ldrb r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	bhi _080A542E
_080A542C:
	movs r2, #4
_080A542E:
	lsls r2, r2, #0xc
	movs r7, #0xd8
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r7, #0x80
	lsls r7, r7, #4
	adds r1, r7, #0
	orrs r0, r1
	orrs r2, r0
	ldr r0, _080A5530 @ =gUnk_03001010
	strh r2, [r0, #8]
	ldr r1, _080A5534 @ =gUnk_080FDFD8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0xa1
	lsls r0, r0, #1
	bl sub_080ADA14
_080A5456:
	adds r6, #8
	adds r5, #1
	cmp r5, #0x10
	bls _080A53B4
	ldr r0, _080A5530 @ =gUnk_03001010
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #8]
	ldr r1, _080A5538 @ =gUnk_02000080
	ldrb r1, [r1, #3]
	mov sb, r0
	cmp r1, #0x10
	bne _080A547C
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A547C
	movs r1, #0x11
_080A547C:
	lsls r0, r1, #3
	ldr r1, _080A553C @ =gUnk_08128B64
	mov r8, r1
	adds r1, r0, r1
	mov r4, sb
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	ldrb r2, [r1, #4]
	ldr r0, _080A5540 @ =gUnk_03001000
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #4
	cmp r0, #0
	beq _080A54A0
	adds r1, r2, #3
_080A54A0:
	ldr r6, _080A5544 @ =0x000001FB
	adds r0, r6, #0
	bl sub_080ADA14
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #0x11
	cmp r0, #0
	beq _080A54B6
	movs r1, #0x10
_080A54B6:
	lsls r0, r1, #3
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #0x22
	bl sub_080ADA14
	ldr r7, _080A5548 @ =gUnk_02002A40
	adds r0, r7, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_080A554C
	adds r5, r0, #0
	cmp r5, #0x10
	bhi _080A54FA
	lsls r0, r5, #3
	mov r3, r8
	adds r1, r0, r3
	ldrb r0, [r1, #6]
	strh r0, [r4]
	ldrb r0, [r1, #7]
	strh r0, [r4, #2]
	adds r0, r6, #0
	movs r1, #3
	bl sub_080ADA14
_080A54FA:
	adds r0, r7, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	bl sub_080A554C
	adds r5, r0, #0
	cmp r5, #0x10
	bhi _080A5522
	lsls r0, r5, #3
	mov r7, r8
	adds r1, r0, r7
	ldrb r0, [r1, #6]
	mov r2, sb
	strh r0, [r2]
	ldrb r0, [r1, #7]
	strh r0, [r2, #2]
	adds r0, r6, #0
	movs r1, #3
	bl sub_080ADA14
_080A5522:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A552C: .4byte gUnk_080FD5A4
_080A5530: .4byte gUnk_03001010
_080A5534: .4byte gUnk_080FDFD8
_080A5538: .4byte gUnk_02000080
_080A553C: .4byte gUnk_08128B64
_080A5540: .4byte gUnk_03001000
_080A5544: .4byte 0x000001FB
_080A5548: .4byte gUnk_02002A40

	thumb_func_start sub_080A554C
sub_080A554C: @ 0x080A554C
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _080A556E
	movs r1, #0
	ldr r3, _080A5564 @ =gUnk_02000090
_080A5558:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	bne _080A5568
	adds r0, r1, #0
	b _080A5570
	.align 2, 0
_080A5564: .4byte gUnk_02000090
_080A5568:
	adds r1, #1
	cmp r1, #0x10
	bls _080A5558
_080A556E:
	movs r0, #0x11
_080A5570:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A5574
sub_080A5574: @ 0x080A5574
	push {lr}
	ldr r1, _080A558C @ =gUnk_08128BF8
	ldr r0, _080A5590 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A57F4
	pop {pc}
	.align 2, 0
_080A558C: .4byte gUnk_08128BF8
_080A5590: .4byte gUnk_02000080

	thumb_func_start sub_080A5594
sub_080A5594: @ 0x080A5594
	push {r4, r5, r6, r7, lr}
	ldr r4, _080A5620 @ =gUnk_02000080
	ldr r0, _080A5624 @ =gUnk_08128C00
	str r0, [r4, #0xc]
	ldr r0, _080A5628 @ =gUnk_08128C04
	bl sub_080A70AC
	movs r6, #6
	movs r5, #0x34
	adds r7, r4, #0
	adds r7, #0x10
_080A55AA:
	adds r0, r5, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _080A55EA
	ldr r1, _080A562C @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #3
	bne _080A55C8
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080A55C8
	movs r1, #0x63
_080A55C8:
	cmp r1, #0x63
	beq _080A55EA
	cmp r1, #1
	bne _080A55D8
	adds r1, r6, #0
	cmp r1, #7
	bhi _080A55D8
	adds r6, r1, #1
_080A55D8:
	adds r0, r1, r7
	strb r5, [r0]
	lsls r1, r1, #3
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_080A5F48
_080A55EA:
	adds r5, #1
	cmp r5, #0x46
	bls _080A55AA
	movs r0, #0x3d
	bl GetInventoryValue
	cmp r0, #0
	bne _080A564A
	movs r5, #0
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5646
	movs r4, #0
	ldr r1, _080A5630 @ =gUnk_02002B6B
_080A560A:
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0x12
	bls _080A560A
	cmp r5, #0x4f
	ble _080A5634
	movs r5, #4
	b _080A5646
	.align 2, 0
_080A5620: .4byte gUnk_02000080
_080A5624: .4byte gUnk_08128C00
_080A5628: .4byte gUnk_08128C04
_080A562C: .4byte gUnk_080FD5B4
_080A5630: .4byte gUnk_02002B6B
_080A5634:
	cmp r5, #0x27
	ble _080A563C
	movs r5, #3
	b _080A5646
_080A563C:
	cmp r5, #9
	ble _080A5644
	movs r5, #2
	b _080A5646
_080A5644:
	movs r5, #1
_080A5646:
	ldr r0, _080A5698 @ =gUnk_02000080
	strb r5, [r0, #0x10]
_080A564A:
	ldr r0, _080A5698 @ =gUnk_02000080
	ldr r1, _080A569C @ =gUnk_02002A40
	adds r1, #0xa9
	ldrb r1, [r1]
	adds r1, #1
	strb r1, [r0, #0x11]
	movs r5, #0
	movs r4, #0x48
_080A565A:
	adds r0, r4, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5666
	adds r5, #1
_080A5666:
	adds r4, #1
	cmp r4, #0x4f
	bls _080A565A
	ldr r4, _080A5698 @ =gUnk_02000080
	strb r5, [r4, #0x12]
	movs r0, #0x3e
	bl GetInventoryValue
	cmp r0, #0
	bne _080A5688
	movs r0, #0x3f
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5688
	movs r0, #0x3f
	strb r0, [r4, #0x13]
_080A5688:
	ldr r1, _080A5698 @ =gUnk_02000080
	movs r0, #1
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	bl sub_080A7114
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5698: .4byte gUnk_02000080
_080A569C: .4byte gUnk_02002A40

	thumb_func_start sub_080A56A0
sub_080A56A0: @ 0x080A56A0
	push {r4, lr}
	bl sub_080A51F4
	cmp r0, #0
	bne _080A56AC
	b _080A57F0
_080A56AC:
	ldr r2, _080A56D0 @ =gUnk_02000080
	ldr r0, _080A56D4 @ =gUnk_08128C00
	str r0, [r2, #0xc]
	ldrb r0, [r2, #3]
	lsls r0, r0, #3
	ldr r1, _080A56D8 @ =gUnk_08128C14
	adds r4, r0, r1
	movs r3, #0xff
	ldr r0, _080A56DC @ =gUnk_03000FF0
	ldrh r1, [r0, #4]
	cmp r1, #0x20
	beq _080A56F2
	cmp r1, #0x20
	bgt _080A56E0
	cmp r1, #0x10
	beq _080A56F6
	b _080A56F8
	.align 2, 0
_080A56D0: .4byte gUnk_02000080
_080A56D4: .4byte gUnk_08128C00
_080A56D8: .4byte gUnk_08128C14
_080A56DC: .4byte gUnk_03000FF0
_080A56E0:
	cmp r1, #0x40
	beq _080A56EA
	cmp r1, #0x80
	beq _080A56EE
	b _080A56F8
_080A56EA:
	ldrb r3, [r4]
	b _080A56F8
_080A56EE:
	ldrb r3, [r4, #1]
	b _080A56F8
_080A56F2:
	ldrb r3, [r4, #2]
	b _080A56F8
_080A56F6:
	ldrb r3, [r4, #3]
_080A56F8:
	cmp r3, #0xff
	beq _080A570C
	ldr r0, _080A5708 @ =gUnk_02000080
	strb r3, [r0, #3]
	movs r0, #0x69
	bl sub_080A3268
	b _080A575E
	.align 2, 0
_080A5708: .4byte gUnk_02000080
_080A570C:
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _080A575E
	ldrb r3, [r2, #3]
	movs r1, #0
	cmp r3, #2
	beq _080A572E
	cmp r3, #2
	bhi _080A5724
	cmp r3, #0
	beq _080A572E
	b _080A574E
_080A5724:
	cmp r3, #4
	beq _080A5748
	cmp r3, #5
	beq _080A574C
	b _080A574E
_080A572E:
	ldr r0, _080A5744 @ =gUnk_02000080
	adds r0, #0x10
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A574E
	movs r1, #8
	cmp r3, #0
	bne _080A574E
	movs r1, #7
	b _080A5752
	.align 2, 0
_080A5744: .4byte gUnk_02000080
_080A5748:
	movs r1, #9
	b _080A5752
_080A574C:
	movs r1, #0xa
_080A574E:
	cmp r1, #0
	beq _080A575E
_080A5752:
	adds r0, r1, #0
	bl sub_080A4E84
	movs r0, #0x6a
	bl sub_080A3268
_080A575E:
	ldr r0, _080A5780 @ =gUnk_02000080
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #0
	beq _080A576C
	cmp r1, #2
	bne _080A5788
_080A576C:
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A5788
	ldr r1, _080A5784 @ =gUnk_0200AF00
	movs r0, #0x10
	b _080A578C
	.align 2, 0
_080A5780: .4byte gUnk_02000080
_080A5784: .4byte gUnk_0200AF00
_080A5788:
	ldr r1, _080A57AC @ =gUnk_0200AF00
	ldr r0, _080A57B0 @ =0x0000FFF0
_080A578C:
	strh r0, [r1, #0x1c]
	ldrb r3, [r2, #3]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r3, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _080A57E6
	cmp r3, #5
	bhi _080A57E6
	lsls r0, r3, #2
	ldr r1, _080A57B4 @ =_080A57B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A57AC: .4byte gUnk_0200AF00
_080A57B0: .4byte 0x0000FFF0
_080A57B4: .4byte _080A57B8
_080A57B8: @ jump table
	.4byte _080A57D0 @ case 0
	.4byte _080A57D8 @ case 1
	.4byte _080A57DC @ case 2
	.4byte _080A57E6 @ case 3
	.4byte _080A57E0 @ case 4
	.4byte _080A57E4 @ case 5
_080A57D0:
	cmp r2, #0x3d
	beq _080A57E6
	movs r2, #0x67
	b _080A57E6
_080A57D8:
	movs r2, #0x63
	b _080A57E6
_080A57DC:
	movs r2, #0x70
	b _080A57E6
_080A57E0:
	movs r2, #0x74
	b _080A57E6
_080A57E4:
	movs r2, #0x73
_080A57E6:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r2, r0
	bl sub_080A6F6C
_080A57F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A57F4
sub_080A57F4: @ 0x080A57F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080A5890 @ =gUnk_03001010
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	ldr r1, _080A5894 @ =gUnk_08128C94
	mov sb, r1
	cmp r0, #0
	bne _080A581A
	ldr r3, _080A5898 @ =gUnk_08128C14
	mov sb, r3
_080A581A:
	ldr r0, _080A589C @ =gUnk_02000080
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2, #8]
	ldrb r0, [r3, #6]
	strh r0, [r2]
	ldrb r0, [r3, #7]
	strh r0, [r2, #2]
	ldrb r2, [r3, #4]
	ldr r0, _080A58A0 @ =gUnk_03001000
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xa
	cmp r0, #0
	bne _080A5846
	adds r1, #1
_080A5846:
	ldr r0, _080A58A4 @ =0x000001FB
	bl sub_080ADA14
	movs r3, #0
	mov r8, r3
	mov r7, sb
	adds r7, #5
_080A5854:
	ldr r0, _080A589C @ =gUnk_02000080
	adds r0, #0x10
	mov r1, r8
	adds r6, r1, r0
	ldrb r1, [r6]
	cmp r1, #0
	beq _080A58E8
	mov r3, r8
	lsls r5, r3, #3
	mov r0, sb
	adds r3, r0, r5
	ldr r4, _080A5890 @ =gUnk_03001010
	ldrb r0, [r7, #1]
	strh r0, [r4]
	ldrb r2, [r7, #2]
	strh r2, [r4, #2]
	movs r0, #0xe8
	lsls r0, r0, #8
	strh r0, [r4, #8]
	cmp r1, #0x33
	bhi _080A58B8
	mov r1, r8
	cmp r1, #2
	bne _080A58A8
	ldrb r0, [r7]
	adds r1, r0, #0
	adds r1, #0xa
	ldr r0, _080A58A4 @ =0x000001FB
	b _080A58E4
	.align 2, 0
_080A5890: .4byte gUnk_03001010
_080A5894: .4byte gUnk_08128C94
_080A5898: .4byte gUnk_08128C14
_080A589C: .4byte gUnk_02000080
_080A58A0: .4byte gUnk_03001000
_080A58A4: .4byte 0x000001FB
_080A58A8:
	ldrb r0, [r6]
	adds r0, #9
	ldrb r3, [r3, #5]
	adds r1, r0, r3
	ldr r0, _080A58B4 @ =0x000001FB
	b _080A58E4
	.align 2, 0
_080A58B4: .4byte 0x000001FB
_080A58B8:
	ldr r3, _080A58CC @ =0x0000EB80
	adds r0, r5, r3
	strh r0, [r4, #8]
	cmp r1, #0x3d
	beq _080A58D0
	cmp r1, #0x3e
	bne _080A58D6
	adds r0, r2, #0
	adds r0, #8
	b _080A58D4
	.align 2, 0
_080A58CC: .4byte 0x0000EB80
_080A58D0:
	adds r0, r2, #0
	adds r0, #0xd
_080A58D4:
	strh r0, [r4, #2]
_080A58D6:
	ldr r0, _080A5980 @ =gUnk_080FDFD8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0]
	movs r0, #0xa1
	lsls r0, r0, #1
_080A58E4:
	bl sub_080ADA14
_080A58E8:
	adds r7, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xf
	bls _080A5854
	ldr r4, _080A5984 @ =gUnk_02000080
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080A5920
	ldr r2, _080A5988 @ =gUnk_03001010
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2, #8]
	mov r3, sb
	adds r3, #0x10
	ldrb r0, [r3, #6]
	adds r0, #9
	strh r0, [r2]
	ldrb r0, [r3, #7]
	adds r0, #7
	strh r0, [r2, #2]
	movs r0, #0
	movs r1, #1
	bl sub_080ADA14
_080A5920:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x3f
	bne _080A5976
	mov r3, sb
	adds r3, #0x18
	ldr r1, _080A5988 @ =gUnk_03001010
	ldrb r0, [r3, #6]
	adds r0, #8
	strh r0, [r1]
	ldrb r0, [r3, #7]
	adds r0, #8
	strh r0, [r1, #2]
	ldr r0, _080A598C @ =gUnk_02002A40
	adds r0, #0xc2
	ldrh r4, [r0]
	movs r0, #0
	mov r8, r0
	adds r5, r1, #0
_080A5944:
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r5, #8]
	movs r0, #0
	movs r1, #1
	bl sub_080ADA14
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #2
	bls _080A5944
_080A5976:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5980: .4byte gUnk_080FDFD8
_080A5984: .4byte gUnk_02000080
_080A5988: .4byte gUnk_03001010
_080A598C: .4byte gUnk_02002A40

	thumb_func_start sub_080A5990
sub_080A5990: @ 0x080A5990
	push {lr}
	ldr r1, _080A59A4 @ =gUnk_08128D14
	ldr r0, _080A59A8 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A59A4: .4byte gUnk_08128D14
_080A59A8: .4byte gUnk_02000080

	thumb_func_start sub_080A59AC
sub_080A59AC: @ 0x080A59AC
	push {lr}
	ldr r1, _080A59C4 @ =gUnk_02000080
	movs r0, #0
	strb r0, [r1, #3]
	movs r1, #0
	bl sub_08052418
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A59C4: .4byte gUnk_02000080

	thumb_func_start sub_080A59C8
sub_080A59C8: @ 0x080A59C8
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5A52
	ldr r1, _080A59EC @ =gUnk_02000080
	ldrb r2, [r1, #3]
	movs r3, #0
	ldr r0, _080A59F0 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #2
	beq _080A5A02
	cmp r0, #2
	bgt _080A59F4
	cmp r0, #1
	beq _080A5A0A
	b _080A5A0C
	.align 2, 0
_080A59EC: .4byte gUnk_02000080
_080A59F0: .4byte gUnk_03000FF0
_080A59F4:
	cmp r0, #0x40
	beq _080A59FE
	cmp r0, #0x80
	beq _080A5A06
	b _080A5A0C
_080A59FE:
	movs r2, #0
	b _080A5A0C
_080A5A02:
	cmp r2, #0
	bne _080A5A10
_080A5A06:
	movs r2, #1
	b _080A5A0C
_080A5A0A:
	movs r3, #1
_080A5A0C:
	cmp r3, #0
	beq _080A5A3C
_080A5A10:
	movs r0, #0xff
	strh r0, [r1, #8]
	cmp r2, #0
	bne _080A5A2E
	movs r0, #8
	movs r1, #0
	bl sub_08050318
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl sub_080A3268
	b _080A5A52
_080A5A2E:
	movs r0, #3
	bl sub_080A7114
	movs r0, #0x6c
	bl sub_080A3268
	b _080A5A52
_080A5A3C:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5A52
	strb r2, [r1, #3]
	movs r0, #0
	adds r1, r2, #0
	bl sub_08052418
	movs r0, #0x69
	bl sub_080A3268
_080A5A52:
	pop {pc}

	thumb_func_start sub_080A5A54
sub_080A5A54: @ 0x080A5A54
	push {lr}
	movs r0, #0
	bl sub_0807CDA4
	adds r1, r0, #0
	cmp r1, #0
	beq _080A5A8A
	cmp r1, #0
	bgt _080A5A70
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080A5A76
	b _080A5A8A
_080A5A70:
	cmp r1, #1
	beq _080A5A84
	b _080A5A8A
_080A5A76:
	movs r0, #9
	movs r1, #0
	bl sub_08050318
	ldr r1, _080A5A8C @ =gUnk_02000080
	movs r0, #0x3c
	strh r0, [r1, #8]
_080A5A84:
	movs r0, #3
	bl sub_080A7114
_080A5A8A:
	pop {pc}
	.align 2, 0
_080A5A8C: .4byte gUnk_02000080

	thumb_func_start sub_080A5A90
sub_080A5A90: @ 0x080A5A90
	push {lr}
	ldr r2, _080A5AA4 @ =gUnk_02000080
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080A5AA8
	cmp r0, #0xff
	beq _080A5AC0
	subs r0, #1
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5AA4: .4byte gUnk_02000080
_080A5AA8:
	ldr r0, _080A5ABC @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A5AD2
	movs r0, #0xff
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5ABC: .4byte gUnk_03000FF0
_080A5AC0:
	ldr r0, _080A5AD4 @ =gUnk_02034490
	ldrb r0, [r0, #1]
	movs r1, #1
	cmp r0, #0xa
	bne _080A5ACC
	movs r1, #2
_080A5ACC:
	adds r0, r1, #0
	bl sub_080A4E84
_080A5AD2:
	pop {pc}
	.align 2, 0
_080A5AD4: .4byte gUnk_02034490

	thumb_func_start sub_080A5AD8
sub_080A5AD8: @ 0x080A5AD8
	push {lr}
	ldr r1, _080A5AEC @ =gUnk_08128D24
	ldr r0, _080A5AF0 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A5AEC: .4byte gUnk_08128D24
_080A5AF0: .4byte gUnk_02000080

	thumb_func_start sub_080A5AF4
sub_080A5AF4: @ 0x080A5AF4
	push {r4, lr}
	ldr r0, _080A5B18 @ =gUnk_02000080
	movs r4, #0
	strb r4, [r0, #3]
	movs r0, #2
	movs r1, #0
	bl sub_08052418
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080A5B24
	ldr r1, _080A5B1C @ =gUnk_03000F50
	ldr r0, _080A5B20 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	b _080A5B28
	.align 2, 0
_080A5B18: .4byte gUnk_02000080
_080A5B1C: .4byte gUnk_03000F50
_080A5B20: .4byte 0x0000FFFC
_080A5B24:
	ldr r0, _080A5B30 @ =gUnk_03000F50
	strh r4, [r0, #0x18]
_080A5B28:
	movs r0, #1
	bl sub_080A7114
	pop {r4, pc}
	.align 2, 0
_080A5B30: .4byte gUnk_03000F50

	thumb_func_start sub_080A5B34
sub_080A5B34: @ 0x080A5B34
	push {r4, r5, r6, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5BB6
	ldr r1, _080A5B58 @ =gUnk_02000080
	ldrb r4, [r1, #3]
	movs r5, #0
	ldr r0, _080A5B5C @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #2
	beq _080A5B6C
	cmp r0, #2
	bgt _080A5B60
	cmp r0, #1
	beq _080A5B74
	b _080A5B76
	.align 2, 0
_080A5B58: .4byte gUnk_02000080
_080A5B5C: .4byte gUnk_03000FF0
_080A5B60:
	cmp r0, #0x10
	beq _080A5B70
	cmp r0, #0x20
	bne _080A5B76
	movs r4, #0
	b _080A5B76
_080A5B6C:
	cmp r4, #0
	bne _080A5B74
_080A5B70:
	movs r4, #1
	b _080A5B76
_080A5B74:
	movs r5, #1
_080A5B76:
	adds r1, r6, #0
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080A5B8E
	strb r4, [r1, #3]
	movs r0, #2
	adds r1, r4, #0
	bl sub_08052418
	movs r0, #0x69
	bl sub_080A3268
_080A5B8E:
	cmp r5, #0
	beq _080A5BB6
	cmp r4, #0
	bne _080A5BAA
	movs r0, #7
	movs r1, #0x20
	bl sub_08050054
	movs r0, #0x3c
	strh r0, [r6, #8]
	movs r0, #2
	bl sub_080A7114
	b _080A5BB6
_080A5BAA:
	movs r0, #0x6c
	bl sub_080A3268
	movs r0, #2
	bl sub_080A4E84
_080A5BB6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080A5BB8
sub_080A5BB8: @ 0x080A5BB8
	push {lr}
	ldr r0, _080A5BE4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A5BE2
	bl sub_08050384
	ldr r1, _080A5BE8 @ =gUnk_03001000
	ldrb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	movs r0, #2
	bl sub_080A4E84
	ldr r1, _080A5BEC @ =gUnk_02034490
	movs r0, #0x10
	strb r0, [r1, #0x16]
_080A5BE2:
	pop {pc}
	.align 2, 0
_080A5BE4: .4byte gUnk_03000FD0
_080A5BE8: .4byte gUnk_03001000
_080A5BEC: .4byte gUnk_02034490

	thumb_func_start sub_080A5BF0
sub_080A5BF0: @ 0x080A5BF0
	push {r4, r5, lr}
	ldr r1, _080A5C30 @ =gUnk_08128D30
	ldr r0, _080A5C34 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5D1C
	ldr r0, _080A5C38 @ =gUnk_03001000
	ldrh r0, [r0, #0xc]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080A5C2E
	ldr r4, _080A5C3C @ =gUnk_02017830
	ldrh r5, [r4]
	adds r0, r4, #2
	adds r1, r4, #0
	movs r2, #0xe
	bl sub_0801D66C
	strh r5, [r4, #0xe]
	ldr r2, _080A5C40 @ =gUnk_0200B644
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
_080A5C2E:
	pop {r4, r5, pc}
	.align 2, 0
_080A5C30: .4byte gUnk_08128D30
_080A5C34: .4byte gUnk_02000080
_080A5C38: .4byte gUnk_03001000
_080A5C3C: .4byte gUnk_02017830
_080A5C40: .4byte gUnk_0200B644

	thumb_func_start sub_080A5C44
sub_080A5C44: @ 0x080A5C44
	push {r4, lr}
	ldr r1, _080A5C88 @ =gUnk_02000080
	ldr r0, _080A5C8C @ =gUnk_08128D38
	str r0, [r1, #0xc]
	ldrb r0, [r1, #3]
	bl sub_080A5CFC
	movs r0, #0x81
	bl sub_0801D7EC
	ldr r4, _080A5C90 @ =gUnk_02033A90
	ldrb r0, [r4, #3]
	movs r1, #1
	bl sub_080A6FB4
	movs r0, #1
	bl sub_080A7114
	ldrb r1, [r4, #3]
	lsls r1, r1, #1
	ldr r0, _080A5C94 @ =gUnk_08128D43
	adds r1, r1, r0
	ldr r2, _080A5C98 @ =gUnk_03000F50
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x16]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {r4, pc}
	.align 2, 0
_080A5C88: .4byte gUnk_02000080
_080A5C8C: .4byte gUnk_08128D38
_080A5C90: .4byte gUnk_02033A90
_080A5C94: .4byte gUnk_08128D43
_080A5C98: .4byte gUnk_03000F50

	thumb_func_start sub_080A5C9C
sub_080A5C9C: @ 0x080A5C9C
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5CFA
	ldr r0, _080A5CC4 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5CC8 @ =gUnk_080C9C6C
	adds r3, r0, r1
	ldr r1, _080A5CCC @ =gUnk_02000080
	ldrb r2, [r1, #3]
	ldr r0, _080A5CD0 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _080A5CD4
	cmp r0, #0x80
	beq _080A5CDC
	b _080A5CE6
	.align 2, 0
_080A5CC4: .4byte gUnk_02033A90
_080A5CC8: .4byte gUnk_080C9C6C
_080A5CCC: .4byte gUnk_02000080
_080A5CD0: .4byte gUnk_03000FF0
_080A5CD4:
	cmp r2, #0
	ble _080A5CE6
	subs r2, #1
	b _080A5CE6
_080A5CDC:
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, r2
	ble _080A5CE6
	adds r2, #1
_080A5CE6:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5CFA
	strb r2, [r1, #3]
	adds r0, r2, #0
	bl sub_080A5CFC
	movs r0, #0x69
	bl sub_080A3268
_080A5CFA:
	pop {pc}

	thumb_func_start sub_080A5CFC
sub_080A5CFC: @ 0x080A5CFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801DDA0
	bl sub_0801DD88
	ldr r1, _080A5D18 @ =gUnk_02019EE0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_0801DBA0
	pop {r4, pc}
	.align 2, 0
_080A5D18: .4byte gUnk_02019EE0

	thumb_func_start sub_080A5D1C
sub_080A5D1C: @ 0x080A5D1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5E98 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5E9C @ =gUnk_080C9C6C
	adds r7, r0, r1
	ldr r1, _080A5EA0 @ =gUnk_08128D3C
	ldrb r0, [r7]
	adds r0, r0, r1
	ldrb r6, [r0]
	bl sub_0801DB94
	mov r8, r0
	ldr r5, _080A5EA4 @ =gUnk_03001010
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	movs r0, #0x34
	strh r0, [r5]
	ldr r0, _080A5EA8 @ =gUnk_02000080
	ldrb r1, [r0, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	ldr r1, _080A5EAC @ =gUnk_03001000
	mov sl, r1
	ldrh r1, [r1, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x74
	cmp r0, #0
	bne _080A5D70
	movs r1, #0x75
_080A5D70:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl sub_080ADA14
	movs r0, #0x20
	mov sb, r0
	mov r1, sb
	strh r1, [r5]
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x79
	cmp r0, #0
	beq _080A5D9A
	movs r1, #0x78
_080A5D9A:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl sub_080ADA14
	movs r0, #0x7e
	strh r0, [r5, #2]
	movs r0, #0x87
	lsls r0, r0, #7
	strh r0, [r5, #8]
	bl sub_080527CC
	cmp r0, #0
	beq _080A5DCC
	movs r0, #0x18
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gUnk_080FDFD8
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080ADA14
_080A5DCC:
	bl sub_08052764
	cmp r0, #0
	beq _080A5DEE
	movs r0, #0x2e
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gUnk_080FDFD8
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080ADA14
_080A5DEE:
	bl sub_0805279C
	cmp r0, #0
	beq _080A5E48
	movs r0, #0x45
	strh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #8]
	ldr r1, _080A5EB4 @ =gUnk_080FDFD8
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r4, [r1]
	adds r1, r4, #0
	bl sub_080ADA14
	bl sub_080A5F24
	cmp r0, #0
	beq _080A5E48
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #0x46
	strh r0, [r5]
	ldrb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x7b
	cmp r0, #0
	beq _080A5E42
	movs r1, #0x7a
_080A5E42:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl sub_080ADA14
_080A5E48:
	ldr r1, _080A5EA4 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x34
	strh r0, [r1]
	strh r6, [r1, #2]
	ldrb r0, [r7, #1]
	adds r4, r0, #0
	adds r4, #0x82
	movs r5, #0
	ldrb r0, [r7]
	cmp r5, r0
	bhs _080A5E7C
	adds r6, r1, #0
_080A5E64:
	ldr r0, _080A5EB0 @ =0x000001FB
	adds r1, r4, #0
	bl sub_080ADA14
	subs r4, #1
	ldrh r0, [r6, #2]
	adds r0, #0xc
	strh r0, [r6, #2]
	adds r5, #1
	ldrb r1, [r7]
	cmp r5, r1
	blo _080A5E64
_080A5E7C:
	ldr r5, _080A5EB8 @ =gUnk_02019EE0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A5F14
	ldr r7, _080A5EA4 @ =gUnk_03001010
	ldr r6, _080A5EBC @ =gUnk_03000F50
_080A5E88:
	ldrb r0, [r5]
	cmp r0, #2
	beq _080A5EDC
	cmp r0, #2
	bgt _080A5EC0
	cmp r0, #1
	beq _080A5ECA
	b _080A5EEE
	.align 2, 0
_080A5E98: .4byte gUnk_02033A90
_080A5E9C: .4byte gUnk_080C9C6C
_080A5EA0: .4byte gUnk_08128D3C
_080A5EA4: .4byte gUnk_03001010
_080A5EA8: .4byte gUnk_02000080
_080A5EAC: .4byte gUnk_03001000
_080A5EB0: .4byte 0x000001FB
_080A5EB4: .4byte gUnk_080FDFD8
_080A5EB8: .4byte gUnk_02019EE0
_080A5EBC: .4byte gUnk_03000F50
_080A5EC0:
	cmp r0, #3
	beq _080A5EE0
	cmp r0, #4
	beq _080A5EE4
	b _080A5EEE
_080A5ECA:
	movs r4, #0x7d
	ldr r0, _080A5ED8 @ =gUnk_02000080
	ldrb r0, [r0, #3]
	cmp r8, r0
	beq _080A5EF0
	movs r4, #0x7e
	b _080A5EF0
	.align 2, 0
_080A5ED8: .4byte gUnk_02000080
_080A5EDC:
	movs r4, #0x80
	b _080A5EF0
_080A5EE0:
	movs r4, #0x81
	b _080A5EF0
_080A5EE4:
	bl sub_080A5F24
	movs r4, #0x7f
	cmp r0, #0
	bne _080A5EF0
_080A5EEE:
	movs r4, #0xff
_080A5EF0:
	ldrb r0, [r5, #1]
	adds r0, #0x50
	ldrh r1, [r6, #0x16]
	subs r0, r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #2]
	adds r0, #0x10
	ldrh r1, [r6, #0x18]
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _080A5F20 @ =0x000001FB
	adds r1, r4, #0
	bl sub_080ADA14
	adds r5, #3
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A5E88
_080A5F14:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5F20: .4byte 0x000001FB

	thumb_func_start sub_080A5F24
sub_080A5F24: @ 0x080A5F24
	push {r4, lr}
	movs r4, #1
	ldr r0, _080A5F44 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _080A5F40
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x7b
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _080A5F40
	movs r4, #0
_080A5F40:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_080A5F44: .4byte gUnk_02033A90

	thumb_func_start sub_080A5F48
sub_080A5F48: @ 0x080A5F48
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r4, #0x1f
	bhi _080A5F5C
	cmp r4, #0x1c
	blo _080A5F5C
	ldr r0, _080A5F9C @ =gUnk_02002A40
	adds r0, r0, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_080A5F5C:
	lsls r0, r1, #5
	ldr r1, _080A5FA0 @ =0x06010000
	adds r5, r0, r1
	ldr r1, _080A5FA4 @ =gUnk_080FDFD8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r3, _080A5FA8 @ =gUnk_08003DD4
	lsls r1, r1, #2
	ldr r0, [r3, #4]
	adds r0, r0, r1
	ldr r2, _080A5FAC @ =0x040000D4
	ldrh r1, [r0, #2]
	lsls r1, r1, #5
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldr r0, _080A5FB0 @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #7
	blo _080A5FBE
	cmp r4, #8
	bhi _080A5FB4
	ldr r0, _080A5F9C @ =gUnk_02002A40
	adds r0, #0xac
	b _080A5FBC
	.align 2, 0
_080A5F9C: .4byte gUnk_02002A40
_080A5FA0: .4byte 0x06010000
_080A5FA4: .4byte gUnk_080FDFD8
_080A5FA8: .4byte gUnk_08003DD4
_080A5FAC: .4byte 0x040000D4
_080A5FB0: .4byte 0x84000040
_080A5FB4:
	cmp r4, #0xa
	bhi _080A5FBE
	ldr r0, _080A5FF8 @ =gUnk_02002A40
	adds r0, #0xad
_080A5FBC:
	ldrb r0, [r0]
_080A5FBE:
	cmp r0, #0
	blt _080A5FF6
	movs r1, #0xa
	bl Div
	adds r4, r1, #0
	cmp r0, #9
	ble _080A5FD0
	movs r0, #9
_080A5FD0:
	ldr r1, _080A5FFC @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _080A6000 @ =gUnk_085C4620
	adds r0, r0, r2
	str r0, [r1]
	str r5, [r1, #4]
	ldr r3, _080A6004 @ =0x84000008
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0xa
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
_080A5FF6:
	pop {r4, r5, pc}
	.align 2, 0
_080A5FF8: .4byte gUnk_02002A40
_080A5FFC: .4byte 0x040000D4
_080A6000: .4byte gUnk_085C4620
_080A6004: .4byte 0x84000008

	thumb_func_start sub_080A6008
sub_080A6008: @ 0x080A6008
	push {lr}
	ldr r1, _080A601C @ =gUnk_08128D58
	ldr r0, _080A6020 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A601C: .4byte gUnk_08128D58
_080A6020: .4byte gUnk_02000080

	thumb_func_start sub_080A6024
sub_080A6024: @ 0x080A6024
	push {lr}
	ldr r0, _080A6040 @ =gUnk_08128D60
	bl sub_080A70AC
	movs r0, #0
	bl sub_0801E738
	bl sub_080A4398
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A6040: .4byte gUnk_08128D60

	thumb_func_start sub_080A6044
sub_080A6044: @ 0x080A6044
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A60C2
	ldr r0, _080A60CC @ =gUnk_02000080
	ldr r1, _080A60D0 @ =gUnk_08128D51
	str r1, [r0, #0xc]
	ldr r1, _080A60D4 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r5, #0
	movs r4, #0
	ldr r0, _080A60D8 @ =gUnk_02002A40
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r3, r0, r2
	ldrb r2, [r3]
	cmp r2, #0
	beq _080A60C2
	adds r6, r1, #0
	movs r1, #0
	mov sb, r1
	adds r7, r0, #0
	mov r8, r3
_080A607E:
	movs r1, #3
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x2b
	strh r0, [r6]
	lsrs r1, r5, #2
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x34
	strh r0, [r6, #2]
	ldr r3, _080A60DC @ =0x0000012B
	adds r0, r7, r3
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080A60CC @ =gUnk_02000080
	mov r3, sb
	strb r3, [r0, #1]
	adds r0, r2, #0
	bl sub_080A42E0
	adds r5, #1
	cmp r5, #0xa
	bhi _080A60C2
	adds r4, #1
	cmp r4, #0x11
	bhi _080A60C2
	mov r1, r8
	adds r0, r4, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080A607E
_080A60C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A60CC: .4byte gUnk_02000080
_080A60D0: .4byte gUnk_08128D51
_080A60D4: .4byte gUnk_03001010
_080A60D8: .4byte gUnk_02002A40
_080A60DC: .4byte 0x0000012B

	thumb_func_start sub_080A60E0
sub_080A60E0: @ 0x080A60E0
	push {r4, lr}
	ldr r1, _080A6100 @ =gUnk_08128DB0
	ldr r4, _080A6104 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A617C
	ldrb r0, [r4, #3]
	bl sub_080A7040
	pop {r4, pc}
	.align 2, 0
_080A6100: .4byte gUnk_08128DB0
_080A6104: .4byte gUnk_02000080

	thumb_func_start sub_080A6108
sub_080A6108: @ 0x080A6108
	push {lr}
	ldr r0, _080A6120 @ =gUnk_02000080
	ldr r1, _080A6124 @ =gUnk_08128DB8
	str r1, [r0, #0xc]
	ldr r0, _080A6128 @ =gUnk_08128DBC
	bl sub_080A70AC
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A6120: .4byte gUnk_02000080
_080A6124: .4byte gUnk_08128DB8
_080A6128: .4byte gUnk_08128DBC

	thumb_func_start sub_080A612C
sub_080A612C: @ 0x080A612C
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A6178
	ldr r1, _080A614C @ =gUnk_02000080
	ldrb r2, [r1, #3]
	ldr r0, _080A6150 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x10
	beq _080A6154
	cmp r0, #0x20
	bne _080A6156
	subs r2, #1
	b _080A6156
	.align 2, 0
_080A614C: .4byte gUnk_02000080
_080A6150: .4byte gUnk_03000FF0
_080A6154:
	adds r2, #1
_080A6156:
	adds r3, r2, #0
	adds r3, #8
	adds r0, r3, #0
	cmp r3, #0
	bge _080A6164
	adds r0, r2, #0
	adds r0, #0xf
_080A6164:
	asrs r2, r0, #3
	lsls r0, r2, #3
	subs r2, r3, r0
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A6178
	strb r2, [r1, #3]
	movs r0, #0x69
	bl sub_080A3268
_080A6178:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A617C
sub_080A617C: @ 0x080A617C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080A6260 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r7, #0xc0
	lsls r7, r7, #4
	strh r7, [r6, #8]
	movs r0, #0x2f
	mov r8, r0
	mov r2, r8
	strh r2, [r6, #2]
	ldr r4, _080A6264 @ =gUnk_02000080
	ldrb r1, [r4, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #0x1a
	strh r0, [r6]
	ldr r0, _080A6268 @ =gUnk_03001000
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	movs r1, #9
	cmp r0, #0
	beq _080A61B8
	movs r1, #8
_080A61B8:
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r0, r5, #0
	bl sub_080ADA14
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A626C @ =gUnk_08128D70
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A621C
	strh r7, [r6, #8]
	movs r0, #0xcc
	strh r0, [r6]
	movs r0, #0x88
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_080ADA14
	movs r0, #0x30
	strh r0, [r6]
	movs r0, #0x6c
	strh r0, [r6, #2]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xd8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	ldrb r1, [r4, #2]
	adds r0, r5, #0
	bl sub_080ADA14
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	orrs r0, r7
	strh r0, [r6, #8]
	movs r0, #0x78
	strh r0, [r6]
	movs r0, #0x68
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_080ADA14
_080A621C:
	mov r0, r8
	strh r0, [r6, #2]
	movs r5, #0
	adds r7, r6, #0
	movs r6, #0x18
_080A6226:
	lsls r1, r5, #3
	ldr r0, _080A626C @ =gUnk_08128D70
	adds r4, r1, r0
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A6250
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	strh r6, [r7]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #0xa
	bl sub_080ADA14
_080A6250:
	adds r6, #0x1b
	adds r5, #1
	cmp r5, #7
	bls _080A6226
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6260: .4byte gUnk_03001010
_080A6264: .4byte gUnk_02000080
_080A6268: .4byte gUnk_03001000
_080A626C: .4byte gUnk_08128D70

	thumb_func_start sub_080A6270
sub_080A6270: @ 0x080A6270
	push {lr}
	ldr r1, _080A6288 @ =gUnk_08128DCC
	ldr r0, _080A628C @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A6378
	pop {pc}
	.align 2, 0
_080A6288: .4byte gUnk_08128DCC
_080A628C: .4byte gUnk_02000080

	thumb_func_start sub_080A6290
sub_080A6290: @ 0x080A6290
	push {r4, lr}
	ldr r0, _080A62C4 @ =gUnk_08128DD8
	bl sub_080A70AC
	ldr r4, _080A62C8 @ =gUnk_02000080
	ldr r0, _080A62CC @ =gUnk_08128DD4
	str r0, [r4, #0xc]
	movs r0, #0x81
	bl sub_0801D7EC
	ldr r1, _080A62D0 @ =gUnk_03000F50
	ldr r0, _080A62D4 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x24]
	ldr r2, _080A62D8 @ =gUnk_02002A40
	ldr r0, [r2, #0x40]
	ldr r1, _080A62DC @ =0x00010780
	orrs r0, r1
	str r0, [r2, #0x40]
	bl sub_080A6F40
	strh r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #5]
	pop {r4, pc}
	.align 2, 0
_080A62C4: .4byte gUnk_08128DD8
_080A62C8: .4byte gUnk_02000080
_080A62CC: .4byte gUnk_08128DD4
_080A62D0: .4byte gUnk_03000F50
_080A62D4: .4byte 0x0000FFFC
_080A62D8: .4byte gUnk_02002A40
_080A62DC: .4byte 0x00010780

	thumb_func_start sub_080A62E0
sub_080A62E0: @ 0x080A62E0
	push {r4, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A6372
	ldr r0, _080A6310 @ =gUnk_02000080
	ldrb r3, [r0, #3]
	lsls r1, r3, #3
	ldr r0, _080A6314 @ =gUnk_08128DE8
	adds r1, r1, r0
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _080A6318 @ =gUnk_03000FF0
	ldrh r2, [r0, #2]
	cmp r2, #0x20
	beq _080A634E
	cmp r2, #0x20
	bgt _080A631C
	cmp r2, #1
	beq _080A6326
	cmp r2, #0x10
	beq _080A6354
	b _080A635A
	.align 2, 0
_080A6310: .4byte gUnk_02000080
_080A6314: .4byte gUnk_08128DE8
_080A6318: .4byte gUnk_03000FF0
_080A631C:
	cmp r2, #0x40
	beq _080A6344
	cmp r2, #0x80
	beq _080A634A
	b _080A635A
_080A6326:
	ldr r0, _080A6340 @ =gUnk_02002A40
	lsls r2, r3
	ldr r0, [r0, #0x40]
	ands r0, r2
	cmp r0, #0
	beq _080A635A
	movs r0, #0x6a
	bl sub_080A3268
	movs r0, #6
	bl sub_080A4E84
	b _080A635A
	.align 2, 0
_080A6340: .4byte gUnk_02002A40
_080A6344:
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	b _080A6358
_080A634A:
	ldrh r0, [r1]
	b _080A6356
_080A634E:
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	b _080A6358
_080A6354:
	ldrh r0, [r1, #2]
_080A6356:
	lsls r0, r0, #0x16
_080A6358:
	lsrs r4, r0, #0x1b
_080A635A:
	cmp r4, #0
	blt _080A6368
	ldr r0, _080A6374 @ =gUnk_02000080
	strb r4, [r0, #3]
	movs r0, #0x69
	bl sub_080A3268
_080A6368:
	ldr r0, _080A6374 @ =gUnk_02000080
	ldrb r0, [r0, #3]
	movs r1, #0
	bl sub_080A6FB4
_080A6372:
	pop {r4, pc}
	.align 2, 0
_080A6374: .4byte gUnk_02000080

	thumb_func_start sub_080A6378
sub_080A6378: @ 0x080A6378
	push {r4, r5, r6, lr}
	ldr r0, _080A6420 @ =gUnk_02000080
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r6, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080A6392
	bl sub_080A6438
_080A6392:
	ldr r5, _080A6424 @ =gUnk_03001010
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	movs r0, #0xe0
	lsls r0, r0, #7
	strh r0, [r5, #8]
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080A63EA
	ldr r4, _080A6428 @ =gUnk_030010A0
	ldrh r1, [r4, #0x20]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xf9
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0x28
	strh r0, [r5]
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #7
	movs r1, #0xc6
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0xc
	strh r0, [r5, #2]
	ldr r0, _080A642C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x59
	cmp r0, #0
	beq _080A63E4
	movs r1, #0x5a
_080A63E4:
	ldr r0, _080A6430 @ =0x000001FB
	bl sub_080ADA14
_080A63EA:
	ldr r3, _080A6420 @ =gUnk_02000080
	ldrb r0, [r3, #3]
	lsls r0, r0, #3
	ldr r1, _080A6434 @ =gUnk_08128DE8
	adds r0, r0, r1
	ldr r2, _080A6424 @ =gUnk_03001010
	ldrb r1, [r0, #6]
	strh r1, [r2]
	ldrb r0, [r0, #7]
	strh r0, [r2, #2]
	ldrb r0, [r3, #3]
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, #0x26
	adds r3, #0x2c
	ldrb r1, [r3]
	lsrs r1, r1, #4
	movs r0, #1
	bics r0, r1
	adds r1, r2, r0
	ldr r0, _080A6430 @ =0x000001FB
	bl sub_080ADA14
	bl sub_080A6498
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6420: .4byte gUnk_02000080
_080A6424: .4byte gUnk_03001010
_080A6428: .4byte gUnk_030010A0
_080A642C: .4byte gUnk_03003F80
_080A6430: .4byte 0x000001FB
_080A6434: .4byte gUnk_08128DE8

	thumb_func_start sub_080A6438
sub_080A6438: @ 0x080A6438
	push {r4, r5, r6, r7, lr}
	ldr r2, _080A6484 @ =gUnk_03001010
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	strh r1, [r2, #8]
	ldr r0, _080A6488 @ =gUnk_02002A40
	ldr r1, _080A648C @ =gUnk_02000080
	ldrh r0, [r0, #0x20]
	ldrh r5, [r1, #0x10]
	ands r5, r0
	ldr r4, _080A6490 @ =gUnk_08128F58
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A6482
	adds r7, r2, #0
_080A645E:
	movs r0, #1
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080A6478
	ldrb r0, [r4, #1]
	strh r0, [r7]
	ldrb r0, [r4, #2]
	strh r0, [r7, #2]
	ldrb r1, [r4]
	ldr r0, _080A6494 @ =0x000001FB
	bl sub_080ADA14
_080A6478:
	adds r6, #1
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A645E
_080A6482:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6484: .4byte gUnk_03001010
_080A6488: .4byte gUnk_02002A40
_080A648C: .4byte gUnk_02000080
_080A6490: .4byte gUnk_08128F58
_080A6494: .4byte 0x000001FB

	thumb_func_start sub_080A6498
sub_080A6498: @ 0x080A6498
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A64E4 @ =gUnk_03001010
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r4, #0
	ldr r7, _080A64E8 @ =gUnk_02002A40
	adds r6, r0, #0
	movs r5, #0x28
_080A64B0:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080A64D2
	lsls r1, r4, #3
	ldr r0, _080A64EC @ =gUnk_08128DE8
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strh r0, [r6]
	ldrb r0, [r1, #7]
	strh r0, [r6, #2]
	ldr r0, _080A64F0 @ =0x000001FB
	adds r1, r5, #0
	bl sub_080ADA14
_080A64D2:
	adds r5, #3
	adds r4, #1
	cmp r4, #0x10
	bls _080A64B0
	ldr r0, _080A64F4 @ =gUnk_03000F50
	adds r0, #0x62
	ldr r1, _080A64F8 @ =0x00003D3F
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A64E4: .4byte gUnk_03001010
_080A64E8: .4byte gUnk_02002A40
_080A64EC: .4byte gUnk_08128DE8
_080A64F0: .4byte 0x000001FB
_080A64F4: .4byte gUnk_03000F50
_080A64F8: .4byte 0x00003D3F

	thumb_func_start sub_080A64FC
sub_080A64FC: @ 0x080A64FC
	push {r4, lr}
	bl sub_080AD90C
	ldr r1, _080A652C @ =gUnk_08128E70
	ldr r4, _080A6530 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r4, #0x2c
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A6522
	bl sub_080A6438
_080A6522:
	bl sub_080A6498
	bl sub_080AD918
	pop {r4, pc}
	.align 2, 0
_080A652C: .4byte gUnk_08128E70
_080A6530: .4byte gUnk_02000080

	thumb_func_start sub_080A6534
sub_080A6534: @ 0x080A6534
	push {r4, lr}
	bl sub_080A4D34
	movs r0, #4
	bl sub_080A4DB8
	bl sub_080A6290
	ldr r2, _080A6590 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _080A6594 @ =0x0000F7FF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	ldr r0, _080A6598 @ =gUnk_020176A0
	adds r0, #0xa2
	ldrh r1, [r0]
	movs r0, #0
	bl sub_0801D79C
	ldr r1, _080A659C @ =gUnk_08128F4C
	ldr r0, _080A65A0 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _080A65A4 @ =gUnk_02002A40
	ldrh r1, [r3, #0x20]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x20]
	ldr r1, _080A65A8 @ =gUnk_02000080
	ldrh r0, [r1, #0x10]
	ands r2, r0
	strh r2, [r1, #0x12]
	strh r4, [r1, #0x10]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #1
	bl sub_080A7114
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080A6590: .4byte gUnk_03000F50
_080A6594: .4byte 0x0000F7FF
_080A6598: .4byte gUnk_020176A0
_080A659C: .4byte gUnk_08128F4C
_080A65A0: .4byte gUnk_02032EC0
_080A65A4: .4byte gUnk_02002A40
_080A65A8: .4byte gUnk_02000080

	thumb_func_start sub_080A65AC
sub_080A65AC: @ 0x080A65AC
	push {r4, lr}
	ldr r0, _080A65E4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6600
	ldr r4, _080A65E8 @ =gUnk_02000080
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080A65EC
	cmp r0, #0x1e
	bne _080A65DA
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r1]
	adds r0, #0xe3
	bl sub_080A3268
_080A65DA:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	b _080A6600
	.align 2, 0
_080A65E4: .4byte gUnk_03000FD0
_080A65E8: .4byte gUnk_02000080
_080A65EC:
	ldr r0, _080A6604 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #1
	blt _080A6600
	cmp r0, #2
	ble _080A65FC
	cmp r0, #8
	bne _080A6600
_080A65FC:
	bl sub_080A71DC
_080A6600:
	pop {r4, pc}
	.align 2, 0
_080A6604: .4byte gUnk_03000FF0

	thumb_func_start sub_080A6608
sub_080A6608: @ 0x080A6608
	push {r4, lr}
	ldr r1, _080A6640 @ =gUnk_08128E78
	ldr r4, _080A6644 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	ldr r0, _080A6648 @ =gUnk_08128E94
	adds r1, r1, r0
	ldr r2, _080A664C @ =gUnk_03000F50
	movs r0, #5
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	ldrb r1, [r1, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r2, #0x24]
	bl sub_080A66D0
	pop {r4, pc}
	.align 2, 0
_080A6640: .4byte gUnk_08128E78
_080A6644: .4byte gUnk_02000080
_080A6648: .4byte gUnk_08128E94
_080A664C: .4byte gUnk_03000F50

	thumb_func_start sub_080A6650
sub_080A6650: @ 0x080A6650
	push {lr}
	ldr r0, _080A6670 @ =gUnk_08128E84
	bl sub_080A70AC
	ldr r0, _080A6674 @ =gUnk_02034490
	ldrb r0, [r0, #6]
	ldr r1, _080A6678 @ =gUnk_02000080
	strb r0, [r1, #3]
	bl sub_080A67C4
	bl sub_080A68D4
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A6670: .4byte gUnk_08128E84
_080A6674: .4byte gUnk_02034490
_080A6678: .4byte gUnk_02000080

	thumb_func_start sub_080A667C
sub_080A667C: @ 0x080A667C
	push {lr}
	ldr r2, _080A669C @ =gUnk_02000080
	ldr r0, _080A66A0 @ =gUnk_08128E80
	str r0, [r2, #0xc]
	ldrb r0, [r2, #3]
	lsls r0, r0, #3
	ldr r1, _080A66A4 @ =gUnk_08128E94
	adds r3, r0, r1
	ldrh r1, [r2, #0xa]
	ldr r0, _080A66A8 @ =gUnk_03000FF0
	ldrh r0, [r0]
	cmp r0, #0x40
	beq _080A66AC
	cmp r0, #0x80
	beq _080A66B4
	b _080A66C2
	.align 2, 0
_080A669C: .4byte gUnk_02000080
_080A66A0: .4byte gUnk_08128E80
_080A66A4: .4byte gUnk_08128E94
_080A66A8: .4byte gUnk_03000FF0
_080A66AC:
	cmp r1, #0
	beq _080A66C2
	subs r1, #2
	b _080A66C2
_080A66B4:
	ldrb r0, [r3, #2]
	cmp r0, r1
	bls _080A66BC
	adds r1, #2
_080A66BC:
	cmp r0, r1
	bhs _080A66C2
	adds r1, r0, #0
_080A66C2:
	strh r1, [r2, #0xa]
	ldrb r0, [r2, #3]
	movs r1, #0
	bl sub_080A6FB4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A66D0
sub_080A66D0: @ 0x080A66D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080A677C @ =gUnk_03001010
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r0, #0x78
	strh r0, [r6]
	ldr r4, _080A6780 @ =gUnk_02000080
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A6784 @ =gUnk_08128E94
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A6738
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _080A6738
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080A6724
	movs r0, #0xc
	strh r0, [r6, #2]
	ldr r0, _080A6788 @ =0x000001FB
	movs r1, #0x71
	bl sub_080ADA14
_080A6724:
	ldrb r0, [r5, #2]
	ldrh r4, [r4, #0xa]
	cmp r0, r4
	bls _080A6738
	movs r0, #0x84
	strh r0, [r6, #2]
	ldr r0, _080A6788 @ =0x000001FB
	movs r1, #0x72
	bl sub_080ADA14
_080A6738:
	ldrb r0, [r5, #7]
	mov sl, r0
	ldrb r5, [r5, #3]
	mov sb, r5
	ldr r1, _080A6780 @ =gUnk_02000080
	ldrh r0, [r1, #0xa]
	mov r8, r0
	ldr r2, _080A677C @ =gUnk_03001010
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r1, #0x2c
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080A678C @ =gUnk_02019EE0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080A67BA
	rsbs r5, r6, #0
	orrs r5, r6
	adds r7, r2, #0
_080A676E:
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080A6790
	lsrs r1, r5, #0x1f
	b _080A6796
	.align 2, 0
_080A677C: .4byte gUnk_03001010
_080A6780: .4byte gUnk_02000080
_080A6784: .4byte gUnk_08128E94
_080A6788: .4byte 0x000001FB
_080A678C: .4byte gUnk_02019EE0
_080A6790:
	cmp r6, #0
	bne _080A6796
	movs r1, #1
_080A6796:
	cmp r1, #0
	beq _080A67B2
	ldrh r0, [r4, #4]
	add r0, sl
	strh r0, [r7]
	ldrh r0, [r4, #6]
	add r0, sb
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #1]
	bl sub_080ADA14
_080A67B2:
	adds r4, #8
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _080A676E
_080A67BA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080A67C4
sub_080A67C4: @ 0x080A67C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xba
	bl sub_0801D714
	adds r5, r4, #0
	adds r5, #0x5f
	cmp r4, #0xb
	beq _080A67F4
	cmp r4, #0xb
	bhi _080A67E0
	cmp r4, #9
	beq _080A67E6
	b _080A6822
_080A67E0:
	cmp r4, #0xe
	beq _080A6802
	b _080A6822
_080A67E6:
	movs r0, #0x18
	bl GetProgressFlag
	cmp r0, #0
	beq _080A6822
	movs r5, #0x70
	b _080A6822
_080A67F4:
	movs r0, #0xe
	bl sub_0801E7F4
	cmp r0, #0
	beq _080A6822
	movs r5, #0x71
	b _080A6822
_080A6802:
	ldr r1, _080A68AC @ =gUnk_02032EC0
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #8
	bne _080A6822
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	adds r5, #0x72
_080A6822:
	adds r0, r5, #0
	bl sub_0801D7EC
	lsls r1, r4, #3
	ldr r0, _080A68B0 @ =gUnk_08128E94
	adds r4, r1, r0
	ldr r0, _080A68B4 @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080A68B8 @ =gUnk_02017AA0
	adds r1, r0, r1
	ldr r2, _080A68BC @ =0x00001E0A
	adds r0, r2, #0
	movs r2, #7
_080A6842:
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080A6842
	movs r2, #8
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r3, [r4, #4]
	adds r0, r0, r3
	ldr r5, _080A68B4 @ =gUnk_03003DE4
	ldr r6, _080A68B8 @ =gUnk_02017AA0
	cmp r2, r0
	bge _080A6874
	ldr r7, _080A68C0 @ =0x00001E0B
	adds r3, r7, #0
_080A6862:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r7, [r4, #4]
	adds r0, r0, r7
	cmp r2, r0
	blt _080A6862
_080A6874:
	cmp r2, #0x9f
	bgt _080A6886
	ldr r3, _080A68BC @ =0x00001E0A
	adds r0, r3, #0
_080A687C:
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x9f
	ble _080A687C
_080A6886:
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r6
	ldr r1, _080A68C4 @ =0x0400000E
	ldr r2, _080A68C8 @ =0xA2600001
	bl sub_0805622C
	ldr r1, _080A68CC @ =gUnk_02000080
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r0, _080A68D0 @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_0801D630
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A68AC: .4byte gUnk_02032EC0
_080A68B0: .4byte gUnk_08128E94
_080A68B4: .4byte gUnk_03003DE4
_080A68B8: .4byte gUnk_02017AA0
_080A68BC: .4byte 0x00001E0A
_080A68C0: .4byte 0x00001E0B
_080A68C4: .4byte 0x0400000E
_080A68C8: .4byte 0xA2600001
_080A68CC: .4byte gUnk_02000080
_080A68D0: .4byte gUnk_02019EE0

	thumb_func_start sub_080A68D4
sub_080A68D4: @ 0x080A68D4
	push {r4, r5, r6, lr}
	ldr r0, _080A690C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r4, #0x64
	cmp r0, #0
	beq _080A68E6
	movs r4, #0x65
_080A68E6:
	ldr r1, _080A6910 @ =gUnk_030010A0
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, _080A6914 @ =0x000001FB
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r4, r3
	bl sub_080A698C
	bl sub_080A6F40
	adds r6, r0, #0
	ldr r0, _080A6918 @ =gUnk_02002A40
	ldrh r0, [r0, #0x20]
	ands r6, r0
	ldr r4, _080A691C @ =gUnk_08128F58
	movs r5, #0
	b _080A693A
	.align 2, 0
_080A690C: .4byte gUnk_03003F80
_080A6910: .4byte gUnk_030010A0
_080A6914: .4byte 0x000001FB
_080A6918: .4byte gUnk_02002A40
_080A691C: .4byte gUnk_08128F58
_080A6920:
	movs r0, #1
	lsls r0, r5
	ands r0, r6
	cmp r0, #0
	beq _080A6936
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #3]
	ldr r2, _080A6980 @ =0x000001FB
	bl sub_080A698C
_080A6936:
	adds r5, #1
	adds r4, #8
_080A693A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6920
	movs r5, #0xa
_080A6942:
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _080A6976
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _080A6976
	ldr r1, _080A6984 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r3, [r0, #7]
	ldrb r0, [r0, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6988 @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	adds r3, #0x64
	ldr r2, _080A6980 @ =0x000001FB
	bl sub_080A698C
_080A6976:
	adds r5, #1
	cmp r5, #0x64
	bls _080A6942
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6980: .4byte 0x000001FB
_080A6984: .4byte gUnk_080C9CBC
_080A6988: .4byte gUnk_080FE320

	thumb_func_start sub_080A698C
sub_080A698C: @ 0x080A698C
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r3, #0
	bl sub_080A69E0
	adds r4, r0, #0
	cmp r4, #0
	ble _080A69D4
	ldr r2, _080A69D8 @ =gUnk_02000080
	adds r2, #0x2d
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r3, _080A69DC @ =gUnk_02019EE0
	adds r0, r0, r3
	lsrs r1, r5, #8
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r6, [r0, #2]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r4, [r0, #4]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	asrs r1, r4, #0x10
	strh r1, [r0, #6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080A69D4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A69D8: .4byte gUnk_02000080
_080A69DC: .4byte gUnk_02019EE0

	thumb_func_start sub_080A69E0
sub_080A69E0: @ 0x080A69E0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	orrs r0, r6
	cmp r0, #0
	beq _080A6A06
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080A6A80
	adds r3, r0, #0
	cmp r3, #0
	beq _080A6A06
	ldr r0, _080A6A0C @ =gUnk_02000080
	ldrb r1, [r0, #3]
	ldrb r2, [r3, #4]
	cmp r1, r2
	beq _080A6A10
_080A6A06:
	movs r0, #1
	rsbs r0, r0, #0
	b _080A6A74
	.align 2, 0
_080A6A0C: .4byte gUnk_02000080
_080A6A10:
	ldrb r1, [r0, #3]
	cmp r1, #7
	beq _080A6A26
	cmp r1, #7
	bgt _080A6A20
	cmp r1, #4
	beq _080A6A26
	b _080A6A48
_080A6A20:
	cmp r1, #0xf
	beq _080A6A44
	b _080A6A48
_080A6A26:
	ldrb r0, [r0, #3]
	movs r2, #7
	cmp r0, #4
	bne _080A6A30
	movs r2, #9
_080A6A30:
	ldr r1, _080A6A40 @ =gUnk_0811E214
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	subs r6, r6, r0
	b _080A6A48
	.align 2, 0
_080A6A40: .4byte gUnk_0811E214
_080A6A44:
	ldr r0, _080A6A78 @ =0xFFFFFEF8
	adds r7, r7, r0
_080A6A48:
	ldrb r0, [r3]
	lsls r0, r0, #4
	subs r0, r7, r0
	movs r4, #0x64
	muls r0, r4, r0
	ldr r5, _080A6A7C @ =0x0000023A
	adds r1, r5, #0
	str r3, [sp]
	bl __divsi3
	adds r7, r0, #0
	ldr r3, [sp]
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	subs r0, r6, r0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	adds r6, r0, #0
	lsls r0, r6, #0x10
	orrs r0, r7
_080A6A74:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6A78: .4byte 0xFFFFFEF8
_080A6A7C: .4byte 0x0000023A

	thumb_func_start sub_080A6A80
sub_080A6A80: @ 0x080A6A80
	push {lr}
	adds r3, r0, #0
	lsrs r3, r3, #4
	lsrs r1, r1, #4
	ldr r2, _080A6A8C @ =gUnk_08127F94
	b _080A6AAE
	.align 2, 0
_080A6A8C: .4byte gUnk_08127F94
_080A6A90:
	ldrb r0, [r2]
	cmp r0, r3
	bhi _080A6AAC
	ldrb r0, [r2, #2]
	cmp r0, r3
	blo _080A6AAC
	ldrb r0, [r2, #1]
	cmp r0, r1
	bhi _080A6AAC
	ldrb r0, [r2, #3]
	cmp r0, r1
	blo _080A6AAC
	adds r0, r2, #0
	b _080A6AB6
_080A6AAC:
	adds r2, #8
_080A6AAE:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080A6A90
	movs r0, #0
_080A6AB6:
	pop {pc}

	thumb_func_start sub_080A6AB8
sub_080A6AB8: @ 0x080A6AB8
	push {r4, lr}
	bl sub_080AD90C
	ldr r1, _080A6AF4 @ =gUnk_08128F1C
	ldr r4, _080A6AF8 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	ldr r0, _080A6AFC @ =gUnk_08128E94
	adds r1, r1, r0
	ldr r2, _080A6B00 @ =gUnk_03000F50
	movs r0, #5
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	ldrb r1, [r1, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r2, #0x24]
	bl sub_080AD918
	pop {r4, pc}
	.align 2, 0
_080A6AF4: .4byte gUnk_08128F1C
_080A6AF8: .4byte gUnk_02000080
_080A6AFC: .4byte gUnk_08128E94
_080A6B00: .4byte gUnk_03000F50

	thumb_func_start sub_080A6B04
sub_080A6B04: @ 0x080A6B04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080A4D34
	movs r0, #6
	bl sub_080A4DB8
	ldr r0, _080A6BF0 @ =gUnk_02022740
	ldrb r2, [r0, #3]
	lsls r2, r2, #3
	ldr r0, _080A6BF4 @ =gUnk_080C9CBC
	adds r2, r2, r0
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A6BF8 @ =gUnk_080FE320
	adds r0, r0, r1
	ldrb r2, [r2, #7]
	mov r8, r2
	ldrh r6, [r0, #0xc]
	ldrh r5, [r0, #0xe]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A6A80
	ldrb r4, [r0, #4]
	ldr r7, _080A6BFC @ =gUnk_02000080
	strb r4, [r7, #3]
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080A67C4
	adds r0, r4, #0
	movs r1, #2
	bl sub_080A6FB4
	ldr r4, _080A6C00 @ =0x0000475F
	movs r0, #0
	adds r1, r4, #0
	bl sub_0801D79C
	movs r0, #0x5f
	adds r1, r4, #0
	bl sub_0801D79C
	ldr r0, _080A6C04 @ =0x00005001
	ldr r1, _080A6C08 @ =gUnk_02001A40
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_0801D5EC
	ldr r0, _080A6C0C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r2, #0x64
	cmp r0, #0
	beq _080A6B84
	movs r2, #0x65
_080A6B84:
	ldr r1, _080A6C10 @ =gUnk_030010A0
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r4, _080A6C14 @ =0x000001FB
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r2, r3
	adds r2, r4, #0
	bl sub_080A698C
	mov r3, r8
	adds r3, #0x64
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080A698C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A69E0
	asrs r5, r0, #0x10
	ldrb r0, [r7, #3]
	lsls r0, r0, #3
	ldr r1, _080A6C18 @ =gUnk_08128E94
	adds r1, r0, r1
	movs r0, #0
	strh r0, [r7, #0xa]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080A6BD4
	adds r0, r5, #0
	subs r0, #0x3c
	cmp r0, #0
	ble _080A6BD4
	ldrb r1, [r1, #2]
	cmp r1, r0
	bge _080A6BD2
	adds r0, r1, #0
_080A6BD2:
	strh r0, [r7, #0xa]
_080A6BD4:
	ldr r1, _080A6BFC @ =gUnk_02000080
	movs r0, #0x1e
	strh r0, [r1, #8]
	movs r0, #1
	bl sub_080A7114
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6BF0: .4byte gUnk_02022740
_080A6BF4: .4byte gUnk_080C9CBC
_080A6BF8: .4byte gUnk_080FE320
_080A6BFC: .4byte gUnk_02000080
_080A6C00: .4byte 0x0000475F
_080A6C04: .4byte 0x00005001
_080A6C08: .4byte gUnk_02001A40
_080A6C0C: .4byte gUnk_03003F80
_080A6C10: .4byte gUnk_030010A0
_080A6C14: .4byte 0x000001FB
_080A6C18: .4byte gUnk_08128E94

	thumb_func_start sub_080A6C1C
sub_080A6C1C: @ 0x080A6C1C
	push {lr}
	ldr r0, _080A6C34 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6C6A
	ldr r0, _080A6C38 @ =gUnk_02000080
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _080A6C3C
	cmp r0, #1
	beq _080A6C5C
	b _080A6C62
	.align 2, 0
_080A6C34: .4byte gUnk_03000FD0
_080A6C38: .4byte gUnk_02000080
_080A6C3C:
	bl sub_080A66D0
	ldr r0, _080A6C58 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #1
	blt _080A6C6A
	cmp r0, #2
	ble _080A6C50
	cmp r0, #8
	bne _080A6C6A
_080A6C50:
	bl sub_080A71DC
	b _080A6C6A
	.align 2, 0
_080A6C58: .4byte gUnk_03000FF0
_080A6C5C:
	ldr r0, _080A6C6C @ =0x00000103
	bl sub_080A3268
_080A6C62:
	ldr r1, _080A6C70 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
_080A6C6A:
	pop {pc}
	.align 2, 0
_080A6C6C: .4byte 0x00000103
_080A6C70: .4byte gUnk_02000080

	thumb_func_start sub_080A6C74
sub_080A6C74: @ 0x080A6C74
	push {r4, lr}
	bl sub_080AD90C
	ldr r1, _080A6CA0 @ =gUnk_08128F24
	ldr r4, _080A6CA4 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A6C94
	bl sub_080A6E70
_080A6C94:
	bl sub_080A6498
	bl sub_080AD918
	pop {r4, pc}
	.align 2, 0
_080A6CA0: .4byte gUnk_08128F24
_080A6CA4: .4byte gUnk_02000080

	thumb_func_start sub_080A6CA8
sub_080A6CA8: @ 0x080A6CA8
	push {lr}
	bl sub_080A4D34
	movs r0, #0xd
	bl sub_080A4DB8
	bl sub_080A6290
	movs r0, #0
	bl sub_080A6D74
	ldr r1, _080A6CD4 @ =gUnk_02000080
	strb r0, [r1, #3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	pop {pc}
	.align 2, 0
_080A6CD4: .4byte gUnk_02000080

	thumb_func_start sub_080A6CD8
sub_080A6CD8: @ 0x080A6CD8
	push {r4, lr}
	ldr r0, _080A6D08 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6D6E
	ldr r1, _080A6D0C @ =gUnk_02000080
	movs r0, #1
	strb r0, [r1]
	movs r4, #0
	ldr r0, _080A6D10 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	adds r2, r1, #0
	cmp r0, #0x10
	beq _080A6D34
	cmp r0, #0x10
	bgt _080A6D1A
	cmp r0, #2
	beq _080A6D4C
	cmp r0, #2
	bgt _080A6D14
	cmp r0, #1
	beq _080A6D38
	b _080A6D54
	.align 2, 0
_080A6D08: .4byte gUnk_03000FD0
_080A6D0C: .4byte gUnk_02000080
_080A6D10: .4byte gUnk_03000FF0
_080A6D14:
	cmp r0, #8
	beq _080A6D38
	b _080A6D54
_080A6D1A:
	cmp r0, #0x40
	beq _080A6D2E
	cmp r0, #0x40
	bgt _080A6D28
	cmp r0, #0x20
	beq _080A6D2E
	b _080A6D54
_080A6D28:
	cmp r0, #0x80
	beq _080A6D34
	b _080A6D54
_080A6D2E:
	movs r4, #1
	rsbs r4, r4, #0
	b _080A6D58
_080A6D34:
	movs r4, #1
	b _080A6D58
_080A6D38:
	movs r0, #2
	strb r0, [r2]
	bl sub_080A7114
	ldr r0, _080A6D48 @ =0x00000704
	bl sub_08056378
	b _080A6D54
	.align 2, 0
_080A6D48: .4byte 0x00000704
_080A6D4C:
	movs r0, #3
	strb r0, [r1]
	bl sub_080A7114
_080A6D54:
	cmp r4, #0
	beq _080A6D6E
_080A6D58:
	adds r0, r4, #0
	bl sub_080A6D74
	ldr r1, _080A6D70 @ =gUnk_02000080
	ldrb r2, [r1, #3]
	cmp r0, r2
	beq _080A6D6E
	strb r0, [r1, #3]
	movs r0, #0x69
	bl sub_080A3268
_080A6D6E:
	pop {r4, pc}
	.align 2, 0
_080A6D70: .4byte gUnk_02000080

	thumb_func_start sub_080A6D74
sub_080A6D74: @ 0x080A6D74
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080A6DA4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	lsrs r2, r0, #0x18
	ldr r0, _080A6DA8 @ =gUnk_02000080
	ldrb r1, [r0, #3]
	cmp r3, #0
	bne _080A6DAC
	movs r1, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080A6DC6
	movs r3, #1
_080A6D92:
	adds r1, #1
	cmp r1, #7
	bhi _080A6DC6
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080A6D92
	b _080A6DC6
	.align 2, 0
_080A6DA4: .4byte gUnk_02002A40
_080A6DA8: .4byte gUnk_02000080
_080A6DAC:
	cmp r2, #0
	beq _080A6DC6
	movs r4, #7
	movs r5, #1
_080A6DB4:
	adds r0, r1, r3
	adds r1, r0, #0
	adds r1, #8
	ands r1, r4
	adds r0, r5, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080A6DB4
_080A6DC6:
	movs r0, #7
	ands r1, r0
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A6DD0
sub_080A6DD0: @ 0x080A6DD0
	push {lr}
	bl sub_08056338
	cmp r0, #0
	beq _080A6DE0
	cmp r0, #1
	beq _080A6DF0
	b _080A6DF6
_080A6DE0:
	ldr r1, _080A6DEC @ =gUnk_02000080
	movs r0, #2
	strb r0, [r1]
	movs r0, #3
	b _080A6DF2
	.align 2, 0
_080A6DEC: .4byte gUnk_02000080
_080A6DF0:
	movs r0, #1
_080A6DF2:
	bl sub_080A7114
_080A6DF6:
	pop {pc}

	thumb_func_start sub_080A6DF8
sub_080A6DF8: @ 0x080A6DF8
	push {lr}
	ldr r0, _080A6E14 @ =gUnk_02000080
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A6E18
	movs r0, #4
	bl sub_080A7114
	movs r0, #5
	movs r1, #8
	bl sub_08050054
	b _080A6E3A
	.align 2, 0
_080A6E14: .4byte gUnk_02000080
_080A6E18:
	bl sub_080791D0
	ldr r0, _080A6E3C @ =gLinkEntity
	adds r1, r0, #0
	adds r1, #0x58
	ldrb r1, [r1]
	ldrh r2, [r0, #0x12]
	bl sub_080042D0
	bl sub_080A71DC
	ldr r1, _080A6E40 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x6c
	bl sub_080A3268
_080A6E3A:
	pop {pc}
	.align 2, 0
_080A6E3C: .4byte gLinkEntity
_080A6E40: .4byte gUnk_02034490

	thumb_func_start sub_080A6E44
sub_080A6E44: @ 0x080A6E44
	push {lr}
	ldr r0, _080A6E64 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6E60
	ldr r0, _080A6E68 @ =gUnk_02000080
	ldrb r1, [r0, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A6E6C @ =gUnk_08128024
	adds r0, r0, r1
	bl sub_080A71F4
_080A6E60:
	pop {pc}
	.align 2, 0
_080A6E64: .4byte gUnk_03000FD0
_080A6E68: .4byte gUnk_02000080
_080A6E6C: .4byte gUnk_08128024

	thumb_func_start sub_080A6E70
sub_080A6E70: @ 0x080A6E70
	push {r4, r5, lr}
	ldr r1, _080A6ED0 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #8]
	ldr r1, _080A6ED4 @ =gUnk_02000080
	adds r4, r1, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r1, #3]
	bl sub_080A6EE0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x5e
	cmp r0, #0
	beq _080A6EA0
	movs r1, #0x5d
_080A6EA0:
	ldr r0, _080A6ED8 @ =0x000001FB
	bl sub_080ADA14
	movs r4, #0
	ldr r5, _080A6EDC @ =gUnk_02002A40
_080A6EAA:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r5, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A6EC8
	adds r0, r4, #0
	bl sub_080A6EE0
	ldr r0, _080A6ED8 @ =0x000001FB
	movs r1, #0x5c
	bl sub_080ADA14
_080A6EC8:
	adds r4, #1
	cmp r4, #7
	bls _080A6EAA
	pop {r4, r5, pc}
	.align 2, 0
_080A6ED0: .4byte gUnk_03001010
_080A6ED4: .4byte gUnk_02000080
_080A6ED8: .4byte 0x000001FB
_080A6EDC: .4byte gUnk_02002A40

	thumb_func_start sub_080A6EE0
sub_080A6EE0: @ 0x080A6EE0
	push {r4, r5, r6, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6F34 @ =gUnk_08128024
	adds r1, r1, r0
	ldrh r3, [r1, #6]
	ldrh r4, [r1, #8]
	ldr r0, _080A6F38 @ =gUnk_0811E214
	ldrb r2, [r1, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r1, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r1, #2]
	adds r4, r4, r0
	ldr r6, _080A6F3C @ =gUnk_03001010
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #5
	movs r5, #0xf9
	lsls r5, r5, #4
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0x28
	strh r0, [r6]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0xc
	strh r0, [r6, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6F34: .4byte gUnk_08128024
_080A6F38: .4byte gUnk_0811E214
_080A6F3C: .4byte gUnk_03001010

	thumb_func_start sub_080A6F40
sub_080A6F40: @ 0x080A6F40
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r4, _080A6F4C @ =gUnk_08128F38
	movs r6, #0
	b _080A6F60
	.align 2, 0
_080A6F4C: .4byte gUnk_08128F38
_080A6F50:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_0807CB24
	lsls r0, r5
	orrs r6, r0
	adds r5, #1
	adds r4, #2
_080A6F60:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6F50
	mvns r0, r6
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A6F6C
sub_080A6F6C: @ 0x080A6F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A6FA4 @ =gUnk_02000080
	ldrh r0, [r1, #0x2e]
	cmp r0, r4
	beq _080A6F9A
	strh r4, [r1, #0x2e]
	ldr r0, _080A6FA8 @ =gUnk_020350F0
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0801D630
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _080A6F94
	ldr r1, _080A6FAC @ =gUnk_08128FA8
	adds r0, r4, #0
	bl sub_0805F46C
_080A6F94:
	ldr r1, _080A6FB0 @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
_080A6F9A:
	ldr r1, _080A6FB0 @ =gUnk_03000F50
	movs r0, #2
	strh r0, [r1, #0xc]
	pop {r4, pc}
	.align 2, 0
_080A6FA4: .4byte gUnk_02000080
_080A6FA8: .4byte gUnk_020350F0
_080A6FAC: .4byte gUnk_08128FA8
_080A6FB0: .4byte gUnk_03000F50

	thumb_func_start sub_080A6FB4
sub_080A6FB4: @ 0x080A6FB4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0
	cmp r1, #1
	beq _080A6FF0
	cmp r1, #1
	blo _080A6FC8
	cmp r1, #2
	beq _080A6FD6
	b _080A6FFA
_080A6FC8:
	ldr r0, _080A6FE4 @ =gUnk_02002A40
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A6FFA
_080A6FD6:
	ldr r1, _080A6FE8 @ =gUnk_08127F94
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	ldr r5, _080A6FEC @ =gUnk_08128FC0
	b _080A6FFA
	.align 2, 0
_080A6FE4: .4byte gUnk_02002A40
_080A6FE8: .4byte gUnk_08127F94
_080A6FEC: .4byte gUnk_08128FC0
_080A6FF0:
	ldr r1, _080A702C @ =gUnk_08128FF0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _080A7030 @ =gUnk_08128FD8
_080A6FFA:
	ldr r1, _080A7034 @ =gUnk_02000080
	ldrh r0, [r1, #0x2e]
	cmp r0, r4
	beq _080A7024
	strh r4, [r1, #0x2e]
	ldr r0, _080A7038 @ =gUnk_020350F0
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0801D630
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _080A701E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F46C
_080A701E:
	ldr r1, _080A703C @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
_080A7024:
	ldr r1, _080A703C @ =gUnk_03000F50
	movs r0, #2
	strh r0, [r1, #0xc]
	pop {r4, r5, pc}
	.align 2, 0
_080A702C: .4byte gUnk_08128FF0
_080A7030: .4byte gUnk_08128FD8
_080A7034: .4byte gUnk_02000080
_080A7038: .4byte gUnk_020350F0
_080A703C: .4byte gUnk_03000F50

	thumb_func_start sub_080A7040
sub_080A7040: @ 0x080A7040
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080A7090 @ =gUnk_02000080
	ldrh r0, [r1, #0x2e]
	cmp r0, r5
	beq _080A708C
	strh r5, [r1, #0x2e]
	ldr r4, _080A7094 @ =gUnk_02022130
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_0801D630
	ldr r0, _080A7098 @ =0xFFFFFE00
	adds r4, r4, r0
	ldr r1, _080A709C @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_0801D66C
	ldr r1, _080A70A0 @ =gUnk_08128D70
	lsls r0, r5, #3
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A7082
	ldrh r0, [r4, #6]
	ldr r1, _080A70A4 @ =gUnk_08129004
	bl sub_0805F46C
_080A7082:
	ldr r0, _080A70A8 @ =gUnk_03000F50
	movs r1, #3
	strh r1, [r0, #0x18]
	movs r1, #1
	strh r1, [r0, #0x1a]
_080A708C:
	pop {r4, r5, pc}
	.align 2, 0
_080A7090: .4byte gUnk_02000080
_080A7094: .4byte gUnk_02022130
_080A7098: .4byte 0xFFFFFE00
_080A709C: .4byte 0x0600E000
_080A70A0: .4byte gUnk_08128D70
_080A70A4: .4byte gUnk_08129004
_080A70A8: .4byte gUnk_03000F50

	thumb_func_start sub_080A70AC
sub_080A70AC: @ 0x080A70AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A7110 @ =gUnk_0200AF34
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_0801D630
	adds r2, r4, #0
	subs r2, #0x34
	movs r0, #0x7f
	strb r0, [r2, #0x13]
	strb r0, [r2, #0x14]
	ldrb r0, [r5]
	strh r0, [r2, #0x16]
	movs r0, #1
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x1c]
	ldrb r1, [r5, #2]
	subs r0, r4, #4
	strb r1, [r0]
	ldrb r0, [r5, #3]
	strh r0, [r2, #0x18]
	movs r0, #4
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x1e]
	ldrb r1, [r5, #5]
	subs r0, r4, #3
	strb r1, [r0]
	ldrb r0, [r5, #6]
	strh r0, [r2, #0x1a]
	movs r0, #7
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x20]
	ldrb r0, [r5, #8]
	subs r4, #2
	strb r0, [r4]
	adds r5, #9
	movs r4, #1
	rsbs r4, r4, #0
_080A70FC:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	bl sub_0801CA6C
	adds r5, #2
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r4
	bne _080A70FC
	pop {r4, r5, pc}
	.align 2, 0
_080A7110: .4byte gUnk_0200AF34

	thumb_func_start sub_080A7114
sub_080A7114: @ 0x080A7114
	ldr r1, _080A7120 @ =gUnk_02000080
	movs r2, #0
	strb r0, [r1, #5]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
	bx lr
	.align 2, 0
_080A7120: .4byte gUnk_02000080

	thumb_func_start sub_080A7124
sub_080A7124: @ 0x080A7124
	push {lr}
	ldr r0, _080A7134 @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_080A7134: .4byte gUnk_02032EC0

	thumb_func_start sub_080A7138
sub_080A7138: @ 0x080A7138
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080A715C @ =gUnk_02032EC0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A7164
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_0801D630
	strb r5, [r4, #2]
	strb r6, [r4, #3]
	ldr r0, _080A7160 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	strb r0, [r4, #7]
	b _080A716C
	.align 2, 0
_080A715C: .4byte gUnk_02032EC0
_080A7160: .4byte gUnk_03001000
_080A7164:
	strb r5, [r4, #4]
	strb r6, [r4, #5]
	movs r0, #1
	strb r0, [r4]
_080A716C:
	ldr r1, _080A7194 @ =gUnk_02032EC0
	movs r0, #0
	strb r0, [r1, #6]
	ldr r0, _080A7198 @ =0x0000FFFF
	strh r0, [r1, #8]
	movs r4, #0
	movs r0, #0x20
	strh r0, [r1, #0xa]
	ldr r1, _080A719C @ =gUnk_03001000
	movs r0, #7
	strb r0, [r1, #4]
	movs r0, #5
	movs r1, #0x20
	bl sub_08050054
	ldr r0, _080A71A0 @ =gUnk_02018EB0
	strb r4, [r0]
	strb r4, [r0, #1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A7194: .4byte gUnk_02032EC0
_080A7198: .4byte 0x0000FFFF
_080A719C: .4byte gUnk_03001000
_080A71A0: .4byte gUnk_02018EB0

	thumb_func_start sub_080A71A4
sub_080A71A4: @ 0x080A71A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _080A71B4 @ =gUnk_02032EC0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A71B8
	strb r2, [r3, #0xe]
	b _080A71BA
	.align 2, 0
_080A71B4: .4byte gUnk_02032EC0
_080A71B8:
	strb r2, [r3, #0xf]
_080A71BA:
	adds r0, r4, #0
	bl sub_080A7138
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A71C4
sub_080A71C4: @ 0x080A71C4
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	bl sub_080A7138
	ldr r0, _080A71D8 @ =gUnk_02032EC0
	strh r4, [r0, #8]
	strh r5, [r0, #0xa]
	pop {r4, r5, pc}
	.align 2, 0
_080A71D8: .4byte gUnk_02032EC0

	thumb_func_start sub_080A71DC
sub_080A71DC: @ 0x080A71DC
	push {lr}
	ldr r1, _080A71F0 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	movs r0, #5
	movs r1, #0x20
	bl sub_08050054
	pop {pc}
	.align 2, 0
_080A71F0: .4byte gUnk_02032EC0

	thumb_func_start sub_080A71F4
sub_080A71F4: @ 0x080A71F4
	push {lr}
	cmp r0, #0
	beq _080A71FE
	bl sub_08080840
_080A71FE:
	bl sub_0805E89C
	bl sub_0805E974
	bl sub_0805E89C
	ldr r0, _080A7218 @ =gUnk_03001000
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	pop {pc}
	.align 2, 0
_080A7218: .4byte gUnk_03001000

	thumb_func_start sub_080A721C
sub_080A721C: @ 0x080A721C
	push {lr}
	ldr r0, _080A7248 @ =gUnk_02032EC0
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bhi _080A7238
	ldrb r3, [r2, #4]
	cmp r3, #0
	beq _080A7238
	ldrb r0, [r2, #5]
	movs r1, #0
	strb r0, [r2, #3]
	strb r3, [r2, #2]
	strb r1, [r2, #4]
_080A7238:
	ldr r0, _080A724C @ =gUnk_0812901C
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A7248: .4byte gUnk_02032EC0
_080A724C: .4byte gUnk_0812901C

	thumb_func_start sub_080A7250
sub_080A7250: @ 0x080A7250
	push {r4, lr}
	ldr r0, _080A72E8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A72E4
	ldr r0, _080A72EC @ =gUnk_03000F50
	ldr r1, _080A72F0 @ =gUnk_03001020
	movs r2, #0x7c
	bl sub_0801D66C
	ldr r0, _080A72F4 @ =gUnk_020176A0
	ldr r1, _080A72F8 @ =gUnk_02024090
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_0801D66C
	ldr r0, _080A72FC @ =gUnk_02024490
	ldr r4, _080A7300 @ =gUnk_02032F14
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, #0
	bl sub_0801D66C
	ldr r0, _080A7304 @ =gUnk_02001A00
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x40
	bl sub_0801D66C
	ldr r0, _080A7308 @ =gUnk_03000BF0
	adds r1, r4, #0
	subs r1, #0x38
	movs r2, #0x38
	bl sub_0801D66C
	ldr r0, _080A730C @ =gUnk_03000420
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_0801D66C
	ldr r0, _080A7310 @ =gUnk_02033280
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0xc
	bl sub_0801D66C
	bl sub_0805E958
	adds r1, r4, #0
	subs r1, #0x54
	ldr r0, _080A7314 @ =gUnk_030010A0
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r1, #0xd]
	ldr r0, _080A7318 @ =gUnk_03003F80
	adds r0, #0x8b
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	ldr r0, _080A731C @ =gUnk_02017654
	ldr r0, [r0]
	str r0, [r1, #0x10]
	ldr r0, _080A7320 @ =gUnk_02025EB0
	ldr r0, [r0]
	str r0, [r1, #0x14]
	ldr r0, _080A7324 @ =gUnk_0200B650
	ldr r0, [r0]
	str r0, [r1, #0x18]
	movs r0, #1
	strb r0, [r1]
_080A72E4:
	pop {r4, pc}
	.align 2, 0
_080A72E8: .4byte gUnk_03000FD0
_080A72EC: .4byte gUnk_03000F50
_080A72F0: .4byte gUnk_03001020
_080A72F4: .4byte gUnk_020176A0
_080A72F8: .4byte gUnk_02024090
_080A72FC: .4byte gUnk_02024490
_080A7300: .4byte gUnk_02032F14
_080A7304: .4byte gUnk_02001A00
_080A7308: .4byte gUnk_03000BF0
_080A730C: .4byte gUnk_03000420
_080A7310: .4byte gUnk_02033280
_080A7314: .4byte gUnk_030010A0
_080A7318: .4byte gUnk_03003F80
_080A731C: .4byte gUnk_02017654
_080A7320: .4byte gUnk_02025EB0
_080A7324: .4byte gUnk_0200B650

	thumb_func_start sub_080A7328
sub_080A7328: @ 0x080A7328
	push {r4, lr}
	ldr r0, _080A7388 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7384
	bl sub_0805E89C
	ldr r0, _080A738C @ =gUnk_02000080
	movs r1, #0x30
	bl sub_0801D630
	ldr r0, _080A7390 @ =gUnk_03000BF0
	movs r1, #0x38
	bl sub_0801D630
	ldr r0, _080A7394 @ =gUnk_03000420
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0801D630
	ldr r4, _080A7398 @ =gUnk_02033280
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0801D630
	movs r0, #8
	strb r0, [r4, #8]
	movs r0, #1
	bl sub_0801DA90
	bl sub_08056418
	bl sub_080ADD30
	movs r0, #0
	bl sub_0801CFA8
	ldr r0, _080A739C @ =gUnk_02024490
	movs r2, #1
	strb r2, [r0]
	ldr r1, _080A73A0 @ =gUnk_02032EC0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080A73A4 @ =gUnk_030010A0
	adds r0, #0x30
	strb r2, [r0]
_080A7384:
	pop {r4, pc}
	.align 2, 0
_080A7388: .4byte gUnk_03000FD0
_080A738C: .4byte gUnk_02000080
_080A7390: .4byte gUnk_03000BF0
_080A7394: .4byte gUnk_03000420
_080A7398: .4byte gUnk_02033280
_080A739C: .4byte gUnk_02024490
_080A73A0: .4byte gUnk_02032EC0
_080A73A4: .4byte gUnk_030010A0

	thumb_func_start sub_080A73A8
sub_080A73A8: @ 0x080A73A8
	push {r4, r5, lr}
	ldr r0, _080A7468 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A73B4
	b _080A74BC
_080A73B4:
	bl sub_0805E89C
	bl sub_0805E974
	ldr r1, _080A746C @ =gUnk_02017654
	ldr r5, _080A7470 @ =gUnk_02032EC0
	ldr r0, [r5, #0x10]
	str r0, [r1]
	ldr r0, _080A7474 @ =gUnk_03003F80
	ldrb r1, [r5, #0xc]
	adds r0, #0x8b
	strb r1, [r0]
	ldr r1, _080A7478 @ =gUnk_02025EB0
	ldr r0, [r5, #0x14]
	str r0, [r1]
	ldr r1, _080A747C @ =gUnk_0200B650
	ldr r0, [r5, #0x18]
	str r0, [r1]
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7480 @ =gUnk_02033280
	movs r2, #0xc
	bl sub_0801D66C
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7484 @ =gUnk_03000420
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_0801D66C
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7488 @ =gUnk_02001A00
	movs r2, #0x40
	bl sub_0801D66C
	adds r0, r5, #0
	adds r0, #0x54
	ldr r1, _080A748C @ =gUnk_02024490
	movs r2, #0x85
	lsls r2, r2, #2
	bl sub_0801D66C
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r4, _080A7490 @ =gUnk_03000BF0
	adds r1, r4, #0
	movs r2, #0x38
	bl sub_0801D66C
	ldr r0, _080A7494 @ =gUnk_03001020
	ldr r1, _080A7498 @ =gUnk_03000F50
	movs r2, #0x7c
	bl sub_0801D66C
	ldrb r0, [r4, #4]
	bl sub_08052D58
	ldr r4, _080A749C @ =gUnk_02033A90
	strh r0, [r4, #4]
	bl sub_08052E8C
	ldr r1, _080A74A0 @ =0x0000085C
	adds r4, r4, r1
	str r0, [r4]
	ldrb r0, [r5, #6]
	bl sub_080527FC
	ldrb r1, [r5, #0xd]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl sub_0801D000
	bl sub_080A74F4
	ldrh r1, [r5, #8]
	ldr r0, _080A74A4 @ =0x0000FFFF
	cmp r1, r0
	beq _080A74A8
	adds r0, r1, #0
	ldrh r1, [r5, #0xa]
	bl sub_08050054
	b _080A74AE
	.align 2, 0
_080A7468: .4byte gUnk_03000FD0
_080A746C: .4byte gUnk_02017654
_080A7470: .4byte gUnk_02032EC0
_080A7474: .4byte gUnk_03003F80
_080A7478: .4byte gUnk_02025EB0
_080A747C: .4byte gUnk_0200B650
_080A7480: .4byte gUnk_02033280
_080A7484: .4byte gUnk_03000420
_080A7488: .4byte gUnk_02001A00
_080A748C: .4byte gUnk_02024490
_080A7490: .4byte gUnk_03000BF0
_080A7494: .4byte gUnk_03001020
_080A7498: .4byte gUnk_03000F50
_080A749C: .4byte gUnk_02033A90
_080A74A0: .4byte 0x0000085C
_080A74A4: .4byte 0x0000FFFF
_080A74A8:
	ldrh r0, [r5, #0xa]
	bl sub_080500F4
_080A74AE:
	ldr r1, _080A74C0 @ =gUnk_02032EC0
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080A74C4 @ =gUnk_030010A0
	adds r0, #0x30
	strb r2, [r0]
_080A74BC:
	pop {r4, r5, pc}
	.align 2, 0
_080A74C0: .4byte gUnk_02032EC0
_080A74C4: .4byte gUnk_030010A0

	thumb_func_start sub_080A74C8
sub_080A74C8: @ 0x080A74C8
	push {lr}
	bl sub_080A74F4
	ldr r0, _080A74E8 @ =gUnk_03000FD0
	ldrb r3, [r0]
	cmp r3, #0
	bne _080A74E6
	ldr r0, _080A74EC @ =gUnk_03001000
	ldr r1, _080A74F0 @ =gUnk_02032EC0
	ldrb r2, [r1, #7]
	strb r2, [r0, #4]
	strb r3, [r1]
	strb r3, [r1, #2]
	bl sub_0805E5B4
_080A74E6:
	pop {pc}
	.align 2, 0
_080A74E8: .4byte gUnk_03000FD0
_080A74EC: .4byte gUnk_03001000
_080A74F0: .4byte gUnk_02032EC0

	thumb_func_start sub_080A74F4
sub_080A74F4: @ 0x080A74F4
	push {lr}
	bl sub_0805E5A8
	ldr r1, _080A7524 @ =gUnk_03001000
	movs r0, #0
	strb r0, [r1, #0xb]
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_0805E5F8
	bl sub_0801C344
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_080AD918
	pop {pc}
	.align 2, 0
_080A7524: .4byte gUnk_03001000

	thumb_func_start sub_080A7528
sub_080A7528: @ 0x080A7528
	push {lr}
	ldr r1, _080A753C @ =gUnk_08129030
	ldr r0, _080A7540 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A753C: .4byte gUnk_08129030
_080A7540: .4byte gUnk_02032EC0

	thumb_func_start sub_080A7544
sub_080A7544: @ 0x080A7544
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A7584 @ =gUnk_0812905C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A7582
	ldr r1, _080A7588 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	ldrb r2, [r1, #1]
	adds r0, r0, r2
	strb r0, [r1, #1]
_080A7582:
	pop {r4, pc}
	.align 2, 0
_080A7584: .4byte gUnk_0812905C
_080A7588: .4byte gLinkEntity

	thumb_func_start sub_080A758C
sub_080A758C: @ 0x080A758C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A75AC
	ldr r1, _080A7654 @ =gUnk_03003F80
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _080A75AC
	ldrb r1, [r1, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A75AC
	bl sub_0805E780
_080A75AC:
	adds r0, r5, #0
	bl sub_0806FBD8
	cmp r0, #0
	bne _080A75BA
	bl sub_0805E780
_080A75BA:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	ldr r1, _080A7658 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r5, #0
	adds r3, #0x3c
	movs r4, #0
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r1, [r5, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	adds r0, #0x41
	strb r4, [r0]
	subs r0, #4
	strb r4, [r0]
	adds r0, #5
	strb r4, [r0]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	adds r0, r5, #0
	bl sub_0801766C
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A76BC
	ldr r2, _080A7654 @ =gUnk_03003F80
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A767A
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A765C
	cmp r0, #6
	bne _080A7664
	subs r1, #4
	movs r0, #0x1a
	b _080A766A
	.align 2, 0
_080A7654: .4byte gUnk_03003F80
_080A7658: .4byte gLinkEntity
_080A765C:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x18
	b _080A766A
_080A7664:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x19
_080A766A:
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080A7824
	b _080A7692
_080A767A:
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080A76CC
_080A7692:
	ldr r0, _080A76B0 @ =gUnk_03003F80
	str r5, [r0, #0x2c]
	adds r0, r5, #0
	bl sub_08079BD8
	ldr r4, _080A76B4 @ =gUnk_0812906C
	ldr r0, _080A76B8 @ =gUnk_08129068
	bl sub_080028F4
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_080A3268
	b _080A76C2
	.align 2, 0
_080A76B0: .4byte gUnk_03003F80
_080A76B4: .4byte gUnk_0812906C
_080A76B8: .4byte gUnk_08129068
_080A76BC:
	adds r0, r5, #0
	bl sub_080A76CC
_080A76C2:
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_080A3268
	pop {r4, r5, pc}

	thumb_func_start sub_080A76CC
sub_080A76CC: @ 0x080A76CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A76D8
	b _080A77DC
_080A76D8:
	ldr r5, _080A771C @ =gUnk_03003F80
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A76E4
	bl sub_0805E780
_080A76E4:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080A76F2
	str r0, [r5, #0x2c]
	strb r0, [r5, #0x1b]
	bl sub_0805E780
_080A76F2:
	ldrb r2, [r5, #0x1b]
	cmp r2, #0
	beq _080A7744
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080A7728
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A7720
	cmp r0, #6
	bne _080A7724
	movs r0, #0xa
	b _080A7726
	.align 2, 0
_080A771C: .4byte gUnk_03003F80
_080A7720:
	movs r0, #8
	b _080A7726
_080A7724:
	movs r0, #9
_080A7726:
	strb r0, [r1]
_080A7728:
	ldr r0, _080A7740 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_080A3268
	b _080A77C4
	.align 2, 0
_080A7740: .4byte gLinkEntity
_080A7744:
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A776A
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A7762
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xc
	b _080A7768
_080A7762:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xb
_080A7768:
	strb r0, [r1]
_080A776A:
	ldr r0, _080A77D0 @ =gUnk_03003F80
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #3
	ands r2, r0
	cmp r2, #0
	beq _080A77C4
	ldr r0, _080A77D4 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r1, #0x12
	cmp r2, #1
	bne _080A778E
	movs r1, #0x14
_080A778E:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _080A77C4
	ldrb r1, [r4, #0x1e]
	lsls r1, r1, #1
	ldr r0, _080A77D8 @ =gUnk_081292E2
	adds r1, r1, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r3, [r4, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A77BE
	rsbs r1, r1, #0
_080A77BE:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_080A77C4:
	ldr r1, _080A77D4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080A78B8
	b _080A7806
	.align 2, 0
_080A77D0: .4byte gUnk_03003F80
_080A77D4: .4byte gLinkEntity
_080A77D8: .4byte gUnk_081292E2
_080A77DC:
	ldr r1, _080A7810 @ =gUnk_03003F80
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080A7814
	ldr r0, [r1, #0x2c]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A7814
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080A7A54
_080A7806:
	adds r0, r4, #0
	bl sub_080A7A84
	b _080A7820
	.align 2, 0
_080A7810: .4byte gUnk_03003F80
_080A7814:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080A7820:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7824
sub_080A7824: @ 0x080A7824
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A7860 @ =gUnk_03003F80
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A7834
	bl sub_0805E780
_080A7834:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _080A78AE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080A7846
	str r0, [r5, #0x2c]
	bl sub_0805E780
_080A7846:
	ldr r2, _080A7864 @ =gLinkEntity
	adds r6, r2, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7868
	movs r0, #0
	str r0, [r5, #0x2c]
	bl sub_0805E780
	b _080A78B4
	.align 2, 0
_080A7860: .4byte gUnk_03003F80
_080A7864: .4byte gLinkEntity
_080A7868:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A78B8
	ldrb r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A7880
	movs r0, #0x77
	bl sub_080A3268
_080A7880:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x8a
	bls _080A788A
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A788A:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A78A4
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_080A7B98
	b _080A78B4
_080A78A4:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _080A78B4
_080A78AE:
	str r0, [r5, #0x2c]
	bl sub_0805E780
_080A78B4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A78B8
sub_080A78B8: @ 0x080A78B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _080A78E8 @ =gUnk_03003F80
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A78FC
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	strb r0, [r4, #0x1e]
	ldr r0, _080A78EC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A78F0
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #0xb1
	b _080A78F2
	.align 2, 0
_080A78E8: .4byte gUnk_03003F80
_080A78EC: .4byte gUnk_030010A0
_080A78F0:
	ldrb r1, [r4, #0x1e]
_080A78F2:
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A7912
_080A78FC:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _080A7912
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A7912:
	ldr r2, _080A792C @ =gUnk_03003F80
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080A7930
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080A7958
	.align 2, 0
_080A792C: .4byte gUnk_03003F80
_080A7930:
	ldrb r1, [r6, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7946
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	movs r0, #1
	eors r2, r0
	b _080A794C
_080A7946:
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
_080A794C:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_080A7958:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov r8, r2
	adds r5, r4, #0
	adds r5, #0x3d
	cmp r0, #0
	beq _080A7A1C
	adds r3, r6, #0
	adds r3, #0x3d
	ldrb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7980
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A79AE
_080A7980:
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r0, [r2]
	movs r1, #0
	strb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r0, [r5]
	adds r3, r6, #0
	adds r3, #0x3e
	strb r0, [r3]
	movs r3, #0x42
	adds r3, r3, r4
	mov ip, r3
	ldrb r0, [r3]
	adds r3, r6, #0
	adds r3, #0x42
	strb r0, [r3]
	mov r0, ip
	strb r1, [r0]
	strb r1, [r5]
	strb r1, [r2]
	adds r5, r2, #0
_080A79AE:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A79C4
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A79C4:
	ldrb r0, [r7, #0x1b]
	cmp r0, #0
	beq _080A7A1C
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x43
	beq _080A79E6
	cmp r1, #0x43
	bgt _080A79E0
	cmp r1, #0xd
	beq _080A79E6
	b _080A7A08
_080A79E0:
	cmp r1, #0x44
	bne _080A7A08
	b _080A7A1C
_080A79E6:
	ldrb r1, [r7, #0x1b]
	movs r0, #8
	orrs r0, r1
	strb r0, [r7, #0x1b]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r7, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A7A1C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A7A08:
	ldrb r0, [r7, #0x1b]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _080A7A1C
	strb r1, [r7, #0x1b]
	strb r1, [r7, #4]
	str r1, [r7, #0x2c]
	bl sub_0805E780
_080A7A1C:
	adds r1, r5, #0
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _080A7A36
	cmp r2, #0
	ble _080A7A32
	subs r0, #1
	strb r0, [r1]
	b _080A7A36
_080A7A32:
	adds r0, #1
	strb r0, [r5]
_080A7A36:
	adds r0, r4, #0
	bl sub_080A7A54
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7A4C
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A7A4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A7A54
sub_080A7A54: @ 0x080A7A54
	ldr r1, _080A7A7C @ =gLinkEntity
	ldrb r1, [r1, #0x1e]
	subs r1, #0x6a
	lsls r1, r1, #2
	ldr r2, _080A7A80 @ =gUnk_08129096
	adds r1, r1, r2
	ldr r3, [r0, #0x48]
	ldrb r2, [r1]
	strb r2, [r3]
	ldr r3, [r0, #0x48]
	ldrb r2, [r1, #1]
	strb r2, [r3, #1]
	ldr r3, [r0, #0x48]
	ldrb r2, [r1, #2]
	strb r2, [r3, #6]
	ldr r2, [r0, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_080A7A7C: .4byte gLinkEntity
_080A7A80: .4byte gUnk_08129096

	thumb_func_start sub_080A7A84
sub_080A7A84: @ 0x080A7A84
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _080A7AE0 @ =gLinkEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080A7B8C
	ldr r2, _080A7AE4 @ =gUnk_08129072
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r2, _080A7AE8 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1b]
	movs r0, #0xc0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080A7AC4
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7AC4
	rsbs r3, r3, #0
_080A7AC4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A7AEC
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r2, r2, r3
	movs r1, #0x32
	ldrsh r3, [r4, r1]
	adds r3, r3, r5
	adds r0, r4, #0
	movs r1, #0
	bl sub_08008796
	b _080A7B8C
	.align 2, 0
_080A7AE0: .4byte gLinkEntity
_080A7AE4: .4byte gUnk_08129072
_080A7AE8: .4byte gUnk_03003F80
_080A7AEC:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _080A7B8C
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r6, r3, #0
	adds r2, r2, r6
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r3, r3, r5
	adds r0, r4, #0
	bl sub_08008796
	cmp r0, #0
	bne _080A7B8C
	ldrb r2, [r7, #0x1b]
	cmp r2, #0
	beq _080A7B8C
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _080A7B8C
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080002B4
	cmp r0, #0x2e
	bne _080A7B4C
	ldr r0, _080A7B44 @ =gLinkEntity
	ldr r1, _080A7B48 @ =0x00000119
	bl sub_0800449C
	b _080A7B54
	.align 2, 0
_080A7B44: .4byte gLinkEntity
_080A7B48: .4byte 0x00000119
_080A7B4C:
	ldr r0, _080A7B90 @ =gLinkEntity
	movs r1, #0x74
	bl sub_0800449C
_080A7B54:
	movs r0, #0xf
	movs r1, #0x1a
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7B8C
	ldr r1, _080A7B94 @ =gUnk_0812908E
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x34]
	str r0, [r2, #0x34]
_080A7B8C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7B90: .4byte gLinkEntity
_080A7B94: .4byte gUnk_0812908E

	thumb_func_start sub_080A7B98
sub_080A7B98: @ 0x080A7B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _080A7BFC @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov sl, r0
	movs r7, #0x10
	rsbs r7, r7, #0
	movs r0, #0
_080A7BBE:
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #0
	movs r1, #0x10
	adds r1, r1, r7
	mov sb, r1
	adds r0, #1
	mov r8, r0
_080A7BCE:
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r2, r2, r5
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r3, r3, r7
	adds r0, r6, #0
	mov r1, sl
	bl sub_08008796
	adds r5, #0x10
	adds r4, #1
	cmp r4, #2
	bls _080A7BCE
	mov r7, sb
	mov r0, r8
	cmp r0, #2
	bls _080A7BBE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7BFC: .4byte gUnk_03003F80

	thumb_func_start sub_080A7C00
sub_080A7C00: @ 0x080A7C00
	push {r4, lr}
	bl sub_080A7C38
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7C16
	ldrb r1, [r4, #0xa]
	movs r2, #0
	bl sub_080A276C
	str r0, [r4, #0x50]
_080A7C16:
	pop {r4, pc}

	thumb_func_start sub_080A7C18
sub_080A7C18: @ 0x080A7C18
	push {lr}
	bl sub_080A7C38
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7C32
	ldr r0, _080A7C34 @ =gLinkEntity
	str r0, [r2, #0x50]
	ldrb r1, [r2, #0xa]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08078AF0
_080A7C32:
	pop {pc}
	.align 2, 0
_080A7C34: .4byte gLinkEntity

	thumb_func_start sub_080A7C38
sub_080A7C38: @ 0x080A7C38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, #0x3f
	bne _080A7C52
	ldr r0, _080A7C78 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A7C52
	movs r5, #0x57
	movs r6, #0
_080A7C52:
	bl sub_0805E744
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7C72
	strb r5, [r4, #0xa]
	strb r6, [r4, #0xb]
	strb r7, [r4, #0xe]
	movs r0, #0xb
	strb r0, [r4, #9]
	movs r0, #6
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EA2C
_080A7C72:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7C78: .4byte gUnk_02002A40

	thumb_func_start sub_080A7C7C
sub_080A7C7C: @ 0x080A7C7C
	push {lr}
	ldr r0, _080A7C88 @ =gUnk_02017660
	movs r1, #0x40
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_080A7C88: .4byte gUnk_02017660

	thumb_func_start sub_080A7C8C
sub_080A7C8C: @ 0x080A7C8C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080A7C9C @ =gUnk_02017660
	movs r2, #0
	movs r1, #0
	b _080A7CA8
	.align 2, 0
_080A7C9C: .4byte gUnk_02017660
_080A7CA0:
	adds r1, #1
	adds r4, #8
	cmp r1, #7
	bhi _080A7CB0
_080A7CA8:
	ldrh r0, [r4, #4]
	cmp r0, r5
	bne _080A7CA0
	movs r2, #1
_080A7CB0:
	lsrs r1, r6, #1
	ldrb r0, [r4, #6]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _080A7CF4
	cmp r2, #0
	beq _080A7CD2
	ldrb r0, [r4, #1]
	bl sub_0807CCB4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	movs r2, #0
	bl sub_080A7C00
	b _080A7CDC
_080A7CD2:
	movs r0, #0x60
	movs r1, #0
	movs r2, #0
	bl sub_080A7C00
_080A7CDC:
	movs r0, #0x74
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0807B7D8
	movs r0, #0
	movs r1, #0x78
	bl sub_0805E4E0
	ldr r0, _080A7CF8 @ =0x0000011B
	bl sub_080A3268
_080A7CF4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A7CF8: .4byte 0x0000011B

	thumb_func_start sub_080A7CFC
sub_080A7CFC: @ 0x080A7CFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #3
	movs r6, #0
	movs r0, #3
	bl sub_0804B128
	adds r1, r0, #0
	cmp r1, #0
	beq _080A7D38
_080A7D12:
	ldrh r0, [r1, #4]
	cmp r0, r5
	bne _080A7D30
	ldrb r0, [r1]
	cmp r0, #5
	beq _080A7D24
	cmp r0, #6
	beq _080A7D2A
	b _080A7D38
_080A7D24:
	movs r6, #0
	ldrh r4, [r1, #6]
	b _080A7D38
_080A7D2A:
	movs r6, #1
	ldrh r4, [r1, #6]
	b _080A7D38
_080A7D30:
	adds r1, #8
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080A7D12
_080A7D38:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080A7D44
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A7D44
sub_080A7D44: @ 0x080A7D44
	push {lr}
	cmp r1, #0
	beq _080A7D52
	movs r1, #0
	bl sub_08078AA8
	b _080A7D56
_080A7D52:
	bl sub_08056378
_080A7D56:
	pop {pc}

	thumb_func_start sub_080A7D58
sub_080A7D58: @ 0x080A7D58
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #4
	ldr r1, _080A7D78 @ =gUnk_0813210C
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _080A7D7C @ =0x0000FFFF
	cmp r1, r0
	bne _080A7D74
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #4
	ldr r1, [r2, #4]
	adds r2, r1, r0
_080A7D74:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_080A7D78: .4byte gUnk_0813210C
_080A7D7C: .4byte 0x0000FFFF

	thumb_func_start sub_080A7D80
sub_080A7D80: @ 0x080A7D80
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A7E4A
	adds r0, r4, #0
	bl sub_080A7D58
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080A7E50
	cmp r0, #0
	bne _080A7DA6
	movs r0, #0
	b _080A7E4C
_080A7DA6:
	ldrb r1, [r4, #0x10]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r4, #0x10]
	ldrb r1, [r5, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A7DC0
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #0x10]
_080A7DC0:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x12]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bne _080A7DE0
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A7DE0:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1a
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #0xa]
	lsrs r1, r1, #6
	lsls r1, r1, #4
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080A7E14
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
_080A7E14:
	ldrb r0, [r5, #9]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	movs r1, #7
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldrb r0, [r5, #0xf]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xe]
	adds r1, #4
	strb r0, [r1]
	ldrb r1, [r5, #0xb]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_08016A04
_080A7E4A:
	movs r0, #1
_080A7E4C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7E50
sub_080A7E50: @ 0x080A7E50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	cmp r1, #0
	beq _080A7EA2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080A7E78
	ldr r0, _080A7E74 @ =0x000003FF
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	b _080A7EA2
	.align 2, 0
_080A7E74: .4byte 0x000003FF
_080A7E78:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080A7E92
	lsrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _080A7E9A
_080A7E92:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_080ADF80
_080A7E9A:
	cmp r0, #0
	bne _080A7EA2
	movs r0, #0
	b _080A7EAC
_080A7EA2:
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl sub_0801D040
	movs r0, #1
_080A7EAC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7EB0
sub_080A7EB0: @ 0x080A7EB0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _080A7ED8 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	ldrh r1, [r2, #0x1e]
	cmp r0, r1
	bhi _080A7ED2
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	ldrh r2, [r2, #0x20]
	cmp r0, r2
	bls _080A7EDC
_080A7ED2:
	movs r0, #1
	b _080A7EDE
	.align 2, 0
_080A7ED8: .4byte gUnk_03000BF0
_080A7EDC:
	movs r0, #0
_080A7EDE:
	pop {pc}

	thumb_func_start sub_080A7EE0
sub_080A7EE0: @ 0x080A7EE0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetEmptyEntity
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7EFC
	movs r0, #4
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	adds r0, r4, #0
	movs r1, #5
	bl sub_0805EA2C
_080A7EFC:
	adds r0, r4, #0
	pop {r4, r5, pc}

	thumb_func_start sub_080A7F00
sub_080A7F00: @ 0x080A7F00
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A7F26
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A7F80
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A7F26
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x14]
	adds r1, #0x18
	adds r0, r4, #0
	bl sub_080042AC
_080A7F26:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080A7F34
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7F38
_080A7F34:
	bl sub_0805E780
_080A7F38:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7F56
	ldr r1, [r4, #0x4c]
	ldr r0, _080A7F7C @ =gLinkEntity
	cmp r1, r0
	bne _080A7F56
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xd3
	strb r0, [r1]
_080A7F56:
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	adds r0, r4, #0
	bl sub_080A7F9C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A7F7A
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080042B8
_080A7F7A:
	pop {r4, pc}
	.align 2, 0
_080A7F7C: .4byte gLinkEntity

	thumb_func_start sub_080A7F80
sub_080A7F80: @ 0x080A7F80
	ldr r3, _080A7F98 @ =gUnk_081293B8
	ldr r2, [r0, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldrb r2, [r2, #0xa]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r0, #0x3f
	strb r1, [r0]
	bx lr
	.align 2, 0
_080A7F98: .4byte gUnk_081293B8

	thumb_func_start sub_080A7F9C
sub_080A7F9C: @ 0x080A7F9C
	push {lr}
	ldr r2, _080A7FB0 @ =gUnk_081293CC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A7FB0: .4byte gUnk_081293CC

	thumb_func_start sub_080A7FB4
sub_080A7FB4: @ 0x080A7FB4
	ldr r1, [r0, #0x50]
	ldr r3, _080A7FD4 @ =gUnk_081293E0
	ldrb r2, [r1, #0x14]
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r1, #0x5a
	ldrb r3, [r1]
	movs r1, #0xf
	ands r1, r3
	ldr r2, [r2]
	lsls r1, r1, #2
	adds r1, r1, r2
	subs r1, #4
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A7FD4: .4byte gUnk_081293E0

	thumb_func_start sub_080A7FD8
sub_080A7FD8: @ 0x080A7FD8
	ldr r1, [r0, #0x50]
	ldr r2, _080A7FE8 @ =gUnk_081293F0
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A7FE8: .4byte gUnk_081293F0

	thumb_func_start sub_080A7FEC
sub_080A7FEC: @ 0x080A7FEC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x50]
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A8008
	ldr r0, _080A8004 @ =gUnk_08129410
	b _080A800A
	.align 2, 0
_080A8004: .4byte gUnk_08129410
_080A8008:
	ldr r0, _080A8018 @ =gUnk_08129400
_080A800A:
	ldrb r1, [r2, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x48]
	pop {pc}
	.align 2, 0
_080A8018: .4byte gUnk_08129400

	thumb_func_start sub_080A801C
sub_080A801C: @ 0x080A801C
	ldr r1, [r0, #0x50]
	ldr r2, _080A802C @ =gUnk_08129420
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A802C: .4byte gUnk_08129420

	thumb_func_start sub_080A8030
sub_080A8030: @ 0x080A8030
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8048 @ =gUnk_081295D0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8048: .4byte gUnk_081295D0

	thumb_func_start sub_080A804C
sub_080A804C: @ 0x080A804C
	push {lr}
	ldr r2, _080A8060 @ =gUnk_081295E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A8060: .4byte gUnk_081295E4

	thumb_func_start sub_080A8064
sub_080A8064: @ 0x080A8064
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A8078
	adds r0, r1, #0
	bl sub_0805E7BC
	b _080A8086
_080A8078:
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r0, r1, #0
	bl sub_080A8178
_080A8086:
	pop {pc}

	thumb_func_start sub_080A8088
sub_080A8088: @ 0x080A8088
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x30
	strb r1, [r0, #0xe]
	movs r1, #0xa0
	lsls r1, r1, #8
	str r1, [r0, #0x20]
	movs r1, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_080A80A0
sub_080A80A0: @ 0x080A80A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A80DC
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A80C4
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A80F0
_080A80C4:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A80F0
	movs r0, #3
	strb r0, [r4, #0xc]
	b _080A80F0
_080A80DC:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_080A8178
	adds r0, r4, #0
	bl sub_08016AD2
_080A80F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A80F4
sub_080A80F4: @ 0x080A80F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A8116
	adds r0, r4, #0
	bl sub_0805E7BC
_080A8116:
	pop {r4, pc}

	thumb_func_start sub_080A8118
sub_080A8118: @ 0x080A8118
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _080A813A
	cmp r0, #1
	beq _080A8142
	b _080A815A
_080A813A:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8176
_080A8142:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080A8176
_080A815A:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8176
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A8176:
	pop {r4, pc}

	thumb_func_start sub_080A8178
sub_080A8178: @ 0x080A8178
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x40
	strh r1, [r0, #0x24]
	movs r1, #0xa0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_080A8190
sub_080A8190: @ 0x080A8190
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A81A8 @ =gUnk_0812960C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A81A8: .4byte gUnk_0812960C

	thumb_func_start sub_080A81AC
sub_080A81AC: @ 0x080A81AC
	push {lr}
	ldr r2, _080A81C0 @ =gUnk_08129620
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A81C0: .4byte gUnk_08129620

	thumb_func_start sub_080A81C4
sub_080A81C4: @ 0x080A81C4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A81D8
	adds r0, r1, #0
	bl sub_0805E7BC
	b _080A81DE
_080A81D8:
	adds r0, r1, #0
	bl sub_080A82D8
_080A81DE:
	pop {pc}

	thumb_func_start sub_080A81E0
sub_080A81E0: @ 0x080A81E0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	ldr r1, _080A81F8 @ =0x0000FFFE
	strh r1, [r0, #0x36]
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0
_080A81F8: .4byte 0x0000FFFE

	thumb_func_start sub_080A81FC
sub_080A81FC: @ 0x080A81FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A8240
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8222
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8246
_080A8222:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8246
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _080A8246
_080A8240:
	adds r0, r4, #0
	bl sub_080A82D8
_080A8246:
	pop {r4, pc}

	thumb_func_start sub_080A8248
sub_080A8248: @ 0x080A8248
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A827A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xe0
	strh r0, [r4, #0x24]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
_080A827A:
	pop {r4, pc}

	thumb_func_start sub_080A827C
sub_080A827C: @ 0x080A827C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _080A82B2
	adds r0, r4, #0
	bl sub_0805E7BC
_080A82B2:
	pop {r4, pc}

	thumb_func_start sub_080A82B4
sub_080A82B4: @ 0x080A82B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A82D6
	adds r0, r4, #0
	bl sub_0805E7BC
_080A82D6:
	pop {r4, pc}

	thumb_func_start sub_080A82D8
sub_080A82D8: @ 0x080A82D8
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r1, #0x80
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_080A82F8
sub_080A82F8: @ 0x080A82F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8310 @ =gUnk_08129650
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8310: .4byte gUnk_08129650

	thumb_func_start sub_080A8314
sub_080A8314: @ 0x080A8314
	push {lr}
	ldr r2, _080A8328 @ =gUnk_08129664
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A8328: .4byte gUnk_08129664

	thumb_func_start sub_080A832C
sub_080A832C: @ 0x080A832C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x41
	ldrb r0, [r2]
	cmp r0, #0x80
	bne _080A8358
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xc
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r3, #0x50]
	ldrb r1, [r2]
	adds r0, #0x41
	strb r1, [r0]
_080A8358:
	adds r0, r3, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A836A
	ldr r0, [r3, #0x50]
	b _080A836E
_080A836A:
	ldr r0, [r3, #0x50]
	rsbs r1, r1, #0
_080A836E:
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	movs r1, #0x42
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	adds r0, #0x42
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, #0x46
	movs r2, #0
	strh r1, [r0]
	ldr r0, [r3, #0x50]
	adds r1, r3, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	adds r0, #0x3e
	strb r1, [r0]
	mov r0, ip
	strb r2, [r0]
	pop {pc}

	thumb_func_start sub_080A83A0
sub_080A83A0: @ 0x080A83A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBD8
	cmp r0, #0
	beq _080A83B0
	movs r0, #1
	strb r0, [r4, #0xc]
_080A83B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A83B4
sub_080A83B4: @ 0x080A83B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A83C2
	bl sub_0805E780
_080A83C2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A83CC
	bl sub_0805E780
_080A83CC:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	ldr r1, _080A8424 @ =gUnk_0812966C
	adds r2, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _080A83F4
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A83F4:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	adds r2, #1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #7]
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8428
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8438
	movs r0, #0x7f
	ands r0, r1
	b _080A8436
	.align 2, 0
_080A8424: .4byte gUnk_0812966C
_080A8428:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8438
	movs r0, #0x80
	orrs r0, r1
_080A8436:
	strb r0, [r4, #0x10]
_080A8438:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A843C
sub_080A843C: @ 0x080A843C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8454 @ =gUnk_081296F0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8454: .4byte gUnk_081296F0

	thumb_func_start sub_080A8458
sub_080A8458: @ 0x080A8458
	push {lr}
	ldr r2, _080A846C @ =gUnk_08129704
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A846C: .4byte gUnk_08129704

	thumb_func_start sub_080A8470
sub_080A8470: @ 0x080A8470
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r0, [r2]
	cmp r0, #0x80
	bne _080A8496
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x68
	bne _080A848E
	movs r0, #0x86
	bl sub_08004488
_080A848E:
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A84C6
_080A8496:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r2]
	adds r0, #0x7e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A84B8
	adds r0, r4, #0
	bl sub_080A8680
	b _080A84C6
_080A84B8:
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A86A0
_080A84C6:
	pop {r4, pc}

	thumb_func_start sub_080A84C8
sub_080A84C8: @ 0x080A84C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r4, #0x36]
	movs r0, #0x15
	bl GetProgressFlag
	cmp r0, #0
	bne _080A84F0
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x68
	strb r0, [r1]
_080A84F0:
	ldr r0, _080A8500 @ =0x0000018D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_080A8500: .4byte 0x0000018D

	thumb_func_start sub_080A8504
sub_080A8504: @ 0x080A8504
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A853C
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8524
	bl sub_0805E780
_080A8524:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8558
	movs r0, #4
	strb r0, [r4, #0xc]
	b _080A8558
_080A853C:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08016AD2
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A86A0
_080A8558:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A85B6
	ldr r5, [r4, #0x50]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080A85B6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080A85B6
	adds r0, r4, #0
	adds r0, #0x3d
	movs r3, #0
	movs r2, #0x10
	strb r2, [r0]
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x80
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0xc
	strb r1, [r0]
	adds r0, #4
	strh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r2, [r0]
	ldrb r0, [r4, #0x15]
	adds r2, r5, #0
	adds r2, #0x3e
	strb r0, [r2]
	adds r2, #3
	movs r0, #0xc2
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, #4
	strh r3, [r0]
_080A85B6:
	pop {r4, r5, pc}

	thumb_func_start sub_080A85B8
sub_080A85B8: @ 0x080A85B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A85F2
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A85D8
	bl sub_0805E780
_080A85D8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A860E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _080A860E
_080A85F2:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08016AD2
	adds r0, r4, #0
	movs r1, #0x19
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080A86A0
_080A860E:
	pop {r4, pc}

	thumb_func_start sub_080A8610
sub_080A8610: @ 0x080A8610
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8628
	bl sub_0805E780
_080A8628:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A862C
sub_080A862C: @ 0x080A862C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _080A864E
	cmp r0, #1
	beq _080A8654
	b _080A8662
_080A864E:
	bl sub_0805E780
	b _080A867E
_080A8654:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_080A8662:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A867E
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A867E:
	pop {r4, pc}

	thumb_func_start sub_080A8680
sub_080A8680: @ 0x080A8680
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #3
	strb r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #0xf]
	movs r0, #0x8c
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_080A86A0
sub_080A86A0: @ 0x080A86A0
	push {lr}
	movs r3, #0
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	strh r3, [r0, #0x24]
	movs r0, #0xc7
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_080A86BC
sub_080A86BC: @ 0x080A86BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A86D4 @ =gUnk_08129718
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A86D4: .4byte gUnk_08129718

	thumb_func_start sub_080A86D8
sub_080A86D8: @ 0x080A86D8
	push {lr}
	ldr r2, _080A86EC @ =gUnk_0812972C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A86EC: .4byte gUnk_0812972C

	thumb_func_start sub_080A86F0
sub_080A86F0: @ 0x080A86F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	bne _080A8700
	bl sub_0805E780
	b _080A876E
_080A8700:
	adds r5, r1, #0
	adds r5, #0x83
	ldrb r1, [r5]
	movs r3, #0x3f
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #3
	bne _080A8768
	ldr r0, _080A875C @ =gUnk_03003F80
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _080A876E
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A8760 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A8764 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0
	bne _080A876E
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A876E
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	bl sub_0805E780
	b _080A876E
	.align 2, 0
_080A875C: .4byte gUnk_03003F80
_080A8760: .4byte gUnk_03000BF0
_080A8764: .4byte gLinkEntity
_080A8768:
	adds r0, r4, #0
	bl sub_0805E7BC
_080A876E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080A8770
sub_080A8770: @ 0x080A8770
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x3c
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _080A8788 @ =gUnk_08129734
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A8788: .4byte gUnk_08129734

	thumb_func_start sub_080A878C
sub_080A878C: @ 0x080A878C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	bne _080A879A
	bl sub_0805E780
_080A879A:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A87A4
	bl sub_0805E780
_080A87A4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #3
	beq _080A87B6
	bl sub_0805E780
_080A87B6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	ldrh r0, [r5, #0x36]
	adds r0, #2
	strh r0, [r5, #0x36]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A87C8
sub_080A87C8: @ 0x080A87C8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A87E0 @ =gUnk_08129740
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A87E0: .4byte gUnk_08129740

	thumb_func_start sub_080A87E4
sub_080A87E4: @ 0x080A87E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080A8804
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080A87F8
	bl sub_0805E780
_080A87F8:
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A8804
	bl sub_0805E780
_080A8804:
	ldr r0, _080A8818 @ =gUnk_08129754
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8818: .4byte gUnk_08129754

	thumb_func_start sub_080A881C
sub_080A881C: @ 0x080A881C
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x46
	movs r0, #0
	strh r0, [r2]
	ldrb r2, [r1, #0xa]
	cmp r2, #0
	bne _080A8854
	ldr r0, [r1, #0x50]
	str r2, [r0, #0x54]
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A884A
	ldr r0, _080A8850 @ =gUnk_03003F80
	movs r1, #0xf0
	strb r1, [r0, #0xf]
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_080526A0
_080A884A:
	bl sub_0805E780
	b _080A8866
	.align 2, 0
_080A8850: .4byte gUnk_03003F80
_080A8854:
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bhi _080A8866
	movs r0, #2
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x50]
	adds r0, #0x83
	movs r1, #0xc0
	strb r1, [r0]
_080A8866:
	pop {pc}

	thumb_func_start sub_080A8868
sub_080A8868: @ 0x080A8868
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	strb r4, [r3, #0xd]
	ldrb r1, [r3, #0x18]
	subs r0, #0x32
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x20]
	ldr r0, _080A88A4 @ =gUnk_08129764
	str r0, [r3, #0x48]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _080A88B8
	cmp r0, #1
	bgt _080A88A8
	cmp r0, #0
	beq _080A88AE
	b _080A88C6
	.align 2, 0
_080A88A4: .4byte gUnk_08129764
_080A88A8:
	cmp r0, #2
	beq _080A88BE
	b _080A88C6
_080A88AE:
	adds r0, r3, #0
	movs r1, #0
	bl sub_08004260
	b _080A88C6
_080A88B8:
	strb r4, [r3, #0xe]
	strb r4, [r3, #0xf]
	b _080A88C6
_080A88BE:
	adds r0, r3, #0
	movs r1, #5
	bl sub_08004260
_080A88C6:
	pop {r4, pc}

	thumb_func_start sub_080A88C8
sub_080A88C8: @ 0x080A88C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	cmp r6, #0
	bne _080A88D6
	movs r0, #2
	strb r0, [r4, #0xc]
_080A88D6:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080A88E0
	movs r0, #2
	strb r0, [r4, #0xc]
_080A88E0:
	ldr r3, _080A88FC @ =0xFFFF0000
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080A890E
	cmp r5, #1
	bgt _080A8900
	cmp r5, #0
	beq _080A8906
	b _080A8982
	.align 2, 0
_080A88FC: .4byte 0xFFFF0000
_080A8900:
	cmp r5, #2
	beq _080A8962
	b _080A8982
_080A8906:
	ldrh r0, [r4, #0x36]
	adds r0, #0x10
	strh r0, [r4, #0x36]
	b _080A8982
_080A890E:
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x54]
	bl sub_08078954
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080A8982
	ldr r2, [r4, #0x54]
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _080A8982
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _080A8946
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
_080A8946:
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0xf]
	cmp r1, #0x1f
	bhi _080A8982
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _080A8982
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	strb r3, [r4, #0xc]
	b _080A8982
_080A8962:
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r1, _080A8984 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xe
	movs r3, #0xe
	bl sub_080041A0
	cmp r0, #0
	beq _080A8982
	strb r5, [r4, #0xc]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
_080A8982:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A8984: .4byte gLinkEntity

	thumb_func_start sub_080A8988
sub_080A8988: @ 0x080A8988
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _080A89B4
	ldr r4, [r5, #0x54]
	cmp r4, #0
	bne _080A899C
	bl sub_0805E780
_080A899C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A89A6
	bl sub_0805E780
_080A89A6:
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
_080A89B4:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #1
	bne _080A8A44
	adds r0, r5, #0
	bl sub_080043E8
	cmp r0, #0
	beq _080A8A00
	cmp r0, #2
	beq _080A89E0
	cmp r0, #2
	bhi _080A89DA
	cmp r0, #1
	beq _080A89E6
	b _080A89FC
_080A89DA:
	cmp r0, #3
	beq _080A89F2
	b _080A89FC
_080A89E0:
	adds r0, r5, #0
	movs r1, #0xb
	b _080A89EA
_080A89E6:
	adds r0, r5, #0
	movs r1, #0
_080A89EA:
	movs r2, #0
	bl CreateFX
	b _080A89FC
_080A89F2:
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFX
_080A89FC:
	bl sub_0805E780
_080A8A00:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A8A3E
	cmp r0, #1
	bgt _080A8A10
	cmp r0, #0
	beq _080A8A16
	b _080A8A44
_080A8A10:
	cmp r0, #2
	beq _080A8A2A
	b _080A8A44
_080A8A16:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08004260
	movs r0, #0x84
	bl sub_08004488
	movs r0, #3
	strb r0, [r5, #0xc]
	b _080A8A44
_080A8A2A:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0x80
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _080A8A3E
	movs r0, #0
	str r0, [r4, #0x50]
_080A8A3E:
	adds r0, r5, #0
	bl sub_0805E7BC
_080A8A44:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8A48
sub_080A8A48: @ 0x080A8A48
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8A64
	adds r0, r4, #0
	bl sub_0805E7BC
_080A8A64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8A68
sub_080A8A68: @ 0x080A8A68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800279C
	cmp r0, #0
	beq _080A8A78
	bl sub_0805E780
_080A8A78:
	ldr r0, _080A8A8C @ =gUnk_0812979C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8A8C: .4byte gUnk_0812979C

	thumb_func_start sub_080A8A90
sub_080A8A90: @ 0x080A8A90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8AAA
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl sub_08004260
	b _080A8AC2
_080A8AAA:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl sub_08004260
	ldr r0, _080A8AC4 @ =0x0000015F
	bl sub_08004488
_080A8AC2:
	pop {pc}
	.align 2, 0
_080A8AC4: .4byte 0x0000015F

	thumb_func_start sub_080A8AC8
sub_080A8AC8: @ 0x080A8AC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8AD8
	bl sub_0805E7BC
	b _080A8B34
_080A8AD8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8AE6
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8B34
_080A8AE6:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8B2E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r0, [r5, #0x15]
	adds r2, r0, #4
	movs r0, #0x18
	ands r2, r0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8B1A
	movs r0, #0
	strb r2, [r4, #0x15]
	lsrs r1, r2, #2
	strb r1, [r4, #0x14]
	strb r0, [r4, #0xe]
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl sub_08004260
	b _080A8B2E
_080A8B1A:
	lsrs r0, r2, #2
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080A8B2E
	strb r2, [r4, #0x15]
	strb r0, [r4, #0x14]
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl sub_08004260
_080A8B2E:
	adds r0, r4, #0
	bl sub_08004274
_080A8B34:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8B38
sub_080A8B38: @ 0x080A8B38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8B66
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8B5E
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8B74
_080A8B5E:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8B74
_080A8B66:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8B74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8B78
sub_080A8B78: @ 0x080A8B78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8B94
	adds r0, r4, #0
	bl sub_0805E7BC
_080A8B94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8B98
sub_080A8B98: @ 0x080A8B98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800279C
	cmp r0, #0
	beq _080A8BA8
	bl sub_0805E780
_080A8BA8:
	ldr r0, _080A8BBC @ =gUnk_0812982C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8BBC: .4byte gUnk_0812982C

	thumb_func_start sub_080A8BC0
sub_080A8BC0: @ 0x080A8BC0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8BDA
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl sub_08004260
	b _080A8BF4
_080A8BDA:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl sub_08004260
	movs r0, #0xaf
	lsls r0, r0, #1
	bl sub_08004488
_080A8BF4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A8BF8
sub_080A8BF8: @ 0x080A8BF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8C08
	bl sub_0805E7BC
	b _080A8C48
_080A8C08:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8C16
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8C48
_080A8C16:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8C42
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8C42
	ldrb r0, [r5, #0x15]
	movs r1, #0x18
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x15]
	strb r0, [r4, #0xe]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
_080A8C42:
	adds r0, r4, #0
	bl sub_08004274
_080A8C48:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8C4C
sub_080A8C4C: @ 0x080A8C4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8C7A
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8C72
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8C88
_080A8C72:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8C88
_080A8C7A:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8C88:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8C8C
sub_080A8C8C: @ 0x080A8C8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8CA8
	adds r0, r4, #0
	bl sub_0805E7BC
_080A8CA8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8CAC
sub_080A8CAC: @ 0x080A8CAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800279C
	cmp r0, #0
	beq _080A8CBC
	bl sub_0805E780
_080A8CBC:
	ldr r0, _080A8CD0 @ =gUnk_081298B8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8CD0: .4byte gUnk_081298B8

	thumb_func_start sub_080A8CD4
sub_080A8CD4: @ 0x080A8CD4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8CEE
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl sub_08004260
	b _080A8D08
_080A8CEE:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl sub_08004260
	movs r0, #0xb0
	lsls r0, r0, #1
	bl sub_08004488
_080A8D08:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A8D0C
sub_080A8D0C: @ 0x080A8D0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8D1C
	bl sub_0805E7BC
	b _080A8D5C
_080A8D1C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8D2A
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8D5C
_080A8D2A:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8D56
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8D56
	ldrb r0, [r5, #0x15]
	movs r1, #0x18
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x15]
	strb r0, [r4, #0xe]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl sub_08004260
_080A8D56:
	adds r0, r4, #0
	bl sub_08004274
_080A8D5C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8D60
sub_080A8D60: @ 0x080A8D60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8D8E
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8D86
	adds r0, r4, #0
	bl sub_0805E7BC
	b _080A8D9C
_080A8D86:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8D9C
_080A8D8E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8DA0
sub_080A8DA0: @ 0x080A8DA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8DBC
	adds r0, r4, #0
	bl sub_0805E7BC
_080A8DBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8DC0
sub_080A8DC0: @ 0x080A8DC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8DD8 @ =gUnk_08129954
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8DD8: .4byte gUnk_08129954

	thumb_func_start sub_080A8DDC
sub_080A8DDC: @ 0x080A8DDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A8E12
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8E12
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x1e
	beq _080A8E12
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl sub_08004260
_080A8E12:
	ldr r0, _080A8E24 @ =gUnk_08129968
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8E24: .4byte gUnk_08129968

	thumb_func_start sub_080A8E28
sub_080A8E28: @ 0x080A8E28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _080A8E80 @ =0xFFFF0000
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080A8E6E
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FA24
	movs r1, #0x80
	lsls r1, r1, #5
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F5BC
	ldr r0, [r5, #0x50]
	ldr r2, [r5, #0x54]
	ldr r1, [r0, #0x30]
	ldr r0, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0x51
	bl sub_08004260
	ldr r0, _080A8E84 @ =0x000001B5
	bl sub_080A3268
_080A8E6E:
	ldrb r4, [r5, #0xa]
	cmp r4, #2
	beq _080A8EF2
	cmp r4, #2
	ble _080A8E88
	cmp r4, #3
	beq _080A8F02
	b _080A8FAE
	.align 2, 0
_080A8E80: .4byte 0xFFFF0000
_080A8E84: .4byte 0x000001B5
_080A8E88:
	cmp r4, #0
	bge _080A8E8E
	b _080A8FAE
_080A8E8E:
	ldr r0, _080A8EC0 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl sub_080041DC
	adds r4, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bne _080A8ECE
	bl sub_08000E50
	adds r2, r0, #0
	ldr r0, _080A8EC4 @ =0x000001FF
	ands r2, r0
	ldr r0, _080A8EC8 @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080A8ECC
	adds r4, r4, r2
	b _080A8ECE
	.align 2, 0
_080A8EC0: .4byte gLinkEntity
_080A8EC4: .4byte 0x000001FF
_080A8EC8: .4byte gUnk_030010A0
_080A8ECC:
	subs r4, r4, r2
_080A8ECE:
	cmp r4, #0x1f
	bgt _080A8ED6
	movs r4, #0x20
	b _080A8EE0
_080A8ED6:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080A8EE0
	adds r4, r0, #0
_080A8EE0:
	lsls r1, r4, #8
	ldr r0, [r5, #0x34]
	bl __divsi3
	lsls r0, r0, #0xd
	str r0, [r5, #0x20]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	b _080A8FAE
_080A8EF2:
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __divsi3
	lsls r0, r0, #0xc
	str r0, [r5, #0x20]
	b _080A8FAE
_080A8F02:
	ldr r0, _080A8F64 @ =0xFF600000
	str r0, [r5, #0x34]
	bl sub_08000E50
	ands r4, r0
	lsls r2, r4, #1
	ldr r1, _080A8F68 @ =gUnk_08129978
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #0x2e]
	adds r0, r0, r3
	strh r0, [r5, #0x2e]
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _080A8F74
	bl sub_08000E50
	ldr r2, _080A8F6C @ =gUnk_08129988
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x2e]
	bl sub_08000E50
	ldr r2, _080A8F70 @ =gUnk_08129980
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	b _080A8F9E
	.align 2, 0
_080A8F64: .4byte 0xFF600000
_080A8F68: .4byte gUnk_08129978
_080A8F6C: .4byte gUnk_08129988
_080A8F70: .4byte gUnk_08129980
_080A8F74:
	bl sub_08000E50
	ldr r2, _080A8FB0 @ =gUnk_08129980
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	bl sub_08000E50
	ldr r2, _080A8FB4 @ =gUnk_08129988
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x32]
	adds r0, r0, r2
_080A8F9E:
	strh r0, [r5, #0x32]
	adds r0, r5, #0
	bl sub_08004168
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
_080A8FAE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A8FB0: .4byte gUnk_08129980
_080A8FB4: .4byte gUnk_08129988

	thumb_func_start sub_080A8FB8
sub_080A8FB8: @ 0x080A8FB8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A8FE8
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9054
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
	b _080A9054
_080A8FE8:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080A901C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A901C
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldr r1, _080A9048 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080A901C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9054
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A90D8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080A904C
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x54
	bl sub_08004260
	b _080A9054
	.align 2, 0
_080A9048: .4byte gLinkEntity
_080A904C:
	adds r0, r4, #0
	movs r1, #0x52
	bl sub_08004260
_080A9054:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9058
sub_080A9058: @ 0x080A9058
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080A9098
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A908A
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x55
	bl sub_08004260
	b _080A90BA
_080A908A:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080A90D8
	b _080A90BA
_080A9098:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A90BA
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl sub_08004260
_080A90BA:
	pop {r4, pc}

	thumb_func_start sub_080A90BC
sub_080A90BC: @ 0x080A90BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A90D4
	bl sub_0805E780
_080A90D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A90D8
sub_080A90D8: @ 0x080A90D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x74
	adds r0, r0, r5
	mov ip, r0
	ldrh r3, [r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _080A9154 @ =gUnk_03000BF0
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r6, #0x3f
	adds r2, r4, #0
	ands r2, r6
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	ands r0, r6
	lsls r0, r0, #6
	orrs r2, r0
	cmp r3, r2
	beq _080A9152
	movs r0, #0x3f
	ands r4, r0
	ands r1, r0
	lsls r0, r1, #6
	orrs r4, r0
	mov r2, ip
	strh r4, [r2]
	adds r0, r5, #0
	bl sub_080002A0
	cmp r0, #0x13
	beq _080A9128
	cmp r0, #0x34
	bne _080A9152
_080A9128:
	movs r0, #0xd3
	lsls r0, r0, #2
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	ldrh r2, [r7, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	ldrh r3, [r7, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080A9152:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A9154: .4byte gUnk_03000BF0

	thumb_func_start sub_080A9158
sub_080A9158: @ 0x080A9158
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080A9166
	movs r0, #1
	strb r0, [r5, #0xc]
_080A9166:
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _080A917C
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A917C
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A91A4
_080A917C:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9198
	ldr r1, [r5, #0x4c]
	ldr r0, _080A91A0 @ =gLinkEntity
	cmp r1, r0
	bne _080A9198
	adds r0, r5, #0
	bl sub_0803C0AC
_080A9198:
	adds r0, r5, #0
	bl sub_0805E7BC
	b _080A91D8
	.align 2, 0
_080A91A0: .4byte gLinkEntity
_080A91A4:
	ldr r1, _080A91DC @ =gUnk_08129998
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x48]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080A91D8
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080A91D8
	movs r0, #0xff
	strb r0, [r1]
_080A91D8:
	pop {r4, r5, pc}
	.align 2, 0
_080A91DC: .4byte gUnk_08129998

	thumb_func_start sub_080A91E0
sub_080A91E0: @ 0x080A91E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A9288
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A9204
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A9204:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A921C
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080A9218
	movs r0, #0xff
	strb r0, [r1, #0xa]
_080A9218:
	bl sub_0805E780
_080A921C:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A9230
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080A92F6
_080A9230:
	adds r0, r4, #0
	bl sub_080644C8
	cmp r0, #0
	beq _080A92F6
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A92F6
	movs r0, #0xc
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _080A92F6
	movs r0, #1
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x50]
	adds r0, #0x3e
	ldrb r1, [r0]
	ldr r3, _080A9284 @ =gUnk_081299C8
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #2
	movs r2, #7
	ands r0, r2
	adds r0, r0, r3
	lsls r1, r1, #3
	ldrb r0, [r0]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r5, #0x50]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	b _080A92F6
	.align 2, 0
_080A9284: .4byte gUnk_081299C8
_080A9288:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A92B0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x16
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x24]
	ldr r0, _080A92F8 @ =gUnk_080FD1E4
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_080A92B0:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A92C8
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080A92C4
	movs r0, #0xff
	strb r0, [r1, #0xa]
_080A92C4:
	bl sub_0805E780
_080A92C8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A92D8
	bl sub_0805E780
_080A92D8:
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A92FC @ =gUnk_02027EB4
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r3, #2
	bl sub_080AE4CC
	cmp r0, #0
	beq _080A92F6
	bl sub_0805E780
_080A92F6:
	pop {r4, r5, pc}
	.align 2, 0
_080A92F8: .4byte gUnk_080FD1E4
_080A92FC: .4byte gUnk_02027EB4

	thumb_func_start sub_080A9300
sub_080A9300: @ 0x080A9300
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9318 @ =gUnk_081299D0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9318: .4byte gUnk_081299D0

	thumb_func_start sub_080A931C
sub_080A931C: @ 0x080A931C
	push {lr}
	ldr r2, _080A9330 @ =gUnk_081299E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9330: .4byte gUnk_081299E4

	thumb_func_start sub_080A9334
sub_080A9334: @ 0x080A9334
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A936C
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _080A9368
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_080526A0
	adds r0, r4, #0
	bl sub_080A9488
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	b _080A936C
_080A9368:
	bl sub_0805E780
_080A936C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9370
sub_080A9370: @ 0x080A9370
	push {r4, lr}
	movs r4, #0
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x6a
	strb r1, [r0, #0xe]
	strb r4, [r0, #0xf]
	movs r1, #0xa0
	lsls r1, r1, #4
	str r1, [r0, #0x20]
	ldrb r1, [r0, #0xa]
	bl sub_080A94C0
	pop {r4, pc}

	thumb_func_start sub_080A93A0
sub_080A93A0: @ 0x080A93A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _080A93B0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A93B4
_080A93B0:
	bl sub_0805E780
_080A93B4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A93BE
	bl sub_0805E780
_080A93BE:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _080A93DA
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	str r2, [r5, #0x54]
	movs r0, #0xfc
	bl sub_080A3268
_080A93DA:
	pop {r4, r5, pc}

	thumb_func_start sub_080A93DC
sub_080A93DC: @ 0x080A93DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080A9414
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl sub_08004260
	movs r0, #0xc5
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0806F69C
	b _080A9424
_080A9414:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9424
	bl sub_0805E780
_080A9424:
	adds r0, r4, #0
	bl sub_080AF090
	pop {r4, pc}

	thumb_func_start sub_080A942C
sub_080A942C: @ 0x080A942C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9440
	bl sub_0805E780
_080A9440:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080A9448
sub_080A9448: @ 0x080A9448
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9464
	adds r0, r4, #0
	bl sub_080A29BC
	bl sub_0805E780
	b _080A9486
_080A9464:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9486
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080A94C0
_080A9486:
	pop {r4, pc}

	thumb_func_start sub_080A9488
sub_080A9488: @ 0x080A9488
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	movs r0, #0x74
	bl sub_08004488
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080A94C0
	pop {r4, pc}

	thumb_func_start sub_080A94C0
sub_080A94C0: @ 0x080A94C0
	push {r4, lr}
	lsls r1, r1, #3
	ldr r2, _080A94FC @ =gUnk_081299F8
	adds r1, r1, r2
	ldrb r3, [r1]
	movs r2, #1
	ands r3, r2
	lsls r3, r3, #6
	ldrb r4, [r0, #0x18]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #0x18]
	ldrb r3, [r1, #1]
	lsls r3, r3, #7
	movs r4, #0x7f
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #0x18]
	ldrb r2, [r1, #2]
	adds r3, r0, #0
	adds r3, #0x58
	strb r2, [r3]
	ldr r1, [r1, #4]
	str r1, [r0, #0x48]
	ldrb r1, [r3]
	bl sub_08004260
	pop {r4, pc}
	.align 2, 0
_080A94FC: .4byte gUnk_081299F8

	thumb_func_start sub_080A9500
sub_080A9500: @ 0x080A9500
	push {lr}
	ldr r2, _080A9514 @ =gUnk_08129A64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9514: .4byte gUnk_08129A64

	thumb_func_start sub_080A9518
sub_080A9518: @ 0x080A9518
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xa
	strb r1, [r0, #0xe]
	ldrh r1, [r0, #0x36]
	subs r1, #2
	strh r1, [r0, #0x36]
	ldrh r1, [r0, #0x32]
	adds r1, #2
	strh r1, [r0, #0x32]
	movs r1, #0
	bl sub_08004260
	ldr r0, _080A953C @ =0x00000149
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_080A953C: .4byte 0x00000149

	thumb_func_start sub_080A9540
sub_080A9540: @ 0x080A9540
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9578
	movs r0, #2
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3, #0x32]
	adds r0, #6
	strh r0, [r3, #0x32]
	adds r0, r3, #0
	movs r1, #1
	bl sub_08004260
	b _080A95B6
_080A9578:
	ldrh r1, [r3, #0x36]
	movs r2, #0x36
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _080A9586
	adds r0, r1, #1
	strh r0, [r3, #0x36]
_080A9586:
	ldrb r1, [r3, #0x15]
	lsls r1, r1, #1
	ldr r0, _080A95B8 @ =gUnk_080C9160
	adds r1, r1, r0
	movs r4, #0
	ldrsh r2, [r1, r4]
	movs r4, #0x24
	ldrsh r0, [r3, r4]
	muls r2, r0, r2
	ldr r0, [r3, #0x2c]
	adds r0, r0, r2
	str r0, [r3, #0x2c]
	adds r1, #0x80
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0x24
	ldrsh r0, [r3, r2]
	muls r1, r0, r1
	ldr r0, [r3, #0x30]
	subs r0, r0, r1
	str r0, [r3, #0x30]
	adds r0, r3, #0
	bl sub_08004274
_080A95B6:
	pop {r4, pc}
	.align 2, 0
_080A95B8: .4byte gUnk_080C9160

	thumb_func_start sub_080A95BC
sub_080A95BC: @ 0x080A95BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A95D8
	adds r0, r4, #0
	bl sub_0805E7BC
_080A95D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A95DC
sub_080A95DC: @ 0x080A95DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A95F4 @ =gUnk_08129ABC
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A95F4: .4byte gUnk_08129ABC

	thumb_func_start sub_080A95F8
sub_080A95F8: @ 0x080A95F8
	push {lr}
	ldr r2, _080A960C @ =gUnk_08129AD0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A960C: .4byte gUnk_08129AD0

	thumb_func_start sub_080A9610
sub_080A9610: @ 0x080A9610
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A9660
	cmp r0, #1
	bgt _080A9628
	cmp r0, #0
	beq _080A9632
	b _080A9756
_080A9628:
	cmp r0, #2
	beq _080A96D0
	cmp r0, #3
	beq _080A9718
	b _080A9756
_080A9632:
	movs r1, #0x90
	lsls r1, r1, #7
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	b _080A9756
_080A9660:
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
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
	bl sub_08000E50
	ldr r2, _080A96C8 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r2, #1
	adds r1, r2, #0
	adds r0, r0, r1
	strh r0, [r4, #0x24]
	bl sub_08000E50
	ldr r1, _080A96CC @ =0x00001FFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #9
	adds r1, r1, r0
	str r1, [r4, #0x20]
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	subs r0, #4
	ldrb r1, [r4, #0x15]
	subs r1, r1, r0
	strb r1, [r4, #0x15]
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x78]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
	b _080A9756
	.align 2, 0
_080A96C8: .4byte 0x000001FF
_080A96CC: .4byte 0x00001FFF
_080A96D0:
	bl sub_08000E50
	ands r0, r5
	cmp r0, #0
	beq _080A96EA
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	strb r0, [r4, #0x15]
	b _080A96F8
_080A96EA:
	bl sub_08000E50
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0x15]
	subs r1, r1, r0
	strb r1, [r4, #0x15]
_080A96F8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	movs r1, #0xa0
	lsls r1, r1, #7
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	movs r1, #5
	bl sub_08004260
	b _080A9756
_080A9718:
	ldr r0, _080A9760 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r0, _080A9764 @ =0xFF600000
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x2e]
	adds r0, #0x60
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	bl sub_08000E50
	movs r1, #0xc0
	bl __modsi3
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r0
	strh r1, [r4, #0x2e]
	bl sub_08000E50
	movs r1, #0x7f
	ands r1, r0
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_080A9756:
	ldr r0, _080A9768 @ =0x000001B5
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_080A9760: .4byte gLinkEntity
_080A9764: .4byte 0xFF600000
_080A9768: .4byte 0x000001B5

	thumb_func_start sub_080A976C
sub_080A976C: @ 0x080A976C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080A9778
	b _080A9908
_080A9778:
	cmp r0, #1
	bgt _080A9782
	cmp r0, #0
	beq _080A9790
	b _080A99EE
_080A9782:
	cmp r0, #2
	bne _080A9788
	b _080A99A0
_080A9788:
	cmp r0, #3
	bne _080A978E
	b _080A99D2
_080A978E:
	b _080A99EE
_080A9790:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080A979C
	bl sub_0805E780
_080A979C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A97E0
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A97E0
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080A97C0
	adds r0, r4, #0
	bl sub_080A99F0
_080A97C0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
_080A97E0:
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _080A9848
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A9804
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	b _080A9848
_080A9804:
	ldr r1, [r4, #0x50]
	adds r1, #0x45
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r0, #0x3d
	movs r1, #0x1e
	strb r1, [r0]
	ldr r1, [r4, #0x50]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A983C
	adds r1, #0x42
	movs r0, #0x18
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r0, #0x46
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	adds r1, #0x3e
	strb r0, [r1]
_080A983C:
	ldr r0, _080A98B8 @ =0x00000127
	bl sub_080A3268
	adds r0, r4, #0
	bl sub_080A99F0
_080A9848:
	adds r0, r4, #0
	bl sub_080042B8
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A9882
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	strb r0, [r4, #0x15]
_080A9882:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _080A989A
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r1, r2, #0
	eors r0, r1
	strb r0, [r4, #0x15]
_080A989A:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0xf]
	cmp r0, r1
	bne _080A98A4
	b _080A99EE
_080A98A4:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_080A3268
	ldrh r0, [r5]
	cmp r0, #0
	bne _080A98BC
	movs r0, #4
	b _080A98C0
	.align 2, 0
_080A98B8: .4byte 0x00000127
_080A98BC:
	ldrb r0, [r4, #0xe]
	adds r0, #1
_080A98C0:
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bhi _080A98CE
	b _080A99EE
_080A98CE:
	movs r5, #0
_080A98D0:
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080A98FC
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x54]
	ldr r0, _080A9904 @ =gUnk_08129ADC
	adds r0, r5, r0
	ldrb r0, [r0]
	ldrb r2, [r4, #0x15]
	adds r0, r0, r2
	strb r0, [r1, #0x15]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
_080A98FC:
	adds r5, #1
	cmp r5, #2
	bls _080A98D0
	b _080A9998
	.align 2, 0
_080A9904: .4byte gUnk_08129ADC
_080A9908:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080A9916
	adds r0, r4, #0
	bl sub_080A99F0
_080A9916:
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080A9950
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A994A
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	b _080A9950
_080A994A:
	adds r0, r4, #0
	bl sub_080A99F0
_080A9950:
	ldr r2, [r4, #0x78]
	cmp r2, #0x1d
	bhi _080A9978
	movs r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080A996E
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _080A9978
_080A996E:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A9978:
	subs r1, r2, #1
	str r1, [r4, #0x78]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A998A
	adds r0, r4, #0
	bl sub_080A99F0
_080A998A:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A99EE
_080A9998:
	adds r0, r4, #0
	bl sub_080A99F0
	b _080A99EE
_080A99A0:
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080A99C2
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	b _080A99EE
_080A99C2:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080A99CC
	movs r0, #1
	strb r0, [r1, #0xe]
_080A99CC:
	bl sub_0805E780
	b _080A99EE
_080A99D2:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A99EE
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080A99EE:
	pop {r4, r5, pc}

	thumb_func_start sub_080A99F0
sub_080A99F0: @ 0x080A99F0
	push {lr}
	movs r1, #4
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080A9A00
sub_080A9A00: @ 0x080A9A00
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9A18 @ =gUnk_08129AE0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9A18: .4byte gUnk_08129AE0

	thumb_func_start sub_080A9A1C
sub_080A9A1C: @ 0x080A9A1C
	push {lr}
	ldr r2, _080A9A30 @ =gUnk_08129AF8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9A30: .4byte gUnk_08129AF8

	thumb_func_start sub_080A9A34
sub_080A9A34: @ 0x080A9A34
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _080A9A62
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080A9A62:
	pop {pc}

	thumb_func_start sub_080A9A64
sub_080A9A64: @ 0x080A9A64
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _080A9A7E
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080A9A7E
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9A7E:
	ldr r0, _080A9A90 @ =gUnk_08129B08
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9A90: .4byte gUnk_08129B08

	thumb_func_start sub_080A9A94
sub_080A9A94: @ 0x080A9A94
	movs r1, #2
	strb r1, [r0, #0xd]
	ldr r1, _080A9AA0 @ =0x0000FFFE
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_080A9AA0: .4byte 0x0000FFFE

	thumb_func_start sub_080A9AA4
sub_080A9AA4: @ 0x080A9AA4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080A9AAC
sub_080A9AAC: @ 0x080A9AAC
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_080A9AB4
sub_080A9AB4: @ 0x080A9AB4
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_128
nullsub_128: @ 0x080A9AC0
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9AC4
sub_080A9AC4: @ 0x080A9AC4
	push {lr}
	bl sub_080A9BA8
	pop {pc}

	thumb_func_start sub_080A9ACC
sub_080A9ACC: @ 0x080A9ACC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #1
	beq _080A9AE0
	cmp r0, #2
	beq _080A9AEE
	movs r0, #1
	strb r0, [r2, #0xc]
	b _080A9B0A
_080A9AE0:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	b _080A9B0A
_080A9AEE:
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
_080A9B0A:
	movs r0, #2
	strb r0, [r2, #0x1c]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A9B1E
	adds r0, r2, #0
	movs r1, #5
	bl sub_08004260
	b _080A9B22
_080A9B1E:
	movs r0, #0
	strb r0, [r2, #0x1e]
_080A9B22:
	pop {pc}

	thumb_func_start sub_080A9B24
sub_080A9B24: @ 0x080A9B24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9B36
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9B36:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A9B46
	adds r0, r4, #0
	bl sub_080A9BD0
	b _080A9B50
_080A9B46:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A9C34
_080A9B50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9B54
sub_080A9B54: @ 0x080A9B54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9B66
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9B66:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #9
	bne _080A9B76
	adds r0, r4, #0
	bl sub_080A9C34
	b _080A9B7C
_080A9B76:
	adds r0, r4, #0
	bl sub_080A9C50
_080A9B7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9B80
sub_080A9B80: @ 0x080A9B80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080A9B92
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A9B92:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9BA6
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9BA6:
	pop {r4, pc}

	thumb_func_start sub_080A9BA8
sub_080A9BA8: @ 0x080A9BA8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _080A9BBE
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	bl CreateFX
	b _080A9BC8
_080A9BBE:
	adds r0, r1, #0
	movs r1, #0x3c
	movs r2, #0
	bl CreateFX
_080A9BC8:
	bl sub_0805E780
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A9BD0
sub_080A9BD0: @ 0x080A9BD0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0x14]
	cmp r0, #1
	beq _080A9BF8
	cmp r0, #1
	bgt _080A9BE6
	cmp r0, #0
	beq _080A9BF0
	b _080A9C06
_080A9BE6:
	cmp r0, #2
	beq _080A9C00
	cmp r0, #3
	beq _080A9BF8
	b _080A9C06
_080A9BF0:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x39
	b _080A9C06
_080A9BF8:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x3d
	b _080A9C06
_080A9C00:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x41
_080A9C06:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	adds r0, r2, r0
	lsls r4, r0, #1
	adds r4, r4, r0
	ldr r0, _080A9C30 @ =gUnk_08129B20
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_0806FA90
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
	pop {r4, r5, pc}
	.align 2, 0
_080A9C30: .4byte gUnk_08129B20

	thumb_func_start sub_080A9C34
sub_080A9C34: @ 0x080A9C34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r4, #0x63
	ldrb r0, [r4]
	subs r0, #0xe
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9C50
sub_080A9C50: @ 0x080A9C50
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0x14]
	cmp r0, #1
	beq _080A9C78
	cmp r0, #1
	bgt _080A9C66
	cmp r0, #0
	beq _080A9C70
	b _080A9C86
_080A9C66:
	cmp r0, #2
	beq _080A9C80
	cmp r0, #3
	beq _080A9C78
	b _080A9C86
_080A9C70:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x27
	b _080A9C86
_080A9C78:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x2d
	b _080A9C86
_080A9C80:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x33
_080A9C86:
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r0, r5, #0
	adds r0, #0x63
	ldr r1, _080A9CA4 @ =gUnk_08129B50
	adds r1, r4, r1
	ldrb r1, [r1]
	ldrb r2, [r0]
	adds r1, r1, r2
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A9CA4: .4byte gUnk_08129B50

	thumb_func_start sub_080A9CA8
sub_080A9CA8: @ 0x080A9CA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9CB8
	bl sub_0805E780
_080A9CB8:
	ldr r4, _080A9CD0 @ =gUnk_08129B58
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9CD0: .4byte gUnk_08129B58

	thumb_func_start sub_080A9CD4
sub_080A9CD4: @ 0x080A9CD4
	push {lr}
	ldr r2, _080A9CE8 @ =gUnk_08129B70
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9CE8: .4byte gUnk_08129B70

	thumb_func_start nullsub_539
nullsub_539: @ 0x080A9CEC
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9CF0
sub_080A9CF0: @ 0x080A9CF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080A9D0A
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080A9D0A:
	ldr r0, _080A9D1C @ =gUnk_08129B78
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9D1C: .4byte gUnk_08129B78

	thumb_func_start sub_080A9D20
sub_080A9D20: @ 0x080A9D20
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_540
nullsub_540: @ 0x080A9D28
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9D2C
sub_080A9D2C: @ 0x080A9D2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080A9D64
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xa6
	bne _080A9D56
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_080526A0
	ldr r0, _080A9D68 @ =gLinkEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
_080A9D56:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080A9D64:
	pop {r4, pc}
	.align 2, 0
_080A9D68: .4byte gLinkEntity

	thumb_func_start sub_080A9D6C
sub_080A9D6C: @ 0x080A9D6C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, [r0, #0x50]
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl sub_080042AC
	pop {pc}

	thumb_func_start sub_080A9D80
sub_080A9D80: @ 0x080A9D80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r3, _080A9D9C @ =0xFFFF0000
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldr r0, _080A9DA0 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_080A9D9C: .4byte 0xFFFF0000
_080A9DA0: .4byte 0x0000FFFE

	thumb_func_start sub_080A9DA4
sub_080A9DA4: @ 0x080A9DA4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9DBC @ =gUnk_08129BEC
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9DBC: .4byte gUnk_08129BEC

	thumb_func_start sub_080A9DC0
sub_080A9DC0: @ 0x080A9DC0
	push {lr}
	ldr r2, _080A9DD4 @ =gUnk_08129C00
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9DD4: .4byte gUnk_08129C00

	thumb_func_start sub_080A9DD8
sub_080A9DD8: @ 0x080A9DD8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A9DEE
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A9DF2
_080A9DEE:
	bl sub_0805E780
_080A9DF2:
	adds r0, r4, #0
	bl sub_080A9DC0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9DFC
sub_080A9DFC: @ 0x080A9DFC
	push {lr}
	movs r2, #1
	strb r2, [r0, #0xc]
	movs r1, #0xb4
	strb r1, [r0, #0xe]
	adds r1, r0, #0
	adds r1, #0x45
	strb r2, [r1]
	movs r1, #0
	bl sub_08004260
	pop {pc}

	thumb_func_start sub_080A9E14
sub_080A9E14: @ 0x080A9E14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A9E34
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9E42
_080A9E34:
	adds r0, r4, #0
	movs r1, #0x4f
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080A9E42:
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A9E50
	bl sub_0805E780
_080A9E50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9E54
sub_080A9E54: @ 0x080A9E54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080A9E60
	ldr r0, [r5, #0x50]
_080A9E60:
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A9E78
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A9E78
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
_080A9E78:
	ldr r4, _080A9E90 @ =gUnk_08129C7C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9E90: .4byte gUnk_08129C7C

	thumb_func_start sub_080A9E94
sub_080A9E94: @ 0x080A9E94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bhi _080A9EA4
	adds r0, r4, #0
	bl sub_080AA1D8
_080A9EA4:
	ldr r0, _080A9EB8 @ =gUnk_08129C90
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9EB8: .4byte gUnk_08129C90

	thumb_func_start sub_080A9EBC
sub_080A9EBC: @ 0x080A9EBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9F4E
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080A9EF2
	cmp r0, #4
	bne _080A9F18
	movs r0, #0
	strb r0, [r4, #0xf]
	subs r0, #2
	bl sub_080526A0
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_080042B8
	adds r5, r4, #0
	adds r5, #0x42
	b _080A9F4A
_080A9EF2:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x42
	cmp r0, #0
	beq _080A9F4A
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080AA270
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080A9F4A
_080A9F18:
	ldr r3, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	adds r0, #0x42
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r5, r2, #0
	cmp r0, #1
	bne _080A9F4A
	adds r0, r4, #0
	bl sub_080AA320
_080A9F4A:
	movs r0, #0
	strb r0, [r5]
_080A9F4E:
	pop {r4, r5, pc}

	thumb_func_start sub_080A9F50
sub_080A9F50: @ 0x080A9F50
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	strh r1, [r0]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x82
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_0806FAD8
	adds r0, r4, #0
	bl sub_080AA270
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9F90
sub_080A9F90: @ 0x080A9F90
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	cmp r0, #0
	beq _080A9FA4
	subs r0, #1
	strh r0, [r1]
	b _080A9FC8
_080A9FA4:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9FB8
	adds r0, r4, #0
	bl sub_080AA270
	b _080A9FC8
_080A9FB8:
	adds r0, r4, #0
	bl sub_080AA2E0
	cmp r0, #0
	beq _080A9FC8
	adds r0, r4, #0
	bl sub_080AA320
_080A9FC8:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_080A9FD0
sub_080A9FD0: @ 0x080A9FD0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080042B8
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A9FF2
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080AA038 @ =0x0000015D
	bl sub_08004488
_080A9FF2:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080AA03C @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x78
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080002B0
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bne _080AA034
	ldr r0, _080AA040 @ =0x00004005
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl sub_0800015E
_080AA034:
	pop {r4, r5, pc}
	.align 2, 0
_080AA038: .4byte 0x0000015D
_080AA03C: .4byte gUnk_03000BF0
_080AA040: .4byte 0x00004005

	thumb_func_start sub_080AA044
sub_080AA044: @ 0x080AA044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	cmp r5, #0
	bne _080AA052
	bl sub_0805E780
_080AA052:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AA05E
	bl sub_0805E780
	b _080AA0A2
_080AA05E:
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	adds r3, r0, #0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AA08C
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	b _080AA0A2
_080AA08C:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_080AA0A2:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA108
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080AA0B8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080AA108
_080AA0B8:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA108
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x40
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #2
	strb r1, [r4, #0x15]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	ldr r0, _080AA10C @ =gUnk_080FD150
	str r0, [r4, #0x48]
	bl sub_08052660
	cmp r0, #0
	beq _080AA100
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
_080AA100:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080AA3E0
_080AA108:
	pop {r4, r5, pc}
	.align 2, 0
_080AA10C: .4byte gUnk_080FD150

	thumb_func_start sub_080AA110
sub_080AA110: @ 0x080AA110
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r7, [r6, #0x54]
	cmp r7, #0
	beq _080AA1B6
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080AA128
	str r0, [r6, #0x54]
_080AA128:
	ldrb r0, [r6, #0xf]
	adds r5, r0, #0
	cmp r5, #0
	beq _080AA136
	subs r0, #1
	strb r0, [r6, #0xf]
	b _080AA1C4
_080AA136:
	adds r0, r6, #0
	bl sub_080AA374
	cmp r0, #0
	beq _080AA1C4
	adds r0, r7, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA14E
	bl sub_0805E780
_080AA14E:
	movs r0, #0xf2
	bl sub_08004488
	movs r4, #1
	strb r4, [r6, #0xc]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r6, #0
	adds r0, #0x82
	strb r5, [r0]
	strb r5, [r6, #0xe]
	subs r0, #2
	movs r1, #0
	mov sb, r1
	movs r1, #0x20
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldr r0, [r6, #0x54]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	bl sub_080AA270
	ldr r7, [r6, #0x50]
	strb r4, [r7, #0xc]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #2
	strb r0, [r7, #0x15]
	strh r5, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x82
	strb r4, [r0]
	mov r0, sb
	strb r0, [r7, #0xe]
	movs r0, #0x78
	strb r0, [r7, #0xf]
	adds r0, r7, #0
	adds r0, #0x80
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080AA3E0
	b _080AA1C4
_080AA1B6:
	adds r0, r6, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080AA1C4
	bl sub_0805E780
_080AA1C4:
	adds r0, r6, #0
	bl sub_0806F69C
	adds r0, r6, #0
	bl sub_080042B8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AA1D8
sub_080AA1D8: @ 0x080AA1D8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _080AA268
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080AA1EC
	bl sub_0805E780
_080AA1EC:
	ldrb r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AA26C
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x1e]
	bl sub_080700C8
	adds r3, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AA224
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	b _080AA23A
_080AA224:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_080AA23A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AA256
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA26C
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	b _080AA26C
_080AA256:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA26C
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _080AA26C
_080AA268:
	bl sub_0805E780
_080AA26C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AA270
sub_080AA270: @ 0x080AA270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	bl sub_08000E50
	ldr r1, _080AA2A4 @ =gUnk_08129CA4
	movs r6, #7
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	ldrb r4, [r4, #0x14]
	ldrb r0, [r5, #0x14]
	cmp r0, #0xff
	bne _080AA2AC
	strb r4, [r5, #0x14]
	ldr r0, _080AA2A8 @ =gUnk_08129CF4
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080AA3E0
	b _080AA2D6
	.align 2, 0
_080AA2A4: .4byte gUnk_08129CA4
_080AA2A8: .4byte gUnk_08129CF4
_080AA2AC:
	bl sub_08000E50
	ldr r1, _080AA2D8 @ =gUnk_08129CAC
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	ands r4, r6
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _080AA2D6
	strb r4, [r5, #0x14]
	ldr r0, _080AA2DC @ =gUnk_08129CF4
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080AA3E0
_080AA2D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA2D8: .4byte gUnk_08129CAC
_080AA2DC: .4byte gUnk_08129CF4

	thumb_func_start sub_080AA2E0
sub_080AA2E0: @ 0x080AA2E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _080AA31C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	adds r0, #4
	movs r2, #0x1c
	ands r0, r2
	adds r1, #4
	ands r1, r2
	cmp r0, r1
	bne _080AA31C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_08049F1C
	cmp r0, #0
	beq _080AA31C
	movs r0, #1
	b _080AA31E
_080AA31C:
	movs r0, #0
_080AA31E:
	pop {r4, r5, pc}

	thumb_func_start sub_080AA320
sub_080AA320: @ 0x080AA320
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	movs r2, #0
	movs r1, #2
	strb r1, [r5, #0xc]
	adds r3, r5, #0
	adds r3, #0x82
	movs r0, #1
	strb r0, [r3]
	strb r2, [r5, #0xf]
	strb r1, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x50
	strh r0, [r1]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r5, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080AA3E0
	adds r0, r5, #0
	bl sub_080AA1D8
	pop {r4, r5, pc}

	thumb_func_start sub_080AA374
sub_080AA374: @ 0x080AA374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r5, [r6, #0x54]
	cmp r5, #0
	beq _080AA3D8
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AA3D8
	ldrb r4, [r5, #0x14]
	ldr r0, _080AA3CC @ =gUnk_08129D14
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806F824
	adds r7, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	beq _080AA3D0
	movs r0, #1
	mov r8, r0
	b _080AA3D8
	.align 2, 0
_080AA3CC: .4byte gUnk_08129D14
_080AA3D0:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08004596
_080AA3D8:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AA3E0
sub_080AA3E0: @ 0x080AA3E0
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #3
	orrs r2, r0
	cmp r1, #0
	beq _080AA3F4
	lsrs r2, r2, #1
_080AA3F4:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AA400
sub_080AA400: @ 0x080AA400
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AA418 @ =gUnk_08129FB8
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AA418: .4byte gUnk_08129FB8

	thumb_func_start sub_080AA41C
sub_080AA41C: @ 0x080AA41C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080AA44C
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r2, #0x1e]
	strb r0, [r2, #0x1c]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080AA446
	adds r0, r2, #0
	bl sub_080AA494
	b _080AA44C
_080AA446:
	adds r0, r2, #0
	bl sub_080AA534
_080AA44C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AA450
sub_080AA450: @ 0x080AA450
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _080AA462
	adds r0, r1, #0
	bl sub_080AA464
_080AA462:
	pop {pc}

	thumb_func_start sub_080AA464
sub_080AA464: @ 0x080AA464
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AA474
	adds r0, r4, #0
	bl sub_080AA544
_080AA474:
	movs r0, #0x21
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080AA48A
	adds r0, r4, #0
	bl sub_0806FA24
_080AA48A:
	adds r0, r4, #0
	bl sub_0805E7BC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AA494
sub_080AA494: @ 0x080AA494
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	bl sub_080002A0
	adds r2, r0, #0
	ldr r1, _080AA4A4 @ =gUnk_08129FD0
	b _080AA4AA
	.align 2, 0
_080AA4A4: .4byte gUnk_08129FD0
_080AA4A8:
	adds r4, #1
_080AA4AA:
	ldrh r0, [r1]
	cmp r0, #0
	beq _080AA4B6
	adds r1, #2
	cmp r0, r2
	bne _080AA4A8
_080AA4B6:
	ldrh r0, [r5, #0x24]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080AA4EE
	cmp r4, #4
	bne _080AA4EA
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080AA52C @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_080AA654
_080AA4EA:
	bl sub_0805E780
_080AA4EE:
	strb r4, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AA530 @ =0x00004068
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080AA52C @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA52C: .4byte gUnk_03000BF0
_080AA530: .4byte 0x00004068

	thumb_func_start sub_080AA534
sub_080AA534: @ 0x080AA534
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #3
	strb r1, [r2]
	bl sub_08016A04
	pop {pc}

	thumb_func_start sub_080AA544
sub_080AA544: @ 0x080AA544
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #8
	bhi _080AA618
	ldr r0, _080AA5E8 @ =gUnk_08129FF8
	mov sb, r0
	movs r1, #0x2e
	ldrsh r2, [r6, r1]
	ldr r1, _080AA5EC @ =gUnk_03000BF0
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	ldrb r0, [r6, #0xb]
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r2, r0
	movs r4, #0
	movs r5, #0
	movs r0, #0x38
	adds r0, r0, r6
	mov r8, r0
_080AA58E:
	mov r1, sb
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2]
	bl sub_080002C8
	cmp r0, #0x3e
	bne _080AA5AC
	adds r5, #1
_080AA5AC:
	adds r4, #1
	cmp r4, #8
	bls _080AA58E
	cmp r5, #8
	bne _080AA5F4
	movs r4, #0
	ldr r5, _080AA5F0 @ =gUnk_08129FD0
_080AA5BA:
	ldrh r0, [r5]
	mov r3, sb
	adds r1, r3, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, r7, r1
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	adds r5, #2
	adds r4, #1
	cmp r4, #8
	bls _080AA5BA
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080AA654
	ldrh r0, [r6, #0x24]
	bl sub_0807CCC8
	b _080AA648
	.align 2, 0
_080AA5E8: .4byte gUnk_08129FF8
_080AA5EC: .4byte gUnk_03000BF0
_080AA5F0: .4byte gUnk_08129FD0
_080AA5F4:
	ldr r2, _080AA614 @ =gUnk_08129FE4
	ldrb r1, [r6, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	add r1, sb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, r7, r1
	mov r4, r8
	ldrb r2, [r4]
	bl sub_0807B7D8
	b _080AA648
	.align 2, 0
_080AA614: .4byte gUnk_08129FE4
_080AA618:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _080AA650 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r6, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	ldrh r0, [r6, #0x24]
	bl sub_0807CCC8
_080AA648:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AA650: .4byte gUnk_03000BF0

	thumb_func_start sub_080AA654
sub_080AA654: @ 0x080AA654
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #0x68
	ldr r0, _080AA688 @ =gUnk_0812A004
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_0801D66C
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #8]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl CreateEntity
	pop {r4, r5, pc}
	.align 2, 0
_080AA688: .4byte gUnk_0812A004

	thumb_func_start sub_080AA68C
sub_080AA68C: @ 0x080AA68C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AA6A4 @ =gUnk_0812A014
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AA6A4: .4byte gUnk_0812A014

	thumb_func_start sub_080AA6A8
sub_080AA6A8: @ 0x080AA6A8
	push {lr}
	ldr r2, _080AA6BC @ =gUnk_0812A02C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AA6BC: .4byte gUnk_0812A02C

	thumb_func_start sub_080AA6C0
sub_080AA6C0: @ 0x080AA6C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _080AA774
	movs r6, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r5, #0x5a
	strb r5, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_080042AC
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _080AA72A
	strb r5, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, _080AA770 @ =gUnk_0812A03C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x39
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	str r4, [r3, #0x50]
_080AA72A:
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _080AA784
	strb r5, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, _080AA770 @ =gUnk_0812A03C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x39
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	str r4, [r3, #0x50]
	b _080AA784
	.align 2, 0
_080AA770: .4byte gUnk_0812A03C
_080AA774:
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_080042AC
	ldr r0, _080AA788 @ =0x00000101
	bl sub_08004488
_080AA784:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA788: .4byte 0x00000101

	thumb_func_start sub_080AA78C
sub_080AA78C: @ 0x080AA78C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080AA7DA
	ldr r0, _080AA7C8 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r2, r0, #1
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	beq _080AA7CC
	adds r3, r4, #0
	adds r3, #0x3a
	ldrb r0, [r3]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r3]
	movs r0, #2
	eors r2, r0
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	bne _080AA832
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AA6C0
	b _080AA832
	.align 2, 0
_080AA7C8: .4byte gLinkEntity
_080AA7CC:
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r1, r2, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_080042AC
_080AA7DA:
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080AA812
	adds r0, r4, #0
	bl sub_080042B8
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AA806
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08004488
_080AA806:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA832
	b _080AA820
_080AA812:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA828
_080AA820:
	adds r0, r4, #0
	bl sub_080AAAA8
	b _080AA832
_080AA828:
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_080042AC
_080AA832:
	pop {r4, r5, pc}

	thumb_func_start sub_080AA834
sub_080AA834: @ 0x080AA834
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _080AA848
	bl sub_0805E780
_080AA848:
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	strb r0, [r4, #0x16]
	ldr r1, _080AA874 @ =gUnk_0812A04C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_080AAA68
	pop {r4, pc}
	.align 2, 0
_080AA874: .4byte gUnk_0812A04C

	thumb_func_start sub_080AA878
sub_080AA878: @ 0x080AA878
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA88E
	adds r0, r4, #0
	bl sub_080042B8
_080AA88E:
	adds r0, r4, #0
	bl sub_080AA9E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AA898
sub_080AA898: @ 0x080AA898
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBB4
	ldr r1, _080AA8B4 @ =gUnk_0812A05C
	ldrb r0, [r4, #0xd]
	subs r0, #5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AA8B4: .4byte gUnk_0812A05C

	thumb_func_start sub_080AA8B8
sub_080AA8B8: @ 0x080AA8B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _080AA99C @ =gLinkEntity
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA920
	ldrb r0, [r4, #0xa]
	lsls r2, r0, #1
	ldrb r0, [r7, #0x14]
	cmp r2, r0
	bne _080AA90A
	ldr r1, _080AA9A0 @ =gUnk_0812A064
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002D4
	cmp r0, #0
	bne _080AA90A
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
_080AA90A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xa]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_080AA920:
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	bne _080AA99A
	ldr r1, _080AA9A4 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _080AA99A
	ldrb r1, [r1, #5]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	ldr r0, _080AA99C @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA99A
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	ldr r1, _080AA9A8 @ =gUnk_0812A06C
	ldrb r0, [r7, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7, #0x2e]
	adds r0, r0, r3
	strh r0, [r7, #0x2e]
	ldrb r0, [r7, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x32]
	adds r0, r0, r1
	strh r0, [r7, #0x32]
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08004488
_080AA99A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AA99C: .4byte gLinkEntity
_080AA9A0: .4byte gUnk_0812A064
_080AA9A4: .4byte gUnk_03003F80
_080AA9A8: .4byte gUnk_0812A06C

	thumb_func_start sub_080AA9AC
sub_080AA9AC: @ 0x080AA9AC
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x84
	strb r2, [r1]
	ldrb r1, [r0, #0xa]
	adds r1, #0xc
	bl sub_080042AC
	pop {pc}

	thumb_func_start sub_080AA9C4
sub_080AA9C4: @ 0x080AA9C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AA9DE
	adds r0, r4, #0
	bl sub_080AAAA8
_080AA9DE:
	pop {r4, pc}

	thumb_func_start sub_080AA9E0
sub_080AA9E0: @ 0x080AA9E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AAA00
	ldr r0, _080AA9FC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	b _080AAA0A
	.align 2, 0
_080AA9FC: .4byte gLinkEntity
_080AAA00:
	ldr r0, _080AAA24 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
_080AAA0A:
	subs r4, r1, r0
	ldrb r2, [r5, #0xa]
	lsls r1, r2, #2
	ldr r0, _080AAA28 @ =gUnk_0812A074
	adds r3, r1, r0
	cmp r2, #2
	bgt _080AAA2C
	cmp r2, #1
	bge _080AAA36
	cmp r2, #0
	beq _080AAA30
	b _080AAA40
	.align 2, 0
_080AAA24: .4byte gLinkEntity
_080AAA28: .4byte gUnk_0812A074
_080AAA2C:
	cmp r2, #3
	bne _080AAA40
_080AAA30:
	cmp r4, #4
	ble _080AAA40
	b _080AAA3E
_080AAA36:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r4, r0
	bge _080AAA40
_080AAA3E:
	adds r3, #2
_080AAA40:
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3, #1]
	strb r0, [r5, #0x15]
	ldrb r0, [r3]
	cmp r0, #5
	bne _080AAA66
	adds r0, r5, #0
	bl sub_08078930
_080AAA66:
	pop {r4, r5, pc}

	thumb_func_start sub_080AAA68
sub_080AAA68: @ 0x080AAA68
	push {r4, r5, r6, lr}
	ldr r2, _080AAAA0 @ =gUnk_0812A084
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _080AAAA4 @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0800015E
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AAAA0: .4byte gUnk_0812A084
_080AAAA4: .4byte gUnk_03000BF0

	thumb_func_start sub_080AAAA8
sub_080AAAA8: @ 0x080AAAA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080AAAE4 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	bl sub_0805E780
	pop {r4, r5, pc}
	.align 2, 0
_080AAAE4: .4byte gUnk_03000BF0

	thumb_func_start sub_080AAAE8
sub_080AAAE8: @ 0x080AAAE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AAB00 @ =gUnk_0812A3C0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AAB00: .4byte gUnk_0812A3C0

	thumb_func_start sub_080AAB04
sub_080AAB04: @ 0x080AAB04
	push {lr}
	ldr r2, _080AAB18 @ =gUnk_0812A3D4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AAB18: .4byte gUnk_0812A3D4

	thumb_func_start sub_080AAB1C
sub_080AAB1C: @ 0x080AAB1C
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080AAB24
sub_080AAB24: @ 0x080AAB24
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	movs r1, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AAB38
sub_080AAB38: @ 0x080AAB38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080AAB4C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080AAB62
_080AAB4C:
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	bne _080AAB5E
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AAB62
_080AAB5E:
	movs r0, #2
	strb r0, [r4, #0xc]
_080AAB62:
	pop {r4, pc}

	thumb_func_start sub_080AAB64
sub_080AAB64: @ 0x080AAB64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AAB7C
	bl sub_0805E780
_080AAB7C:
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AAB8A
	bl sub_0805E780
_080AAB8A:
	pop {r4, pc}

	thumb_func_start sub_080AAB8C
sub_080AAB8C: @ 0x080AAB8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AABA2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_080AABA2:
	adds r0, r4, #0
	bl sub_080AABB0
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080AABB0
sub_080AABB0: @ 0x080AABB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #1
	ldr r0, _080AABEC @ =gUnk_080C9160
	adds r1, r1, r0
	ldrb r2, [r4, #0xe]
	lsls r2, r2, #8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r0, #0
	muls r3, r2, r3
	ldr r0, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #0x2c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_080AABEC: .4byte gUnk_080C9160

	thumb_func_start sub_080AABF0
sub_080AABF0: @ 0x080AABF0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AAC08 @ =gUnk_0812A418
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AAC08: .4byte gUnk_0812A418

	thumb_func_start sub_080AAC0C
sub_080AAC0C: @ 0x080AAC0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080AAC40 @ =gUnk_0812A430
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAC3C
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AAC3C
	subs r1, #0x3f
	movs r0, #0
	strb r0, [r1]
_080AAC3C:
	pop {r4, pc}
	.align 2, 0
_080AAC40: .4byte gUnk_0812A430

	thumb_func_start sub_080AAC44
sub_080AAC44: @ 0x080AAC44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AACCA
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AACBC
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080AACA0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AAC84
	ldr r0, _080AAC80 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FAB0
	b _080AAC8C
	.align 2, 0
_080AAC80: .4byte gLinkEntity
_080AAC84:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FAB0
_080AAC8C:
	bl sub_08077B2C
	ldr r2, _080AACB4 @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
_080AACA0:
	ldr r0, _080AACB8 @ =gLinkEntity
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _080AACCA
	adds r0, r4, #0
	adds r0, #0x45
	strb r1, [r0]
	b _080AACCA
	.align 2, 0
_080AACB4: .4byte gUnk_03003F80
_080AACB8: .4byte gLinkEntity
_080AACBC:
	ldr r0, _080AACDC @ =0x00000119
	bl sub_080A3268
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
_080AACCA:
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AACD8
	movs r0, #0
	strb r0, [r1]
_080AACD8:
	pop {r4, pc}
	.align 2, 0
_080AACDC: .4byte 0x00000119

	thumb_func_start sub_080AACE0
sub_080AACE0: @ 0x080AACE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AACF4
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080AACF4
	bl sub_0805E780
_080AACF4:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r2, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0x86
	cmp r2, #1
	bne _080AAD16
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
_080AAD16:
	ldr r2, [r4, #0x50]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAD4A
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #3
	strb r0, [r1]
	adds r1, #0xc
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080AAD42
	movs r0, #8
	b _080AAD56
_080AAD42:
	cmp r0, #0
	bne _080AAD58
	movs r0, #1
	b _080AAD56
_080AAD4A:
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x45
	movs r0, #0x2b
_080AAD56:
	strb r0, [r1]
_080AAD58:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AAD68
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
_080AAD68:
	bl sub_0805E780
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AAD70
sub_080AAD70: @ 0x080AAD70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080AAD82
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080AAD82:
	ldr r0, _080AAD94 @ =gUnk_0812A440
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AAD94: .4byte gUnk_0812A440

	thumb_func_start sub_080AAD98
sub_080AAD98: @ 0x080AAD98
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_541
nullsub_541: @ 0x080AADA0
	bx lr
	.align 2, 0

	thumb_func_start sub_080AADA4
sub_080AADA4: @ 0x080AADA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080AADB8
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_080AADB8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AADBC
sub_080AADBC: @ 0x080AADBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080AADCC
	movs r0, #1
	strb r0, [r5, #0xc]
	b _080AADE0
_080AADCC:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x2c
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
_080AADE0:
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	bne _080AAE64
	strb r1, [r5, #0xe]
	movs r3, #4
	movs r0, #4
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	movs r0, #0x10
	strb r0, [r1]
	ldrh r0, [r5, #0x36]
	adds r0, #4
	movs r4, #0
	strh r0, [r5, #0x36]
	ldrb r2, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _080AAE60 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x86
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #0x18
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AAE7C
	movs r0, #1
	strb r0, [r1, #0xa]
	ldrb r0, [r5, #0xb]
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	b _080AAE7C
	.align 2, 0
_080AAE60: .4byte gLinkEntity
_080AAE64:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAB0
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FA24
_080AAE7C:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08004260
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AAE88
sub_080AAE88: @ 0x080AAE88
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080AAED0
	cmp r0, #1
	bgt _080AAE9C
	cmp r0, #0
	beq _080AAEA2
	b _080AAEF6
_080AAE9C:
	cmp r0, #2
	beq _080AAEE0
	b _080AAEF6
_080AAEA2:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AAEC2
	movs r0, #4
	strb r0, [r4, #0xf]
	ldr r1, _080AAECC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080AAEC2:
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AAEF6
	.align 2, 0
_080AAECC: .4byte gLinkEntity
_080AAED0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080AAEDC
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AAEE0
_080AAEDC:
	bl sub_0805E780
_080AAEE0:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080AAEEE
	bl sub_0805E780
_080AAEEE:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
_080AAEF6:
	adds r0, r4, #0
	bl sub_080AB034
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AAF00
sub_080AAF00: @ 0x080AAF00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AAF74
	adds r0, r4, #0
	bl sub_080AB034
	pop {r4, pc}

	thumb_func_start sub_080AAF10
sub_080AAF10: @ 0x080AAF10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r4, #0
	bl sub_080AB034
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AAF48
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080AAF48:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080AAF60
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AAF70
	movs r0, #0x7f
	ands r0, r1
	b _080AAF6E
_080AAF60:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AAF70
	movs r0, #0x80
	orrs r0, r1
_080AAF6E:
	strb r0, [r4, #0x10]
_080AAF70:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AAF74
sub_080AAF74: @ 0x080AAF74
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0807953C
	cmp r0, #0
	beq _080AAF94
	bl sub_08000E50
	adds r3, r5, #0
	adds r3, #0x80
	ldrb r1, [r3]
	adds r1, #1
	movs r2, #1
	ands r0, r2
	adds r1, r1, r0
	strb r1, [r3]
_080AAF94:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080AAFCC
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	ldr r4, _080AAFFC @ =gLinkEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #8
	strb r0, [r1]
	subs r0, #0xc
	bl sub_080526A0
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	adds r4, #0x45
	ldrb r1, [r4]
	cmp r1, #0
	bne _080AAFCC
	adds r0, r5, #0
	adds r0, #0x45
	strb r1, [r0]
_080AAFCC:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0x30
	bhi _080AAFE0
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080AB004
_080AAFE0:
	movs r2, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r2, [r1]
	ldr r0, _080AAFFC @ =gLinkEntity
	adds r0, #0x3d
	movs r1, #0xf0
	strb r1, [r0]
	ldr r0, _080AB000 @ =gUnk_03003F80
	strb r2, [r0, #0x1a]
	adds r0, r5, #0
	adds r0, #0x45
	strb r2, [r0]
	b _080AB028
	.align 2, 0
_080AAFFC: .4byte gLinkEntity
_080AB000: .4byte gUnk_03003F80
_080AB004:
	bl sub_08077B2C
	ldr r2, _080AB02C @ =gUnk_03003F80
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r4, _080AB030 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r5, #0x36]
_080AB028:
	pop {r4, r5, pc}
	.align 2, 0
_080AB02C: .4byte gUnk_03003F80
_080AB030: .4byte gLinkEntity

	thumb_func_start sub_080AB034
sub_080AB034: @ 0x080AB034
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _080AB058 @ =0x00000139
	cmp r0, #0
	beq _080AB04E
	movs r1, #0
_080AB04E:
	adds r0, r4, #0
	bl sub_0801D2B4
	pop {r4, pc}
	.align 2, 0
_080AB058: .4byte 0x00000139

	thumb_func_start sub_080AB05C
sub_080AB05C: @ 0x080AB05C
	push {lr}
	ldr r2, _080AB070 @ =gUnk_0812A494
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB070: .4byte gUnk_0812A494

	thumb_func_start sub_080AB074
sub_080AB074: @ 0x080AB074
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AB084
	bl sub_0805E780
_080AB084:
	ldrb r6, [r4, #0xc]
	cmp r6, #0
	bne _080AB0AA
	adds r0, r4, #0
	bl sub_080AB12C
	cmp r0, #0
	beq _080AB124
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r6, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_080AB0AA:
	ldr r0, [r4, #0x50]
	adds r7, r5, #0
	adds r7, #0x7f
	movs r3, #0
	ldrsb r3, [r7, r3]
	rsbs r3, r3, #0
	subs r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	ldr r3, _080AB128 @ =gUnk_080C9160
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r6, r5, #0
	adds r6, #0x7e
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrb r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AB124
	movs r0, #0x19
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _080AB124
	movs r0, #4
	strb r0, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA6C
_080AB124:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB128: .4byte gUnk_080C9160

	thumb_func_start sub_080AB12C
sub_080AB12C: @ 0x080AB12C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AB168 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _080AB16C
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #2
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #3
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #1
	b _080AB16E
	.align 2, 0
_080AB168: .4byte gUnk_03003DBC
_080AB16C:
	movs r0, #0
_080AB16E:
	pop {r4, pc}

	thumb_func_start sub_080AB170
sub_080AB170: @ 0x080AB170
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080AB180
	bl sub_0805E780
_080AB180:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AB1AA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r4, #0x1e]
	ldrb r1, [r2]
	subs r0, #0xd
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AB1C8 @ =gUnk_080FD460
	str r0, [r4, #0x48]
_080AB1AA:
	ldr r5, [r6, #0x50]
	adds r0, r4, #0
	adds r0, #0x7c
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r1, [r0]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	beq _080AB1CC
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _080AB1D2
	.align 2, 0
_080AB1C8: .4byte gUnk_080FD460
_080AB1CC:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_080AB1D2:
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AB208
	movs r0, #0x1f
	ands r0, r1
	ldr r1, _080AB204 @ =gUnk_0812A4A8
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA90
	b _080AB216
	.align 2, 0
_080AB204: .4byte gUnk_0812A4A8
_080AB208:
	movs r3, #0xa
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
_080AB216:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrb r2, [r4, #0xa]
	muls r0, r2, r0
	adds r3, r2, #0
	cmp r0, #0
	bge _080AB22C
	adds r0, #3
_080AB22C:
	asrs r0, r0, #2
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r3, r0
	cmp r0, #0
	bge _080AB246
	adds r0, #3
_080AB246:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r3, #0x36
	ldrsh r0, [r6, r3]
	movs r5, #0x36
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r2, r0
	cmp r0, #0
	bge _080AB260
	adds r0, #3
_080AB260:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AB26C
sub_080AB26C: @ 0x080AB26C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xc]
	cmp r1, #0
	bne _080AB28C
	movs r0, #1
	strb r0, [r2, #0xc]
	movs r0, #5
	strb r0, [r2, #0xe]
	strb r1, [r2, #0x1e]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3e
	ands r0, r1
	strb r0, [r3]
_080AB28C:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AB29E
	bl sub_0805E780
	b _080AB2A4
_080AB29E:
	ldrb r0, [r2, #0x1e]
	adds r0, #1
	strb r0, [r2, #0x1e]
_080AB2A4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB2A8
sub_080AB2A8: @ 0x080AB2A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AB2C0 @ =gUnk_0812A4C8
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AB2C0: .4byte gUnk_0812A4C8

	thumb_func_start sub_080AB2C4
sub_080AB2C4: @ 0x080AB2C4
	push {lr}
	ldr r2, _080AB2D8 @ =gUnk_0812A4DC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB2D8: .4byte gUnk_0812A4DC

	thumb_func_start sub_080AB2DC
sub_080AB2DC: @ 0x080AB2DC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x41
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB314
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	movs r1, #0x53
	bl sub_08004260
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, #0
	bne _080AB314
	movs r0, #4
	rsbs r0, r0, #0
	bl sub_080526A0
_080AB314:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AB318
sub_080AB318: @ 0x080AB318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r4, #1
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r6, #0xc]
	ldr r0, _080AB3D8 @ =0xFFFF0000
	str r0, [r6, #0x20]
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldr r2, _080AB3DC @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x76
	strh r1, [r0]
	ldr r0, [r6, #0x50]
	adds r1, r6, #0
	bl sub_0806FA24
	movs r1, #0x80
	lsls r1, r1, #5
	ldrb r2, [r6, #0x15]
	adds r0, r6, #0
	bl sub_0806F5BC
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r6, #0x34]
	adds r0, r6, #0
	movs r1, #0x51
	bl sub_08004260
	ldr r0, _080AB3E0 @ =0x000001B5
	bl sub_080A3268
	adds r0, r6, #0
	bl sub_080AB4F8
	movs r1, #0x2e
	ldrsh r2, [r6, r1]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r2, r1
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080041DC
	adds r4, r0, #0
	bl sub_08000E50
	adds r1, r0, #0
	ldr r0, _080AB3E4 @ =0x000001FF
	ands r1, r0
	ldr r0, _080AB3E8 @ =gUnk_030010A0
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _080AB3EC
	adds r4, r4, r1
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080AB3F4
	adds r4, r0, #0
	b _080AB3F4
	.align 2, 0
_080AB3D8: .4byte 0xFFFF0000
_080AB3DC: .4byte gUnk_03000BF0
_080AB3E0: .4byte 0x000001B5
_080AB3E4: .4byte 0x000001FF
_080AB3E8: .4byte gUnk_030010A0
_080AB3EC:
	subs r4, r4, r1
	cmp r4, #0x1f
	bgt _080AB3F4
	movs r4, #0x20
_080AB3F4:
	lsls r1, r4, #8
	ldr r0, [r6, #0x34]
	bl __divsi3
	lsls r0, r0, #0xd
	str r0, [r6, #0x20]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080045B4
	strb r0, [r6, #0x15]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AB414
sub_080AB414: @ 0x080AB414
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080AB446
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x54
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080AB4A4
	b _080AB458
_080AB446:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe0
	bls _080AB458
	bl sub_0805E780
_080AB458:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB45C
sub_080AB45C: @ 0x080AB45C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB486
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl sub_08004260
_080AB486:
	pop {r4, pc}

	thumb_func_start sub_080AB488
sub_080AB488: @ 0x080AB488
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB4A0
	bl sub_0805E780
_080AB4A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB4A4
sub_080AB4A4: @ 0x080AB4A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x76
	ldrh r4, [r7]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r3, _080AB4F4 @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	cmp r4, r5
	beq _080AB4F2
	strh r5, [r7]
	adds r0, r6, #0
	bl sub_080002A0
	cmp r0, #0x13
	beq _080AB4E2
	cmp r0, #0x34
	bne _080AB4F2
_080AB4E2:
	movs r0, #0xd3
	lsls r0, r0, #2
	ldrh r1, [r7]
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080AB4F2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB4F4: .4byte gUnk_03000BF0

	thumb_func_start sub_080AB4F8
sub_080AB4F8: @ 0x080AB4F8
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #5
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080AB50C @ =gUnk_0812A4EC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080AB50C: .4byte gUnk_0812A4EC

	thumb_func_start sub_080AB510
sub_080AB510: @ 0x080AB510
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AB528 @ =gUnk_0812A58C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AB528: .4byte gUnk_0812A58C

	thumb_func_start sub_080AB52C
sub_080AB52C: @ 0x080AB52C
	push {lr}
	ldr r2, _080AB540 @ =gUnk_0812A5A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB540: .4byte gUnk_0812A5A0

	thumb_func_start sub_080AB544
sub_080AB544: @ 0x080AB544
	push {lr}
	adds r2, r0, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AB57C
	movs r1, #2
	movs r0, #2
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0xa]
	eors r1, r0
	lsls r1, r1, #3
	ldrb r0, [r2, #0x15]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #2
	bhi _080AB576
	strb r1, [r2, #0x15]
_080AB576:
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
_080AB57C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB580
sub_080AB580: @ 0x080AB580
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldr r1, _080AB598 @ =0x0000FFFC
	strh r1, [r0, #0x36]
	ldrb r1, [r0, #0xa]
	bl sub_08004260
	pop {pc}
	.align 2, 0
_080AB598: .4byte 0x0000FFFC

	thumb_func_start sub_080AB59C
sub_080AB59C: @ 0x080AB59C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	bne _080AB5BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080AB5BC:
	adds r0, r4, #0
	bl sub_080AB5F4
	pop {r4, pc}

	thumb_func_start sub_080AB5C4
sub_080AB5C4: @ 0x080AB5C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_080AB634
	cmp r0, #0
	bne _080AB5F0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AB5F0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080AB5F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB5F4
sub_080AB5F4: @ 0x080AB5F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080043E8
	cmp r0, #2
	beq _080AB61A
	cmp r0, #2
	bhi _080AB60A
	cmp r0, #1
	beq _080AB610
	b _080AB62E
_080AB60A:
	cmp r0, #3
	beq _080AB624
	b _080AB62E
_080AB610:
	adds r0, r4, #0
	bl sub_080043B4
	movs r0, #1
	b _080AB630
_080AB61A:
	adds r0, r4, #0
	bl sub_080043A8
	movs r0, #1
	b _080AB630
_080AB624:
	adds r0, r4, #0
	bl sub_080043AC
	movs r0, #1
	b _080AB630
_080AB62E:
	movs r0, #0
_080AB630:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB634
sub_080AB634: @ 0x080AB634
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	movs r5, #0
	adds r4, r0, #0
	adds r4, #0x20
_080AB640:
	ldr r1, [r4]
	cmp r1, #0
	beq _080AB684
	adds r0, r6, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080AB684
	ldr r1, [r4]
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bhi _080AB67A
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r2, [r4]
	ldrb r0, [r2, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4]
	movs r1, #0x45
	movs r2, #0
	bl CreateFX
_080AB67A:
	adds r0, r6, #0
	bl sub_0805E7BC
	movs r0, #1
	b _080AB68E
_080AB684:
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	bls _080AB640
	movs r0, #0
_080AB68E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080AB690
sub_080AB690: @ 0x080AB690
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080AB6A2
	bl sub_0805E780
_080AB6A2:
	ldr r0, _080AB6B4 @ =gUnk_0812A5E8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AB6B4: .4byte gUnk_0812A5E8

	thumb_func_start sub_080AB6B8
sub_080AB6B8: @ 0x080AB6B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #0x2c]
	str r0, [r2, #0x74]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080AB6E8
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r0, _080AB6E4 @ =gUnk_0812A614
	str r0, [r2, #0x48]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08004260
	b _080AB6F8
	.align 2, 0
_080AB6E4: .4byte gUnk_0812A614
_080AB6E8:
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #4
	strb r0, [r2, #0xf]
	ldrb r1, [r2, #0xe]
	adds r0, r2, #0
	bl sub_08004260
_080AB6F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB6FC
sub_080AB6FC: @ 0x080AB6FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB724
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080AB758
_080AB724:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB728
sub_080AB728: @ 0x080AB728
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r2, [r4, #0x50]
	ldr r1, [r2, #0x2c]
	ldr r0, [r4, #0x74]
	subs r1, r1, r0
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	str r0, [r4, #0x74]
	adds r0, r4, #0
	bl sub_080AB888
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _080AB754
	bl sub_0805E780
_080AB754:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB758
sub_080AB758: @ 0x080AB758
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #6
	movs r7, #0
	movs r4, #0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	ldr r1, _080AB818 @ =gUnk_03000BF0
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r1
	cmp r2, r0
	bhi _080AB7B4
	movs r3, #7
_080AB77E:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #7
	bne _080AB798
	adds r0, r5, #0
	movs r1, #4
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x3e
	adds r7, #0x3e
	ldr r3, [sp]
_080AB798:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gUnk_03000BF0
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB77E
_080AB7B4:
	movs r4, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r2, r0, r7
	mov r1, r8
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _080AB802
	movs r3, #3
_080AB7CC:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #3
	bne _080AB7E6
	adds r0, r5, #0
	movs r1, #3
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x1e
	adds r7, #0x1e
	ldr r3, [sp]
_080AB7E6:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gUnk_03000BF0
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB7CC
_080AB802:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080AB81C
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #0xe
	b _080AB830
	.align 2, 0
_080AB818: .4byte gUnk_03000BF0
_080AB81C:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080AB830
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #6
_080AB830:
	adds r0, r5, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_080AB844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AB844
sub_080AB844: @ 0x080AB844
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r0, #0x1c
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _080AB880
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xe]
	ldr r0, [r5, #0x50]
	str r0, [r4, #0x50]
	lsls r3, r6, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	cmp r7, #1
	beq _080AB87C
	ldr r0, _080AB878 @ =gUnk_0812A61C
	b _080AB87E
	.align 2, 0
_080AB878: .4byte gUnk_0812A61C
_080AB87C:
	ldr r0, _080AB884 @ =gUnk_0812A614
_080AB87E:
	str r0, [r4, #0x48]
_080AB880:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB884: .4byte gUnk_0812A614

	thumb_func_start sub_080AB888
sub_080AB888: @ 0x080AB888
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	movs r3, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #3
	beq _080AB8A4
	cmp r0, #3
	ble _080AB8B6
	cmp r0, #4
	beq _080AB8A6
	b _080AB8B6
_080AB8A4:
	movs r3, #1
_080AB8A6:
	ldr r0, _080AB8C4 @ =gUnk_0812A5F4
	ldrb r1, [r2, #0xf]
	lsls r1, r1, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x48]
_080AB8B6:
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	bne _080AB8C0
	movs r0, #4
	strb r0, [r2, #0xf]
_080AB8C0:
	pop {pc}
	.align 2, 0
_080AB8C4: .4byte gUnk_0812A5F4

	thumb_func_start sub_080AB8C8
sub_080AB8C8: @ 0x080AB8C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080AB8E4 @ =gUnk_0812A6B4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080AB9DC
	pop {r4, pc}
	.align 2, 0
_080AB8E4: .4byte gUnk_0812A6B4

	thumb_func_start sub_080AB8E8
sub_080AB8E8: @ 0x080AB8E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	str r1, [r4, #0x34]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB90E
	bl sub_08000E50
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	str r4, [r4, #0x50]
_080AB90E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bhi _080AB936
	movs r0, #0x1d
	bl sub_080A7EE0
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	str r4, [r1, #0x54]
	adds r0, r4, #0
	bl sub_0806FA24
_080AB936:
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #7
_080AB93C:
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080AB93C
	pop {r4, pc}

	thumb_func_start sub_080AB950
sub_080AB950: @ 0x080AB950
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB99C
	adds r0, r4, #0
	bl sub_080AEF88
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	ldr r1, _080AB994 @ =gUnk_0812A6C4
	lsls r5, r0, #1
	adds r1, r5, r1
	ldrh r1, [r1]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r0, #0
	bne _080AB980
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AB9FC
	cmp r0, #0
	beq _080AB9D4
_080AB980:
	bl sub_08000E50
	ldr r2, _080AB998 @ =gUnk_0812A6BC
	movs r1, #1
	ands r1, r0
	adds r1, r1, r5
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0x15]
	b _080AB9D4
	.align 2, 0
_080AB994: .4byte gUnk_0812A6C4
_080AB998: .4byte gUnk_0812A6BC
_080AB99C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080AB9A6
	bl sub_0805E780
_080AB9A6:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AB9B2
	bl sub_0805E780
_080AB9B2:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080AB9D0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080AB9D0
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	b _080AB9D4
_080AB9D0:
	bl sub_0805E780
_080AB9D4:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}

	thumb_func_start sub_080AB9DC
sub_080AB9DC: @ 0x080AB9DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #0x1c
	bl sub_0801D66C
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, #2
	strh r1, [r0]
	pop {r4, pc}

	thumb_func_start sub_080AB9FC
sub_080AB9FC: @ 0x080AB9FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_0808094C
	movs r1, #0x2e
	ldrsh r3, [r5, r1]
	ldr r2, _080ABA4C @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r3, r3, r1
	asrs r3, r3, #4
	movs r6, #0x3f
	ands r3, r6
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r3, r1
	ldr r1, _080ABA50 @ =gUnk_080B4488
	lsrs r4, r4, #3
	lsls r4, r4, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r3, r3, r1
	ldr r7, _080ABA54 @ =0x00002004
	adds r0, r0, r7
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x1f
	bls _080ABA58
	cmp r0, #0x3f
	bhi _080ABA58
	movs r0, #1
	b _080ABA5A
	.align 2, 0
_080ABA4C: .4byte gUnk_03000BF0
_080ABA50: .4byte gUnk_080B4488
_080ABA54: .4byte 0x00002004
_080ABA58:
	movs r0, #0
_080ABA5A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080ABA5C
sub_080ABA5C: @ 0x080ABA5C
	push {lr}
	ldr r2, _080ABA70 @ =gUnk_0812A6CC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ABA70: .4byte gUnk_0812A6CC

	thumb_func_start sub_080ABA74
sub_080ABA74: @ 0x080ABA74
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	ldrh r1, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r0, #0x18
	strh r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #6
	bhi _080ABAAA
	movs r0, #0
	b _080ABAAC
_080ABAAA:
	movs r0, #1
_080ABAAC:
	strb r0, [r2, #0xb]
	ldr r0, _080ABAC8 @ =gUnk_0812A6D4
	ldrb r1, [r2, #0xa]
	adds r0, r1, r0
	ldrb r3, [r0]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _080ABACC
	movs r0, #8
	strb r0, [r2, #0x15]
	ldrh r0, [r2, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	b _080ABAD6
	.align 2, 0
_080ABAC8: .4byte gUnk_0812A6D4
_080ABACC:
	movs r0, #0x10
	strb r0, [r2, #0x15]
	ldrh r0, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
_080ABAD6:
	adds r0, r2, #0
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080ABAE0
sub_080ABAE0: @ 0x080ABAE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080AF090
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080ABAFE
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r3, r0, r1
	b _080ABB0C
_080ABAFE:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6a
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r3, r1, r0
_080ABB0C:
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r6, r0, #0
	cmp r2, #0
	bge _080ABB1E
	rsbs r3, r3, #0
	rsbs r2, r2, #0
_080ABB1E:
	lsls r1, r3, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	bls _080ABB84
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xb]
	adds r5, r0, #0
	cmp r5, #0
	bne _080ABB4E
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	b _080ABB62
_080ABB4E:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrb r2, [r4, #0x18]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
_080ABB62:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	cmp r3, #0
	ble _080ABB84
	lsls r0, r5, #0x18
	cmp r0, #0
	bne _080ABB7C
	ldrh r0, [r6]
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	b _080ABB84
_080ABB7C:
	ldrh r0, [r6]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_080ABB84:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080ABB8C
sub_080ABB8C: @ 0x080ABB8C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABBA4 @ =gUnk_0812A7D4
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABBA4: .4byte gUnk_0812A7D4

	thumb_func_start sub_080ABBA8
sub_080ABBA8: @ 0x080ABBA8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	beq _080ABBC4
	cmp r0, #1
	bgt _080ABBDC
	cmp r0, #0
	bne _080ABBDC
	ldr r0, _080ABBC0 @ =gUnk_0812A7EC
	b _080ABBC6
	.align 2, 0
_080ABBC0: .4byte gUnk_0812A7EC
_080ABBC4:
	ldr r0, _080ABBD8 @ =gUnk_0812A7F8
_080ABBC6:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080ABBEC
	.align 2, 0
_080ABBD8: .4byte gUnk_0812A7F8
_080ABBDC:
	ldr r0, _080ABBF0 @ =gUnk_0812A800
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080ABBEC:
	pop {pc}
	.align 2, 0
_080ABBF0: .4byte gUnk_0812A800

	thumb_func_start sub_080ABBF4
sub_080ABBF4: @ 0x080ABBF4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABC52
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	blt _080ABC52
	cmp r0, #1
	ble _080ABC3E
	cmp r0, #2
	bne _080ABC52
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	beq _080ABC32
	cmp r0, #3
	bgt _080ABC24
	cmp r0, #0
	beq _080ABC2A
	b _080ABC52
_080ABC24:
	cmp r0, #0x14
	beq _080ABC32
	b _080ABC52
_080ABC2A:
	movs r0, #4
	rsbs r0, r0, #0
	bl sub_080526A0
_080ABC32:
	adds r0, r4, #0
	bl sub_080A29BC
	bl sub_0805E780
	b _080ABC52
_080ABC3E:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080ABC52
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_080526A0
	bl sub_0805E780
_080ABC52:
	pop {r4, pc}

	thumb_func_start sub_080ABC54
sub_080ABC54: @ 0x080ABC54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080ABC6E
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080ABC6E:
	ldr r0, _080ABC80 @ =gUnk_0812A808
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080ABC80: .4byte gUnk_0812A808

	thumb_func_start sub_080ABC84
sub_080ABC84: @ 0x080ABC84
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_542
nullsub_542: @ 0x080ABC8C
	bx lr
	.align 2, 0

	thumb_func_start sub_080ABC90
sub_080ABC90: @ 0x080ABC90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080ABCBE
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_080526A0
	ldr r0, _080ABCC0 @ =gLinkEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080ABCBE:
	pop {r4, pc}
	.align 2, 0
_080ABCC0: .4byte gLinkEntity

	thumb_func_start sub_080ABCC4
sub_080ABCC4: @ 0x080ABCC4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080ABD3C @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r0]
	movs r1, #2
	bl sub_080002B0
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, _080ABD40 @ =0x0000014B
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_080ABD3C: .4byte gUnk_03000BF0
_080ABD40: .4byte 0x0000014B

	thumb_func_start sub_080ABD44
sub_080ABD44: @ 0x080ABD44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080ABD60
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_080ABD60:
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ABD70
sub_080ABD70: @ 0x080ABD70
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ABDEE
	movs r0, #0xef
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	strh r1, [r5, #0x24]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080ABDDC @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	movs r1, #2
	bl sub_080002B0
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrh r1, [r1]
	cmp r1, #0x13
	beq _080ABDE4
	ldr r0, _080ABDE0 @ =0x00000315
	cmp r1, r0
	bne _080ABDEE
	ldrh r1, [r4]
	movs r0, #0x6e
	movs r2, #2
	bl sub_0807B314
	b _080ABDEE
	.align 2, 0
_080ABDDC: .4byte gUnk_03000BF0
_080ABDE0: .4byte 0x00000315
_080ABDE4:
	ldrh r1, [r4]
	movs r0, #0x6d
	movs r2, #2
	bl sub_0807B314
_080ABDEE:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABE00
	bl sub_0805E780
_080ABE00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080ABE04
sub_080ABE04: @ 0x080ABE04
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ABE48 @ =0xFFFF0000
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x36]
	subs r0, #0xa0
	strh r0, [r4, #0x36]
	ldr r3, _080ABE4C @ =gUnk_03000BF0
	ldrh r2, [r3, #6]
	ldr r1, _080ABE50 @ =0x00007FF0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r3, #8]
	ands r1, r0
	orrs r1, r2
	strh r1, [r4, #0x32]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080ABE54
	adds r1, #0x10
	b _080ABE56
	.align 2, 0
_080ABE48: .4byte 0xFFFF0000
_080ABE4C: .4byte gUnk_03000BF0
_080ABE50: .4byte 0x00007FF0
_080ABE54:
	adds r1, #0xc0
_080ABE56:
	movs r0, #0xe0
	ands r0, r5
	lsrs r0, r0, #1
	adds r0, r1, r0
	strh r0, [r4, #0x2e]
	movs r0, #0xf
	ands r5, r0
	lsls r0, r5, #4
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08004168
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, _080ABE84 @ =0x0000012D
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_080ABE84: .4byte 0x0000012D

	thumb_func_start sub_080ABE88
sub_080ABE88: @ 0x080ABE88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _080ABEA6
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_080ABEA6:
	pop {r4, pc}

	thumb_func_start sub_080ABEA8
sub_080ABEA8: @ 0x080ABEA8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r0, #0x60
	strb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x68
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0x1c]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080ABEDA
	bl sub_08000E50
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	strb r0, [r4, #0x15]
	b _080ABEEC
_080ABEDA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldr r1, _080ABEFC @ =0x0000013F
	adds r0, r4, #0
	bl sub_0801D2B4
_080ABEEC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, _080ABF00 @ =0x00000193
	bl sub_080A3268
	pop {r4, pc}
	.align 2, 0
_080ABEFC: .4byte 0x0000013F
_080ABF00: .4byte 0x00000193

	thumb_func_start sub_080ABF04
sub_080ABF04: @ 0x080ABF04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080ABF14
	bl sub_0805E780
_080ABF14:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ABF24
sub_080ABF24: @ 0x080ABF24
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABF3C @ =gUnk_0812A84C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABF3C: .4byte gUnk_0812A84C

	thumb_func_start sub_080ABF40
sub_080ABF40: @ 0x080ABF40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080ABF66
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _080ABFA0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, _080ABFA4 @ =0x00000199
	bl sub_080A3268
_080ABF66:
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080ABF78
	adds r0, r2, #2
	strh r0, [r4, #0x36]
_080ABF78:
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080ABF88
	bl sub_0805E780
_080ABF88:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ABF9C
	bl sub_0805E780
_080ABF9C:
	pop {r4, pc}
	.align 2, 0
_080ABFA0: .4byte gLinkEntity
_080ABFA4: .4byte 0x00000199

	thumb_func_start sub_080ABFA8
sub_080ABFA8: @ 0x080ABFA8
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080ABFB0
sub_080ABFB0: @ 0x080ABFB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABFC8 @ =gUnk_0812A954
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABFC8: .4byte gUnk_0812A954

	thumb_func_start sub_080ABFCC
sub_080ABFCC: @ 0x080ABFCC
	push {lr}
	ldr r2, _080ABFE0 @ =gUnk_0812A968
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ABFE0: .4byte gUnk_0812A968

	thumb_func_start sub_080ABFE4
sub_080ABFE4: @ 0x080ABFE4
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080ABFEC
sub_080ABFEC: @ 0x080ABFEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #1
	bl sub_08004260
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080AC030
	cmp r1, #1
	beq _080AC048
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xf]
	ldr r1, _080AC028 @ =gUnk_0812A97C
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x88
	strb r0, [r1]
	ldr r0, _080AC02C @ =0x00000193
	b _080AC06A
	.align 2, 0
_080AC028: .4byte gUnk_0812A97C
_080AC02C: .4byte 0x00000193
_080AC030:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #7
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
	strb r0, [r1]
	subs r1, #0x41
	movs r0, #0x88
	b _080AC058
_080AC048:
	strb r1, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
_080AC058:
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	ldr r0, _080AC070 @ =0x00000149
_080AC06A:
	bl sub_080A3268
	pop {r4, pc}
	.align 2, 0
_080AC070: .4byte 0x00000149

	thumb_func_start sub_080AC074
sub_080AC074: @ 0x080AC074
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC084
	bl sub_0805E780
_080AC084:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AC0B2
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080AC0B2
	ldr r0, _080AC0E8 @ =0x00000149
	bl sub_080A3268
_080AC0B2:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC0FE
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC0F0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, _080AC0EC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, #0x13
	bl sub_080A3268
	b _080AC0F8
	.align 2, 0
_080AC0E8: .4byte 0x00000149
_080AC0EC: .4byte gLinkEntity
_080AC0F0:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
_080AC0F8:
	ldrh r0, [r4, #0x36]
	subs r0, #0x28
	strh r0, [r4, #0x36]
_080AC0FE:
	pop {r4, pc}

	thumb_func_start sub_080AC100
sub_080AC100: @ 0x080AC100
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AC116
	adds r0, r2, #3
	strh r0, [r4, #0x36]
_080AC116:
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AC126
	bl sub_0805E780
_080AC126:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AC13A
	bl sub_0805E780
_080AC13A:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x1d
	bhi _080AC160
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	ldrb r1, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080AC160
	ldr r1, _080AC164 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080AC160:
	pop {r4, pc}
	.align 2, 0
_080AC164: .4byte gLinkEntity

	thumb_func_start sub_080AC168
sub_080AC168: @ 0x080AC168
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x34]
	ldr r1, _080AC1C0 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080AC1F8
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	bl sub_08000E50
	adds r5, r0, #0
	movs r0, #7
	ands r5, r0
	ldr r0, _080AC1C4 @ =gUnk_0812A982
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	ldr r1, _080AC1C8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC1D0
	ldr r0, _080AC1CC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r6, [r4, #0xb]
	b _080AC1F2
	.align 2, 0
_080AC1C0: .4byte 0xFFFF8000
_080AC1C4: .4byte gUnk_0812A982
_080AC1C8: .4byte gLinkEntity
_080AC1CC: .4byte gUnk_0812A98A
_080AC1D0:
	cmp r0, #2
	bne _080AC1E4
	ldr r0, _080AC1E0 @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	movs r0, #1
	b _080AC1F0
	.align 2, 0
_080AC1E0: .4byte gUnk_0812A98A
_080AC1E4:
	ldr r0, _080AC1FC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r0, #2
_080AC1F0:
	strb r0, [r4, #0xb]
_080AC1F2:
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080AC1F8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AC1FC: .4byte gUnk_0812A98A

	thumb_func_start sub_080AC200
sub_080AC200: @ 0x080AC200
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC270
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #0x21
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AC23C
	movs r0, #2
	strb r0, [r1, #0xa]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r0, r4, #0
	bl sub_0806FA24
_080AC23C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080AC24C
	bl sub_0805E780
_080AC24C:
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC25C
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC25C:
	cmp r0, #2
	bne _080AC266
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC266:
	ldrb r0, [r4, #0x15]
	adds r0, #2
_080AC26A:
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080AC270:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC274
sub_080AC274: @ 0x080AC274
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC284
	bl sub_0805E780
_080AC284:
	ldr r1, _080AC2BC @ =gUnk_0812A994
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC2C0
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
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080AC324
	.align 2, 0
_080AC2BC: .4byte gUnk_0812A994
_080AC2C0:
	ldr r5, [r4, #0x50]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #2
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
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _080AC31C
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC31C
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _080AC322
_080AC31C:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_080AC322:
	strb r0, [r4, #0x10]
_080AC324:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC328
sub_080AC328: @ 0x080AC328
	push {lr}
	ldr r2, _080AC33C @ =gUnk_0812A9A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AC33C: .4byte gUnk_0812A9A8

	thumb_func_start sub_080AC340
sub_080AC340: @ 0x080AC340
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080AC5E4
	cmp r0, #0
	beq _080AC380
	movs r2, #1
	movs r4, #1
	strb r4, [r5, #0xc]
	movs r0, #0xc
	strb r0, [r5, #0x1e]
	ldrb r1, [r5, #0x18]
	subs r0, #0x10
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	bl sub_08000E50
	ldr r1, _080AC384 @ =gUnk_0812A9B4
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080AC388
_080AC380:
	pop {r4, r5, pc}
	.align 2, 0
_080AC384: .4byte gUnk_0812A9B4

	thumb_func_start sub_080AC388
sub_080AC388: @ 0x080AC388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r1, _080AC3E4 @ =gUnk_0812A9B8
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r3, [r0]
	ldr r0, [r5, #0x50]
	mov sl, r0
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	mov sb, r1
	mov r1, sb
	eors r1, r0
	adds r6, r5, #0
	adds r6, #0x7c
	ldrh r4, [r6]
	lsrs r0, r4, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r7, [r2]
	mov ip, r7
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080AC404
	subs r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x7f
	bhi _080AC3E8
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	subs r0, r0, r3
	b _080AC422
	.align 2, 0
_080AC3E4: .4byte gUnk_0812A9B8
_080AC3E8:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	adds r0, r1, r3
	mov r7, r8
	ands r0, r7
	cmp r0, #0x80
	bls _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	adds r0, r0, r3
	b _080AC44E
_080AC404:
	adds r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x80
	bls _080AC432
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	adds r0, r0, r3
_080AC422:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_080AC884
	b _080AC45A
_080AC432:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	subs r0, r1, r3
	mov r7, r8
	ands r0, r7
	subs r0, #1
	cmp r0, #0x7e
	bhi _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	subs r0, r0, r3
_080AC44E:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r6]
_080AC45A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AC6F0
	adds r0, r5, #0
	bl sub_080AC760
	adds r0, r5, #0
	bl sub_080AC7C4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AC480
sub_080AC480: @ 0x080AC480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _080AC4BE
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC4A2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1d
	strb r0, [r1]
	b _080AC50A
_080AC4A2:
	subs r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC50A
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0x1c
	strb r1, [r0]
	movs r0, #0x8b
	lsls r0, r0, #1
	bl sub_080A3268
	b _080AC50A
_080AC4BE:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC4D6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1d
	strb r0, [r1]
_080AC4D6:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _080AC4EE
	movs r3, #0xc0
	lsls r3, r3, #2
	b _080AC4F0
_080AC4EE:
	ldr r3, _080AC50C @ =0xFFFFFD00
_080AC4F0:
	adds r0, r2, r3
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AC6F0
	adds r0, r4, #0
	bl sub_080AC760
	adds r0, r4, #0
	bl sub_080AC7C4
_080AC50A:
	pop {r4, pc}
	.align 2, 0
_080AC50C: .4byte 0xFFFFFD00

	thumb_func_start sub_080AC510
sub_080AC510: @ 0x080AC510
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AC556
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _080AC558 @ =gUnk_0812A9BA
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #0xb]
	adds r0, r0, r1
	subs r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _080AC556
	ldr r0, _080AC55C @ =gUnk_080FD458
	str r0, [r4, #0x48]
_080AC556:
	pop {r4, pc}
	.align 2, 0
_080AC558: .4byte gUnk_0812A9BA
_080AC55C: .4byte gUnk_080FD458

	thumb_func_start sub_080AC560
sub_080AC560: @ 0x080AC560
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AC570
	bl sub_0805E780
_080AC570:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AC5A6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC590
	ldr r0, _080AC58C @ =gUnk_080FD168
	b _080AC592
	.align 2, 0
_080AC58C: .4byte gUnk_080FD168
_080AC590:
	ldr r0, _080AC5DC @ =gUnk_080FD448
_080AC592:
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_080AC5A6:
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC5E0 @ =gUnk_080C9160
	ldrb r0, [r5, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrb r0, [r5, #0x15]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_080AC5DC: .4byte gUnk_080FD448
_080AC5E0: .4byte gUnk_080C9160

	thumb_func_start sub_080AC5E4
sub_080AC5E4: @ 0x080AC5E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	bne _080AC668
	ldr r0, _080AC664 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _080AC670
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r1, r6, #0
	adds r1, #0x79
	movs r0, #0x12
	strb r0, [r1]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x79
	movs r1, #0x14
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r7, [r6, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #0xa]
	movs r1, #3
	strb r1, [r0, #0xb]
	ldr r1, [r5, #0x50]
	str r1, [r0, #0x50]
	str r4, [r0, #0x54]
	adds r1, r0, #0
	adds r1, #0x79
	strb r4, [r1]
	str r0, [r7, #0x54]
	b _080AC6C8
	.align 2, 0
_080AC664: .4byte gUnk_03003DBC
_080AC668:
	ldr r0, _080AC674 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bls _080AC678
_080AC670:
	movs r0, #0
	b _080AC6E8
	.align 2, 0
_080AC674: .4byte gUnk_03003DBC
_080AC678:
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0
	mov sb, r0
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x79
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	mov r0, sb
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x79
	movs r0, #0x20
	strb r0, [r1]
	str r7, [r6, #0x54]
_080AC6C8:
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #4
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x79
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
_080AC6E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AC6F0
sub_080AC6F0: @ 0x080AC6F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r2, #0x1f
	ands r2, r0
	lsrs r0, r0, #5
	lsls r1, r0, #1
	adds r3, r1, r0
	ldr r1, _080AC724 @ =gUnk_0812A9C0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, r0, r3
	adds r5, r1, #0
	cmp r0, #3
	bhi _080AC73A
	cmp r0, #1
	beq _080AC72E
	cmp r0, #1
	blo _080AC728
	cmp r0, #2
	beq _080AC732
	cmp r2, #0x19
	bhi _080AC75C
	b _080AC73A
	.align 2, 0
_080AC724: .4byte gUnk_0812A9C0
_080AC728:
	cmp r2, #6
	bls _080AC75C
	b _080AC73A
_080AC72E:
	subs r0, r2, #5
	b _080AC736
_080AC732:
	adds r0, r2, #0
	subs r0, #0xf
_080AC736:
	cmp r0, #0xc
	bls _080AC75C
_080AC73A:
	adds r0, r3, #3
	cmp r2, #0x1a
	bhi _080AC74E
	adds r0, r3, #2
	cmp r2, #0x10
	bhi _080AC74E
	adds r0, r3, #0
	cmp r2, #5
	bls _080AC74E
	adds r0, #1
_080AC74E:
	movs r1, #0x18
	bl __modsi3
	strb r0, [r4, #0x14]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
_080AC75C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC760
sub_080AC760: @ 0x080AC760
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x54]
	ldrb r0, [r4, #0x15]
	ldrb r3, [r6, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC78A
	cmp r2, #0x80
	ble _080AC784
	adds r0, r3, #0
	subs r0, #8
	b _080AC788
_080AC784:
	adds r0, r3, #0
	adds r0, #8
_080AC788:
	strb r0, [r4, #0x15]
_080AC78A:
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080AC79C
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	eors r0, r1
	b _080AC7BE
_080AC79C:
	ldrb r0, [r5, #0x15]
	ldrb r3, [r4, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC7C0
	cmp r2, #0x80
	ble _080AC7BA
	adds r0, r3, #0
	subs r0, #8
	b _080AC7BE
_080AC7BA:
	adds r0, r3, #0
	adds r0, #8
_080AC7BE:
	strb r0, [r5, #0x15]
_080AC7C0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AC7C4
sub_080AC7C4: @ 0x080AC7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r8, r0
	ldr r7, [r0, #0x54]
	ldr r5, [r7, #0x54]
	cmp r5, #0
	beq _080AC7E4
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl sub_0806FA24
	b _080AC7E6
_080AC7E4:
	ldr r5, [r4, #0x50]
_080AC7E6:
	adds r0, r7, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC880 @ =gUnk_080C9160
	mov sb, r3
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl PositionRelative
	mov r0, r8
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	mov r0, r8
	ldrb r1, [r0, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldrb r1, [r4, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	bl PositionRelative
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AC880: .4byte gUnk_080C9160

	thumb_func_start sub_080AC884
sub_080AC884: @ 0x080AC884
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	adds r2, r0, #0
	adds r2, #0x72
	ldrh r0, [r2]
	cmp r0, #0
	beq _080AC8A4
	movs r0, #0
	strh r0, [r2]
	movs r0, #2
	strb r0, [r1, #0xc]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	movs r0, #0x56
	strb r0, [r1, #0xf]
_080AC8A4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AC8A8
sub_080AC8A8: @ 0x080AC8A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AC8C0 @ =gUnk_0812A9D8
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AC8C0: .4byte gUnk_0812A9D8

	thumb_func_start sub_080AC8C4
sub_080AC8C4: @ 0x080AC8C4
	push {lr}
	ldr r2, _080AC8D8 @ =gUnk_0812A9EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AC8D8: .4byte gUnk_0812A9EC

	thumb_func_start sub_080AC8DC
sub_080AC8DC: @ 0x080AC8DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080AC8FE
	cmp r1, #3
	ble _080AC8F8
	cmp r1, #0x1f
	bgt _080AC8FE
	cmp r1, #0x1e
	blt _080AC8FE
_080AC8F8:
	bl sub_0805E780
	b _080AC920
_080AC8FE:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080AC920
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_080AC920:
	adds r0, r4, #0
	bl sub_080AC8C4
	pop {r4, pc}

	thumb_func_start sub_080AC928
sub_080AC928: @ 0x080AC928
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_080AC954
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AC954
sub_080AC954: @ 0x080AC954
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC964
	bl sub_0805E780
_080AC964:
	ldr r0, [r5, #0x50]
	ldrb r3, [r0, #0x14]
	ldr r4, _080AC9C4 @ =gUnk_080C9160
	lsls r1, r3, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0xb
	adds r3, #0x40
	lsls r3, r3, #1
	adds r3, r3, r4
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r3, r1, #2
	adds r3, r3, r1
	lsls r3, r3, #0xb
	rsbs r3, r3, #0
	adds r1, r5, #0
	bl PositionRelative
	adds r0, r5, #0
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC9C0
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldr r1, _080AC9C8 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	movs r0, #0x97
	lsls r0, r0, #1
	bl sub_080A3268
_080AC9C0:
	pop {r4, r5, pc}
	.align 2, 0
_080AC9C4: .4byte gUnk_080C9160
_080AC9C8: .4byte gLinkEntity

	thumb_func_start sub_080AC9CC
sub_080AC9CC: @ 0x080AC9CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AC9E8
	bl sub_0805E780
_080AC9E8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080ACA10
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_080ACA10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACA14
sub_080ACA14: @ 0x080ACA14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ACA32
	bl sub_0805E780
_080ACA32:
	pop {r4, pc}

	thumb_func_start sub_080ACA34
sub_080ACA34: @ 0x080ACA34
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ACA4C @ =gUnk_0812AA5C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ACA4C: .4byte gUnk_0812AA5C

	thumb_func_start sub_080ACA50
sub_080ACA50: @ 0x080ACA50
	push {lr}
	ldr r2, _080ACA64 @ =gUnk_0812AA74
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ACA64: .4byte gUnk_0812AA74

	thumb_func_start sub_080ACA68
sub_080ACA68: @ 0x080ACA68
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0xc
	bgt _080ACA82
	cmp r1, #0xa
	bge _080ACA86
	cmp r1, #6
	beq _080ACA86
	b _080ACAC0
_080ACA82:
	cmp r1, #0x1a
	bne _080ACAC0
_080ACA86:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x24]
	adds r0, r0, r1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_080ACB40
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	b _080ACAB6
_080ACAB0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
_080ACAB6:
	strb r0, [r4, #0x15]
	movs r0, #0xd8
	bl sub_080A3268
	b _080ACAC4
_080ACAC0:
	bl sub_0805E780
_080ACAC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACAC8
sub_080ACAC8: @ 0x080ACAC8
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x10
	strb r1, [r0, #0x15]
	ldr r1, _080ACAE8 @ =0x0000FFFC
	strh r1, [r0, #0x36]
	str r2, [r0, #0x54]
	movs r1, #7
	bl sub_08004260
	ldr r0, _080ACAEC @ =0x00000199
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_080ACAE8: .4byte 0x0000FFFC
_080ACAEC: .4byte 0x00000199

	thumb_func_start sub_080ACAF0
sub_080ACAF0: @ 0x080ACAF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ACB0C
	bl sub_0805E780
_080ACB0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACB10
sub_080ACB10: @ 0x080ACB10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080ACB22
	bl sub_0805E780
_080ACB22:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080ACB90
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ACB3C
	bl sub_0805E780
_080ACB3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACB40
sub_080ACB40: @ 0x080ACB40
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r1, [r0, #0x50]
	ldr r3, [r2, #0x54]
	ldr r0, [r1, #0x64]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB5A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB5A:
	ldr r1, [r1, #0x64]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB6A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB6A:
	ldr r0, [r1, #0x24]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB78
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB78:
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB8A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	bne _080ACB8A
_080ACB86:
	movs r0, #0
	b _080ACB8C
_080ACB8A:
	movs r0, #1
_080ACB8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080ACB90
sub_080ACB90: @ 0x080ACB90
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x50]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _080ACBC6
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bgt _080ACBC6
	movs r0, #1
	strb r0, [r3, #0xf]
	adds r0, r2, #0
	movs r1, #0x1f
	movs r2, #0x40
	bl CreateFX
	ldr r0, _080ACBC8 @ =0x00000119
	bl sub_08004488
	bl sub_0805E780
_080ACBC6:
	pop {r4, pc}
	.align 2, 0
_080ACBC8: .4byte 0x00000119

	thumb_func_start sub_080ACBCC
sub_080ACBCC: @ 0x080ACBCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ACBFC @ =gUnk_03003F80
	ldrb r1, [r0, #0x1c]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #1
	beq _080ACBE0
	bl sub_0805E780
_080ACBE0:
	ldr r1, _080ACC00 @ =gUnk_0812AA80
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_080ACBFC: .4byte gUnk_03003F80
_080ACC00: .4byte gUnk_0812AA80

	thumb_func_start sub_080ACC04
sub_080ACC04: @ 0x080ACC04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ACC54 @ =gLinkEntity
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080ACC58 @ =gUnk_0812AAD8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	movs r0, #0x10
	str r0, [r4, #0x70]
	adds r0, r4, #0
	bl sub_080ACDB0
	adds r0, r4, #0
	bl sub_0801766C
	pop {r4, pc}
	.align 2, 0
_080ACC54: .4byte gLinkEntity
_080ACC58: .4byte gUnk_0812AAD8

	thumb_func_start sub_080ACC5C
sub_080ACC5C: @ 0x080ACC5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080ACDB0
	cmp r0, #0
	bne _080ACC74
	adds r0, r4, #0
	bl sub_080ACC78
	adds r0, r4, #0
	bl sub_080ACECC
_080ACC74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACC78
sub_080ACC78: @ 0x080ACC78
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r0, _080ACD20 @ =gUnk_030010A0
	ldr r0, [r0]
	adds r0, r2, r0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACCF8
	ldr r0, _080ACD24 @ =gUnk_0812AAAC
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r7, [r1]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080ACCA4
	str r0, [r4, #0x74]
_080ACCA4:
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08008782
	adds r5, r0, #0
	cmp r5, #0
	beq _080ACCF2
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #2]
	movs r0, #0x11
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACCF2
	ldrb r0, [r5, #3]
	strb r0, [r6, #0xe]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	ldr r0, [r4, #0x74]
	adds r0, r0, r7
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
_080ACCF2:
	ldr r0, [r4, #0x74]
	adds r0, #2
	str r0, [r4, #0x74]
_080ACCF8:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bne _080ACD08
	ldr r0, [r4, #0x70]
	cmp r0, #2
	bls _080ACD08
	movs r0, #1
	str r0, [r4, #0x70]
_080ACD08:
	ldr r0, [r4, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080ACDAE
	cmp r2, #0
	bne _080ACD28
	movs r0, #2
	b _080ACD32
	.align 2, 0
_080ACD20: .4byte gUnk_030010A0
_080ACD24: .4byte gUnk_0812AAAC
_080ACD28:
	ldr r0, _080ACD74 @ =gUnk_0812AABC
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
_080ACD32:
	str r0, [r4, #0x70]
	movs r0, #0x17
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACDAE
	bl sub_08000E50
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	ldr r3, [r4, #0x48]
	ldrb r1, [r3, #6]
	cmp r1, r2
	bge _080ACD58
	adds r2, r1, #0
_080ACD58:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ACD62
	rsbs r2, r2, #0
_080ACD62:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080ACD9C
	cmp r0, #1
	bgt _080ACD78
	cmp r0, #0
	beq _080ACD82
	b _080ACDAE
	.align 2, 0
_080ACD74: .4byte gUnk_0812AABC
_080ACD78:
	cmp r0, #2
	beq _080ACD8C
	cmp r0, #3
	beq _080ACDA2
	b _080ACDAE
_080ACD82:
	ldrb r0, [r3, #7]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r0
	strh r1, [r6, #0x32]
	b _080ACD94
_080ACD8C:
	ldrh r0, [r4, #0x32]
	ldrb r3, [r3, #7]
	adds r0, r0, r3
	strh r0, [r6, #0x32]
_080ACD94:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r6, #0x2e]
	b _080ACDAE
_080ACD9C:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	b _080ACDA6
_080ACDA2:
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
_080ACDA6:
	strh r0, [r6, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r6, #0x32]
_080ACDAE:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080ACDB0
sub_080ACDB0: @ 0x080ACDB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080ACDE8
	ldr r2, _080ACDE0 @ =gLinkEntity
	ldr r1, _080ACDE4 @ =gUnk_08126EE4
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r2, #0x32]
	adds r0, r0, r2
	b _080ACEB4
	.align 2, 0
_080ACDE0: .4byte gLinkEntity
_080ACDE4: .4byte gUnk_08126EE4
_080ACDE8:
	ldrb r2, [r4, #0x14]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080ACE48
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x32]
	subs r1, #3
	strh r1, [r4, #0x32]
	movs r1, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _080ACE20
	movs r0, #0x2e
	ldrsh r7, [r3, r0]
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	ldr r1, _080ACE1C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
	b _080ACE30
	.align 2, 0
_080ACE1C: .4byte gUnk_0812AAE8
_080ACE20:
	movs r0, #0x2e
	ldrsh r6, [r3, r0]
	movs r0, #0x2e
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE44 @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
_080ACE30:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bhi _080ACE90
	ldrh r0, [r3, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	b _080ACEB6
	.align 2, 0
_080ACE44: .4byte gUnk_0812AAE8
_080ACE48:
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	movs r0, #4
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080ACE70
	movs r0, #0x32
	ldrsh r6, [r3, r0]
	movs r0, #0x32
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE6C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
	b _080ACE84
	.align 2, 0
_080ACE6C: .4byte gUnk_0812AAE8
_080ACE70:
	movs r0, #0x32
	ldrsh r7, [r3, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	ldr r1, _080ACEAC @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
_080ACE84:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bls _080ACEB0
_080ACE90:
	subs r0, r0, r1
	lsls r1, r0, #8
	strh r1, [r4, #0x24]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080ACEA4
	strh r1, [r4, #0x24]
_080ACEA4:
	adds r0, r4, #0
	bl sub_080AEFB4
	b _080ACEB6
	.align 2, 0
_080ACEAC: .4byte gUnk_0812AAE8
_080ACEB0:
	ldrh r0, [r3, #0x32]
	adds r0, r0, r5
_080ACEB4:
	strh r0, [r4, #0x32]
_080ACEB6:
	ldr r0, _080ACEC8 @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080ACEC8: .4byte gLinkEntity

	thumb_func_start sub_080ACECC
sub_080ACECC: @ 0x080ACECC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhi _080ACF0C
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080ACF0C
	ldr r2, [r4, #0x78]
	cmp r2, #0
	blt _080ACF0C
	ldr r0, _080ACF10 @ =gUnk_0812AAE8
	ldrb r1, [r4, #0xa]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, r2
	bhi _080ACF0C
	adds r1, #1
	movs r0, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_08077CB8
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACF0C
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
_080ACF0C:
	pop {r4, pc}
	.align 2, 0
_080ACF10: .4byte gUnk_0812AAE8

	thumb_func_start sub_080ACF14
sub_080ACF14: @ 0x080ACF14
	push {lr}
	ldr r2, _080ACF28 @ =gUnk_081320A8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ACF28: .4byte gUnk_081320A8

	thumb_func_start sub_080ACF2C
sub_080ACF2C: @ 0x080ACF2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080ACF60 @ =gUnk_081320E4
	str r0, [r4, #0x48]
	ldr r5, [r4, #0x54]
	adds r6, r5, #0
	cmp r5, #0
	beq _080ACF64
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	b _080ACFB6
	.align 2, 0
_080ACF60: .4byte gUnk_081320E4
_080ACF64:
	adds r5, r4, #0
	str r4, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r3, _080ACFC8 @ =gUnk_081320B8
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0x16]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
	bl sub_08078D60
_080ACFB6:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrb r1, [r5, #9]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080ACFC8: .4byte gUnk_081320B8

	thumb_func_start sub_080ACFCC
sub_080ACFCC: @ 0x080ACFCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrb r2, [r1, #8]
	cmp r0, r2
	beq _080ACFE8
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r2, [r1, #9]
	cmp r0, r2
	bne _080AD034
_080ACFE8:
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	beq _080ACFF8
	bl sub_08079184
	bl sub_0805E780
	b _080AD03C
_080ACFF8:
	ldr r0, _080AD02C @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD00E
	ldr r0, _080AD030 @ =gLinkEntity
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080AD03C
_080AD00E:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r2, [r4, #0x20]
	b _080AD03C
	.align 2, 0
_080AD02C: .4byte gUnk_03003F80
_080AD030: .4byte gLinkEntity
_080AD034:
	bl sub_08079184
	bl sub_0805E780
_080AD03C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AD040
sub_080AD040: @ 0x080AD040
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	beq _080AD050
	bl sub_0805E780
_080AD050:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD064
	movs r0, #0
	str r0, [r4, #0x34]
_080AD064:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080AD06E
	b _080AD220
_080AD06E:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD088
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x15]
	strb r1, [r2]
_080AD088:
	ldr r2, _080AD0B0 @ =gUnk_081320C4
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x74
	bne _080AD0B4
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AD0C8
	.align 2, 0
_080AD0B0: .4byte gUnk_081320C4
_080AD0B4:
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0x24
	beq _080AD0C8
	cmp r0, #0x26
	beq _080AD0C8
	adds r0, r4, #0
	bl sub_080AF00C
_080AD0C8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080AD0D8
	b _080AD202
_080AD0D8:
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x30]
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x34]
	str r0, [r5, #0x34]
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x11
	bhi _080AD0FC
	cmp r0, #0x10
	bhs _080AD104
	cmp r0, #0xd
	beq _080AD104
	b _080AD14E
_080AD0FC:
	cmp r0, #0x13
	beq _080AD104
	cmp r0, #0x5a
	bne _080AD14E
_080AD104:
	cmp r5, r4
	bne _080AD146
	cmp r0, #0x11
	bhi _080AD116
	cmp r0, #0x10
	bhs _080AD12C
	cmp r0, #0xd
	beq _080AD120
	b _080AD142
_080AD116:
	cmp r0, #0x13
	beq _080AD138
	cmp r0, #0x5a
	beq _080AD126
	b _080AD142
_080AD120:
	adds r0, r4, #0
	movs r1, #0
	b _080AD130
_080AD126:
	adds r0, r4, #0
	movs r1, #0xc
	b _080AD130
_080AD12C:
	adds r0, r4, #0
	movs r1, #0xb
_080AD130:
	movs r2, #0
	bl CreateFX
	b _080AD142
_080AD138:
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFX
_080AD142:
	movs r0, #4
	b _080AD148
_080AD146:
	movs r0, #3
_080AD148:
	strb r0, [r5, #0xd]
	bl sub_0805E780
_080AD14E:
	ldr r0, [r4, #0x54]
	cmp r0, r4
	bne _080AD178
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	beq _080AD1DA
	cmp r0, #0xf
	bne _080AD16A
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r2, #0x80
	bl CreateFX
	b _080AD1DA
_080AD16A:
	ldrb r1, [r4, #0xb]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r3, #0
	bl sub_080A2988
	b _080AD1DA
_080AD178:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080AD188
	adds r0, r5, #0
	bl sub_080AD32C
	cmp r0, #0
	beq _080AD1E0
_080AD188:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _080AD196
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_080A3268
_080AD196:
	adds r0, r4, #0
	bl sub_08016A04
	movs r0, #3
	strb r0, [r5, #0xd]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080AD1DA:
	bl sub_0805E780
	b _080AD26E
_080AD1E0:
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_080A3268
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x24]
	b _080AD26E
_080AD202:
	adds r0, r4, #0
	bl sub_0800451C
	adds r0, r4, #0
	bl sub_0806F8DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	b _080AD26E
_080AD220:
	ldr r1, _080AD240 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080AD244
	movs r0, #0x79
	bl sub_080A3268
	adds r0, r4, #0
	bl sub_080AD27C
	b _080AD26E
	.align 2, 0
_080AD240: .4byte gLinkEntity
_080AD244:
	ldr r0, _080AD270 @ =gUnk_03003F80
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD25A
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD26E
_080AD25A:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r5, [r4, #0x20]
_080AD26E:
	pop {r4, r5, pc}
	.align 2, 0
_080AD270: .4byte gUnk_03003F80

	thumb_func_start sub_080AD274
sub_080AD274: @ 0x080AD274
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_080AD27C
sub_080AD27C: @ 0x080AD27C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x54]
	ldr r1, _080AD2AC @ =gLinkEntity
	movs r0, #0
	str r0, [r1, #0x74]
	adds r0, r3, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r5, r1, #0
	ldrb r1, [r4, #8]
	cmp r0, r1
	bne _080AD320
	adds r0, r3, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _080AD320
	cmp r4, r3
	beq _080AD2B0
	movs r0, #2
	strb r0, [r4, #0xd]
	b _080AD2C2
	.align 2, 0
_080AD2AC: .4byte gLinkEntity
_080AD2B0:
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
_080AD2C2:
	ldr r0, [r4, #0x48]
	str r0, [r3, #0x48]
	ldrb r1, [r3, #0x16]
	lsrs r1, r1, #4
	ldr r2, _080AD318 @ =gUnk_081320CC
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0x24]
	ldr r0, _080AD31C @ =gUnk_081320D4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x20]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	strh r0, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0x32]
	strh r0, [r3, #0x32]
	ldrh r0, [r5, #0x2e]
	strh r0, [r3, #0x2e]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_0801766C
	b _080AD328
	.align 2, 0
_080AD318: .4byte gUnk_081320CC
_080AD31C: .4byte gUnk_081320D4
_080AD320:
	bl sub_08079184
	bl sub_0805E780
_080AD328:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AD32C
sub_080AD32C: @ 0x080AD32C
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r1, [r2, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	beq _080AD34C
	ldrb r0, [r2, #8]
	cmp r0, #6
	bne _080AD34E
	ldrb r0, [r2, #9]
	cmp r0, #5
	beq _080AD34C
	cmp r0, #0x7d
	bne _080AD34E
_080AD34C:
	movs r3, #1
_080AD34E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AD354
sub_080AD354: @ 0x080AD354
	push {lr}
	ldr r1, _080AD374 @ =gUnk_02032EC0
	strb r0, [r1, #2]
	ldr r1, _080AD378 @ =gUnk_03001000
	movs r0, #2
	strb r0, [r1, #3]
	ldr r0, _080AD37C @ =gUnk_02000080
	movs r1, #0x30
	bl sub_0801D630
	movs r0, #7
	movs r1, #8
	bl sub_08050054
	pop {pc}
	.align 2, 0
_080AD374: .4byte gUnk_02032EC0
_080AD378: .4byte gUnk_03001000
_080AD37C: .4byte gUnk_02000080

	thumb_func_start sub_080AD380
sub_080AD380: @ 0x080AD380
	push {r4, lr}
	bl sub_080AD90C
	ldr r4, _080AD398 @ =gUnk_03001000
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _080AD3BC
	cmp r0, #1
	bgt _080AD39C
	cmp r0, #0
	beq _080AD3A2
	b _080AD3EA
	.align 2, 0
_080AD398: .4byte gUnk_03001000
_080AD39C:
	cmp r0, #2
	beq _080AD3D8
	b _080AD3EA
_080AD3A2:
	bl sub_08056418
	ldr r0, _080AD3B8 @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl sub_0801D630
	movs r0, #0
	bl sub_080AD354
	b _080AD3EA
	.align 2, 0
_080AD3B8: .4byte gUnk_02032EC0
_080AD3BC:
	ldr r1, _080AD3D0 @ =gUnk_081320F0
	ldr r0, _080AD3D4 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _080AD3EA
	.align 2, 0
_080AD3D0: .4byte gUnk_081320F0
_080AD3D4: .4byte gUnk_02032EC0
_080AD3D8:
	ldr r0, _080AD3F0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD3EE
	movs r0, #1
	bl sub_0801DA90
	movs r0, #1
	strb r0, [r4, #3]
_080AD3EA:
	bl sub_080AD918
_080AD3EE:
	pop {r4, pc}
	.align 2, 0
_080AD3F0: .4byte gUnk_03000FD0

	thumb_func_start sub_080AD3F4
sub_080AD3F4: @ 0x080AD3F4
	push {r4, r5, lr}
	bl sub_080AD84C
	adds r1, r0, #0
	ldr r4, _080AD450 @ =gUnk_02000080
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080AD458
	movs r0, #1
	bl sub_0801DA90
	movs r5, #1
	strb r5, [r4, #5]
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0x10
	bl sub_0801D7EC
	movs r0, #1
	bl sub_0801D7EC
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #2
	cmp r0, #0
	bne _080AD42C
	movs r1, #1
_080AD42C:
	adds r0, r1, #0
	bl sub_0801D714
	ldr r0, _080AD454 @ =gUnk_03000F50
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	strh r5, [r0, #0x1a]
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	movs r1, #0
	b _080AD45E
	.align 2, 0
_080AD450: .4byte gUnk_02000080
_080AD454: .4byte gUnk_03000F50
_080AD458:
	cmp r1, #1
	bne _080AD45E
	movs r1, #2
_080AD45E:
	cmp r1, #2
	bne _080AD46C
	ldr r1, _080AD470 @ =gUnk_02000010
	movs r0, #1
	strb r0, [r1, #5]
	bl sub_080AD354
_080AD46C:
	pop {r4, r5, pc}
	.align 2, 0
_080AD470: .4byte gUnk_02000010

	thumb_func_start sub_080AD474
sub_080AD474: @ 0x080AD474
	push {r4, r5, r6, lr}
	ldr r5, _080AD490 @ =gUnk_02000080
	ldrb r0, [r5, #0x12]
	adds r0, #1
	strb r0, [r5, #0x12]
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _080AD486
	b _080AD588
_080AD486:
	cmp r0, #1
	bgt _080AD494
	cmp r0, #0
	beq _080AD49C
	b _080AD5C8
	.align 2, 0
_080AD490: .4byte gUnk_02000080
_080AD494:
	cmp r0, #2
	bne _080AD49A
	b _080AD5AA
_080AD49A:
	b _080AD5C8
_080AD49C:
	movs r4, #1
	strb r4, [r5, #5]
	strb r0, [r5, #6]
	movs r6, #0
	movs r0, #0x1e
	strh r0, [r5, #8]
	movs r0, #7
	strb r0, [r5, #4]
	bl sub_0805E60C
	movs r0, #0
	bl sub_0801CFA8
	bl sub_080ADD30
	ldr r0, _080AD50C @ =gUnk_02024490
	strb r4, [r0]
	movs r0, #2
	bl sub_0801D7EC
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldrb r0, [r4, #7]
	movs r1, #4
	cmp r0, #0
	bne _080AD4D2
	movs r1, #3
_080AD4D2:
	adds r0, r1, #0
	bl sub_0801D714
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _080AD524
	ldr r2, _080AD510 @ =gUnk_03000F50
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080AD514 @ =0x00000844
	strh r0, [r1]
	adds r1, #2
	adds r0, #0xc5
	strh r0, [r1]
	ldr r0, _080AD518 @ =0x00001C09
	strh r0, [r2, #0x14]
	adds r0, #0xf9
	strh r0, [r2, #0x20]
	ldr r0, _080AD51C @ =0x00001E03
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080AD520 @ =0x0000FF60
	strh r0, [r2, #0x18]
	b _080AD55A
	.align 2, 0
_080AD50C: .4byte gUnk_02024490
_080AD510: .4byte gUnk_03000F50
_080AD514: .4byte 0x00000844
_080AD518: .4byte 0x00001C09
_080AD51C: .4byte 0x00001E03
_080AD520: .4byte 0x0000FF60
_080AD524:
	ldr r2, _080AD570 @ =gUnk_03000F50
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080AD574 @ =0x00000241
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080AD578 @ =0x00000909
	strh r0, [r1]
	ldr r0, _080AD57C @ =0x00001D02
	strh r0, [r2, #8]
	ldr r0, _080AD580 @ =0x00001E03
	strh r0, [r2, #0x14]
	ldr r0, _080AD584 @ =0x00007C89
	strh r0, [r2, #0x20]
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	orrs r0, r6
	movs r3, #0x98
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x10
	str r0, [r5, #0x2c]
	bl sub_080AD670
_080AD55A:
	bl sub_080A3210
	movs r0, #3
	bl sub_080A3268
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	b _080AD610
	.align 2, 0
_080AD570: .4byte gUnk_03000F50
_080AD574: .4byte 0x00000241
_080AD578: .4byte 0x00000909
_080AD57C: .4byte 0x00001D02
_080AD580: .4byte 0x00001E03
_080AD584: .4byte 0x00007C89
_080AD588:
	ldr r0, _080AD5A0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD632
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080AD5A4
	bl sub_080AD6AC
	b _080AD610
	.align 2, 0
_080AD5A0: .4byte gUnk_03000FD0
_080AD5A4:
	bl sub_080AD76C
	b _080AD610
_080AD5AA:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AD5C2
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r5, #8]
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
_080AD5C2:
	bl sub_080AD644
	b _080AD610
_080AD5C8:
	bl sub_080AD84C
	adds r4, r0, #0
	cmp r4, #0
	beq _080AD5EC
	cmp r4, #2
	bne _080AD5DE
	movs r0, #0x6a
	bl sub_080A3268
	b _080AD5E0
_080AD5DE:
	movs r4, #0
_080AD5E0:
	adds r0, r4, #0
	bl sub_080AD354
	ldr r0, _080AD634 @ =0x80080000
	bl sub_080A3268
_080AD5EC:
	bl sub_080AD644
	ldr r0, _080AD638 @ =gUnk_02000080
	ldrh r1, [r0, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AD610
	ldr r1, _080AD63C @ =gUnk_03001010
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1, #8]
	movs r0, #0x84
	strh r0, [r1, #2]
	ldr r0, _080AD640 @ =0x000001FF
	movs r1, #0
	bl sub_080ADA14
_080AD610:
	ldr r2, _080AD638 @ =gUnk_02000080
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #7]
	ldrb r0, [r2, #4]
	cmp r0, r1
	beq _080AD626
	strb r1, [r2, #4]
	movs r0, #3
	bl sub_0801D7EC
_080AD626:
	bl sub_080AD89C
	bl sub_0805E5C0
	bl sub_080AD9B0
_080AD632:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AD634: .4byte 0x80080000
_080AD638: .4byte gUnk_02000080
_080AD63C: .4byte gUnk_03001010
_080AD640: .4byte 0x000001FF

	thumb_func_start sub_080AD644
sub_080AD644: @ 0x080AD644
	push {lr}
	ldr r1, _080AD664 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r0, _080AD668 @ =0x0000E020
	strh r0, [r1, #8]
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	ldr r0, _080AD66C @ =0x000001FF
	movs r1, #1
	bl sub_080ADA14
	pop {pc}
	.align 2, 0
_080AD664: .4byte gUnk_03001010
_080AD668: .4byte 0x0000E020
_080AD66C: .4byte 0x000001FF

	thumb_func_start sub_080AD670
sub_080AD670: @ 0x080AD670
	push {lr}
	sub sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x48
	strh r0, [r1, #0xa]
	mov r0, sp
	strh r2, [r0, #0x10]
	mov r2, sp
	ldr r0, _080AD6A4 @ =gUnk_02000080
	ldr r0, [r0, #0x2c]
	strh r0, [r1, #0xc]
	strh r0, [r2, #0xe]
	ldr r1, _080AD6A8 @ =gUnk_03000F88
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {pc}
	.align 2, 0
_080AD6A4: .4byte gUnk_02000080
_080AD6A8: .4byte gUnk_03000F88

	thumb_func_start sub_080AD6AC
sub_080AD6AC: @ 0x080AD6AC
	push {r4, r5, r6, lr}
	ldr r4, _080AD6C0 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _080AD724
	cmp r0, #1
	bgt _080AD6C4
	cmp r0, #0
	beq _080AD6CA
	b _080AD76A
	.align 2, 0
_080AD6C0: .4byte gUnk_02000080
_080AD6C4:
	cmp r0, #2
	beq _080AD758
	b _080AD76A
_080AD6CA:
	ldr r6, _080AD718 @ =gUnk_03000FD0
	ldrb r5, [r6]
	cmp r5, #0
	bne _080AD76A
	ldrb r1, [r4, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AD6E4
	ldr r1, _080AD71C @ =gUnk_03000F50
	ldrh r0, [r1, #0x18]
	adds r0, #1
	strh r0, [r1, #0x18]
_080AD6E4:
	bl sub_080AD84C
	cmp r0, #2
	beq _080AD6F4
	ldr r0, _080AD71C @ =gUnk_03000F50
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _080AD76A
_080AD6F4:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080AD71C @ =gUnk_03000F50
	strh r5, [r1, #0x18]
	ldr r0, _080AD720 @ =0x00000C09
	strh r0, [r1, #0x14]
	movs r0, #0x40
	str r0, [r6, #4]
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0xf8
	bl sub_080A3268
	b _080AD76A
	.align 2, 0
_080AD718: .4byte gUnk_03000FD0
_080AD71C: .4byte gUnk_03000F50
_080AD720: .4byte 0x00000C09
_080AD724:
	ldr r1, _080AD754 @ =gUnk_03000FD0
	ldrb r5, [r1]
	cmp r5, #0
	bne _080AD76A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x5a
	strh r0, [r4, #8]
	movs r0, #0xb4
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080AD76A
	strh r5, [r1, #0x2e]
	movs r0, #0x48
	strh r0, [r1, #0x32]
	b _080AD76A
	.align 2, 0
_080AD754: .4byte gUnk_03000FD0
_080AD758:
	bl sub_080AD84C
	cmp r0, #0
	beq _080AD76A
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	movs r0, #0x3c
	strh r0, [r4, #8]
_080AD76A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080AD76C
sub_080AD76C: @ 0x080AD76C
	push {lr}
	ldr r1, _080AD780 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	cmp r0, #1
	beq _080AD7B4
	cmp r0, #1
	bgt _080AD784
	cmp r0, #0
	beq _080AD78A
	b _080AD80E
	.align 2, 0
_080AD780: .4byte gUnk_02000080
_080AD784:
	cmp r0, #2
	beq _080AD7DC
	b _080AD80E
_080AD78A:
	ldr r0, _080AD7AC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD82A
	movs r0, #1
	strb r0, [r1, #6]
	ldr r2, _080AD7B0 @ =gUnk_03000F50
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xf6
	bl sub_080A3268
	b _080AD82A
	.align 2, 0
_080AD7AC: .4byte gUnk_03000FD0
_080AD7B0: .4byte gUnk_03000F50
_080AD7B4:
	ldr r0, [r1, #0x2c]
	adds r0, #0x10
	str r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080AD7D6
	str r2, [r1, #0x2c]
	movs r0, #0x28
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
_080AD7D6:
	bl sub_080AD670
	b _080AD82A
_080AD7DC:
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AD82A
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0xbd
	movs r1, #0
	movs r2, #0
	bl CreateObject
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0xf8
	bl sub_080A3268
	b _080AD82A
_080AD80E:
	ldr r0, _080AD82C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD82A
	bl sub_080AD84C
	cmp r0, #0
	beq _080AD82A
	ldr r0, _080AD830 @ =gUnk_02000080
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r1, #0x3c
	strh r1, [r0, #8]
_080AD82A:
	pop {pc}
	.align 2, 0
_080AD82C: .4byte gUnk_03000FD0
_080AD830: .4byte gUnk_02000080

	thumb_func_start sub_080AD834
sub_080AD834: @ 0x080AD834
	push {lr}
	ldr r0, _080AD848 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD844
	movs r0, #1
	bl sub_08056010
_080AD844:
	pop {pc}
	.align 2, 0
_080AD848: .4byte gUnk_03000FD0

	thumb_func_start sub_080AD84C
sub_080AD84C: @ 0x080AD84C
	push {lr}
	ldr r0, _080AD864 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD894
	ldr r0, _080AD868 @ =gUnk_02000010
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _080AD86C
	movs r2, #0
	b _080AD874
	.align 2, 0
_080AD864: .4byte gUnk_03000FD0
_080AD868: .4byte gUnk_02000010
_080AD86C:
	ldr r0, _080AD888 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	movs r2, #9
	ands r2, r0
_080AD874:
	ldr r1, _080AD88C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AD890
	movs r0, #1
	b _080AD89A
	.align 2, 0
_080AD888: .4byte gUnk_03000FF0
_080AD88C: .4byte gUnk_02000080
_080AD890:
	cmp r2, #0
	bne _080AD898
_080AD894:
	movs r0, #0
	b _080AD89A
_080AD898:
	movs r0, #2
_080AD89A:
	pop {pc}

	thumb_func_start sub_080AD89C
sub_080AD89C: @ 0x080AD89C
	push {r4, lr}
	ldr r4, _080AD8E4 @ =gUnk_02000080
	ldrb r1, [r4, #0x12]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AD8BC
	ldrb r0, [r4, #0x10]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x10]
	adds r0, #5
	bl sub_0801D714
_080AD8BC:
	ldrb r1, [r4, #0x12]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080AD8E0
	ldrb r0, [r4, #0x11]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x11]
	ldr r1, _080AD8E8 @ =gUnk_03000F50
	ldr r2, _080AD8EC @ =gUnk_081320FC
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_080AD8E0:
	pop {r4, pc}
	.align 2, 0
_080AD8E4: .4byte gUnk_02000080
_080AD8E8: .4byte gUnk_03000F50
_080AD8EC: .4byte gUnk_081320FC
