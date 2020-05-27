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
	ldr r1, _080A29F8 @ =gRoomControls
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
_080A29F8: .4byte gRoomControls

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
	ldr r2, _080A31F0 @ =gRoomControls
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
_080A31F0: .4byte gRoomControls
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
	ldr r2, _080A36B4 @ =gLCDControls
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
_080A36B4: .4byte gLCDControls
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
	ldr r1, _080A3764 @ =gLCDControls
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
_080A3764: .4byte gLCDControls

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
	ldr r1, _080A37C0 @ =gLCDControls
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
_080A37C0: .4byte gLCDControls
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
	ldr r2, _080A3800 @ =gLCDControls
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
_080A3800: .4byte gLCDControls
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
	ldr r2, _080A3848 @ =gLCDControls
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
_080A3848: .4byte gLCDControls
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
	ldr r4, _080A3924 @ =gLCDControls
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
_080A3924: .4byte gLCDControls
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
	ldr r2, _080A3A2C @ =gLCDControls
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
_080A3A2C: .4byte gLCDControls
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
	ldr r2, _080A3B38 @ =gLCDControls
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
_080A3B38: .4byte gLCDControls
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
	ldr r1, _080A3C58 @ =gLCDControls
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
_080A3C58: .4byte gLCDControls
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
	ldr r3, _080A3ECC @ =gLCDControls
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
_080A3ECC: .4byte gLCDControls
_080A3ED0: .4byte 0x00006887
_080A3ED4: .4byte 0x0000405F
_080A3ED8: .4byte 0x00003F90

	thumb_func_start sub_080A3EDC
sub_080A3EDC: @ 0x080A3EDC
	push {lr}
	ldr r2, _080A3F08 @ =gLCDControls
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
_080A3F08: .4byte gLCDControls
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
	ldr r0, _080A3FE8 @ =gTextBox
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
_080A3FE8: .4byte gTextBox
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
	bl CreateNPC
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
	ldr r2, _080A46AC @ =gLCDControls
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
_080A46AC: .4byte gLCDControls
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
	ldr r0, _080A4784 @ =gLCDControls
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
_080A4784: .4byte gLCDControls
_080A4788:
	ldr r2, _080A47C8 @ =gLCDControls
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
_080A47C8: .4byte gLCDControls
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
	ldr r1, _080A482C @ =gLCDControls
	adds r0, r4, #0
	subs r0, #0x70
	strh r0, [r1, #0x18]
	pop {r4, pc}
	.align 2, 0
_080A4828: .4byte gUnk_02000080
_080A482C: .4byte gLCDControls

	thumb_func_start sub_080A4830
sub_080A4830: @ 0x080A4830
	push {lr}
	bl sub_080A4608
	ldr r2, _080A4858 @ =gLCDControls
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
_080A4858: .4byte gLCDControls
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
	ldr r1, _080A4930 @ =gLCDControls
	adds r0, r5, #0
	subs r0, #0x70
	strh r0, [r1, #0x18]
_080A4926:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4928: .4byte gUnk_02002A40
_080A492C: .4byte gUnk_02000080
_080A4930: .4byte gLCDControls

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
	ldr r1, _080A4CB8 @ =gLCDControls
	movs r0, #1
	strh r0, [r1, #0x32]
_080A4CB2:
	add sp, #0x54
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4CB8: .4byte gLCDControls

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
	ldr r1, _080A4D1C @ =gLCDControls
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
_080A4D1C: .4byte gLCDControls
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
	ldr r1, _080A4D80 @ =gLCDControls
	movs r0, #0
	strh r0, [r1, #0x2e]
	strh r0, [r1, #0x30]
	ldr r0, _080A4D84 @ =0x00001E0B
	strh r0, [r1, #0x2c]
	movs r0, #1
	strh r0, [r1, #0x32]
	pop {pc}
	.align 2, 0
_080A4D80: .4byte gLCDControls
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
	ldr r1, _080A4E7C @ =gLCDControls
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
_080A4E7C: .4byte gLCDControls
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
	ldr r2, _080A4F24 @ =gLCDControls
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
_080A4F24: .4byte gLCDControls

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
	ldr r1, _080A509C @ =gLCDControls
	movs r0, #1
	strh r0, [r1, #0xe]
_080A5096:
	pop {r4, r5, pc}
	.align 2, 0
_080A5098: .4byte gUnk_02034CB0
_080A509C: .4byte gLCDControls

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
	ldr r2, _080A50E0 @ =gLCDControls
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
_080A50E0: .4byte gLCDControls
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
