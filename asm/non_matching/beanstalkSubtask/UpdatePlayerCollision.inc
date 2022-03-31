	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0801985C @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0xa8
	ldrb r1, [r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08019860
	adds r0, #0xa9
	ldrb r0, [r0]
	b _08019862
	.align 2, 0
_0801985C: .4byte gPlayerState
_08019860:
	ldrb r0, [r2]
_08019862:
	cmp r0, #0x12
	bne _0801986A
	bl _0801A2A4
_0801986A:
	cmp r0, #0x12
	bgt _08019878
	cmp r0, #3
	bne _08019876
	bl _0801A2A4
_08019876:
	b _08019880
_08019878:
	cmp r0, #0x16
	bne _08019880
	bl _0801A2A4
_08019880:
	ldrb r0, [r7, #0x1e]
	ldr r1, _08019898 @ =gPlayerEntity
	mov sb, r1
	cmp r0, #0
	bne _08019890
	ldrb r0, [r1, #0xc]
	cmp r0, #0x1d
	bne _0801989C
_08019890:
	mov r2, sb
	ldrb r4, [r2, #0x15]
	b _0801989E
	.align 2, 0
_08019898: .4byte gPlayerEntity
_0801989C:
	ldrb r4, [r7, #0xd]
_0801989E:
	movs r0, #0x83
	ands r0, r4
	cmp r0, #0
	bne _0801997C
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0801997C
	lsrs r1, r4, #2
	mov r0, sb
	bl sub_0807BDB8
	adds r4, r0, #0
	cmp r4, #0xff
	beq _0801997C
	ldr r5, _08019960 @ =gRoomControls
	ldrb r1, [r5, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801997C
	lsls r1, r4, #2
	ldr r0, _08019964 @ =gUnk_080B4490
	adds r6, r1, r0
	mov r3, sb
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	mov r1, sb
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	mov r8, r1
	movs r1, #2
	ldrsh r6, [r6, r1]
	mov r2, r8
	adds r1, r2, r6
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sb
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080B1B44
	cmp r0, #0xff
	bne _0801997C
	ldr r0, [r7, #0x30]
	ldr r1, _08019968 @ =0x00010002
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	ldrb r1, [r7, #0x1b]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	mov r3, sb
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	adds r2, r4, #0
	movs r3, #5
	bl sub_080806BC
	cmp r0, #0
	bne _0801996C
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _0801995A
	ldrb r1, [r7, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	mov r0, sb
	adds r1, r4, #0
	bl sub_0807BD14
	cmp r0, #0
	bne _0801996C
_0801995A:
	movs r0, #3
	bl _0801A2A6
	.align 2, 0
_08019960: .4byte gRoomControls
_08019964: .4byte gUnk_080B4490
_08019968: .4byte 0x00010002
_0801996C:
	ldr r1, _08019978 @ =gPlayerEntity
	lsls r0, r4, #3
	strb r0, [r1, #0x15]
	movs r0, #0xf
	bl _0801A2A6
	.align 2, 0
_08019978: .4byte gPlayerEntity
_0801997C:
	ldr r4, _080199DC @ =gPlayerEntity
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r0, [r5]
	bl GetLayerByIndex
	mov r8, r0
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _080199E0 @ =gUnk_080B4468
	adds r6, r0, r1
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	ldr r3, _080199E4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r7, r0, #4
	movs r2, #0x3f
	ands r7, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #2
	ldrsh r1, [r6, r4]
	adds r0, r0, r1
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r7, r0
	ldrb r1, [r5]
	adds r0, r7, #0
	bl GetTileType
	adds r6, r0, #0
	ldr r0, _080199E8 @ =0x00003FFF
	cmp r6, r0
	bhi _080199EC
	adds r0, r6, #0
	bl sub_080B1B54
	adds r4, r0, #0
	b _080199EE
	.align 2, 0
_080199DC: .4byte gPlayerEntity
_080199E0: .4byte gUnk_080B4468
_080199E4: .4byte gRoomControls
_080199E8: .4byte 0x00003FFF
_080199EC:
	adds r4, r6, #0
_080199EE:
	ldr r5, _08019A28 @ =gPlayerEntity
	ldrb r1, [r5, #0x14]
	adds r3, r1, #0
	ldr r0, _08019A2C @ =0x00004036
	mov sb, r5
	cmp r4, r0
	bne _080199FE
	b _08019F0C
_080199FE:
	cmp r4, r0
	bhi _08019AE0
	cmp r4, #0x71
	bne _08019A08
	b _08019D94
_08019A08:
	cmp r4, #0x71
	bhi _08019A4E
	cmp r4, #0x3a
	bne _08019A12
	b _08019CFC
_08019A12:
	cmp r4, #0x3a
	bhi _08019A30
	cmp r4, #0x1a
	bne _08019A1C
	b _08019D48
_08019A1C:
	cmp r4, #0x28
	bne _08019A22
	b _08019BB8
_08019A22:
	bl _0801A2A4
	.align 2, 0
_08019A28: .4byte gPlayerEntity
_08019A2C: .4byte 0x00004036
_08019A30:
	cmp r4, #0x5b
	bne _08019A36
	b _08019CFC
_08019A36:
	cmp r4, #0x5b
	bhi _08019A44
	cmp r4, #0x3d
	bne _08019A40
	b _08019DD4
_08019A40:
	bl _0801A2A4
_08019A44:
	cmp r4, #0x70
	bne _08019A4A
	b _08019CC0
_08019A4A:
	bl _0801A2A4
_08019A4E:
	ldr r0, _08019A6C @ =0x0000400B
	cmp r4, r0
	bne _08019A56
	b _08019E44
_08019A56:
	cmp r4, r0
	bhi _08019A70
	cmp r4, #0x72
	bne _08019A60
	b _08019FA8
_08019A60:
	subs r0, #0xb
	cmp r4, r0
	bne _08019A68
	b _08019B78
_08019A68:
	bl _0801A2A4
	.align 2, 0
_08019A6C: .4byte 0x0000400B
_08019A70:
	ldr r0, _08019AD4 @ =0x0000401B
	cmp r4, r0
	bne _08019A78
	b _08019C70
_08019A78:
	cmp r4, r0
	bhs _08019A80
	bl _0801A2A4
_08019A80:
	adds r0, #0x12
	cmp r4, r0
	bls _08019A8A
	bl _0801A2A4
_08019A8A:
	subs r0, #2
	cmp r4, r0
	bhs _08019A94
	bl _0801A2A4
_08019A94:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0801A370
	cmp r0, #0
	bne _08019AA4
	bl _0801A2A4
_08019AA4:
	lsls r0, r7, #1
	mov r2, r8
	adds r2, #4
	adds r2, r2, r0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	ldr r3, _08019AD8 @ =0x00004030
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08019ADC @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	ands r1, r0
	adds r7, r2, #0
	mov sb, r5
	cmp r1, #0
	bne _08019AD0
	b _0801A09A
_08019AD0:
	b _0801A094
	.align 2, 0
_08019AD4: .4byte 0x0000401B
_08019AD8: .4byte 0x00004030
_08019ADC: .4byte gPlayerState
_08019AE0:
	ldr r0, _08019B04 @ =0x00004053
	cmp r4, r0
	bne _08019AE8
	b _0801A13C
_08019AE8:
	cmp r4, r0
	bhi _08019B24
	subs r0, #0xb
	cmp r4, r0
	bhi _08019B08
	subs r0, #8
	cmp r4, r0
	blo _08019AFA
	b _08019DD4
_08019AFA:
	subs r0, #2
	cmp r4, r0
	bne _08019B02
	b _08019F50
_08019B02:
	b _0801A2A4
	.align 2, 0
_08019B04: .4byte 0x00004053
_08019B08:
	ldr r0, _08019B20 @ =0x00004051
	cmp r4, r0
	bne _08019B10
	b _08019CFC
_08019B10:
	cmp r4, r0
	bls _08019B16
	b _0801A120
_08019B16:
	subs r0, #7
	cmp r4, r0
	bne _08019B1E
	b _0801A0BC
_08019B1E:
	b _0801A2A4
	.align 2, 0
_08019B20: .4byte 0x00004051
_08019B24:
	ldr r0, _08019B48 @ =0x00004058
	cmp r4, r0
	bne _08019B2C
	b _0801A19A
_08019B2C:
	cmp r4, r0
	bhi _08019B4C
	subs r0, #2
	cmp r4, r0
	bne _08019B38
	b _0801A15A
_08019B38:
	cmp r4, r0
	bls _08019B3E
	b _0801A198
_08019B3E:
	subs r0, #1
	cmp r4, r0
	bne _08019B46
	b _0801A158
_08019B46:
	b _0801A2A4
	.align 2, 0
_08019B48: .4byte 0x00004058
_08019B4C:
	ldr r0, _08019B64 @ =0x0000405F
	cmp r4, r0
	bne _08019B54
	b _0801A1D4
_08019B54:
	cmp r4, r0
	bhi _08019B68
	subs r0, #5
	cmp r4, r0
	bne _08019B60
	b _08019EC8
_08019B60:
	b _0801A2A4
	.align 2, 0
_08019B64: .4byte 0x0000405F
_08019B68:
	ldr r0, _08019B74 @ =0x0000407D
	cmp r4, r0
	bne _08019B70
	b _0801A23C
_08019B70:
	b _0801A2A4
	.align 2, 0
_08019B74: .4byte 0x0000407D
_08019B78:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801A458
	cmp r0, #0
	bne _08019B88
	b _0801A2A4
_08019B88:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019BB0 @ =0x00004001
	adds r0, r0, r4
	strh r0, [r1]
	ldr r2, _08019BB4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _08019BAA
	b _0801A0F8
_08019BAA:
	movs r0, #0xc0
	b _0801A0FA
	.align 2, 0
_08019BB0: .4byte 0x00004001
_08019BB4: .4byte gPlayerState
_08019BB8:
	ldr r1, _08019C50 @ =gPlayerState
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08019BC6
	b _0801A2A4
_08019BC6:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08019BCE
	b _0801A2A4
_08019BCE:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	beq _08019BDA
	b _0801A2A4
_08019BDA:
	ldrb r1, [r5, #0x15]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08019BE6
	b _0801A2A4
_08019BE6:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080B1B44
	cmp r0, #0xf
	beq _08019BF8
	b _0801A2A4
_08019BF8:
	bl sub_08079778
	cmp r0, #0
	bne _08019C02
	b _0801A2A4
_08019C02:
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _08019C54 @ =gUnk_080B4478
	adds r6, r0, r1
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r4, _08019C58 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	movs r3, #2
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	bl sub_08080734
	adds r2, r0, #0
	cmp r2, #0
	bne _08019C38
	b _0801A2A4
_08019C38:
	ldrb r1, [r5, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019C5C
	ldrh r0, [r2, #4]
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	adds r0, #6
	strh r0, [r5, #0x32]
	b _08019C64
	.align 2, 0
_08019C50: .4byte gPlayerState
_08019C54: .4byte gUnk_080B4478
_08019C58: .4byte gRoomControls
_08019C5C:
	ldrh r0, [r2, #2]
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
_08019C64:
	movs r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_08078AC0
	b _0801A2A4
_08019C70:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xb
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019C80
	b _0801A2A4
_08019C80:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019CB8 @ =0x0000401C
	adds r0, r0, r4
	movs r3, #0
	strh r0, [r1]
	ldr r1, _08019CBC @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r1, #6]
	movs r0, #5
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x30]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	strb r2, [r5, #0xa]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019CB8: .4byte 0x0000401C
_08019CBC: .4byte gPlayerState
_08019CC0:
	ldr r0, _08019CF8 @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019CD2
	b _0801A2A4
_08019CD2:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08019CE2
	b _0801A2A4
_08019CE2:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0801A9F0
	cmp r0, #0
	bne _08019CF4
	b _0801A2A4
_08019CF4:
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019CF8: .4byte gPlayerState
_08019CFC:
	ldr r2, _08019D40 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019D0A
	b _0801A2A4
_08019D0A:
	mov r1, sb
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _08019D14
	b _0801A2A4
_08019D14:
	ldr r0, _08019D44 @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #4
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08019D2C
	b _0801A2A4
_08019D2C:
	movs r0, #1
	strb r0, [r2, #0x1a]
	mov r0, sb
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080A7CFC
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019D40: .4byte gPlayerState
_08019D44: .4byte gUnk_0200AF00
_08019D48:
	cmp r3, #0
	beq _08019D4E
	b _0801A2A4
_08019D4E:
	ldr r2, _08019D8C @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x81
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019D5E
	b _0801A2A4
_08019D5E:
	ldr r0, _08019D90 @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #6
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _08019D76
	b _0801A2A4
_08019D76:
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080A7C8C
	movs r0, #2
	b _0801A2A6
	.align 2, 0
_08019D8C: .4byte gPlayerState
_08019D90: .4byte gUnk_0200AF00
_08019D94:
	bl HasDungeonMap
	cmp r0, #0
	bne _08019D9E
	b _0801A2A4
_08019D9E:
	ldr r0, _08019DCC @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #6
	strb r1, [r0]
	ldr r2, _08019DD0 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _08019DB8
	b _0801A2A4
_08019DB8:
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0804B388
	movs r0, #2
	b _0801A2A6
	.align 2, 0
_08019DCC: .4byte gUnk_0200AF00
_08019DD0: .4byte gPlayerState
_08019DD4:
	ldr r4, _08019E3C @ =gPlayerState
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019DE4
	b _0801A2A4
_08019DE4:
	bl sub_08079778
	cmp r0, #0
	bne _08019DEE
	b _0801A2A4
_08019DEE:
.ifdef USA
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08019DF6
	b _0801A2A4
.else
.ifdef DEMO_USA
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08019DF6
	b _0801A2A4
.else
.ifdef DEMO_JP @ TODO deduplicate
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08019DF6
	b _0801A2A4
.endif
.endif
.endif
_08019DF6:
	ldr r2, _08019E40 @ =gPlayerEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	ldrb r3, [r4, #0xd]
	cmp r0, r3
	beq _08019E04
	b _0801A2A4
_08019E04:
	ldrb r1, [r2, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019E10
	b _0801A2A4
_08019E10:
	ldrb r0, [r2, #0xf]
	cmp r0, #5
	bhi _08019E18
	b _0801A2A4
_08019E18:
	movs r0, #0x81
	strb r0, [r4, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r0, #0x15
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019E3C: .4byte gPlayerState
_08019E40: .4byte gPlayerEntity
_08019E44:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #8
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019E54
	b _0801A2A4
_08019E54:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r1, r7, #1
	cmp r0, #3
	bne _08019E84
	ldr r0, _08019E7C @ =gMapTop
	adds r0, #4
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r4
	bne _08019E84
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019E80 @ =0x0000400C
	adds r0, r0, r4
	strh r0, [r2]
	mov sb, r5
	b _08019E98
	.align 2, 0
_08019E7C: .4byte gMapTop
_08019E80: .4byte 0x0000400C
_08019E84:
	mov r0, r8
	adds r0, #4
	adds r0, r0, r1
	ldr r2, _08019EBC @ =gPlayerEntity
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	ldr r3, _08019EC0 @ =0x0000400C
	adds r1, r1, r3
	strh r1, [r0]
	mov sb, r2
_08019E98:
	ldr r2, _08019EC4 @ =gPlayerState
	movs r3, #0
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	mov r4, sb
	strh r3, [r4, #0x2c]
	strh r3, [r4, #0x30]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019EBC: .4byte gPlayerEntity
_08019EC0: .4byte 0x0000400C
_08019EC4: .4byte gPlayerState
_08019EC8:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019ED8
	b _0801A2A4
_08019ED8:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r2, _08019F04 @ =0x0000405B
	adds r0, r0, r2
	movs r3, #0
	strh r0, [r1]
	ldr r2, _08019F08 @ =gPlayerState
	movs r0, #0x98
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019F04: .4byte 0x0000405B
_08019F08: .4byte gPlayerState
_08019F0C:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xb
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019F1C
	b _0801A2A4
_08019F1C:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r3, _08019F48 @ =0x00004037
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r1]
	ldr r2, _08019F4C @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019F48: .4byte 0x00004037
_08019F4C: .4byte gPlayerState
_08019F50:
	cmp r3, #0
	beq _08019F56
	b _0801A2A4
_08019F56:
	ldr r2, _08019FA0 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r2, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019F6C
	b _0801A2A4
_08019F6C:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019F7C
	b _0801A2A4
_08019F7C:
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #4
	adds r0, r0, r1
	ldr r1, _08019FA4 @ =0x0000403F
	strh r1, [r0]
	movs r0, #0x82
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019FA0: .4byte gPlayerState
_08019FA4: .4byte 0x0000403F
_08019FA8:
	ldr r0, _0801A07C @ =gPlayerState
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019FB8
	b _0801A2A4
_08019FB8:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08019FC8
	b _0801A2A4
_08019FC8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801A570
	adds r7, r0, #0
	ldr r0, _0801A080 @ =0x0000FFFF
	cmp r7, r0
	bne _08019FDA
	b _0801A2A4
_08019FDA:
	lsrs r0, r7, #0xc
	subs r0, #1
	mov r8, r0
	ldr r0, _0801A084 @ =0x00000FFF
	ands r7, r0
	movs r4, #0
	movs r6, #0
	ldr r5, _0801A088 @ =gPlayerClones
	mov sb, r5
_08019FEC:
	mov r1, sb
	ldr r0, [r1]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _0801A00A
	ldr r0, [r5]
	movs r1, #0
	bl sub_0801A570
	cmp r0, r7
	bne _0801A00A
	adds r6, #1
_0801A00A:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _08019FEC
	cmp r6, r8
	bhs _0801A018
	b _0801A2A4
_0801A018:
	movs r0, #7
	mov r1, r8
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	bne _0801A02A
	b _0801A2A4
_0801A02A:
	ldr r3, _0801A08C @ =gPlayerEntity
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
	movs r4, #0
	strb r0, [r5, #0x15]
	movs r1, #0x3f
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801A090 @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r5, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r7
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, _0801A07C @ =gPlayerState
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r4, [r3, #0x2c]
	strh r4, [r3, #0x30]
	ldrb r0, [r5, #0x15]
	b _0801A0B6
	.align 2, 0
_0801A07C: .4byte gPlayerState
_0801A080: .4byte 0x0000FFFF
_0801A084: .4byte 0x00000FFF
_0801A088: .4byte gPlayerClones
_0801A08C: .4byte gPlayerEntity
_0801A090: .4byte gRoomControls
_0801A094:
	movs r0, #0xa0
	strb r0, [r2, #6]
	b _0801A09E
_0801A09A:
	movs r0, #0x90
	strb r0, [r7, #6]
_0801A09E:
	movs r2, #0
	movs r0, #5
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x30]
	mov r3, sb
	strh r2, [r3, #0x2c]
	strh r2, [r3, #0x30]
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
_0801A0B6:
	strb r0, [r3, #0x15]
	movs r0, #1
	b _0801A2A6
_0801A0BC:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #8
	bl sub_0801A458
	cmp r0, #0
	bne _0801A0CC
	b _0801A2A4
_0801A0CC:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _0801A0F0 @ =0x0000404B
	adds r0, r0, r4
	strh r0, [r1]
	ldr r2, _0801A0F4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0801A0F8
	movs r0, #0xc0
	b _0801A0FA
	.align 2, 0
_0801A0F0: .4byte 0x0000404B
_0801A0F4: .4byte gPlayerState
_0801A0F8:
	movs r0, #0xa0
_0801A0FA:
	strb r0, [r7, #6]
	movs r2, #0
	movs r0, #5
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x30]
	ldr r1, _0801A11C @ =gPlayerEntity
	strh r2, [r1, #0x2c]
	strh r2, [r1, #0x30]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A11C: .4byte gPlayerEntity
_0801A120:
	ldr r0, _0801A134 @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A12C
	b _0801A2A4
_0801A12C:
	ldr r0, _0801A138 @ =0x00004054
	adds r1, r5, #0
	b _0801A28C
	.align 2, 0
_0801A134: .4byte gPlayerState
_0801A138: .4byte 0x00004054
_0801A13C:
	ldr r0, _0801A150 @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A148
	b _0801A2A4
_0801A148:
	ldr r0, _0801A154 @ =0x00004054
	adds r1, r5, #0
	b _0801A28C
	.align 2, 0
_0801A150: .4byte gPlayerState
_0801A154: .4byte 0x00004054
_0801A158:
	subs r7, #1
_0801A15A:
	ldr r0, _0801A190 @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A166
	b _0801A2A4
_0801A166:
	mov r0, sb
	ldrh r1, [r0, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	bgt _0801A174
	b _0801A2A4
_0801A174:
	movs r4, #0
	ldr r5, _0801A194 @ =gPlayerClones
_0801A178:
	ldr r0, [r5]
	movs r1, #0
	bl sub_0801A8D0
	cmp r0, r7
	bne _0801A186
	b _0801A288
_0801A186:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _0801A178
	b _0801A2A4
	.align 2, 0
_0801A190: .4byte gPlayerState
_0801A194: .4byte gPlayerClones
_0801A198:
	subs r7, #0x40
_0801A19A:
	ldr r0, _0801A1CC @ =gPlayerState
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A1A6
	b _0801A2A4
_0801A1A6:
	mov r2, sb
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	ble _0801A2A4
	movs r4, #0
	ldr r5, _0801A1D0 @ =gPlayerClones
_0801A1B6:
	ldr r0, [r5]
	movs r1, #6
	bl sub_0801A8D0
	cmp r0, r7
	beq _0801A288
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _0801A1B6
	b _0801A2A4
	.align 2, 0
_0801A1CC: .4byte gPlayerState
_0801A1D0: .4byte gPlayerClones
_0801A1D4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r6, _0801A234 @ =gPlayerState
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r6, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0801A2A4
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	mov r8, r3
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r0, _0801A238 @ =0x00004074
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl SetTile
	movs r0, #0xa0
	strb r0, [r6, #6]
	movs r0, #5
	strb r0, [r6, #0xc]
	ldr r0, [r6, #0x30]
	mov r1, r8
	orrs r0, r1
	str r0, [r6, #0x30]
	strh r4, [r5, #0x2c]
	strh r4, [r5, #0x30]
_0801A228:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A234: .4byte gPlayerState
_0801A238: .4byte 0x00004074
_0801A23C:
	cmp r3, #4
	bne _0801A2A4
	ldr r1, _0801A280 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A2A4
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r0, _0801A284 @ =0x00004074
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl SetTile
	ldrb r2, [r4]
	movs r0, #0xd
	adds r1, r7, #0
	bl sub_080001D0
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A280: .4byte gPlayerState
_0801A284: .4byte 0x00004074
_0801A288:
	ldr r0, _0801A29C @ =0x00004059
	ldr r1, _0801A2A0 @ =gPlayerEntity
_0801A28C:
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl SetTile
	movs r0, #4
	b _0801A2A6
	.align 2, 0
_0801A29C: .4byte 0x00004059
_0801A2A0: .4byte gPlayerEntity
_0801A2A4:
	movs r0, #0
_0801A2A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
