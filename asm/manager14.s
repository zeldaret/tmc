	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08059E58
sub_08059E58: @ 0x08059E58
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	ldr r1, _08059E7C @ =gUnk_081085A4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0805A1D8
	pop {r4, pc}
	.align 2, 0
_08059E7C: .4byte gUnk_081085A4

	thumb_func_start sub_08059E80
sub_08059E80: @ 0x08059E80
	push {r4, r5, lr}
	adds r4, r0, #0
	bl DoesSimilarEntityExist
	cmp r0, #0
	beq _08059E90
	bl DeleteThisEntity
_08059E90:
	adds r1, r4, #0
	adds r1, #0x22
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r2, [r4, #0x20]
	strb r0, [r4, #0xe]
	movs r0, #4
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r3, _08059EE4 @ =gScreen
	ldr r0, _08059EE8 @ =0x00001E04
	strh r0, [r3, #0x2c]
	ldrh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x66
	ldr r0, _08059EEC @ =0x00003E48
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x2e]
	strh r2, [r3, #0x30]
	ldr r1, _08059EF0 @ =nullsub_495
	ldr r2, _08059EF4 @ =sub_0805A25C
	adds r0, r4, #0
	bl sub_08052D74
	pop {r4, r5, pc}
	.align 2, 0
_08059EE4: .4byte gScreen
_08059EE8: .4byte 0x00001E04
_08059EEC: .4byte 0x00003E48
_08059EF0: .4byte nullsub_495
_08059EF4: .4byte sub_0805A25C

	thumb_func_start sub_08059EF8
sub_08059EF8: @ 0x08059EF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r6, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08059F90
	movs r0, #4
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08059F9C
	cmp r0, #0
	beq _08059F64
	ldr r2, _08059F50 @ =gUnk_08108588
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08059F54 @ =0x00000808
	cmp r1, r0
	beq _08059F5C
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	strb r5, [r0]
	ldr r1, _08059F58 @ =gScreen
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ands r0, r6
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
	b _08059F90
	.align 2, 0
_08059F50: .4byte gUnk_08108588
_08059F54: .4byte 0x00000808
_08059F58: .4byte gScreen
_08059F5C:
	adds r0, r4, #0
	adds r0, #0x22
	strb r5, [r0]
	b _08059F90
_08059F64:
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	ldr r3, _08059F94 @ =gUnk_08108588
	ldrb r2, [r4, #0xe]
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08059F90
	ldr r0, _08059F98 @ =gScreen
	subs r1, r2, #1
	strb r1, [r4, #0xe]
	ands r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r0, #0x68
	strh r1, [r0]
_08059F90:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08059F94: .4byte gUnk_08108588
_08059F98: .4byte gScreen

	thumb_func_start sub_08059F9C
sub_08059F9C: @ 0x08059F9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08059FB4 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #0x17
	bhi _0805A03A
	lsls r0, r0, #2
	ldr r1, _08059FB8 @ =_08059FBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059FB4: .4byte gRoomControls
_08059FB8: .4byte _08059FBC
_08059FBC: @ jump table
	.4byte _0805A036 @ case 0
	.4byte _0805A01C @ case 1
	.4byte _0805A03A @ case 2
	.4byte _0805A03A @ case 3
	.4byte _0805A03A @ case 4
	.4byte _0805A03A @ case 5
	.4byte _0805A03A @ case 6
	.4byte _0805A02A @ case 7
	.4byte _0805A036 @ case 8
	.4byte _0805A036 @ case 9
	.4byte _0805A03A @ case 10
	.4byte _0805A03A @ case 11
	.4byte _0805A03A @ case 12
	.4byte _0805A03A @ case 13
	.4byte _0805A03A @ case 14
	.4byte _0805A03A @ case 15
	.4byte _0805A03A @ case 16
	.4byte _0805A03A @ case 17
	.4byte _0805A03A @ case 18
	.4byte _0805A03A @ case 19
	.4byte _0805A03A @ case 20
	.4byte _0805A03A @ case 21
	.4byte _0805A03A @ case 22
	.4byte _0805A036 @ case 23
_0805A01C:
	movs r0, #0x16
	bl CheckLocalFlag
	cmp r0, #0
	beq _0805A02A
	movs r0, #0
	b _0805A03C
_0805A02A:
	adds r0, r4, #0
	bl sub_0805A25C
	bl DeleteThisEntity
	b _0805A03C
_0805A036:
	movs r0, #1
	b _0805A03C
_0805A03A:
	movs r0, #0
_0805A03C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805A040
sub_0805A040: @ 0x0805A040
	push {lr}
	bl sub_0805A098
	pop {pc}

	thumb_func_start sub_0805A048
sub_0805A048: @ 0x0805A048
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A086
	movs r0, #4
	strb r0, [r4, #0xf]
	ldr r2, _0805A090 @ =gScreen
	ldr r3, _0805A094 @ =gUnk_08108588
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r2, #0x68
	strh r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #9
	bne _0805A086
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
_0805A086:
	adds r0, r4, #0
	bl sub_0805A098
	pop {r4, pc}
	.align 2, 0
_0805A090: .4byte gScreen
_0805A094: .4byte gUnk_08108588

	thumb_func_start sub_0805A098
sub_0805A098: @ 0x0805A098
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805A0B0 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #9
	bgt _0805A0B4
	cmp r0, #8
	bge _0805A0BC
	cmp r0, #0
	beq _0805A0BC
	b _0805A0B8
	.align 2, 0
_0805A0B0: .4byte gRoomControls
_0805A0B4:
	cmp r0, #0x17
	beq _0805A0BC
_0805A0B8:
	movs r0, #3
	strb r0, [r1, #0xc]
_0805A0BC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805A0C0
sub_0805A0C0: @ 0x0805A0C0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A106
	movs r0, #4
	strb r0, [r3, #0xf]
	ldr r4, _0805A108 @ =gScreen
	ldr r2, _0805A10C @ =gUnk_08108588
	ldrb r0, [r3, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r3, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0805A106
	ldrh r1, [r4]
	ldr r0, _0805A110 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r4]
	bl sub_08056250
	bl DeleteThisEntity
_0805A106:
	pop {r4, pc}
	.align 2, 0
_0805A108: .4byte gScreen
_0805A10C: .4byte gUnk_08108588
_0805A110: .4byte 0x0000F7FF

	thumb_func_start sub_0805A114
sub_0805A114: @ 0x0805A114
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r2, _0805A154 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0805A158 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r5, #0
	mov r8, r2
	mov sb, r1
	ldr r2, _0805A15C @ =gScreen
	ldr r0, _0805A160 @ =gSineTable
	mov ip, r0
_0805A13A:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	adds r3, r5, r0
	asrs r1, r3, #3
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _0805A190
	lsls r0, r1, #2
	ldr r1, _0805A164 @ =_0805A168
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A154: .4byte gUnk_03003DE4
_0805A158: .4byte gUnk_02017AA0
_0805A15C: .4byte gScreen
_0805A160: .4byte gSineTable
_0805A164: .4byte _0805A168
_0805A168: @ jump table
	.4byte _0805A190 @ case 0
	.4byte _0805A18C @ case 1
	.4byte _0805A190 @ case 2
	.4byte _0805A190 @ case 3
	.4byte _0805A188 @ case 4
	.4byte _0805A190 @ case 5
	.4byte _0805A190 @ case 6
	.4byte _0805A18C @ case 7
_0805A188:
	subs r3, #8
	b _0805A190
_0805A18C:
	movs r0, #0xf0
	b _0805A192
_0805A190:
	movs r0, #0xf8
_0805A192:
	ands r3, r0
	adds r0, r6, r3
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r7, r0
	lsrs r0, r0, #8
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0x9f
	ble _0805A13A
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, sb
	ldr r1, _0805A1D0 @ =0x0400001C
	ldr r2, _0805A1D4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805A1D0: .4byte 0x0400001C
_0805A1D4: .4byte 0xA2600001

	thumb_func_start sub_0805A1D8
sub_0805A1D8: @ 0x0805A1D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805A244 @ =gRoomControls
	ldr r0, [r1, #0x28]
	ldr r2, _0805A248 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r5, _0805A24C @ =gScreen
	ldrh r0, [r1, #0x2a]
	strh r0, [r5, #0x2e]
	ldr r0, [r1, #0x2c]
	adds r0, r0, r2
	str r0, [r1, #0x2c]
	ldrh r0, [r1, #0x2e]
	strh r0, [r5, #0x30]
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805A240
	ldrh r1, [r4, #0x20]
	lsrs r1, r1, #1
	movs r0, #6
	bl sub_0805A114
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805A240
	ldr r0, _0805A250 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0805A240
	adds r2, r4, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805A254 @ =gUnk_0810859A
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
_0805A240:
	pop {r4, r5, pc}
	.align 2, 0
_0805A244: .4byte gRoomControls
_0805A248: .4byte 0xFFFFF000
_0805A24C: .4byte gScreen
_0805A250: .4byte gMain
_0805A254: .4byte gUnk_0810859A

	thumb_func_start nullsub_495
nullsub_495: @ 0x0805A258
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A25C
sub_0805A25C: @ 0x0805A25C
	push {lr}
	ldr r1, _0805A278 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r1]
	ldr r0, _0805A27C @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	bl sub_08056250
	pop {pc}
	.align 2, 0
_0805A278: .4byte gScreen
_0805A27C: .4byte 0x0000F7FF
