	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805884C
sub_0805884C: @ 0x0805884C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08058880 @ =gUnk_0810821C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08058BC8
	ldr r0, _08058884 @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08058888 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0805888C @ =0x04000020
	ldr r2, _08058890 @ =0xA2600008
	bl sub_0805622C
	pop {r4, pc}
	.align 2, 0
_08058880: .4byte gUnk_0810821C
_08058884: .4byte gUnk_03003DE4
_08058888: .4byte gUnk_02017AA0
_0805888C: .4byte 0x04000020
_08058890: .4byte 0xA2600008

	thumb_func_start sub_08058894
sub_08058894: @ 0x08058894
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080588C4 @ =0x00001234
	str r0, [r4, #0x28]
	movs r0, #0x15
	movs r1, #2
	bl CheckLocalFlags
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08058CB0
	ldr r1, _080588C8 @ =sub_08058D34
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	pop {r4, pc}
	.align 2, 0
_080588C4: .4byte 0x00001234
_080588C8: .4byte sub_08058D34

	thumb_func_start sub_080588CC
sub_080588CC: @ 0x080588CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058CFC
	adds r0, r4, #0
	bl sub_08058A04
	ldr r0, _080588E8 @ =gScreenTransition
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080588EC
	movs r0, #2
	strb r0, [r4, #0xc]
	b _080588F2
	.align 2, 0
_080588E8: .4byte gScreenTransition
_080588EC:
	adds r0, r4, #0
	bl sub_080588F8
_080588F2:
	pop {r4, pc}

	thumb_func_start nullsub_108
nullsub_108: @ 0x080588F4
	bx lr
	.align 2, 0

	thumb_func_start sub_080588F8
sub_080588F8: @ 0x080588F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08058952
	movs r0, #0x26
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x28]
	subs r1, r0, r2
	cmp r1, #0
	blt _08058914
	cmp r1, #8
	bhi _0805891A
	b _08058968
_08058914:
	subs r0, r2, r0
	cmp r0, #8
	bls _08058968
_0805891A:
	ldr r0, _08058934 @ =0x00001234
	str r0, [r4, #0x28]
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	ldr r0, _08058938 @ =0x0000FFFE
	ands r1, r0
	cmp r1, #0xa0
	beq _08058940
	cmp r1, #0xa0
	bgt _0805893C
	cmp r1, #0x48
	beq _08058940
	b _08058968
	.align 2, 0
_08058934: .4byte 0x00001234
_08058938: .4byte 0x0000FFFE
_0805893C:
	cmp r1, #0xf0
	bne _08058968
_08058940:
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	str r0, [r4, #0x28]
	movs r0, #0x2d
	strb r0, [r4, #0xf]
	movs r0, #0x8c
	bl PlaySFX
	b _08058968
_08058952:
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x29
	bls _08058964
	ldr r0, [r4, #0x28]
	subs r0, #2
	b _08058966
_08058964:
	ldr r0, [r4, #0x28]
_08058966:
	strh r0, [r4, #0x26]
_08058968:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080589DE
	ldr r0, _080589A4 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r0, _080589A8 @ =gRoomControls
	ldrh r0, [r0, #8]
	subs r2, r1, r0
	adds r1, r2, #0
	subs r1, #0x50
	cmp r1, #0
	bge _08058986
	movs r1, #0x50
	subs r1, r1, r2
_08058986:
	lsrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r0, r3
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080589DE
	cmp r2, #0x48
	bgt _080589AC
	ldr r0, [r4, #0x24]
	subs r0, r0, r1
	b _080589B4
	.align 2, 0
_080589A4: .4byte gPlayerEntity
_080589A8: .4byte gRoomControls
_080589AC:
	cmp r2, #0x57
	ble _080589B6
	ldr r0, [r4, #0x24]
	adds r0, r0, r1
_080589B4:
	str r0, [r4, #0x24]
_080589B6:
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	subs r1, r2, r0
	adds r3, r0, #0
	cmp r1, #0
	blt _080589CC
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bhi _080589D6
	b _080589DE
_080589CC:
	subs r1, r3, r2
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bls _080589DE
_080589D6:
	str r3, [r4, #0x2c]
	movs r0, #0x8b
	bl PlaySFX
_080589DE:
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	str r1, [r4, #0x20]
	cmp r1, #0
	bge _080589F0
	ldr r0, _080589EC @ =0x000001FF
	b _080589F8
	.align 2, 0
_080589EC: .4byte 0x000001FF
_080589F0:
	ldr r0, _08058A00 @ =0x000001FF
	cmp r1, r0
	ble _080589FC
	movs r0, #0
_080589F8:
	str r0, [r4, #0x20]
	strh r0, [r4, #0x26]
_080589FC:
	pop {r4, pc}
	.align 2, 0
_08058A00: .4byte 0x000001FF

	thumb_func_start sub_08058A04
sub_08058A04: @ 0x08058A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r6, _08058A68 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r7, _08058A6C @ =gRoomControls
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	ldrh r0, [r7, #8]
	subs r5, r1, r0
	ldr r0, [r4, #0x20]
	ldr r1, _08058A70 @ =0xFFFFFEE8
	adds r0, r0, r1
	cmp r0, #0xc
	bhi _08058A78
	movs r0, #0x17
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08058A78
	mov r0, r8
	subs r0, #0x6d
	cmp r0, #0x16
	bhi _08058A78
	adds r0, r5, #0
	subs r0, #0x45
	cmp r0, #0x16
	bhi _08058A78
	movs r0, #0x36
	ldrsh r2, [r6, r0]
	cmp r2, #0
	bne _08058A78
	ldr r0, _08058A74 @ =gPlayerState
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r0, #0x38
	strb r2, [r0]
	ldrh r0, [r7, #6]
	adds r0, #0x78
	strh r0, [r6, #0x2e]
	ldrh r0, [r7, #8]
	adds r0, #0x50
	strh r0, [r6, #0x32]
	b _08058AFC
	.align 2, 0
_08058A68: .4byte gPlayerEntity
_08058A6C: .4byte gRoomControls
_08058A70: .4byte 0xFFFFFEE8
_08058A74: .4byte gPlayerState
_08058A78:
	mov r1, r8
	cmp r1, #0x77
	bgt _08058AC0
	cmp r5, #0x4f
	bgt _08058AA0
	ldr r3, _08058A9C @ =gUnk_08108228
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0xb0
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08058B5C
	b _08058AFC
	.align 2, 0
_08058A9C: .4byte gUnk_08108228
_08058AA0:
	ldr r3, _08058ABC @ =gUnk_08108258
	adds r0, r4, #0
	movs r1, #0x38
	movs r2, #0x60
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08058B5C
	b _08058AFC
	.align 2, 0
_08058ABC: .4byte gUnk_08108258
_08058AC0:
	cmp r5, #0x4f
	bgt _08058AE4
	movs r2, #0x84
	lsls r2, r2, #1
	ldr r3, _08058AE0 @ =gUnk_08108288
	adds r0, r4, #0
	movs r1, #0xe0
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #2
	bl sub_08058B5C
	b _08058AFC
	.align 2, 0
_08058AE0: .4byte gUnk_08108288
_08058AE4:
	ldr r3, _08058B04 @ =gUnk_081082B8
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0xb8
	bl sub_08058B08
	cmp r0, #0
	beq _08058AFC
	adds r0, r4, #0
	movs r1, #3
	bl sub_08058B5C
_08058AFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08058B04: .4byte gUnk_081082B8

	thumb_func_start sub_08058B08
sub_08058B08: @ 0x08058B08
	push {r4, r5, lr}
	adds r4, r3, #0
	ldr r0, [r0, #0x20]
	cmp r0, r1
	blo _08058B16
	cmp r0, r2
	bls _08058B1A
_08058B16:
	movs r0, #0
	b _08058B50
_08058B1A:
	subs r0, r0, r1
	lsrs r0, r0, #3
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r3, _08058B54 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	ldr r1, _08058B58 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	ldrh r0, [r4]
	subs r2, r2, r0
	movs r5, #0x32
	ldrsh r0, [r3, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	movs r1, #0
	ldrh r3, [r4, #4]
	cmp r2, r3
	bhs _08058B4E
	ldrh r4, [r4, #6]
	cmp r0, r4
	bhs _08058B4E
	movs r1, #1
_08058B4E:
	adds r0, r1, #0
_08058B50:
	pop {r4, r5, pc}
	.align 2, 0
_08058B54: .4byte gPlayerEntity
_08058B58: .4byte gRoomControls

	thumb_func_start sub_08058B5C
sub_08058B5C: @ 0x08058B5C
	push {r4, r5, lr}
	ldr r3, _08058BB4 @ =gScreenTransition
	movs r0, #0
	movs r4, #1
	strb r4, [r3, #8]
	strb r0, [r3, #9]
	movs r5, #4
	movs r0, #4
	strb r0, [r3, #0xf]
	ldr r0, _08058BB8 @ =gRoomControls
	ldrb r0, [r0, #4]
	strb r0, [r3, #0xc]
	movs r0, #6
	strb r0, [r3, #0xd]
	adds r2, r1, #0
	ands r2, r4
	rsbs r0, r2, #0
	orrs r0, r2
	asrs r0, r0, #0x1f
	ands r0, r5
	strb r0, [r3, #0xe]
	ldr r4, _08058BBC @ =gUnk_081082E8
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r3, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r3, #0x12]
	ldr r1, _08058BC0 @ =gUnk_02002A40
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	strb r0, [r1, #7]
	ldr r0, _08058BC4 @ =0x00000121
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_08058BB4: .4byte gScreenTransition
_08058BB8: .4byte gRoomControls
_08058BBC: .4byte gUnk_081082E8
_08058BC0: .4byte gUnk_02002A40
_08058BC4: .4byte 0x00000121

	thumb_func_start sub_08058BC8
sub_08058BC8: @ 0x08058BC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r0
	ldr r0, _08058C9C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08058CA0 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x80
	strh r0, [r1, #0xa]
	mov r0, sp
	strh r2, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xc]
	movs r5, #0
	mov r6, sp
	ldr r0, _08058CA4 @ =gSineTable
	mov r8, r0
	adds r7, r1, #0
_08058C0A:
	lsls r0, r5, #7
	movs r1, #0xa0
	bl __divsi3
	movs r1, #0xff
	ands r0, r1
	lsls r1, r0, #1
	add r1, r8
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	asrs r1, r1, #2
	adds r1, r1, r7
	strh r1, [r6, #0xc]
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #4
	subs r0, r7, r0
	strh r0, [r6, #0xe]
	mov r3, sb
	ldr r0, [r3, #0x20]
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	adds r1, r4, #0
	movs r2, #1
	bl BgAffineSet
	adds r4, #0x10
	adds r5, #1
	cmp r5, #0x9f
	bls _08058C0A
	ldr r0, _08058C9C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08058CA8 @ =gUnk_02017BA0
	adds r4, r0, r1
	ldr r2, _08058CAC @ =gScreen
	ldrh r0, [r4]
	strh r0, [r2, #0x38]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x3a]
	ldrh r0, [r4, #4]
	strh r0, [r2, #0x3c]
	ldrh r0, [r4, #6]
	strh r0, [r2, #0x3e]
	ldrh r1, [r4, #8]
	adds r0, r2, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrh r0, [r4, #0xa]
	adds r1, r2, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r1, [r4, #0xe]
	adds r0, #2
	strh r1, [r0]
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08058C9C: .4byte gUnk_03003DE4
_08058CA0: .4byte gUnk_02017AA0
_08058CA4: .4byte gSineTable
_08058CA8: .4byte gUnk_02017BA0
_08058CAC: .4byte gScreen

	thumb_func_start sub_08058CB0
sub_08058CB0: @ 0x08058CB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08058CD8 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	ldr r3, _08058CDC @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	ldrh r0, [r3, #8]
	subs r2, r2, r0
	cmp r1, #0x77
	bhi _08058CE0
	movs r1, #1
	cmp r2, #0x4f
	bhi _08058CE8
	movs r1, #0
	b _08058CE8
	.align 2, 0
_08058CD8: .4byte gPlayerEntity
_08058CDC: .4byte gRoomControls
_08058CE0:
	movs r1, #3
	cmp r2, #0x4f
	bhi _08058CE8
	movs r1, #2
_08058CE8:
	ldr r0, _08058CF8 @ =gUnk_08108300
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	str r0, [r4, #0x20]
	strh r0, [r4, #0x26]
	pop {r4, pc}
	.align 2, 0
_08058CF8: .4byte gUnk_08108300

	thumb_func_start sub_08058CFC
sub_08058CFC: @ 0x08058CFC
	push {r4, r5, lr}
	ldr r5, _08058D2C @ =gPlayerEntity
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldr r1, _08058D30 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r1, r2]
	subs r4, r0, r1
	cmp r4, #0x4b
	bhi _08058D1A
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl sub_080044AE
_08058D1A:
	cmp r4, #0x54
	bls _08058D28
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0
	bl sub_080044AE
_08058D28:
	pop {r4, r5, pc}
	.align 2, 0
_08058D2C: .4byte gPlayerEntity
_08058D30: .4byte gRoomControls

	thumb_func_start sub_08058D34
sub_08058D34: @ 0x08058D34
	push {r4, lr}
	movs r0, #0x28
	bl LoadPaletteGroup
	ldr r0, _08058DAC @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _08058DB0 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x16
	bl sub_0801D7EC
	ldr r1, _08058DB4 @ =gScreen
	ldrh r0, [r1]
	movs r3, #0
	movs r2, #1
	movs r4, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08058DB8 @ =0x0000BC82
	strh r0, [r1, #0x20]
	ldr r0, _08058DBC @ =0x00005E86
	strh r0, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	adds r2, r1, #0
	adds r2, #0x66
	ldr r0, _08058DC0 @ =0x00003456
	strh r0, [r2]
	adds r1, #0x68
	ldr r0, _08058DC4 @ =0x00000909
	strh r0, [r1]
	ldr r0, _08058DC8 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08058DCC @ =gUnk_02000070
	strb r4, [r0]
	movs r0, #0x17
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08058DA8
	movs r0, #0x4a
	bl sub_0801D7EC
_08058DA8:
	pop {r4, pc}
	.align 2, 0
_08058DAC: .4byte gUnk_02017700
_08058DB0: .4byte gUsedPalettes
_08058DB4: .4byte gScreen
_08058DB8: .4byte 0x0000BC82
_08058DBC: .4byte 0x00005E86
_08058DC0: .4byte 0x00003456
_08058DC4: .4byte 0x00000909
_08058DC8: .4byte gArea
_08058DCC: .4byte gUnk_02000070
