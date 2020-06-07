	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080609E8
sub_080609E8: @ 0x080609E8
	push {lr}
	ldr r2, _080609FC @ =gUnk_0810AC1C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080609FC: .4byte gUnk_0810AC1C

	thumb_func_start sub_08060A00
sub_08060A00: @ 0x08060A00
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08060AD0 @ =gLinkState
	ldrb r1, [r0, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08060A44
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08060A52
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08060A44
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r4, [r5, #0x64]
	ldr r3, _08060AD4 @ =gLinkEntity
	ldrh r2, [r3, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	adds r0, #8
	strh r0, [r4, #0xa]
	ldr r2, [r5, #0x64]
	ldrh r0, [r3, #0x32]
	ands r1, r0
	adds r1, #8
	strh r1, [r2, #0xc]
_08060A44:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08060A52
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08060A62
_08060A52:
	ldr r0, _08060AD8 @ =gUnk_0810AC2C
	ldrb r1, [r5, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
_08060A62:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08060A76
	ldr r1, [r5, #0x64]
	ldr r2, _08060AD4 @ =gLinkEntity
	ldrh r0, [r2, #0x2e]
	strh r0, [r1, #2]
	ldr r1, [r5, #0x64]
	ldrh r0, [r2, #0x32]
	strh r0, [r1, #4]
_08060A76:
	adds r2, r5, #0
	adds r2, #0x74
	ldr r4, _08060ADC @ =gRoomControls
	ldrb r1, [r4, #5]
	ldrh r0, [r2]
	cmp r0, r1
	beq _08060ACE
	strh r1, [r2]
	ldr r0, _08060AD4 @ =gLinkEntity
	adds r1, r5, #0
	bl CopyPosition
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldrb r1, [r4, #0x10]
	lsls r0, r1, #1
	strb r0, [r5, #0x14]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	adds r0, r5, #0
	bl LoadAnimation
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x80
	adds r1, r5, #0
	adds r1, #0x59
	strb r0, [r1]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_08060ACE:
	pop {r4, r5, pc}
	.align 2, 0
_08060AD0: .4byte gLinkState
_08060AD4: .4byte gLinkEntity
_08060AD8: .4byte gUnk_0810AC2C
_08060ADC: .4byte gRoomControls

	thumb_func_start sub_08060AE0
sub_08060AE0: @ 0x08060AE0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x14
	bl sub_0801D8E0
	adds r1, r0, #0
	cmp r1, #0
	beq _08060B54
	str r1, [r4, #0x64]
	movs r0, #0x20
	strb r0, [r1, #1]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x49
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3b
	strb r2, [r0]
	ldr r0, _08060B58 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x17]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4, #0x17]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0xff
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08060E70
	movs r0, #5
	movs r1, #2
	movs r2, #0
	bl CreateNPC
	cmp r0, #0
	beq _08060B54
	str r4, [r0, #0x50]
	str r0, [r4, #0x78]
_08060B54:
	pop {r4, pc}
	.align 2, 0
_08060B58: .4byte gUnk_080FD150

	thumb_func_start sub_08060B5C
sub_08060B5C: @ 0x08060B5C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08061230
	cmp r0, #0
	bne _08060B9E
	adds r0, r4, #0
	bl sub_08060F80
	adds r5, r0, #0
	cmp r5, #0
	bne _08060B98
	ldr r1, _08060B94 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #2
	subs r0, r0, r1
	adds r0, #4
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #8
	bhi _08060B98
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xf]
	b _08060B9E
	.align 2, 0
_08060B94: .4byte gLinkEntity
_08060B98:
	adds r0, r4, #0
	bl sub_08060EDC
_08060B9E:
	pop {r4, r5, pc}

	thumb_func_start sub_08060BA0
sub_08060BA0: @ 0x08060BA0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08061230
	cmp r0, #0
	beq _08060BAE
	b _08060D74
_08060BAE:
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08060C66
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08060BF6
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r1, [r2, #0xe]
	ldrh r2, [r2, #0x10]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_08061120
	adds r0, r4, #0
	bl sub_08061170
	ldr r0, [r4, #0x64]
	ldrh r1, [r0, #0xe]
	ldrh r2, [r0, #0x10]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	bne _08060BEE
	b _08060D54
_08060BEE:
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xf7
	b _08060D36
_08060BF6:
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #0xc]
	adds r0, r4, #0
	bl sub_08060FD0
	cmp r0, #0
	beq _08060C56
	ldr r0, [r4, #0x64]
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0xc]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08060C38
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x15]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08060E70
	b _08060D54
_08060C38:
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_08061120
	adds r0, r4, #0
	bl sub_08061170
	b _08060D54
_08060C56:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08061464
	b _08060D54
_08060C66:
	ldr r5, _08060C98 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08060FD0
	cmp r0, #0
	beq _08060C9C
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08061090
	adds r0, r4, #0
	bl sub_08061170
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xf5
	b _08060D36
	.align 2, 0
_08060C98: .4byte gLinkEntity
_08060C9C:
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08060CDA
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r1, [r2, #0xe]
	ldrh r2, [r2, #0x10]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_08061120
	adds r0, r4, #0
	bl sub_08061170
	ldr r0, [r4, #0x64]
	ldrh r1, [r0, #0xe]
	ldrh r2, [r0, #0x10]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08060D54
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xf7
	b _08060D36
_08060CDA:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08060CF4
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x64]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r1, [r4, #0x64]
	ldrh r0, [r1, #4]
	strh r0, [r1, #8]
_08060CF4:
	ldr r0, [r4, #0x64]
	ldrh r1, [r0, #6]
	ldrh r2, [r0, #8]
	adds r0, r4, #0
	bl sub_08060FD0
	cmp r0, #0
	beq _08060D3C
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x64]
	ldrh r1, [r0, #6]
	ldrh r2, [r0, #8]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_08061120
	adds r0, r4, #0
	bl sub_08061170
	ldr r0, [r4, #0x64]
	ldrh r1, [r0, #6]
	ldrh r2, [r0, #8]
	adds r0, r4, #0
	movs r3, #4
	bl sub_0806FCB8
	cmp r0, #0
	beq _08060D54
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfd
_08060D36:
	ands r0, r1
	strb r0, [r2]
	b _08060D54
_08060D3C:
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08061464
_08060D54:
	adds r0, r4, #0
	bl sub_08060F80
	cmp r0, #0
	beq _08060D74
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08060E70
_08060D74:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08060D78
sub_08060D78: @ 0x08060D78
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08061358
	adds r0, r4, #0
	bl sub_08060F80
	cmp r0, #0
	beq _08060DCE
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0xf
	bhi _08060DC2
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08060DB2
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080042B8
_08060DB2:
	ldrb r1, [r5]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0xff
	strb r0, [r1]
_08060DC2:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08060E70
_08060DCE:
	pop {r4, r5, pc}

	thumb_func_start sub_08060DD0
sub_08060DD0: @ 0x08060DD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08060DF2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08060E70
_08060DF2:
	pop {r4, pc}

	thumb_func_start sub_08060DF4
sub_08060DF4: @ 0x08060DF4
	push {lr}
	bl sub_08061170
	pop {pc}

	thumb_func_start sub_08060DFC
sub_08060DFC: @ 0x08060DFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08060E94
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08060E32
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_08060E70
_08060E32:
	pop {r4, pc}

	thumb_func_start sub_08060E34
sub_08060E34: @ 0x08060E34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08060E68
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, _08060E6C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #8
	bl sub_08060E70
_08060E68:
	pop {r4, pc}
	.align 2, 0
_08060E6C: .4byte gLinkEntity

	thumb_func_start sub_08060E70
sub_08060E70: @ 0x08060E70
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	adds r1, r3, r0
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _08060E92
	adds r0, r2, #0
	adds r0, #0x6c
	strb r3, [r0]
	adds r0, r2, #0
	bl LoadAnimation
_08060E92:
	pop {pc}

	thumb_func_start sub_08060E94
sub_08060E94: @ 0x08060E94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	ldr r1, _08060ECC @ =0x0080FF00
	ands r0, r1
	ldr r1, _08060ED0 @ =0x00800100
	cmp r0, r1
	bne _08060ED4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08060ED4
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl LoadAnimation
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x80
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
	b _08060EDA
	.align 2, 0
_08060ECC: .4byte 0x0080FF00
_08060ED0: .4byte 0x00800100
_08060ED4:
	adds r0, r4, #0
	bl sub_080042B8
_08060EDA:
	pop {r4, pc}

	thumb_func_start sub_08060EDC
sub_08060EDC: @ 0x08060EDC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0xf
	bhi _08060F00
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08060F00
	adds r0, r4, #0
	bl sub_080042B8
	b _08060F7C
_08060F00:
	ldr r1, _08060F30 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	ldrb r2, [r4, #0x14]
	lsls r1, r2, #2
	subs r1, r0, r1
	adds r0, r1, #3
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #6
	ble _08060F4A
	ands r1, r3
	cmp r1, #0xf
	bgt _08060F34
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r4, #0
	bl LoadAnimation
	ldrb r0, [r4, #0x14]
	adds r0, #1
	b _08060F42
	.align 2, 0
_08060F30: .4byte gLinkEntity
_08060F34:
	adds r1, r2, #0
	adds r1, #0x28
	adds r0, r4, #0
	bl LoadAnimation
	ldrb r0, [r4, #0x14]
	subs r0, #1
_08060F42:
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	b _08060F7C
_08060F4A:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08060F7C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08060F76
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0xf
	bhi _08060F76
	adds r0, r4, #0
	movs r1, #0
	bl sub_08060E70
	b _08060F7C
_08060F76:
	adds r0, r4, #0
	bl sub_08060E94
_08060F7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08060F80
sub_08060F80: @ 0x08060F80
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08060FC8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08060FD0
	cmp r0, #0
	beq _08060FC2
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	ldr r2, [r4, #0x64]
	ldrb r2, [r2, #1]
	bl sub_0806FCD0
	cmp r0, #0
	bne _08060FCC
_08060FC2:
	movs r0, #0
	b _08060FCE
	.align 2, 0
_08060FC8: .4byte gLinkEntity
_08060FCC:
	movs r0, #1
_08060FCE:
	pop {r4, r5, pc}

	thumb_func_start sub_08060FD0
sub_08060FD0: @ 0x08060FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	mov r8, r2
	movs r0, #0x2e
	ldrsh r7, [r4, r0]
	movs r1, #0x32
	ldrsh r6, [r4, r1]
	mov r2, sb
	subs r0, r2, r7
	mov r5, r8
	subs r1, r5, r6
	bl sub_080045DA
	lsls r7, r7, #8
	lsls r6, r6, #8
	ldr r3, _08061058 @ =gUnk_080C9160
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r2, [r1, r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	str r1, [sp]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	str r0, [sp, #4]
	adds r4, #0x38
	ldrb r0, [r4]
	ldr r5, _0806105C @ =gUnk_0200D654
	mov sl, r5
	cmp r0, #2
	beq _0806102E
	ldr r0, _08061060 @ =gUnk_02027EB4
	mov sl, r0
_0806102E:
	adds r1, r7, #0
	cmp r7, #0
	bge _08061036
	adds r1, #0xff
_08061036:
	asrs r5, r1, #8
	adds r2, r6, #0
	cmp r6, #0
	bge _08061040
	adds r2, #0xff
_08061040:
	asrs r4, r2, #8
	mov r0, sl
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061064
	movs r0, #0
	b _08061084
	.align 2, 0
_08061058: .4byte gUnk_080C9160
_0806105C: .4byte gUnk_0200D654
_08061060: .4byte gUnk_02027EB4
_08061064:
	mov r1, sb
	subs r0, r1, r5
	adds r0, #6
	cmp r0, #0xc
	bhi _08061078
	mov r2, r8
	subs r0, r2, r4
	adds r0, #6
	cmp r0, #0xc
	bls _08061082
_08061078:
	ldr r5, [sp]
	adds r7, r7, r5
	ldr r0, [sp, #4]
	subs r6, r6, r0
	b _0806102E
_08061082:
	movs r0, #1
_08061084:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08061090
sub_08061090: @ 0x08061090
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r1, _080610C8 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r2, [r1, r0]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	movs r4, #0x32
	ldrsh r0, [r1, r4]
	movs r4, #0x32
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r0, _080610CC @ =0x000008FF
	cmp r1, r0
	bgt _080610D0
	movs r0, #0x90
	lsls r0, r0, #1
	b _080610F0
	.align 2, 0
_080610C8: .4byte gLinkEntity
_080610CC: .4byte 0x000008FF
_080610D0:
	ldr r0, _080610E4 @ =0x000018FF
	cmp r1, r0
	bgt _080610EC
	ldr r4, _080610E8 @ =0xFFFFF700
	adds r0, r1, r4
	asrs r0, r0, #4
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080610F0
	.align 2, 0
_080610E4: .4byte 0x000018FF
_080610E8: .4byte 0xFFFFF700
_080610EC:
	movs r0, #0x88
	lsls r0, r0, #2
_080610F0:
	strh r0, [r3, #0x24]
	movs r2, #0x24
	ldrsh r1, [r3, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bne _08061102
	movs r4, #4
	b _0806110C
_08061102:
	ldr r0, _0806111C @ =0x0000015F
	movs r4, #0xc
	cmp r1, r0
	bgt _0806110C
	movs r4, #8
_0806110C:
	adds r0, r3, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08061120
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806111C: .4byte 0x0000015F

	thumb_func_start sub_08061120
sub_08061120: @ 0x08061120
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080045D4
	strb r0, [r6, #0x15]
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r7, r0
	bne _08061158
	ldrb r0, [r6, #0x15]
	ldrb r1, [r6, #0x14]
	lsls r1, r1, #2
	subs r0, r0, r1
	adds r0, #5
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xa
	ble _0806116C
_08061158:
	ldrb r0, [r6, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r6, #0x14]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08060E70
_0806116C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061170
sub_08061170: @ 0x08061170
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AF1EC
	cmp r0, #0
	bne _080611CA
	adds r0, r4, #0
	bl sub_080611D4
	adds r5, r0, #0
	cmp r5, #0xff
	beq _080611C6
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08079FD4
	lsls r0, r0, #4
	subs r0, #4
	lsls r0, r0, #0xc
	str r0, [r4, #0x20]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #0x24]
	strb r5, [r4, #0x15]
	lsrs r1, r5, #2
	strb r1, [r4, #0x14]
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080611BE
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08060E70
	b _080611C6
_080611BE:
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_08060E70
_080611C6:
	movs r0, #0
	b _080611D2
_080611CA:
	adds r0, r4, #0
	bl sub_08016AD2
	movs r0, #1
_080611D2:
	pop {r4, r5, pc}

	thumb_func_start sub_080611D4
sub_080611D4: @ 0x080611D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08061218 @ =gUnk_0810AC4C
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002B4
	adds r3, r0, #0
	ldr r2, _0806121C @ =gUnk_0810AC54
_080611F4:
	ldrb r0, [r2]
	cmp r0, r3
	bne _08061220
	ldrb r0, [r2, #1]
	ldrb r1, [r4, #0x14]
	lsrs r0, r0, #2
	cmp r1, r0
	bne _08061220
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0806122A
	ldrb r0, [r2, #1]
	b _0806122C
	.align 2, 0
_08061218: .4byte gUnk_0810AC4C
_0806121C: .4byte gUnk_0810AC54
_08061220:
	adds r2, #2
	ldrb r0, [r2]
	cmp r0, #0
	bne _080611F4
	strb r0, [r4, #0xf]
_0806122A:
	movs r0, #0xff
_0806122C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08061230
sub_08061230: @ 0x08061230
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08061302
	adds r1, r4, #0
	adds r1, #0x41
	ldrb r3, [r1]
	movs r0, #0x80
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _0806133A
	movs r0, #0x7f
	ands r0, r3
	cmp r0, #0x1f
	bhi _080612E8
	lsls r0, r0, #2
	ldr r1, _08061264 @ =_08061268
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08061264: .4byte _08061268
_08061268: @ jump table
	.4byte _0806133A @ case 0
	.4byte _0806133A @ case 1
	.4byte _0806133A @ case 2
	.4byte _0806133A @ case 3
	.4byte _080612E8 @ case 4
	.4byte _080612E8 @ case 5
	.4byte _080612E8 @ case 6
	.4byte _080612E8 @ case 7
	.4byte _080612E8 @ case 8
	.4byte _080612E8 @ case 9
	.4byte _080612E8 @ case 10
	.4byte _080612E8 @ case 11
	.4byte _080612E8 @ case 12
	.4byte _080612E8 @ case 13
	.4byte _080612E8 @ case 14
	.4byte _0806133A @ case 15
	.4byte _080612E8 @ case 16
	.4byte _080612E8 @ case 17
	.4byte _080612E8 @ case 18
	.4byte _0806133A @ case 19
	.4byte _080612E8 @ case 20
	.4byte _080612E8 @ case 21
	.4byte _080612E8 @ case 22
	.4byte _080612E8 @ case 23
	.4byte _080612E8 @ case 24
	.4byte _080612E8 @ case 25
	.4byte _080612E8 @ case 26
	.4byte _0806133A @ case 27
	.4byte _080612E8 @ case 28
	.4byte _080612E8 @ case 29
	.4byte _0806133A @ case 30
	.4byte _0806133A @ case 31
_080612E8:
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #0x40
	adds r0, r4, #0
	bl LoadAnimation
	movs r0, #1
	b _08061356
_08061302:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806131A
	movs r0, #1
	b _08061356
_0806131A:
	ldr r2, [r4, #0x64]
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	bl LoadAnimation
	adds r2, r4, #0
	adds r2, #0x41
_0806133A:
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08061354
	adds r0, r2, #1
	strb r0, [r1]
_08061354:
	movs r0, #0
_08061356:
	pop {r4, pc}

	thumb_func_start sub_08061358
sub_08061358: @ 0x08061358
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xd]
	cmp r5, #1
	beq _0806139C
	cmp r5, #1
	bgt _0806136C
	cmp r5, #0
	beq _08061376
	b _08061460
_0806136C:
	cmp r5, #2
	beq _080613D0
	cmp r5, #3
	beq _0806141E
	b _08061460
_08061376:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08061460
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08060E70
	b _08061460
_0806139C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061460
	bl Random
	adds r6, r0, #0
	ands r5, r6
	cmp r5, #0
	beq _080613FA
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r3, _080613CC @ =gUnk_0810AC5D
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	lsrs r1, r6, #4
	movs r2, #3
	ands r1, r2
	adds r0, r0, r1
	adds r0, r0, r3
	b _0806143A
	.align 2, 0
_080613CC: .4byte gUnk_0810AC5D
_080613D0:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08061460
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	bl Random
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08061412
_080613FA:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x18
	ands r6, r0
	adds r0, r6, #0
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08060E70
	b _08061460
_08061412:
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08060E70
	b _08061460
_0806141E:
	adds r0, r4, #0
	bl sub_08061170
	cmp r0, #0
	bne _08061448
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r2, _08061444 @ =gUnk_0810AC5D
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	lsrs r1, r6, #4
	ands r1, r5
	adds r0, r0, r1
	adds r0, r0, r2
_0806143A:
	ldrb r1, [r0]
	adds r0, r4, #0
	bl LoadAnimation
	b _08061460
	.align 2, 0
_08061444: .4byte gUnk_0810AC5D
_08061448:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08061460
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08060E70
_08061460:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08061464
sub_08061464: @ 0x08061464
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	movs r0, #0x2e
	ldrsh r7, [r4, r0]
	movs r1, #0x32
	ldrsh r6, [r4, r1]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	adds r3, r5, #0
	bl sub_080045D4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	lsrs r0, r0, #2
	cmp r0, #7
	bls _08061494
	b _08061612
_08061494:
	lsls r0, r0, #2
	ldr r1, _080614A0 @ =_080614A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080614A0: .4byte _080614A4
_080614A4: @ jump table
	.4byte _080614C4 @ case 0
	.4byte _080614E2 @ case 1
	.4byte _08061514 @ case 2
	.4byte _08061544 @ case 3
	.4byte _08061566 @ case 4
	.4byte _08061584 @ case 5
	.4byte _080615B4 @ case 6
	.4byte _080615E4 @ case 7
_080614C4:
	adds r0, r4, #0
	adds r0, #0x6e
	strh r5, [r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, r8
	ble _08061504
	adds r2, r6, #0
	subs r2, #8
	adds r0, r4, #0
	adds r1, r7, #0
	mov r3, r8
	bl sub_08061630
	b _08061612
_080614E2:
	movs r0, #0x6e
	adds r0, r0, r4
	mov sb, r0
	mov r1, r8
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061720
	cmp r0, #0
	beq _08061500
	b _08061612
_08061500:
	mov r0, sb
	strh r5, [r0]
_08061504:
	adds r2, r6, #0
	subs r2, #8
	adds r0, r4, #0
	adds r1, r7, #0
	mov r3, r8
	bl sub_080616A8
	b _08061612
_08061514:
	adds r0, r4, #0
	adds r0, #0x6e
	mov r1, r8
	strh r1, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, r5
	ble _08061534
	adds r1, r7, #0
	adds r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061720
	b _08061612
_08061534:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061798
	b _08061612
_08061544:
	movs r0, #0x6e
	adds r0, r0, r4
	mov sb, r0
	mov r1, r8
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061798
	cmp r0, #0
	bne _08061612
	mov r0, sb
	strh r5, [r0]
	b _08061574
_08061566:
	adds r0, r4, #0
	adds r0, #0x6e
	strh r5, [r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, r8
	bgt _080615A4
_08061574:
	adds r2, r6, #0
	adds r2, #8
	adds r0, r4, #0
	adds r1, r7, #0
	mov r3, r8
	bl sub_08061888
	b _08061612
_08061584:
	movs r0, #0x6e
	adds r0, r0, r4
	mov sb, r0
	mov r1, r8
	strh r1, [r0]
	adds r1, r7, #0
	subs r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061978
	cmp r0, #0
	bne _08061612
	mov r0, sb
	strh r5, [r0]
_080615A4:
	adds r2, r6, #0
	adds r2, #8
	adds r0, r4, #0
	adds r1, r7, #0
	mov r3, r8
	bl sub_08061810
	b _08061612
_080615B4:
	adds r0, r4, #0
	adds r0, #0x6e
	mov r1, r8
	strh r1, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, r5
	ble _080615D4
	adds r1, r7, #0
	subs r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061900
	b _08061612
_080615D4:
	adds r1, r7, #0
	subs r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061978
	b _08061612
_080615E4:
	movs r0, #0x6e
	adds r0, r0, r4
	mov sb, r0
	mov r1, r8
	strh r1, [r0]
	adds r1, r7, #0
	subs r1, #8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08061900
	cmp r0, #0
	bne _08061612
	mov r0, sb
	strh r5, [r0]
	adds r2, r6, #0
	subs r2, #8
	adds r0, r4, #0
	adds r1, r7, #0
	mov r3, r8
	bl sub_08061630
_08061612:
	ldr r0, [r4, #0x64]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08061628
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_08061628:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08061630
sub_08061630: @ 0x08061630
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _08061650 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0806168C
	ldr r7, _08061654 @ =gUnk_0200D654
	b _0806168C
	.align 2, 0
_08061650: .4byte gUnk_02027EB4
_08061654: .4byte gUnk_0200D654
_08061658:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, sb
	bl sub_08061A74
	cmp r0, #0
	beq _0806168A
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0xe]
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	blt _0806168A
	movs r0, #1
	b _0806169E
_0806168A:
	subs r4, #8
_0806168C:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061658
	movs r0, #0
_0806169E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080616A8
sub_080616A8: @ 0x080616A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _080616C8 @ =gUnk_02027EB4
	cmp r0, #2
	bne _08061704
	ldr r7, _080616CC @ =gUnk_0200D654
	b _08061704
	.align 2, 0
_080616C8: .4byte gUnk_02027EB4
_080616CC: .4byte gUnk_0200D654
_080616D0:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, sb
	bl sub_08061A1C
	cmp r0, #0
	beq _08061702
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0xe]
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	blt _08061702
	movs r0, #1
	b _08061716
_08061702:
	subs r4, #8
_08061704:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _080616D0
	movs r0, #0
_08061716:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061720
sub_08061720: @ 0x08061720
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _08061740 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0806177C
	ldr r7, _08061744 @ =gUnk_0200D654
	b _0806177C
	.align 2, 0
_08061740: .4byte gUnk_02027EB4
_08061744: .4byte gUnk_0200D654
_08061748:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_080619F0
	cmp r0, #0
	beq _0806177A
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0xe]
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	bgt _0806177A
	movs r0, #1
	b _0806178E
_0806177A:
	adds r4, #8
_0806177C:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061748
	movs r0, #0
_0806178E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061798
sub_08061798: @ 0x08061798
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _080617B8 @ =gUnk_02027EB4
	cmp r0, #2
	bne _080617F4
	ldr r7, _080617BC @ =gUnk_0200D654
	b _080617F4
	.align 2, 0
_080617B8: .4byte gUnk_02027EB4
_080617BC: .4byte gUnk_0200D654
_080617C0:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_08061A48
	cmp r0, #0
	beq _080617F2
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0xe]
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	bgt _080617F2
	movs r0, #1
	b _08061806
_080617F2:
	adds r4, #8
_080617F4:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _080617C0
	movs r0, #0
_08061806:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061810
sub_08061810: @ 0x08061810
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _08061830 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0806186C
	ldr r7, _08061834 @ =gUnk_0200D654
	b _0806186C
	.align 2, 0
_08061830: .4byte gUnk_02027EB4
_08061834: .4byte gUnk_0200D654
_08061838:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, sb
	bl sub_08061A74
	cmp r0, #0
	beq _0806186A
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0xe]
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	bgt _0806186A
	movs r0, #1
	b _0806187E
_0806186A:
	adds r4, #8
_0806186C:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061838
	movs r0, #0
_0806187E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061888
sub_08061888: @ 0x08061888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _080618A8 @ =gUnk_02027EB4
	cmp r0, #2
	bne _080618E4
	ldr r7, _080618AC @ =gUnk_0200D654
	b _080618E4
	.align 2, 0
_080618A8: .4byte gUnk_02027EB4
_080618AC: .4byte gUnk_0200D654
_080618B0:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, sb
	bl sub_08061A1C
	cmp r0, #0
	beq _080618E2
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0xe]
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	bgt _080618E2
	movs r0, #1
	b _080618F6
_080618E2:
	adds r4, #8
_080618E4:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _080618B0
	movs r0, #0
_080618F6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061900
sub_08061900: @ 0x08061900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _08061920 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0806195C
	ldr r7, _08061924 @ =gUnk_0200D654
	b _0806195C
	.align 2, 0
_08061920: .4byte gUnk_02027EB4
_08061924: .4byte gUnk_0200D654
_08061928:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_080619F0
	cmp r0, #0
	beq _0806195A
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0xe]
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	blt _0806195A
	movs r0, #1
	b _0806196E
_0806195A:
	subs r4, #8
_0806195C:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061928
	movs r0, #0
_0806196E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08061978
sub_08061978: @ 0x08061978
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sb, r3
	mov r8, r4
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r7, _08061998 @ =gUnk_02027EB4
	cmp r0, #2
	bne _080619D4
	ldr r7, _0806199C @ =gUnk_0200D654
	b _080619D4
	.align 2, 0
_08061998: .4byte gUnk_02027EB4
_0806199C: .4byte gUnk_0200D654
_080619A0:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_08061A48
	cmp r0, #0
	beq _080619D2
	ldr r0, [r5, #0x64]
	mov r1, r8
	strh r1, [r0, #0xe]
	ldr r0, [r5, #0x64]
	strh r6, [r0, #0x10]
	ldr r2, [r5, #0x64]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, r4
	blt _080619D2
	movs r0, #1
	b _080619E6
_080619D2:
	subs r4, #8
_080619D4:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _080619A0
	movs r0, #0
_080619E6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080619F0
sub_080619F0: @ 0x080619F0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	cmp r5, r4
	bgt _08061A18
_080619FE:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061A12
	movs r0, #0
	b _08061A1A
_08061A12:
	subs r4, #8
	cmp r5, r4
	ble _080619FE
_08061A18:
	movs r0, #1
_08061A1A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08061A1C
sub_08061A1C: @ 0x08061A1C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r5, r4
	blt _08061A44
_08061A2A:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061A3E
	movs r0, #0
	b _08061A46
_08061A3E:
	adds r4, #8
	cmp r5, r4
	bge _08061A2A
_08061A44:
	movs r0, #1
_08061A46:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08061A48
sub_08061A48: @ 0x08061A48
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	cmp r5, r4
	blt _08061A70
_08061A56:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061A6A
	movs r0, #0
	b _08061A72
_08061A6A:
	adds r4, #8
	cmp r5, r4
	bge _08061A56
_08061A70:
	movs r0, #1
_08061A72:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08061A74
sub_08061A74: @ 0x08061A74
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r5, r4
	bgt _08061A9C
_08061A82:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_080AE4CC
	cmp r0, #0
	beq _08061A96
	movs r0, #0
	b _08061A9E
_08061A96:
	subs r4, #8
	cmp r5, r4
	ble _08061A82
_08061A9C:
	movs r0, #1
_08061A9E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08061AA0
sub_08061AA0: @ 0x08061AA0
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_08061AA8
sub_08061AA8: @ 0x08061AA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08061AC8 @ =gUnk_0810AC70
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	pop {r4, pc}
	.align 2, 0
_08061AC8: .4byte gUnk_0810AC70

	thumb_func_start sub_08061ACC
sub_08061ACC: @ 0x08061ACC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	movs r2, #0
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0xd]
	strb r2, [r4, #0xe]
	ldrb r1, [r4, #0x17]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	bl sub_08078778
	adds r0, r4, #0
	bl sub_08061AFC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08061AFC
sub_08061AFC: @ 0x08061AFC
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _08061B12
	strb r2, [r1, #0xd]
	ldr r0, _08061B14 @ =gUnk_0810B660
	ldr r0, [r0]
	str r0, [r1, #0x68]
	strb r2, [r1, #0xe]
_08061B12:
	pop {pc}
	.align 2, 0
_08061B14: .4byte gUnk_0810B660

	thumb_func_start sub_08061B18
sub_08061B18: @ 0x08061B18
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08061B54
	cmp r0, #1
	bne _08061B54
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08061AFC
	ldr r2, [r4, #0x68]
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r2, r2, r0
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08061B4C
	strb r0, [r4, #0xe]
_08061B4C:
	ldrh r0, [r2]
	adds r1, r4, #0
	bl TextboxNoOverlap
_08061B54:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08061B58
sub_08061B58: @ 0x08061B58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08061B6E
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
_08061B6E:
	ldr r0, _08061B88 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _08061B7E
	adds r0, r4, #0
	bl sub_080042B8
_08061B7E:
	adds r0, r4, #0
	bl sub_0806FD3C
	pop {r4, pc}
	.align 2, 0
_08061B88: .4byte gUnk_030010A0
