	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08049D30
sub_08049D30: @ 0x08049D30
	push {r4, r5, r6, lr}
	ldr r1, _08049D58 @ =gUnk_020354B0
	ldr r0, _08049D5C @ =gUnk_02024050
	str r0, [r1]
	adds r5, r1, #0
	ldr r6, _08049D60 @ =gRoomControls
	ldr r4, _08049D64 @ =0x0000FFFF
_08049D3E:
	ldr r3, [r5]
	ldrh r0, [r3]
	ldrh r2, [r6, #4]
	adds r1, r4, #0
	ands r1, r0
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	bne _08049D68
	adds r0, r3, #0
	bl sub_08049DCC
	b _08049D7C
	.align 2, 0
_08049D58: .4byte gUnk_020354B0
_08049D5C: .4byte gUnk_02024050
_08049D60: .4byte gRoomControls
_08049D64: .4byte 0x0000FFFF
_08049D68:
	adds r1, r3, #0
	adds r1, #8
	str r1, [r5]
	ldr r0, _08049D80 @ =gUnk_02024090
	cmp r1, r0
	blo _08049D3E
	bl sub_08049D88
	ldr r1, _08049D84 @ =gUnk_020354B0
	str r0, [r1]
_08049D7C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049D80: .4byte gUnk_02024090
_08049D84: .4byte gUnk_020354B0

	thumb_func_start sub_08049D88
sub_08049D88: @ 0x08049D88
	push {r4, r5, lr}
	ldr r4, _08049DC0 @ =gUnk_02024050
	adds r1, r4, #0
	adds r1, #8
	ldr r3, _08049DC4 @ =gRoomControls
	adds r2, r4, #0
	adds r2, #0x40
_08049D96:
	ldrh r0, [r1, #2]
	ldrh r5, [r4, #2]
	cmp r0, r5
	bls _08049DA0
	adds r4, r1, #0
_08049DA0:
	adds r1, #8
	cmp r1, r2
	blo _08049D96
	ldrb r0, [r3, #4]
	movs r1, #0
	strb r0, [r4]
	ldrb r0, [r3, #5]
	strb r0, [r4, #1]
	ldr r0, _08049DC8 @ =0x0000FFFF
	strh r0, [r4, #2]
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_08049DCC
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_08049DC0: .4byte gUnk_02024050
_08049DC4: .4byte gRoomControls
_08049DC8: .4byte 0x0000FFFF

	thumb_func_start sub_08049DCC
sub_08049DCC: @ 0x08049DCC
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, _08049DF0 @ =gUnk_02024050
	adds r3, r1, #0
	adds r3, #0x40
_08049DD6:
	ldrh r0, [r1, #2]
	ldrh r4, [r2, #2]
	cmp r0, r4
	bhs _08049DE2
	adds r0, #1
	strh r0, [r1, #2]
_08049DE2:
	adds r1, #8
	cmp r1, r3
	blo _08049DD6
	movs r0, #0
	strh r0, [r2, #2]
	pop {r4, pc}
	.align 2, 0
_08049DF0: .4byte gUnk_02024050

	thumb_func_start sub_08049DF4
sub_08049DF4: @ 0x08049DF4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08049E10 @ =gUnk_020000B0
	ldr r0, [r0]
	cmp r0, #0
	bne _08049E0C
	ldr r1, _08049E14 @ =gUnk_080D3BE8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_08049E0C:
	pop {pc}
	.align 2, 0
_08049E10: .4byte gUnk_020000B0
_08049E14: .4byte gUnk_080D3BE8

	thumb_func_start sub_08049E18
sub_08049E18: @ 0x08049E18
	push {lr}
	ldr r1, _08049E38 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E48
	ldr r0, [r1, #0x30]
	ldr r1, _08049E3C @ =0x22189B75
	ands r0, r1
	cmp r0, #0
	bne _08049E48
	ldr r1, _08049E40 @ =gUnk_020000B0
	ldr r0, _08049E44 @ =gPlayerEntity
	str r0, [r1]
	b _08049E4A
	.align 2, 0
_08049E38: .4byte gPlayerState
_08049E3C: .4byte 0x22189B75
_08049E40: .4byte gUnk_020000B0
_08049E44: .4byte gPlayerEntity
_08049E48:
	movs r0, #0
_08049E4A:
	pop {pc}

	thumb_func_start sub_08049E4C
sub_08049E4C: @ 0x08049E4C
	push {lr}
	ldr r1, _08049E6C @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E7C
	ldr r0, [r1, #0x30]
	ldr r1, _08049E70 @ =0x22189BF5
	ands r0, r1
	cmp r0, #0
	bne _08049E7C
	ldr r1, _08049E74 @ =gUnk_020000B0
	ldr r0, _08049E78 @ =gPlayerEntity
	str r0, [r1]
	b _08049E7E
	.align 2, 0
_08049E6C: .4byte gPlayerState
_08049E70: .4byte 0x22189BF5
_08049E74: .4byte gUnk_020000B0
_08049E78: .4byte gPlayerEntity
_08049E7C:
	movs r0, #0
_08049E7E:
	pop {pc}

	thumb_func_start sub_08049E80
sub_08049E80: @ 0x08049E80
	push {lr}
	ldr r1, _08049E9C @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E98
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08049EA0
_08049E98:
	movs r0, #0
	b _08049EA6
	.align 2, 0
_08049E9C: .4byte gPlayerState
_08049EA0:
	ldr r1, _08049EA8 @ =gUnk_020000B0
	ldr r0, _08049EAC @ =gPlayerEntity
	str r0, [r1]
_08049EA6:
	pop {pc}
	.align 2, 0
_08049EA8: .4byte gUnk_020000B0
_08049EAC: .4byte gPlayerEntity

	thumb_func_start sub_08049EB0
sub_08049EB0: @ 0x08049EB0
	push {lr}
	ldr r1, _08049ED0 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049EE0
	ldr r0, [r1, #0x30]
	ldr r1, _08049ED4 @ =0x00080190
	ands r0, r1
	cmp r0, #0
	bne _08049EE0
	ldr r1, _08049ED8 @ =gUnk_020000B0
	ldr r0, _08049EDC @ =gPlayerEntity
	str r0, [r1]
	b _08049EE2
	.align 2, 0
_08049ED0: .4byte gPlayerState
_08049ED4: .4byte 0x00080190
_08049ED8: .4byte gUnk_020000B0
_08049EDC: .4byte gPlayerEntity
_08049EE0:
	movs r0, #0
_08049EE2:
	pop {pc}

	thumb_func_start sub_08049EE4
sub_08049EE4: @ 0x08049EE4
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x70
	mov r1, ip
	adds r1, #0x6e
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldrh r0, [r0]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r1, #4
	mov r0, ip
	adds r0, #0x6f
	ldrb r3, [r0]
	lsls r3, r3, #2
	ldrh r1, [r1]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, ip
	movs r4, #0x2e
	ldrsh r0, [r1, r4]
	movs r5, #0x32
	ldrsh r1, [r1, r5]
	bl sub_080045D4
	pop {r4, r5, pc}

	thumb_func_start sub_08049F1C
sub_08049F1C: @ 0x08049F1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	adds r0, #0x38
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08049F5E
	movs r0, #0x2e
	ldrsh r2, [r3, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r2, r2, r0
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	adds r3, r5, #0
	muls r3, r5, r3
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	cmp r3, r0
	blt _08049F5E
	movs r0, #1
	b _08049F60
_08049F5E:
	movs r0, #0
_08049F60:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start PlayerInRange
PlayerInRange: @ 0x08049F64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _08049F80
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08049F1C
	b _08049F82
_08049F80:
	movs r0, #0
_08049F82:
	pop {r4, r5, pc}

	thumb_func_start sub_08049F84
sub_08049F84: @ 0x08049F84
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _08049F9C
	adds r0, r4, #0
	bl GetFacingDirection
	b _08049F9E
_08049F9C:
	movs r0, #0xff
_08049F9E:
	pop {r4, pc}

	thumb_func_start sub_08049FA0
sub_08049FA0: @ 0x08049FA0
	push {lr}
	adds r3, r0, #0
	adds r0, #0x6e
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	adds r1, r3, #0
	adds r1, #0x70
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _08049FD6
	adds r0, r3, #0
	adds r0, #0x6f
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	adds r1, r3, #0
	adds r1, #0x72
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _08049FD6
	movs r0, #1
	b _08049FD8
_08049FD6:
	movs r0, #0
_08049FD8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08049FDC
sub_08049FDC: @ 0x08049FDC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl sub_08049DF4
	adds r3, r0, #0
	cmp r3, #0
	beq _0804A020
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0804A020
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r2, [r0]
	lsls r2, r2, #3
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r2, r0
	blo _0804A020
	movs r0, #1
	b _0804A022
_0804A020:
	movs r0, #0
_0804A022:
	pop {r4, pc}

	thumb_func_start sub_0804A024
sub_0804A024: @ 0x0804A024
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl sub_08049DF4
	adds r1, r0, #0
	cmp r1, #0
	beq _0804A040
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0804A044
	b _0804A042
_0804A040:
	movs r0, #0xff
_0804A042:
	pop {r4, r5, pc}

	thumb_func_start sub_0804A044
sub_0804A044: @ 0x0804A044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	mov r0, r8
	adds r0, #0x38
	movs r1, #0x38
	adds r1, r1, r7
	mov sl, r1
	ldrb r1, [r0]
	mov r3, sl
	ldrb r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0804A15A
	movs r5, #0
	mov r0, r8
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	ldr r0, [r0, #0x48]
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r4, [r7, #0x48]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r6, r1, r0
	lsrs r3, r2, #1
	adds r0, r6, r3
	cmp r2, r0
	blo _0804A096
	movs r5, #1
_0804A096:
	lsls r0, r2, #1
	mov sb, r0
	adds r0, r6, r2
	cmp sb, r0
	blo _0804A0A4
	movs r0, #2
	orrs r5, r0
_0804A0A4:
	mov r1, r8
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	str r1, [sp]
	mov r1, ip
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	ldr r0, [sp]
	add r0, ip
	str r0, [sp]
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	subs r0, r0, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	subs r4, r0, r1
	adds r0, r4, r3
	cmp r2, r0
	blo _0804A0D4
	movs r0, #4
	orrs r5, r0
_0804A0D4:
	adds r0, r4, r2
	cmp sb, r0
	blo _0804A0DE
	movs r0, #8
	orrs r5, r0
_0804A0DE:
	cmp r5, #0
	beq _0804A15A
	movs r0, #5
	ands r0, r5
	cmp r0, #0xa
	beq _0804A15A
	mov r1, sl
	ldrb r0, [r1]
	bl GetLayerByIndex
	mov sb, r0
	cmp r6, #0
	bge _0804A0FA
	rsbs r6, r6, #0
_0804A0FA:
	cmp r4, #0
	bge _0804A100
	rsbs r4, r4, #0
_0804A100:
	cmp r6, r4
	bge _0804A12E
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804A11A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A168
	cmp r0, #0xff
	bne _0804A15C
_0804A11A:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _0804A15A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A318
	b _0804A156
_0804A12E:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0804A144
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A318
	cmp r0, #0xff
	bne _0804A15C
_0804A144:
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0804A15A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A168
_0804A156:
	cmp r0, #0xff
	bne _0804A15C
_0804A15A:
	movs r0, #0xff
_0804A15C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A168
sub_0804A168: @ 0x0804A168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0804A248
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r0, #4
	movs r0, #0xf
	mov sl, r0
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	movs r7, #5
	cmp r0, #7
	bhi _0804A19E
	movs r7, #0xa
_0804A19E:
	ldr r3, _0804A240 @ =gRoomControls
	mov r8, r3
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	mov ip, r3
	mov r2, ip
	subs r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	mov r3, ip
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A244 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	bne _0804A1EC
	b _0804A308
_0804A1EC:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r2, r0, #4
	mov r3, sl
	eors r7, r3
	mov r0, r8
	ldrh r1, [r0, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	mov r4, r8
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	subs r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A244 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r0, #0x10
	b _0804A30A
	.align 2, 0
_0804A240: .4byte gRoomControls
_0804A244: .4byte 0x00002004
_0804A248:
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r2, r0, #4
	adds r0, r2, #0
	movs r1, #0xf
	ands r0, r1
	movs r7, #5
	cmp r0, #7
	bhi _0804A25C
	movs r7, #0xa
_0804A25C:
	ldr r3, _0804A300 @ =gRoomControls
	mov r8, r3
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	mov sl, r3
	mov r2, sl
	adds r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r2, sb
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	mov r3, sl
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r2, _0804A304 @ =0x00002004
	adds r0, r0, r2
	adds r0, r5, r0
	adds r1, r1, r2
	adds r1, r5, r1
	movs r2, #0x40
	rsbs r2, r2, #0
	mov sl, r2
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	adds r2, r0, #4
	movs r0, #0xf
	eors r7, r0
	mov r3, r8
	ldrh r1, [r3, #6]
	subs r1, r2, r1
	lsrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r3, [r3, #8]
	adds r2, r3, #0
	adds r2, #0xa
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r1
	mov r4, sb
	movs r2, #0x32
	ldrsh r4, [r4, r2]
	subs r2, r4, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldr r3, _0804A304 @ =0x00002004
	adds r0, r0, r3
	adds r0, r5, r0
	adds r1, r1, r3
	adds r1, r5, r1
	mov r2, sl
	adds r3, r7, #0
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A308
	movs r0, #0
	b _0804A30A
	.align 2, 0
_0804A300: .4byte gRoomControls
_0804A304: .4byte 0x00002004
_0804A308:
	movs r0, #0xff
_0804A30A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804A318
sub_0804A318: @ 0x0804A318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sl, r1
	adds r6, r2, #0
	movs r0, #0x2e
	ldrsh r1, [r1, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0804A3F0
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r4, r0, #4
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	movs r2, #3
	mov r8, r2
	cmp r0, #7
	bhi _0804A34C
	movs r0, #0xc
	mov r8, r0
_0804A34C:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0804A3E8 @ =gRoomControls
	mov sb, r2
	ldrh r3, [r2, #6]
	adds r1, r3, #0
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r7, #0x3f
	ands r0, r7
	ldrh r2, [r2, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r1, #0x2e
	ldrsh r4, [r4, r1]
	subs r1, r4, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A3EC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	bne _0804A394
	b _0804A4B0
_0804A394:
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	adds r4, r0, #4
	mov r0, r8
	movs r1, #0xf
	eors r0, r1
	mov r8, r0
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	mov r5, sb
	ldrh r3, [r5, #6]
	adds r1, r3, #0
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	ldrh r2, [r5, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A3EC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r0, #8
	b _0804A4B2
	.align 2, 0
_0804A3E8: .4byte gRoomControls
_0804A3EC: .4byte 0x00002004
_0804A3F0:
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r4, r0, #4
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	movs r2, #3
	mov r8, r2
	cmp r0, #7
	bhi _0804A408
	movs r0, #0xc
	mov r8, r0
_0804A408:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0804A4A8 @ =gRoomControls
	mov sb, r2
	ldrh r3, [r2, #6]
	adds r1, r3, #0
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r7, #0x3f
	ands r0, r7
	ldrh r2, [r2, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r1, #0x2e
	ldrsh r4, [r4, r1]
	subs r1, r4, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A4AC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	adds r4, r0, #4
	mov r0, r8
	movs r1, #0xf
	eors r0, r1
	mov r8, r0
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	mov r5, sb
	ldrh r3, [r5, #6]
	adds r1, r3, #0
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	ldrh r2, [r5, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A4AC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r0, #0x18
	b _0804A4B2
	.align 2, 0
_0804A4A8: .4byte gRoomControls
_0804A4AC: .4byte 0x00002004
_0804A4B0:
	movs r0, #0xff
_0804A4B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A4BC
sub_0804A4BC: @ 0x0804A4BC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, r1
	beq _0804A4DE
_0804A4C4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804A4D8
	cmp r0, #0xf
	bhi _0804A4D4
	ands r0, r3
	cmp r0, #0
	beq _0804A4D8
_0804A4D4:
	movs r0, #0
	b _0804A4E0
_0804A4D8:
	adds r4, r4, r2
	cmp r4, r1
	bne _0804A4C4
_0804A4DE:
	movs r0, #1
_0804A4E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804A4E4
sub_0804A4E4: @ 0x0804A4E4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x6d
	ldrb r1, [r7]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	movs r1, #4
	adds r2, r6, #0
	adds r2, #0x6d
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x6c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl CopyPositionAndSpriteOffset
	ldrb r0, [r7]
	ands r4, r0
	cmp r4, #0
	beq _0804A550
	adds r0, r5, #0
	adds r1, r6, #0
	bl ReplaceMonitoredEntity
_0804A550:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804A554
sub_0804A554: @ 0x0804A554
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #4
	ldr r1, _0804A574 @ =gUnk_080D2C58
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _0804A578 @ =0x0000FFFF
	cmp r1, r0
	bne _0804A570
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #4
	ldr r1, [r2, #4]
	adds r2, r1, r0
_0804A570:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0804A574: .4byte gUnk_080D2C58
_0804A578: .4byte 0x0000FFFF

	thumb_func_start sub_0804A57C
sub_0804A57C: @ 0x0804A57C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A58C
	b _0804A6B6
_0804A58C:
	adds r0, r4, #0
	bl sub_0804A554
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804A6C0
	cmp r0, #0
	bne _0804A5A4
	movs r0, #0
	b _0804A6B8
_0804A5A4:
	ldrb r1, [r4, #0x10]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r4, #0x10]
	ldrb r1, [r5, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804A5BE
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #0x10]
_0804A5BE:
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x12]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bne _0804A5DA
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0804A5DA:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	movs r6, #7
	lsrs r1, r1, #0x1a
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #0xa]
	movs r7, #3
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
	bne _0804A612
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
_0804A612:
	ldrb r0, [r5, #0xf]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r0, [r5, #0xe]
	adds r1, #4
	strb r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #0x48]
	ldrb r0, [r5, #0xb]
	adds r2, r4, #0
	adds r2, #0x45
	strb r0, [r2]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804A638
	movs r0, #0x41
	strb r0, [r1]
_0804A638:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r5, r4, #0
	adds r5, #0x6d
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A6B6
	ldr r2, _0804A6BC @ =gUnk_080D3E74
	ldrb r1, [r4, #9]
	lsrs r0, r1, #3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ands r6, r1
	lsls r0, r6, #1
	asrs r2, r0
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _0804A6B6
	subs r1, r2, #1
	movs r0, #0xa9
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0804A6B6
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0xe]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r2, #0xf]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r3]
	str r4, [r2, #0x50]
	adds r0, r4, #0
	adds r1, r2, #0
	bl CopyPosition
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
_0804A6B6:
	movs r0, #1
_0804A6B8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804A6BC: .4byte gUnk_080D3E74

	thumb_func_start sub_0804A6C0
sub_0804A6C0: @ 0x0804A6C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	cmp r1, #0
	beq _0804A712
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0804A6E8
	ldr r0, _0804A6E4 @ =0x000003FF
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	b _0804A712
	.align 2, 0
_0804A6E4: .4byte 0x000003FF
_0804A6E8:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0804A702
	lsrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _0804A70A
_0804A702:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl LoadFixedGFX
_0804A70A:
	cmp r0, #0
	bne _0804A712
	movs r0, #0
	b _0804A71C
_0804A712:
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl sub_0801D040
	movs r0, #1
_0804A71C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804A720
sub_0804A720: @ 0x0804A720
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804A7D0
	ldrb r0, [r2, #9]
	lsls r0, r0, #1
	ldr r1, _0804A76C @ =gUnk_080D3D94
	adds r3, r0, r1
	adds r4, r2, #0
	adds r4, #0x68
	ldrb r1, [r4, #0x16]
	cmp r1, #0
	bne _0804A744
	ldrb r1, [r3]
_0804A744:
	adds r0, r2, #0
	adds r0, #0x6e
	strb r1, [r0]
	adds r5, r0, #0
	ldrb r1, [r4, #0x17]
	cmp r1, #0
	bne _0804A754
	ldrb r1, [r3, #1]
_0804A754:
	adds r0, r2, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r6, r0, #0
	ldrh r1, [r4, #0x1c]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A774
	ldr r0, _0804A770 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r0, r1, r0
	b _0804A784
	.align 2, 0
_0804A76C: .4byte gUnk_080D3D94
_0804A770: .4byte gRoomControls
_0804A774:
	ldrb r0, [r5]
	lsls r1, r0, #2
	movs r5, #0x2e
	ldrsh r0, [r2, r5]
	cmp r0, r1
	blt _0804A78C
	ldrh r0, [r2, #0x2e]
	subs r0, r0, r1
_0804A784:
	adds r1, r2, #0
	adds r1, #0x70
	strh r0, [r1]
	b _0804A792
_0804A78C:
	adds r0, r2, #0
	adds r0, #0x70
	strh r3, [r0]
_0804A792:
	ldrh r1, [r4, #0x1e]
	adds r3, r1, #0
	cmp r3, #0
	beq _0804A7A8
	ldr r0, _0804A7A4 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, r1, r0
	b _0804A7B8
	.align 2, 0
_0804A7A4: .4byte gRoomControls
_0804A7A8:
	ldrb r0, [r6]
	lsls r1, r0, #2
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r0, r1
	blt _0804A7C0
	ldrh r0, [r2, #0x32]
	subs r0, r0, r1
_0804A7B8:
	adds r1, r2, #0
	adds r1, #0x72
	strh r0, [r1]
	b _0804A7C6
_0804A7C0:
	adds r0, r2, #0
	adds r0, #0x72
	strh r3, [r0]
_0804A7C6:
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_0804A7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0804A7D4
sub_0804A7D4: @ 0x0804A7D4
	push {lr}
	ldrb r1, [r0, #9]
	movs r2, #0
	bl CreateDeathFx
	pop {pc}

	thumb_func_start CreateDeathFx
CreateDeathFx: @ 0x0804A7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r1
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x6d
	ldrb r1, [r6]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0804A864
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A80A
	b _0804A982
_0804A80A:
	ldrb r1, [r5, #9]
	movs r0, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	bne _0804A81C
	b _0804A982
_0804A81C:
	adds r0, #0x6c
	strb r7, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl PositionRelative
	str r5, [r4, #0x50]
	ldrb r1, [r6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #9]
	cmp r0, #0x37
	bne _0804A84A
	ldr r0, _0804A85C @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A84A
	bl DeleteThisEntity
_0804A84A:
	bl sub_0807CD9C
	ldr r0, _0804A860 @ =0x80100000
	bl PlaySFX
	bl DeleteThisEntity
	b _0804A982
	.align 2, 0
_0804A85C: .4byte gScreenTransition
_0804A860: .4byte 0x80100000
_0804A864:
	adds r4, r5, #0
	adds r4, #0x3a
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0
	bne _0804A934
	adds r0, r5, #0
	bl sub_08049CF4
	ldr r1, _0804A8E8 @ =gSave
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	ldrb r0, [r4]
	movs r7, #0
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0xff
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r1, [r5, #9]
	movs r0, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A8CA
	adds r0, #0x6c
	mov r2, r8
	strb r2, [r0]
	adds r0, #1
	mov r1, sb
	strb r1, [r0]
	adds r0, #1
	mov r2, sl
	strb r2, [r0]
	str r5, [r4, #0x50]
	str r5, [r4, #0x54]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_0804A8CA:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804A8EC
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl DeleteEntity
	b _0804A982
	.align 2, 0
_0804A8E8: .4byte gSave
_0804A8EC:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	bne _0804A934
	ldrb r0, [r5, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #1
	beq _0804A91A
	cmp r1, #2
	bne _0804A92A
	cmp r4, #0
	beq _0804A92A
	adds r1, r4, #0
	adds r1, #0x6c
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	b _0804A92A
_0804A91A:
	cmp r4, #0
	beq _0804A92A
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0804A92A:
	movs r0, #0
	str r0, [r4, #0x50]
	bl DeleteThisEntity
	b _0804A982
_0804A934:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0804A940
	bl DeleteThisEntity
	b _0804A982
_0804A940:
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0804A95E
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805E3A0
	b _0804A982
_0804A95E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _0804A982
	ldrb r1, [r5, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _0804A976
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	b _0804A980
_0804A976:
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
_0804A980:
	strb r0, [r5, #0x18]
_0804A982:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A98C
sub_0804A98C: @ 0x0804A98C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A9A8
	strb r5, [r4, #0xa]
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
_0804A9A8:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}

	thumb_func_start SetChildOffset
SetChildOffset: @ 0x0804A9AC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov ip, r3
	ldr r4, [r5, #0x68]
	cmp r4, #0
	beq _0804A9FA
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r6
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	adds r0, r0, r7
	strh r0, [r4, #0x32]
	ldrh r0, [r5, #0x36]
	add r0, ip
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0804A9FA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804A9FC
sub_0804A9FC: @ 0x0804A9FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _0804AA16
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _0804AA16
	str r0, [r4, #0x68]
	b _0804AA18
_0804AA16:
	movs r0, #0
_0804AA18:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804AA1C
sub_0804AA1C: @ 0x0804AA1C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	cmp r1, #0
	beq _0804AA2C
	movs r0, #0
	str r0, [r1, #0x50]
	str r0, [r2, #0x68]
_0804AA2C:
	pop {pc}
	.align 2, 0
