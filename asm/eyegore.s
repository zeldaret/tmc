	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08030A2C
sub_08030A2C: @ 0x08030A2C
	push {lr}
	ldr r1, _08030A38 @ =gUnk_080CE288
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_08030A38: .4byte gUnk_080CE288

	thumb_func_start sub_08030A3C
sub_08030A3C: @ 0x08030A3C
	push {lr}
	ldr r2, _08030A50 @ =gUnk_080CE2A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08030A50: .4byte gUnk_080CE2A0

	thumb_func_start sub_08030A54
sub_08030A54: @ 0x08030A54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r6, [r0]
	cmp r6, #0x95
	beq _08030A68
	adds r5, r4, #0
	adds r5, #0x45
	cmp r6, #0x8e
	bne _08030B0E
_08030A68:
	ldr r2, [r4, #0x4c]
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	adds r5, r4, #0
	adds r5, #0x45
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	bne _08030B0E
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	beq _08030AC0
	movs r3, #0x32
	ldrsh r0, [r2, r3]
	movs r3, #0x36
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	subs r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x10
	bhi _08030B0E
	cmp r6, #0x8e
	bne _08030AAE
	movs r0, #0
	b _08030AB2
_08030AAE:
	ldrb r0, [r5]
	subs r0, #1
_08030AB2:
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xfe
	b _08030AE0
_08030AC0:
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r0, #8
	cmp r0, #0x10
	bhi _08030B0E
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08030AEC
	adds r0, r4, #0
	bl sub_08031320
	movs r0, #0x86
	lsls r0, r0, #1
_08030AE0:
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08031344
	b _08030B0E
_08030AEC:
	cmp r6, #0x8e
	bne _08030AF4
	strb r3, [r5]
	b _08030AFA
_08030AF4:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
_08030AFA:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0xfe
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08031344
_08030B0E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030B24
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x78
	strb r0, [r1]
_08030B24:
	ldr r1, _08030B30 @ =gUnk_080CE288
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030B30: .4byte gUnk_080CE288

	thumb_func_start sub_08030B34
sub_08030B34: @ 0x08030B34
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08030B52
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	b _08030B70
_08030B52:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08030B6A
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
_08030B6A:
	adds r0, r4, #0
	bl sub_0804A7D4
_08030B70:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_18
nullsub_18: @ 0x08030B74
	bx lr
	.align 2, 0

	thumb_func_start sub_08030B78
sub_08030B78: @ 0x08030B78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x14]
	ldrh r2, [r4, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	ands r1, r0
	adds r1, #0xc
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r1, #8
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08030F00
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	beq _08030BE0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xa
	bl InitializeAnimation
	b _08030BE8
_08030BE0:
	adds r0, r4, #0
	movs r1, #0xe
	bl InitializeAnimation
_08030BE8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030BEC
sub_08030BEC: @ 0x08030BEC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _08030C08
	bl CheckFlags
	cmp r0, #0
	beq _08030C08
	adds r0, r4, #0
	bl sub_08031320
_08030C08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030C0C
sub_08030C0C: @ 0x08030C0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08030C1C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08030C68
_08030C1C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08030C68
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08030C6C @ =gUnk_020000B0
	ldr r3, [r2]
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0xa
	bl InitializeAnimation
_08030C68:
	pop {r4, r5, pc}
	.align 2, 0
_08030C6C: .4byte gUnk_020000B0

	thumb_func_start sub_08030C70
sub_08030C70: @ 0x08030C70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08030C98
	ldr r2, _08030C94 @ =gUnk_080CE2BC
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
	b _08030CCC
	.align 2, 0
_08030C94: .4byte gUnk_080CE2BC
_08030C98:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030CCC
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08030E58
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08030FB4
_08030CCC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030CD0
sub_08030CD0: @ 0x08030CD0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _08030D0C
	cmp r0, #2
	beq _08030D1A
	movs r5, #0x80
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08030D66
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08030D66
	b _08030D5A
_08030D0C:
	adds r0, r4, #0
	bl sub_08031024
	adds r0, r4, #0
	bl sub_08030E3C
	b _08030D66
_08030D1A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030D34
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_08030D34:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030D44
	adds r0, r4, #0
	bl sub_08031250
_08030D44:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08030D66
	adds r0, r4, #0
	bl sub_08030E70
	b _08030D66
_08030D5A:
	movs r0, #0
	movs r1, #5
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
_08030D66:
	pop {r4, r5, pc}

	thumb_func_start sub_08030D68
sub_08030D68: @ 0x08030D68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _08030DA0
	cmp r0, #2
	beq _08030DC4
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030E1C
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08030DFC
	b _08030DF4
_08030DA0:
	ldrb r0, [r4, #0x14]
	adds r1, r0, #0
	cmp r1, #2
	beq _08030DBC
	cmp r1, #2
	bls _08030DB0
	subs r0, #1
	b _08030DB2
_08030DB0:
	adds r0, #1
_08030DB2:
	movs r1, #3
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x7f
	strb r0, [r1]
_08030DBC:
	adds r0, r4, #0
	bl sub_08030E3C
	b _08030E1C
_08030DC4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030DDE
	adds r0, r4, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
_08030DDE:
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08030E1C
	adds r0, r4, #0
	bl sub_08030E70
	b _08030E1C
_08030DF4:
	adds r0, r4, #0
	bl sub_08030E58
	b _08030E1C
_08030DFC:
	ldrb r0, [r4, #0x14]
	cmp r0, #2
	bne _08030E1C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08030F00
_08030E1C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030E20
sub_08030E20: @ 0x08030E20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030E3A
	movs r0, #2
	strb r0, [r4, #0xc]
_08030E3A:
	pop {r4, pc}

	thumb_func_start sub_08030E3C
sub_08030E3C: @ 0x08030E3C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x5a
	movs r1, #0
	strb r1, [r2]
	movs r1, #0x8c
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	ldr r0, _08030E54 @ =0x00000157
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08030E54: .4byte 0x00000157

	thumb_func_start sub_08030E58
sub_08030E58: @ 0x08030E58
	adds r2, r0, #0
	movs r0, #0
	movs r1, #4
	strb r1, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x7a
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	bx lr

	thumb_func_start sub_08030E70
sub_08030E70: @ 0x08030E70
	push {lr}
	bl sub_08030E80
	movs r0, #0xac
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_08030E80
sub_08030E80: @ 0x08030E80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x14]
	lsls r5, r0, #2
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08030EC0
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _08030EFC @ =gUnk_080CE2F4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r5, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08030EC0:
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08030EFA
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r1, _08030EFC @ =gUnk_080CE2F4
	adds r0, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r5, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08030EFA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030EFC: .4byte gUnk_080CE2F4

	thumb_func_start sub_08030F00
sub_08030F00: @ 0x08030F00
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _08030FAC @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #8
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	adds r1, #0x14
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x80
	strh r0, [r1]
	adds r0, r4, #1
	mov sl, r0
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x82
	strh r0, [r1]
	movs r3, #0x40
	adds r3, r3, r4
	mov sb, r3
	ldrb r1, [r6]
	mov r0, sb
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x84
	strh r0, [r1]
	movs r0, #0x41
	adds r0, r0, r4
	mov r8, r0
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x86
	strh r0, [r1]
	ldr r5, _08030FB0 @ =0x00004022
	ldrb r2, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetTile
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, sl
	bl SetTile
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, sb
	bl SetTile
	ldrb r2, [r6]
	adds r0, r5, #0
	mov r1, r8
	bl SetTile
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030FAC: .4byte gRoomControls
_08030FB0: .4byte 0x00004022

	thumb_func_start sub_08030FB4
sub_08030FB4: @ 0x08030FB4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _08031020 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #8
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	adds r1, #0x14
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x82
	ldrh r0, [r0]
	adds r1, r4, #1
	ldrb r2, [r5]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x84
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r5]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r4, #0x41
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_08031020: .4byte gRoomControls

	thumb_func_start sub_08031024
sub_08031024: @ 0x08031024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r2, r7, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	bne _08031084
	cmp r1, #0
	beq _08031074
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r2, [r7, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r7, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08031070 @ =gUnk_020000B0
	ldr r3, [r2]
	movs r4, #0x2e
	ldrsh r2, [r3, r4]
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	b _080311E8
	.align 2, 0
_08031070: .4byte gUnk_020000B0
_08031074:
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	b _080311D8
_08031084:
	cmp r1, #0
	beq _0803108E
	movs r0, #0
	strb r0, [r2]
	b _080311EE
_0803108E:
	adds r0, r7, #0
	adds r0, #0x78
	ldrb r2, [r0]
	adds r1, r2, #0
	mov sl, r0
	cmp r1, #0
	bne _0803109E
	b _080311D4
_0803109E:
	cmp r1, #1
	bne _080310E2
	movs r0, #0x80
	orrs r0, r2
	mov r3, sl
	strb r0, [r3]
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl sub_080045D4
	strb r0, [r7, #0x15]
	adds r0, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrb r3, [r7, #0x15]
	cmp r0, r3
	bhs _080310DC
	adds r0, #8
	ands r0, r2
	b _080310F0
_080310DC:
	subs r0, #8
	ands r0, r2
	b _080310F0
_080310E2:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080310F2
	ldrb r0, [r7, #0x15]
	movs r1, #0x10
	eors r0, r1
_080310F0:
	strb r0, [r7, #0x15]
_080310F2:
	mov r4, sl
	ldrb r2, [r4]
	movs r0, #0x70
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031120
	lsrs r0, r0, #0x19
	movs r1, #0x8f
	ands r1, r2
	orrs r0, r1
	strb r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080311EE
	adds r0, r7, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r7, #0x15]
	movs r0, #0
	strb r0, [r4]
	b _080311EE
_08031120:
	movs r0, #0x7b
	adds r0, r0, r7
	mov sb, r0
	ldrb r4, [r0]
	lsrs r4, r4, #1
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _080311B4 @ =gUnk_080CE2C0
	adds r1, r4, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r4, #1
	adds r2, r2, r5
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #0x38
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r3]
	bl GetTileTypeByPos
	adds r6, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	adds r1, r4, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r4, #3
	adds r4, r4, r5
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl GetTileTypeByPos
	adds r1, r0, #0
	ldr r2, _080311B8 @ =gUnk_080B3E80
	adds r6, r6, r2
	ldrb r0, [r6]
	mov r3, sb
	cmp r0, #0
	bne _08031194
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080311C8
_08031194:
	movs r0, #1
	cmp r0, #0
	beq _080311C8
	ldrb r0, [r7, #0x15]
	lsrs r0, r0, #3
	ldrb r4, [r7, #0x14]
	cmp r0, r4
	bne _080311BC
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	b _080311EE
	.align 2, 0
_080311B4: .4byte gUnk_080CE2C0
_080311B8: .4byte gUnk_080B3E80
_080311BC:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _080311EE
_080311C8:
	ldrb r0, [r3]
	movs r1, #0
	strb r0, [r7, #0x15]
	mov r3, sl
	strb r1, [r3]
	b _080311EE
_080311D4:
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
_080311D8:
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
_080311E8:
	bl sub_080045D4
	strb r0, [r7, #0x15]
_080311EE:
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	ldrb r3, [r7, #0x14]
	cmp r0, r3
	bne _0803120C
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0x14]
	adds r1, #5
	b _08031232
_0803120C:
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	ldrb r2, [r7, #0x14]
	lsls r1, r2, #3
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	bls _08031228
	subs r0, r2, #1
	b _0803122A
_08031228:
	adds r0, r2, #1
_0803122A:
	movs r1, #3
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x7f
_08031232:
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0
	strb r0, [r7, #0x15]
	strh r1, [r7, #0x2c]
	strh r1, [r7, #0x30]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08031250
sub_08031250: @ 0x08031250
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r4, [r6, #0x14]
	lsls r4, r4, #2
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r5, _0803130C @ =gUnk_080CE2C0
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r0, r4, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	adds r0, r6, #0
	movs r1, #9
	bl sub_08008796
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r0, r4, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r4, #3
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r3, r3, r0
	adds r0, r6, #0
	movs r1, #9
	bl sub_08008796
	adds r2, r6, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	beq _08031316
	movs r3, #0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bhi _080312C8
	strh r1, [r6, #0x2e]
	movs r3, #0x80
_080312C8:
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	adds r1, r6, #0
	adds r1, #0x76
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r0, #4
	bhi _080312E2
	strh r1, [r6, #0x32]
	ldrb r0, [r2]
	orrs r3, r0
	strb r3, [r2]
_080312E2:
	ldrb r1, [r2]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0803131C
	adds r0, r6, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803131C
	adds r2, r6, #0
	adds r2, #0x78
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08031310
	movs r0, #0x82
	strb r0, [r2]
	b _0803131C
	.align 2, 0
_0803130C: .4byte gUnk_080CE2C0
_08031310:
	movs r0, #1
	strb r0, [r2]
	b _0803131C
_08031316:
	adds r0, r6, #0
	bl sub_080AEF88
_0803131C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08031320
sub_08031320: @ 0x08031320
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	ldr r1, _08031340 @ =gUnk_080FD308
	str r1, [r0, #0x48]
	movs r1, #0xa
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_08031340: .4byte gUnk_080FD308

	thumb_func_start sub_08031344
sub_08031344: @ 0x08031344
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	bl sub_08017A90
	adds r3, r0, #0
	cmp r3, #0
	beq _0803136C
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #1
	ldr r1, _08031370 @ =gUnk_080CE304
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r3, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r1, [r0, #1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r1, [r0]
_0803136C:
	pop {pc}
	.align 2, 0
_08031370: .4byte gUnk_080CE304
