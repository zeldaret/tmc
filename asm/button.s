	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Button
Button: @ 0x08081AC8
	push {lr}
	ldr r2, _08081ADC @ =gUnk_0811EE38
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08081ADC: .4byte gUnk_0811EE38

	thumb_func_start sub_08081AE0
sub_08081AE0: @ 0x08081AE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r1, [r0]
	cmp r1, #0
	beq _08081B0E
	subs r0, #0x4c
	strb r1, [r0]
_08081B0E:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08081B6C @ =gRoomControls
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
	adds r5, #0x74
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl GetTileType
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08081B70
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08081B70
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrh r1, [r5]
	ldrb r2, [r6]
	movs r0, #0x7a
	bl SetTileType
	b _08081B82
	.align 2, 0
_08081B6C: .4byte gRoomControls
_08081B70:
	adds r0, r4, #0
	bl sub_08081E3C
	cmp r0, #0
	beq _08081B7E
	movs r0, #2
	b _08081B80
_08081B7E:
	movs r0, #1
_08081B80:
	strb r0, [r4, #0xc]
_08081B82:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08081B84
sub_08081B84: @ 0x08081B84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08081E3C
	cmp r0, #0
	beq _08081BAA
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
_08081BAA:
	pop {r4, pc}

	thumb_func_start sub_08081BAC
sub_08081BAC: @ 0x08081BAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08081CB0
	cmp r0, #0
	beq _08081BDC
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0805E4E0
	adds r0, r4, #0
	bl sub_08081FF8
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08081BD8
	movs r0, #3
	b _08081BDA
_08081BD8:
	movs r0, #5
_08081BDA:
	strb r0, [r4, #0xc]
_08081BDC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081BE0
sub_08081BE0: @ 0x08081BE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x78
	bl sub_08081F7C
	cmp r0, #0
	beq _08081C2C
	adds r0, r4, #0
	bl sub_08081D28
	cmp r0, #0
	bne _08081C26
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r1, _08081C1C @ =gPlayerState
	ldrb r0, [r1, #5]
	cmp r0, #2
	beq _08081C16
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08081C20
_08081C16:
	movs r0, #0x18
	strb r0, [r4, #0xe]
	b _08081C2C
	.align 2, 0
_08081C1C: .4byte gPlayerState
_08081C20:
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08081C2C
_08081C26:
	adds r0, r4, #0
	bl sub_08081E6C
_08081C2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081C30
sub_08081C30: @ 0x08081C30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08081C70
	subs r0, #1
	movs r5, #0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08081C5A
	strb r5, [r4, #0xf]
	ldr r0, _08081C6C @ =0x00004035
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_08081C5A:
	adds r0, r4, #0
	bl sub_08081CB0
	cmp r0, #0
	beq _08081C96
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	b _08081C96
	.align 2, 0
_08081C6C: .4byte 0x00004035
_08081C70:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl ClearFlag
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	subs r0, #0x3c
	ldrb r2, [r0]
	movs r0, #0x77
	bl SetTileType
	movs r0, #0x86
	lsls r0, r0, #1
	bl PlaySFX
_08081C96:
	pop {r4, r5, pc}

	thumb_func_start sub_08081C98
sub_08081C98: @ 0x08081C98
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x7a
	bl sub_08081F7C
	cmp r0, #0
	beq _08081CAC
	adds r0, r4, #0
	bl sub_08081E6C
_08081CAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08081CB0
sub_08081CB0: @ 0x08081CB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08081D74
	cmp r0, #0
	beq _08081CEC
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _08081CE4 @ =0x0000FFFF
	strh r0, [r1]
	adds r5, r4, #0
	adds r5, #0x74
	ldrh r0, [r5]
	adds r4, #0x38
	ldrb r1, [r4]
	bl GetTileType
	ldr r1, _08081CE8 @ =0x00004035
	cmp r0, r1
	bne _08081D1C
	ldrh r1, [r5]
	ldrb r2, [r4]
	movs r0, #0x78
	bl sub_0807B7D8
	b _08081D1C
	.align 2, 0
_08081CE4: .4byte 0x0000FFFF
_08081CE8: .4byte 0x00004035
_08081CEC:
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r0, [r6]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x77
	beq _08081D24
	cmp r1, #0x79
	beq _08081D24
	ldr r0, _08081D20 @ =0x00004035
	cmp r1, r0
	beq _08081D24
	ldrh r0, [r6]
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
_08081D1C:
	movs r0, #1
	b _08081D26
	.align 2, 0
_08081D20: .4byte 0x00004035
_08081D24:
	movs r0, #0
_08081D26:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08081D28
sub_08081D28: @ 0x08081D28
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08081D74
	cmp r0, #0
	beq _08081D44
	adds r1, r4, #0
	adds r1, #0x70
	ldr r0, _08081D40 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	b _08081D72
	.align 2, 0
_08081D40: .4byte 0x0000FFFF
_08081D44:
	adds r5, r4, #0
	adds r5, #0x70
	ldrh r1, [r5]
	ldr r0, _08081D6C @ =0x0000FFFF
	cmp r1, r0
	beq _08081D70
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	ldrh r5, [r5]
	cmp r0, r5
	bne _08081D70
	movs r0, #1
	b _08081D72
	.align 2, 0
_08081D6C: .4byte 0x0000FFFF
_08081D70:
	movs r0, #0
_08081D72:
	pop {r4, r5, pc}

	thumb_func_start sub_08081D74
sub_08081D74: @ 0x08081D74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xf
	bne _08081D8E
	movs r0, #0
	b _08081E0A
_08081D8E:
	movs r6, #0
	adds r0, r4, #0
	bl sub_08081E0C
	cmp r0, #0
	beq _08081DB4
	ldr r0, _08081DAC @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x90
	ands r0, r1
	cmp r0, #0
	bne _08081E06
	ldr r6, _08081DB0 @ =gPlayerEntity
	b _08081E06
	.align 2, 0
_08081DAC: .4byte gPlayerState
_08081DB0: .4byte gPlayerEntity
_08081DB4:
	ldr r0, _08081DD8 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08081E06
	ldr r5, _08081DDC @ =gUnk_03004040
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	beq _08081DE0
	ldr r6, [r5]
	b _08081E06
	.align 2, 0
_08081DD8: .4byte gPlayerState
_08081DDC: .4byte gUnk_03004040
_08081DE0:
	ldr r1, [r5, #4]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	beq _08081DF4
	ldr r6, [r5, #4]
	b _08081E06
_08081DF4:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
	cmp r0, #0
	beq _08081E06
	ldr r6, [r5, #8]
_08081E06:
	str r6, [r4, #0x54]
	adds r0, r6, #0
_08081E0A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08081E0C
sub_08081E0C: @ 0x08081E0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08081E28 @ =gPlayerEntity
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08081E22
	bl sub_08079F8C
	cmp r0, #0
	bne _08081E2C
_08081E22:
	movs r0, #0
	b _08081E38
	.align 2, 0
_08081E28: .4byte gPlayerEntity
_08081E2C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	movs r3, #6
	bl sub_080041A0
_08081E38:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08081E3C
sub_08081E3C: @ 0x08081E3C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r2, [r1]
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	bl GetTileType
	adds r2, r0, #0
	ldr r1, _08081E64 @ =gUnk_0811EE50
_08081E52:
	ldrh r0, [r1]
	cmp r0, r2
	beq _08081E68
	adds r1, #2
	ldrh r0, [r1]
	cmp r0, #0
	bne _08081E52
	movs r0, #0
	b _08081E6A
	.align 2, 0
_08081E64: .4byte gUnk_0811EE50
_08081E68:
	movs r0, #1
_08081E6A:
	pop {pc}

	thumb_func_start sub_08081E6C
sub_08081E6C: @ 0x08081E6C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r6, [r0]
	subs r0, #0x3c
	ldrb r5, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl GetTileType
	adds r7, r0, #0
	ldr r0, _08081EEC @ =0x00003FFF
	cmp r7, r0
	bls _08081EE8
	adds r0, r5, #0
	bl GetLayerByIndex
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	movs r4, #0x78
	cmp r0, #0
	bne _08081E9A
	movs r4, #0x7a
_08081E9A:
	ldr r0, _08081EF0 @ =0x00007004
	adds r3, r1, r0
	lsls r0, r4, #1
	ldr r2, _08081EF4 @ =0x00006004
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #3
	adds r3, r3, r0
	ldr r2, _08081EF8 @ =gUnk_02019EE0
	cmp r5, #2
	bne _08081EB4
	ldr r2, _08081EFC @ =gMapDataTopSpecial
_08081EB4:
	movs r0, #0x3f
	ands r0, r6
	lsls r0, r0, #1
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r1, r6
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08081F00
	cmp r0, #0
	bne _08081EE8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl SetTileType
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl SetTile
_08081EE8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08081EEC: .4byte 0x00003FFF
_08081EF0: .4byte 0x00007004
_08081EF4: .4byte 0x00006004
_08081EF8: .4byte gUnk_02019EE0
_08081EFC: .4byte gMapDataTopSpecial

	thumb_func_start sub_08081F00
sub_08081F00: @ 0x08081F00
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _08081F20
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _08081F20
	movs r0, #1
	b _08081F22
_08081F20:
	movs r0, #0
_08081F22:
	pop {pc}

	thumb_func_start sub_08081F24
sub_08081F24: @ 0x08081F24
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08081F50
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r2, #0x2e]
	adds r0, #7
	strh r0, [r2, #0x2e]
	ldrh r0, [r2, #0x32]
	adds r0, #5
	strh r0, [r2, #0x32]
_08081F50:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08081F7A
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r2, #0x2e]
	subs r0, #7
	strh r0, [r2, #0x2e]
	ldrh r0, [r2, #0x32]
	adds r0, #5
	strh r0, [r2, #0x32]
_08081F7A:
	pop {r4, pc}

	thumb_func_start sub_08081F7C
sub_08081F7C: @ 0x08081F7C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08081FF4
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08081FA4
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08081FF4
	adds r1, r0, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	b _08081FF4
_08081FA4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _08081FF4
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r1, [r6]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r2, [r5]
	adds r0, r7, #0
	bl SetTileType
	adds r0, r4, #0
	bl sub_08081F24
	movs r0, #0x86
	lsls r0, r0, #1
	bl PlaySFX
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r1, [r2]
	ldr r0, _08081FF0 @ =0x0000FFFF
	cmp r1, r0
	beq _08081FEC
	adds r0, r1, #0
	ldrh r1, [r6]
	ldrb r2, [r5]
	bl SetTile
_08081FEC:
	movs r0, #0
	b _08081FF6
	.align 2, 0
_08081FF0: .4byte 0x0000FFFF
_08081FF4:
	movs r0, #1
_08081FF6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08081FF8
sub_08081FF8: @ 0x08081FF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r0, _08082038 @ =gPlayerEntity
	cmp r1, r0
	bne _08082036
	adds r0, r1, #0
	adds r1, r4, #0
	bl GetFacingDirection
	adds r6, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r6, #0
	bl sub_080044AE
	movs r5, #0
	ldr r4, _0808203C @ =gUnk_03004040
_0808201E:
	ldr r0, [r4]
	cmp r0, #0
	beq _0808202E
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r6, #0
	bl sub_080044AE
_0808202E:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bls _0808201E
_08082036:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08082038: .4byte gPlayerEntity
_0808203C: .4byte gUnk_03004040
