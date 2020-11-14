	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08016DF8
sub_08016DF8: @ 0x08016DF8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _08016E20 @ =gUnk_03003DE0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08016E70
	ldr r4, _08016E24 @ =gUnk_03000C30
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08016E28 @ =0x040000D4
_08016E0E:
	ldrb r0, [r4]
	cmp r0, #1
	beq _08016E44
	cmp r0, #1
	bgt _08016E2C
	cmp r0, #0
	beq _08016E32
	b _08016E68
	.align 2, 0
_08016E20: .4byte gUnk_03003DE0
_08016E24: .4byte gUnk_03000C30
_08016E28: .4byte 0x040000D4
_08016E2C:
	cmp r0, #2
	beq _08016E4E
	b _08016E68
_08016E32:
	ldr r0, [r4, #4]
	str r0, [r5]
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	ldrh r0, [r4, #2]
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	b _08016E62
_08016E44:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl LZ77UnCompVram
	b _08016E68
_08016E4E:
	ldr r0, [r4, #4]
	str r0, [sp]
	mov r0, sp
	str r0, [r5]
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	ldrh r0, [r4, #2]
	lsrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
_08016E62:
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
_08016E68:
	adds r4, #0xc
	subs r6, #1
	cmp r6, #0
	bgt _08016E0E
_08016E70:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08016E78
sub_08016E78: @ 0x08016E78
	push {r4, lr}
	ldr r4, _08016F08 @ =gUnk_03001000
	ldrb r0, [r4]
	movs r0, #0
	strb r0, [r4]
	bl VBlankIntrWait
	ldrb r0, [r4]
	cmp r0, #0
	bne _08016E94
	adds r1, r4, #0
_08016E8E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08016E8E
_08016E94:
	bl sub_080ADD70
	bl sub_0801C25C
	bl sub_08016C3C
	bl sub_08016DF8
	ldr r1, _08016F0C @ =gUnk_02000070
	ldrb r0, [r1]
	cmp r0, #0
	beq _08016EFC
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08016F10 @ =gUnk_02025EB0
	ldr r1, [r0]
	cmp r1, #0
	beq _08016ED6
	ldr r2, _08016F14 @ =0x040000D4
	ldr r0, _08016F18 @ =gUnk_02021F30
	str r0, [r2]
	ldrh r1, [r1]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08016F1C @ =0x84000170
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08016ED6:
	ldr r0, _08016F20 @ =gUnk_0200B650
	ldr r1, [r0]
	cmp r1, #0
	beq _08016EFC
	ldr r2, _08016F14 @ =0x040000D4
	ldr r0, _08016F24 @ =gUnk_020344B0
	str r0, [r2]
	ldrh r1, [r1]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08016F1C @ =0x84000170
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08016EFC:
	bl sub_0804FF98
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016F08: .4byte gUnk_03001000
_08016F0C: .4byte gUnk_02000070
_08016F10: .4byte gUnk_02025EB0
_08016F14: .4byte 0x040000D4
_08016F18: .4byte gUnk_02021F30
_08016F1C: .4byte 0x84000170
_08016F20: .4byte gUnk_0200B650
_08016F24: .4byte gUnk_020344B0

	thumb_func_start sub_08016F28
sub_08016F28: @ 0x08016F28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08016F44 @ =gUnk_02002A40
	adds r0, #0xba
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016F4C
	ldr r0, _08016F48 @ =gPlayerState
	ldr r1, [r0, #0x30]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r1, r2
	b _08016F54
	.align 2, 0
_08016F44: .4byte gUnk_02002A40
_08016F48: .4byte gPlayerState
_08016F4C:
	ldr r0, _08016F98 @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _08016F9C @ =0xFFFFBFFF
	ands r1, r2
_08016F54:
	str r1, [r0, #0x30]
	adds r0, r4, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08016FDC
	ldr r5, _08016F98 @ =gPlayerState
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08016FB4
	bl sub_08077B20
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08016FA4
	movs r0, #0x18
	strb r0, [r5, #0xc]
	ldr r0, _08016FA0 @ =0xFFF7FFFF
	ands r1, r0
	str r1, [r5, #0x30]
	movs r0, #0xf0
	strb r0, [r5, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _08016FB4
	.align 2, 0
_08016F98: .4byte gPlayerState
_08016F9C: .4byte 0xFFFFBFFF
_08016FA0: .4byte 0xFFF7FFFF
_08016FA4:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0xa8
	movs r0, #0xf
	strb r0, [r1]
_08016FB4:
	adds r0, r4, #0
	bl sub_08016FF4
	adds r0, r4, #0
	bl sub_08070680
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _08016FD8
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08016FD0
	cmp r0, #9
	bne _08016FD8
_08016FD0:
	adds r0, r4, #0
	movs r1, #8
	bl sub_08008790
_08016FD8:
	bl sub_080171F0
_08016FDC:
	adds r0, r4, #0
	bl sub_08078FB0
	adds r0, r4, #0
	bl sub_0800404C
	bl sub_0807A050
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016FF4
sub_08016FF4: @ 0x08016FF4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080170A0 @ =gUnk_0200AF00
	adds r2, r0, #0
	adds r2, #0x2f
	movs r1, #0
	strb r1, [r2]
	subs r2, #2
	strb r1, [r2]
	adds r0, #0x2e
	strb r1, [r0]
	ldr r2, _080170A4 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801702E
	adds r0, r2, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0801702E
	movs r0, #0x86
	bl PlaySFX
_0801702E:
	ldr r4, _080170A8 @ =gPlayerState
	ldr r0, [r4, #0x30]
	ldr r1, _080170AC @ =0xFDFFFDFF
	ands r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08017046
	bl ResetPlayer
_08017046:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08017060
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017060
	bl sub_0807A108
_08017060:
	bl sub_08079B24
	cmp r0, #0
	bne _0801706E
	adds r0, r5, #0
	bl sub_08079708
_0801706E:
	ldr r0, _080170B0 @ =gUnk_03003DF0
	movs r4, #0
	strb r4, [r0]
	ldr r2, _080170A8 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x27
	ldrb r0, [r1]
	cmp r0, #0
	beq _08017084
	subs r0, #1
	strb r0, [r1]
_08017084:
	adds r1, r2, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xa9
	strb r0, [r3]
	strb r4, [r1]
	subs r1, #0x1e
	ldrb r0, [r1]
	cmp r0, #0
	beq _080170B4
	subs r0, #1
	strb r0, [r1]
	b _080171EA
	.align 2, 0
_080170A0: .4byte gUnk_0200AF00
_080170A4: .4byte gPlayerEntity
_080170A8: .4byte gPlayerState
_080170AC: .4byte 0xFDFFFDFF
_080170B0: .4byte gUnk_03003DF0
_080170B4:
	adds r0, r2, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080170C0
	b _080171EA
_080170C0:
	ldr r0, _08017124 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _080170CE
	b _080171EA
_080170CE:
	ldr r3, _08017128 @ =gRoomVars
	strb r1, [r3, #0xa]
	ldr r2, _0801712C @ =gUnk_02002A40
	adds r0, r2, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r1, r0, #2
	cmp r1, #0x18
	bls _080170E2
	movs r1, #0x18
_080170E2:
	cmp r1, #7
	bhi _080170E8
	movs r1, #8
_080170E8:
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, r1
	bhi _08017112
	movs r0, #1
	strb r0, [r3, #0xa]
	ldr r0, _08017130 @ =gUnk_0200AF00
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08017112
	ldr r0, _08017134 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #0x5a
	bl __modsi3
	cmp r0, #0
	bne _08017112
	ldr r0, _08017138 @ =0x0000011F
	bl EnqueueSFX
_08017112:
	ldr r0, _0801712C @ =gUnk_02002A40
	adds r2, r0, #0
	adds r2, #0xb2
	ldrb r1, [r2]
	cmp r1, #0
	bne _0801713C
	adds r0, #0xc4
	strh r1, [r0]
	b _0801715A
	.align 2, 0
_08017124: .4byte gTextBox
_08017128: .4byte gRoomVars
_0801712C: .4byte gUnk_02002A40
_08017130: .4byte gUnk_0200AF00
_08017134: .4byte gScreenTransition
_08017138: .4byte 0x0000011F
_0801713C:
	adds r1, r0, #0
	adds r1, #0xc4
	ldrh r0, [r1]
	cmp r0, #0
	beq _08017150
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801715A
_08017150:
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0801716C @ =0x000001B3
	bl PlaySFX
_0801715A:
	ldr r0, _08017170 @ =gUnk_02002A40
	adds r3, r0, #0
	adds r3, #0xb3
	ldrb r1, [r3]
	cmp r1, #0
	bne _08017174
	adds r0, #0xc6
	strh r1, [r0]
	b _080171A4
	.align 2, 0
_0801716C: .4byte 0x000001B3
_08017170: .4byte gUnk_02002A40
_08017174:
	adds r2, r0, #0
	adds r2, #0xc6
	ldrh r0, [r2]
	cmp r0, #0
	beq _08017188
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _08017196
_08017188:
	movs r0, #0
	strb r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #1
	bl PlaySFX
	b _080171A4
_08017196:
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080171A4
	adds r0, r5, #0
	bl CreateSparkle
_080171A4:
	ldr r0, _080171B8 @ =gUnk_02002A40
	adds r3, r0, #0
	adds r3, #0xba
	ldrb r1, [r3]
	cmp r1, #0
	bne _080171BC
	adds r0, #0xc8
	strh r1, [r0]
	b _080171EA
	.align 2, 0
_080171B8: .4byte gUnk_02002A40
_080171BC:
	adds r2, r0, #0
	adds r2, #0xc8
	ldrh r0, [r2]
	cmp r0, #0
	beq _080171D0
	subs r1, r0, #1
	strh r1, [r2]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080171D6
_080171D0:
	movs r0, #0
	strb r0, [r3]
	b _080171EA
_080171D6:
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080171EA
	ldrb r1, [r3]
	adds r1, #0x55
	adds r0, r5, #0
	movs r2, #0
	bl CreateFx
_080171EA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080171F0
sub_080171F0: @ 0x080171F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _080172DC @ =gPlayerState
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _08017202
	bl ResetPlayer
_08017202:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0801720C
	subs r0, #1
	strb r0, [r4, #0x14]
_0801720C:
	ldr r6, _080172E0 @ =gPlayerEntity
	adds r1, r6, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801721C
	subs r0, #1
	strh r0, [r1]
_0801721C:
	adds r2, r6, #0
	adds r2, #0x41
	ldrb r0, [r2]
	movs r5, #0x7f
	adds r1, r5, #0
	ands r1, r0
	movs r0, #0
	mov r8, r0
	strb r1, [r2]
	ldrb r0, [r6, #0xc]
	cmp r0, #0x14
	beq _08017244
	ldr r0, [r4, #0x30]
	ldr r1, _080172E4 @ =0xFFFEFFFF
	ands r1, r0
	movs r2, #2
	ands r0, r2
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [r4, #0x30]
_08017244:
	ldr r0, [r4, #0x30]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x30]
	adds r0, r6, #0
	bl sub_080028E0
	ldr r0, [r4, #0x30]
	movs r7, #0x80
	lsls r7, r7, #0xf
	ands r0, r7
	cmp r0, #0
	beq _08017268
	ldr r0, _080172E8 @ =gUnk_0200AF00
	adds r0, #0x2f
	movs r1, #1
	strb r1, [r0]
_08017268:
	bl sub_08078180
	ldrb r1, [r4, #7]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #7]
	ldrb r1, [r4, #0xa]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0xb]
	mov r1, r8
	strb r1, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x80
	movs r5, #0
	mov r1, r8
	strh r1, [r0]
	adds r0, #0x2a
	strb r5, [r0]
	ldr r0, _080172EC @ =gUnk_03003BE0
	movs r1, #0x8c
	bl _DmaZero
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x63
	strb r0, [r1]
	strb r5, [r2]
	bl sub_0807B0C8
	ldr r0, [r4, #0x30]
	ands r0, r7
	cmp r0, #0
	beq _080172CC
	ldr r0, _080172F0 @ =gUnk_03004040
	ldr r2, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r0, #0x63
	strb r5, [r0]
	adds r1, #0x63
	strb r5, [r1]
	adds r2, #0x63
	strb r5, [r2]
_080172CC:
	ldrb r0, [r6, #0xc]
	cmp r0, #0x1d
	bne _080172F4
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	b _080172FA
	.align 2, 0
_080172DC: .4byte gPlayerState
_080172E0: .4byte gPlayerEntity
_080172E4: .4byte 0xFFFEFFFF
_080172E8: .4byte gUnk_0200AF00
_080172EC: .4byte gUnk_03003BE0
_080172F0: .4byte gUnk_03004040
_080172F4:
	ldr r0, [r4, #0x30]
	ldr r1, _0801732C @ =0xDFFFFFFF
	ands r0, r1
_080172FA:
	str r0, [r4, #0x30]
	ldr r4, _08017330 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_0807A8D8
	ldr r0, _08017334 @ =gPlayerState
	ldrb r1, [r0, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08017318
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xfe
	strb r0, [r1]
_08017318:
	ldrb r0, [r4, #0xc]
	cmp r0, #0x17
	beq _08017322
	bl sub_08077FEC
_08017322:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801732C: .4byte 0xDFFFFFFF
_08017330: .4byte gPlayerEntity
_08017334: .4byte gPlayerState

	thumb_func_start sub_08017338
sub_08017338: @ 0x08017338
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08017352
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _08017352
	adds r0, r4, #0
	bl sub_080173A4
_08017352:
	adds r0, r4, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08017398
	ldr r1, _08017390 @ =gPlayerItemFunctions
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _08017398
	cmp r2, #0
	ble _08017394
	subs r0, #1
	b _08017396
	.align 2, 0
_08017390: .4byte gPlayerItemFunctions
_08017394:
	adds r0, #1
_08017396:
	strb r0, [r1]
_08017398:
	adds r0, r4, #0
	bl sub_0800404C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080173A4
sub_080173A4: @ 0x080173A4
	push {r4, r5, lr}
	mov ip, r0
	ldrb r0, [r0, #9]
	lsls r0, r0, #3
	ldr r1, _08017410 @ =gUnk_08126DA8
	adds r3, r0, r1
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _080173CE
	ldrb r2, [r3, #2]
	ldr r1, _08017414 @ =gUnk_08126ED8
	ldrb r0, [r3, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	mov r0, ip
	adds r0, #0x68
	ldrb r0, [r0]
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, r3, r0
_080173CE:
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r0, #4
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x1a]
	ldrb r1, [r3, #1]
	mov r0, ip
	adds r0, #0x44
	strb r1, [r0]
	ldrb r1, [r3, #3]
	subs r0, #4
	strb r1, [r0]
	ldrb r0, [r3, #4]
	mov r1, ip
	adds r1, #0x3f
	strb r0, [r1]
	ldrb r0, [r3, #5]
	mov r2, ip
	strh r0, [r2, #0x12]
	ldrh r1, [r3, #6]
	cmp r1, #0
	bne _0801741C
	ldr r2, _08017418 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	adds r5, r2, #0
	b _08017428
	.align 2, 0
_08017410: .4byte gUnk_08126DA8
_08017414: .4byte gUnk_08126ED8
_08017418: .4byte gPlayerEntity
_0801741C:
	ldr r0, _0801749C @ =0x000003FF
	ands r0, r1
	mov r1, ip
	adds r1, #0x60
	strh r0, [r1]
	ldr r5, _080174A0 @ =gPlayerEntity
_08017428:
	mov r3, ip
	ldrb r0, [r3, #0x14]
	cmp r0, #0
	bne _08017438
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	strb r0, [r3, #0x14]
_08017438:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x38
	strb r1, [r0]
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	mov r0, ip
	ldrb r3, [r0, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	mov r4, ip
	adds r4, #0x29
	lsrs r1, r1, #0x1d
	ldrb r3, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	mov r3, ip
	ldrb r1, [r3, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x1b]
	mov r2, ip
	adds r2, #0x45
	movs r1, #1
	movs r0, #1
	strb r0, [r2]
	ldrb r0, [r3, #0x10]
	orrs r1, r0
	strb r1, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801749C: .4byte 0x000003FF
_080174A0: .4byte gPlayerEntity

	thumb_func_start sub_080174A4
sub_080174A4: @ 0x080174A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080174BE
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080174BE
	adds r0, r4, #0
	bl sub_080A2838
_080174BE:
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080174D0
	adds r0, r2, #1
	strb r0, [r1]
_080174D0:
	adds r0, r4, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _080174F6
	ldr r1, _08017504 @ =gObjectFunctions
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080174F6:
	adds r0, r4, #0
	bl sub_0800404C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017504: .4byte gObjectFunctions

	thumb_func_start sub_08017508
sub_08017508: @ 0x08017508
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08017524
	ldr r0, _0801752C @ =gUnk_080B3054
	ldrb r1, [r4, #9]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08017524:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801752C: .4byte gUnk_080B3054

	thumb_func_start sub_08017530
sub_08017530: @ 0x08017530
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08017550
	ldr r0, _080175D8 @ =gUnk_020342F8
	subs r1, #1
	bl ReadBit
	cmp r0, #0
	bne _08017550
	bl DeleteThisEntity
_08017550:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08017566
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08017566
	adds r0, r4, #0
	bl sub_0806EC78
_08017566:
	adds r0, r4, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08017584
	ldr r2, _080175DC @ =gNPCFunctions
	ldrb r1, [r4, #9]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08017584:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080175D2
	ldr r2, _080175DC @ =gNPCFunctions
	ldrb r1, [r4, #9]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _080175A4
	adds r0, r4, #0
	bl _call_via_r1
_080175A4:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080175CC
	ldr r2, _080175E0 @ =gUnk_02031EC0
	lsls r0, r1, #4
	subs r0, #0x10
	adds r2, r0, r2
	ldr r3, _080175E4 @ =gRoomControls
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	strh r0, [r2, #6]
_080175CC:
	adds r0, r4, #0
	bl sub_0800404C
_080175D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080175D8: .4byte gUnk_020342F8
_080175DC: .4byte gNPCFunctions
_080175E0: .4byte gUnk_02031EC0
_080175E4: .4byte gRoomControls

	thumb_func_start sub_080175E8
sub_080175E8: @ 0x080175E8
	ldr r1, _080175F0 @ =gUnk_03003DB8
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080175F0: .4byte gUnk_03003DB8

	thumb_func_start sub_080175F4
sub_080175F4: @ 0x080175F4
	push {r4, r5, lr}
	ldr r1, _08017624 @ =gUnk_03003DC0
	ldrb r0, [r1]
	ldrb r2, [r1, #1]
	cmp r0, r2
	bhi _08017602
	ldrb r0, [r1, #1]
_08017602:
	cmp r0, #0
	bne _08017638
	ldr r1, _08017628 @ =gUnk_030059F0
	ldr r0, _0801762C @ =gPlayerState
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017634
	ldr r4, _08017630 @ =gPlayerEntity
	ldrb r5, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r5
	strb r0, [r4, #0x10]
	bl _call_via_r1
	strb r5, [r4, #0x10]
	b _08017638
	.align 2, 0
_08017624: .4byte gUnk_03003DC0
_08017628: .4byte gUnk_030059F0
_0801762C: .4byte gPlayerState
_08017630: .4byte gPlayerEntity
_08017634:
	bl _call_via_r1
_08017638:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017640
sub_08017640: @ 0x08017640
	push {r4, lr}
	ldr r4, _08017660 @ =gUnk_03003C70
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	bl _DmaZero
	ldr r0, _08017664 @ =gUnk_02018EA0
	str r4, [r0]
	str r4, [r4]
	str r4, [r4, #4]
	ldr r0, _08017668 @ =gPlayerEntity
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017660: .4byte gUnk_03003C70
_08017664: .4byte gUnk_02018EA0
_08017668: .4byte gPlayerEntity

	thumb_func_start sub_0801766C
sub_0801766C: @ 0x0801766C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017682
_0801767E:
	movs r0, #1
	b _080176DE
_08017682:
	ldr r2, _080176C0 @ =gUnk_03003C70
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	cmp r1, r2
	bls _080176DC
_0801768E:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _080176D6
	str r4, [r2, #8]
	strb r0, [r2, #0xc]
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _080176C4 @ =gUnk_02018EA0
	ldr r1, [r3]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _080176C8
_080176AA:
	ldr r1, [r1, #4]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080176AA
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r0, #4]
	str r2, [r1]
	b _0801767E
	.align 2, 0
_080176C0: .4byte gUnk_03003C70
_080176C4: .4byte gUnk_02018EA0
_080176C8:
	str r1, [r2, #4]
	ldr r0, [r1]
	str r0, [r2]
	str r2, [r0, #4]
	str r2, [r1]
	str r2, [r3]
	b _0801767E
_080176D6:
	adds r2, #0x10
	cmp r1, r2
	bhi _0801768E
_080176DC:
	movs r0, #0
_080176DE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080176E4
sub_080176E4: @ 0x080176E4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017720
	movs r0, #1
	b _0801773A
_080176F8:
	str r2, [r3, #8]
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0801771C @ =gUnk_02018EA0
	ldr r0, [r2]
	str r0, [r3, #4]
	ldr r1, [r0]
	str r1, [r3]
	str r3, [r1, #4]
	str r3, [r0]
	str r3, [r2]
	movs r0, #1
	b _0801773A
	.align 2, 0
_0801771C: .4byte gUnk_02018EA0
_08017720:
	ldr r3, _08017740 @ =gUnk_03003C70
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r3, r0
	cmp r1, r3
	bls _08017738
_0801772C:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080176F8
	adds r3, #0x10
	cmp r1, r3
	bhi _0801772C
_08017738:
	movs r0, #0
_0801773A:
	pop {r1}
	bx r1
	.align 2, 0
_08017740: .4byte gUnk_03003C70

	thumb_func_start sub_08017744
sub_08017744: @ 0x08017744
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08017758 @ =gUnk_03003C70
	movs r0, #0x80
	lsls r0, r0, #1
	adds r7, r2, r0
	movs r5, #0x41
	rsbs r5, r5, #0
	ldr r6, _0801775C @ =gUnk_02018EA0
	b _08017766
	.align 2, 0
_08017758: .4byte gUnk_03003C70
_0801775C: .4byte gUnk_02018EA0
_08017760:
	adds r2, #0x10
	cmp r7, r2
	bls _0801779A
_08017766:
	ldr r0, [r2, #8]
	cmp r4, r0
	bne _08017760
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017760
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3]
	movs r0, #0
	str r0, [r2, #8]
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r6]
	cmp r2, r0
	bne _0801779A
	ldr r0, [r2, #4]
	str r0, [r6]
_0801779A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080177A0
sub_080177A0: @ 0x080177A0
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r5, r1, #0
	adds r0, #0x38
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08017848
	mov r0, ip
	ldr r3, [r0, #0x48]
	ldr r4, [r5, #0x48]
	ldrb r1, [r3, #6]
	ldrb r0, [r4, #6]
	adds r2, r1, r0
	mov r1, ip
	movs r6, #0x2e
	ldrsh r0, [r1, r6]
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	subs r0, r0, r1
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r1, r2, #1
	cmp r0, r1
	bhi _08017848
	ldrb r1, [r3, #7]
	ldrb r0, [r4, #7]
	adds r2, r1, r0
	mov r1, ip
	movs r6, #0x32
	ldrsh r0, [r1, r6]
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	subs r0, r0, r1
	movs r1, #1
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r1, r2, #1
	cmp r0, r1
	bhi _08017848
	mov r0, ip
	adds r0, #0x3c
	ldrb r1, [r0]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r1
	movs r2, #5
	cmp r0, #0
	beq _0801781A
	ldrb r2, [r3, #8]
_0801781A:
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801782E
	ldrb r0, [r4, #8]
	adds r2, r2, r0
	b _08017830
_0801782E:
	adds r2, #5
_08017830:
	mov r1, ip
	movs r3, #0x36
	ldrsh r0, [r1, r3]
	movs r6, #0x36
	ldrsh r1, [r5, r6]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r1, r2, #1
	cmp r0, r1
	bhi _08017848
	movs r0, #1
	b _0801784A
_08017848:
	movs r0, #0
_0801784A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08017850
sub_08017850: @ 0x08017850
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08079F8C
	cmp r0, #0
	bne _08017860
	movs r0, #0
	b _08017868
_08017860:
	ldr r1, _08017870 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_080177A0
_08017868:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08017870: .4byte gPlayerEntity

	thumb_func_start sub_08017874
sub_08017874: @ 0x08017874
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _080178C6
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r1, [r0]
	ldr r0, _08017898 @ =gUnk_02002A40
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x2f
	beq _0801789C
	cmp r0, #0x30
	beq _080178A8
	b _080178AE
	.align 2, 0
_08017898: .4byte gUnk_02002A40
_0801789C:
	adds r0, r1, #0
	cmp r1, #0
	bge _080178A4
	adds r0, r1, #3
_080178A4:
	asrs r1, r0, #2
	b _080178AE
_080178A8:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
_080178AE:
	cmp r1, #0
	bgt _080178B4
	movs r1, #1
_080178B4:
	rsbs r0, r1, #0
	bl ModHealth
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	b _08017928
_080178C6:
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r1, [r0]
	ldrb r0, [r2, #8]
	cmp r0, #8
	bne _080178F6
	ldr r0, _080178E4 @ =gUnk_02002A40
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _080178E8
	cmp r0, #0x31
	beq _080178F4
	b _080178F6
	.align 2, 0
_080178E4: .4byte gUnk_02002A40
_080178E8:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _080178F6
_080178F4:
	lsls r1, r1, #1
_080178F6:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	subs r5, r0, r1
	ldrb r0, [r4, #8]
	cmp r0, #3
	bne _08017928
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08017920
	ldr r1, _0801791C @ =0x00000127
	adds r0, r4, #0
	bl sub_0800449C
	b _08017928
	.align 2, 0
_0801791C: .4byte 0x00000127
_08017920:
	adds r0, r4, #0
	movs r1, #0xfe
	bl sub_0800449C
_08017928:
	cmp r5, #0
	ble _08017930
	adds r0, r5, #0
	b _0801793A
_08017930:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0
_0801793A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017940
sub_08017940: @ 0x08017940
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #0x2c
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080179CC
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x48]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x2e]
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x32]
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x36]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_080179CC:
	movs r1, #0
	ldr r0, _080179E8 @ =gPlayerEntity
	cmp r5, r0
	beq _080179DA
	cmp r4, r0
	bne _080179E0
	adds r0, r4, #0
_080179DA:
	adds r0, #0x42
	ldrb r0, [r0]
	lsrs r1, r0, #3
_080179E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080179E8: .4byte gPlayerEntity

	thumb_func_start sub_080179EC
sub_080179EC: @ 0x080179EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, _08017A8C @ =gUnk_080B3740
	bl Random
	movs r1, #3
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08017A84
	ldr r0, [r5, #0x48]
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x48]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x48]
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x48]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x48]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	str r5, [r4, #0x54]
_08017A84:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017A8C: .4byte gUnk_080B3740

	thumb_func_start sub_08017A90
sub_08017A90: @ 0x08017A90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x99
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	bne _08017AAA
	movs r0, #0
	b _08017AD0
_08017AAA:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x14]
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r5, #0x2e]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x62
	strb r0, [r1]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r5, #0x32]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x63
	strb r0, [r1]
	str r5, [r2, #0x50]
	adds r0, r2, #0
_08017AD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017AD8
sub_08017AD8: @ 0x08017AD8
	movs r0, #0
	bx lr

	thumb_func_start sub_08017ADC
sub_08017ADC: @ 0x08017ADC
	push {r4, lr}
	adds r4, r1, #0
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r4, #0x10]
	adds r0, #0x40
	ldrb r1, [r0]
	movs r0, #0x80
	adds r2, r4, #0
	adds r2, #0x41
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	subs r0, #0x5f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08017B14
	adds r0, r4, #0
	bl sub_08081420
	cmp r0, #0
	beq _08017B14
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_08017B14:
	movs r0, #2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08017B1C
sub_08017B1C: @ 0x08017B1C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08017B38 @ =gPlayerState
	ldrb r1, [r0, #0x1e]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08017B3C
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	b _08017B52
	.align 2, 0
_08017B38: .4byte gPlayerState
_08017B3C:
	adds r1, r2, #0
	adds r1, #0x42
	movs r0, #0x10
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xec
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
_08017B52:
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08017B58
sub_08017B58: @ 0x08017B58
	push {lr}
	adds r2, r1, #0
	adds r3, r2, #0
	adds r3, #0x3a
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08017B98
	ldrb r1, [r2, #0x1d]
	cmp r1, #0
	beq _08017BA2
	ldr r0, _08017B94 @ =gPlayerState
	ldrb r0, [r0, #0x1d]
	subs r0, r1, r0
	movs r1, #0
	strb r0, [r2, #0x1d]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08017BA2
	strb r1, [r2, #0x1d]
	movs r0, #2
	strb r0, [r2, #0xd]
	adds r0, r2, #0
	adds r0, #0x46
	strh r1, [r0]
	b _08017BA2
	.align 2, 0
_08017B94: .4byte gPlayerState
_08017B98:
	strb r0, [r2, #0xd]
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
_08017BA2:
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017BB4
	movs r0, #0xff
	strb r0, [r1]
_08017BB4:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017BBC
sub_08017BBC: @ 0x08017BBC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _08017C38 @ =gPlayerState
	ldr r0, [r5, #0x30]
	ldr r1, _08017C3C @ =0x00001481
	ands r0, r1
	cmp r0, #0
	bne _08017BF2
	movs r0, #0x42
	movs r1, #1
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _08017BF2
	str r4, [r0, #0x54]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x30]
	movs r0, #0x10
	eors r0, r7
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
_08017BF2:
	adds r1, r6, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	subs r1, #3
	movs r0, #0xc
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x1e
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017C2E
	movs r0, #0xff
	strb r0, [r1]
_08017C2E:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017C38: .4byte gPlayerState
_08017C3C: .4byte 0x00001481

	thumb_func_start sub_08017C40
sub_08017C40: @ 0x08017C40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08017CB4 @ =gPlayerState
	ldr r0, [r6, #0x30]
	ldr r1, _08017CB8 @ =0x00001881
	ands r0, r1
	cmp r0, #0
	bne _08017C82
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08017C82
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08017C62
	cmp r0, #0x18
	bne _08017C82
_08017C62:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r6, #0x30]
	movs r0, #0xd
	strb r0, [r6, #0xc]
_08017C82:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xc
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017CAA
	movs r0, #0xff
	strb r0, [r1]
_08017CAA:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017CB4: .4byte gPlayerState
_08017CB8: .4byte 0x00001881

	thumb_func_start sub_08017CBC
sub_08017CBC: @ 0x08017CBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #0x10
	eors r2, r5
	adds r0, r2, #0
	subs r0, #0xc
	movs r2, #0x1f
	ands r0, r2
	ldrb r1, [r3, #0x15]
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0x18
	bhi _08017CF0
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08017940
	b _08017D1E
_08017CF0:
	adds r1, r3, #0
	adds r1, #0x42
	movs r0, #0xc
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r5, [r0]
	adds r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017D1E
	movs r0, #0xff
	strb r0, [r1]
_08017D1E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017D28
sub_08017D28: @ 0x08017D28
	push {lr}
	adds r3, r0, #0
	ldr r2, _08017D68 @ =gPlayerState
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r2, r3, #0
	adds r2, #0x7a
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	subs r2, #0x38
	movs r0, #0xc
	strb r0, [r2]
	subs r2, #5
	movs r0, #0x10
	strb r0, [r2]
	adds r2, #9
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2]
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017D60
	movs r0, #0xff
	strb r0, [r1]
_08017D60:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08017D68: .4byte gPlayerState

	thumb_func_start sub_08017D6C
sub_08017D6C: @ 0x08017D6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x10
	eors r0, r6
	subs r0, #5
	movs r2, #0x1f
	ands r0, r2
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #3
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0xa
	bls _08017D98
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _08017D94 @ =0x00000AC2
	b _08017DB0
	.align 2, 0
_08017D94: .4byte 0x00000AC2
_08017D98:
	adds r1, r4, #0
	adds r1, #0x41
	movs r0, #0xcb
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x79
	strb r0, [r2]
	ldrb r0, [r1]
	ldr r1, _08017DCC @ =0x00000AE4
_08017DB0:
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _08017DD0 @ =gUnk_080B7B74
	adds r3, r3, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08018308
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017DCC: .4byte 0x00000AE4
_08017DD0: .4byte gUnk_080B7B74

	thumb_func_start sub_08017DD4
sub_08017DD4: @ 0x08017DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r1, r8
	adds r1, #0x41
	movs r0, #0
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08017DFC
	movs r0, #0x7f
	ands r0, r2
	b _08017DFE
_08017DFC:
	movs r0, #4
_08017DFE:
	strb r0, [r1]
	ldr r4, _08017E34 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x3d
	movs r0, #0xf4
	strb r0, [r2]
	ldr r0, _08017E38 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _08017E3C
	bl sub_08079D84
	mov r1, r8
	adds r1, #0x3d
	movs r0, #0x5a
	strb r0, [r1]
	b _08017E6E
	.align 2, 0
_08017E34: .4byte gPlayerEntity
_08017E38: .4byte gPlayerState
_08017E3C:
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	movs r1, #0x80
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x41
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xc
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x42
	movs r1, #0x10
	movs r0, #0x10
	strb r0, [r2]
	eors r7, r1
	adds r0, r4, #0
	adds r0, #0x3e
	strb r7, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
_08017E6E:
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08017E7C
	movs r0, #0xff
	strb r0, [r6]
_08017E7C:
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017E88
sub_08017E88: @ 0x08017E88
	push {lr}
	adds r3, r0, #0
	adds r3, #0x42
	movs r2, #2
	strb r2, [r3]
	adds r0, #0x46
	movs r2, #0xa0
	lsls r2, r2, #2
	strh r2, [r0]
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017EAA
	movs r0, #0xff
	strb r0, [r1]
_08017EAA:
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08017EB0
sub_08017EB0: @ 0x08017EB0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r7, r1, #0
	adds r5, r7, #0
	adds r5, #0x44
	ldrb r0, [r5]
	cmp r0, #0
	bne _08017EC4
	movs r0, #0
	b _08017F36
_08017EC4:
	ldr r6, _08017EF8 @ =gPlayerEntity
	cmp r2, r6
	bne _08017EFC
	ldrb r4, [r5]
	movs r0, #8
	strb r0, [r5]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08017874
	adds r1, r6, #0
	adds r1, #0x45
	strb r0, [r1]
	strb r4, [r5]
	subs r1, #3
	movs r0, #0xc
	strb r0, [r1]
	subs r1, #5
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	b _08017F22
	.align 2, 0
_08017EF8: .4byte gPlayerEntity
_08017EFC:
	ldrh r1, [r2, #8]
	movs r0, #0xa1
	lsls r0, r0, #3
	cmp r1, r0
	bne _08017F22
	adds r1, r2, #0
	adds r1, #0x42
	movs r0, #8
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xfa
	strb r0, [r1]
	adds r1, #9
	adds r0, #0x86
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0x80
	strb r0, [r1]
_08017F22:
	adds r1, r7, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017F34
	movs r0, #0xff
	strb r0, [r1]
_08017F34:
	movs r0, #1
_08017F36:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017F3C
sub_08017F3C: @ 0x08017F3C
	movs r0, #1
	bx lr

	thumb_func_start sub_08017F40
sub_08017F40: @ 0x08017F40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r6, [r0]
	cmp r6, #0
	bne _0801800A
	ldr r0, _08017FAC @ =gPlayerEntity
	cmp r4, r0
	bne _08018002
	bl sub_08079F8C
	cmp r0, #0
	beq _0801801E
	ldr r2, _08017FB0 @ =gPlayerState
	ldr r3, [r2, #0x30]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0801801E
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801801E
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0x10
	orrs r3, r0
	str r3, [r2, #0x30]
	strb r6, [r2, #2]
	ldrb r0, [r5, #8]
	cmp r0, #3
	bne _08017FB4
	ldrb r0, [r5, #9]
	cmp r0, #0x4e
	beq _08017F9A
	cmp r0, #0x50
	bne _08017FB4
_08017F9A:
	strh r6, [r4, #0x36]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	b _08017FC2
	.align 2, 0
_08017FAC: .4byte gPlayerEntity
_08017FB0: .4byte gPlayerState
_08017FB4:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
_08017FC2:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
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
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	bl ResetPlayer
	movs r0, #1
	b _08018020
_08018002:
	adds r0, r4, #0
	adds r0, #0x45
	strb r6, [r0]
	b _0801801E
_0801800A:
	ldrb r0, [r5, #8]
	cmp r0, #3
	bne _0801801E
	ldr r0, _08018028 @ =gPlayerEntity
	cmp r4, r0
	bne _0801801E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004484
_0801801E:
	movs r0, #0
_08018020:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08018028: .4byte gPlayerEntity

	thumb_func_start sub_0801802C
sub_0801802C: @ 0x0801802C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _08018058
	bl sub_08079F8C
	cmp r0, #0
	beq _08018090
	movs r0, #0x10
	eors r0, r6
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	subs r0, r0, r1
	adds r0, #5
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xa
	bhi _08018090
	b _0801807A
_08018058:
	cmp r0, #8
	bne _08018086
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r1, r0
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	subs r1, r1, r0
	adds r1, #5
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xa
	bgt _08018090
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_0801807A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080180BC
	movs r0, #1
	b _080180AE
_08018086:
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
	b _080180AE
_08018090:
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _080180B4 @ =0x000011AA
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080180B8 @ =gUnk_080B7B74
	adds r3, r3, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08018308
_080180AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080180B4: .4byte 0x000011AA
_080180B8: .4byte gUnk_080B7B74

	thumb_func_start sub_080180BC
sub_080180BC: @ 0x080180BC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x3d
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080180CE
	movs r0, #0xe2
	strb r0, [r2]
_080180CE:
	adds r2, r1, #0
	adds r2, #0x3d
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080180E0
	movs r0, #0xff
	strb r0, [r2]
_080180E0:
	movs r0, #0xff
	strb r0, [r1, #0xd]
	pop {r0}
	bx r0

	thumb_func_start sub_080180E8
sub_080180E8: @ 0x080180E8
	push {r4, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r0, #0x10
	eors r0, r2
	adds r2, r0, #0
	subs r2, #0xc
	movs r1, #0x1f
	ands r2, r1
	ldrb r0, [r4, #0x15]
	subs r0, r0, r2
	ands r0, r1
	cmp r0, #0x18
	bls _0801812C
	mov r0, ip
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r1, _08018124 @ =0x00000352
	adds r0, r0, r1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _08018128 @ =gUnk_080B7B74
	adds r3, r3, r0
	mov r0, ip
	adds r1, r4, #0
	bl sub_08018308
	b _08018162
	.align 2, 0
_08018124: .4byte 0x00000352
_08018128: .4byte gUnk_080B7B74
_0801812C:
	mov r0, ip
	adds r0, #0x42
	movs r2, #0xc
	strb r2, [r0]
	subs r0, #5
	movs r1, #0xf0
	strb r1, [r0]
	mov r3, ip
	adds r3, #0x46
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x42
	strb r2, [r0]
	subs r0, #5
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, ip
	adds r1, r4, #0
	bl sub_08017940
	movs r0, #1
_08018162:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08018168
sub_08018168: @ 0x08018168
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	adds r0, #0x43
	ldrb r5, [r0]
	cmp r5, #0
	bne _08018208
	ldr r0, _080181F4 @ =gPlayerEntity
	cmp r4, r0
	bne _08018200
	bl sub_08079F8C
	cmp r0, #0
	beq _0801821C
	ldr r2, _080181F8 @ =gPlayerState
	ldr r3, [r2, #0x30]
	ldr r0, _080181FC @ =0x00040080
	ands r0, r3
	cmp r0, #0
	bne _0801821C
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801821C
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r3, r0
	str r3, [r2, #0x30]
	strb r5, [r2, #2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r6, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r6, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0xf8
	strb r0, [r1]
	bl sub_08077B20
	movs r0, #1
	b _0801821E
	.align 2, 0
_080181F4: .4byte gPlayerEntity
_080181F8: .4byte gPlayerState
_080181FC: .4byte 0x00040080
_08018200:
	adds r0, r4, #0
	adds r0, #0x45
	strb r5, [r0]
	b _0801821C
_08018208:
	ldrb r0, [r6, #8]
	cmp r0, #3
	bne _0801821C
	ldr r0, _08018224 @ =gPlayerEntity
	cmp r4, r0
	bne _0801821C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08004484
_0801821C:
	movs r0, #0
_0801821E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08018224: .4byte gPlayerEntity

	thumb_func_start sub_08018228
sub_08018228: @ 0x08018228
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0801824C @ =gPlayerEntity
	cmp r4, r0
	bne _08018244
	bl sub_08079F8C
	cmp r0, #0
	beq _08018244
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004484
_08018244:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801824C: .4byte gPlayerEntity

	thumb_func_start sub_08018250
sub_08018250: @ 0x08018250
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x3d
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r2]
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	bne _08018278
	adds r2, r1, #0
	adds r2, #0x3d
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r3, #0
	bl sub_08017A90
	b _08018280
_08018278:
	adds r1, #0x3d
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
_08018280:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08018288
sub_08018288: @ 0x08018288
	push {lr}
	adds r1, r0, #0
	ldr r0, _08018298 @ =gPlayerEntity
	cmp r1, r0
	bne _0801829C
	bl sub_0807AFE8
	b _080182A2
	.align 2, 0
_08018298: .4byte gPlayerEntity
_0801829C:
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_080182A2:
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_080182A8
sub_080182A8: @ 0x080182A8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080182DA
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080182C8
	movs r0, #0xff
	strb r0, [r2]
_080182C8:
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08018300
	movs r0, #0xff
	strb r0, [r1]
	b _08018300
_080182DA:
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	ldr r3, _080182F8 @ =0x0000092A
	adds r0, r0, r3
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080182FC @ =gUnk_080B7B74
	adds r3, r3, r0
	adds r0, r4, #0
	bl sub_08018308
	b _08018302
	.align 2, 0
_080182F8: .4byte 0x0000092A
_080182FC: .4byte gUnk_080B7B74
_08018300:
	movs r0, #1
_08018302:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08018308
sub_08018308: @ 0x08018308
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r5, r3, #0
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018338
	ldrb r0, [r4, #8]
	cmp r0, #3
	bne _08018338
	ldr r0, _0801835C @ =gPlayerEntity
	cmp r6, r0
	bne _08018338
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004484
	movs r3, #1
_08018338:
	ldrh r1, [r6, #8]
	movs r0, #0xa1
	lsls r0, r0, #3
	cmp r1, r0
	bne _08018360
	ldr r0, _0801835C @ =gPlayerEntity
	ldrb r2, [r0, #0x14]
	mov r0, r8
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	movs r1, #4
	eors r0, r1
	cmp r2, r0
	bne _08018360
	movs r0, #0
	b _080184F0
	.align 2, 0
_0801835C: .4byte gPlayerEntity
_08018360:
	cmp r3, #0
	bne _08018408
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r5, #1]
	adds r2, r6, #0
	adds r2, #0x3d
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08018382
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2]
_08018382:
	ldrb r0, [r5, #2]
	adds r1, r6, #0
	adds r1, #0x42
	strb r0, [r1]
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	adds r0, #0x44
	strb r1, [r0]
	movs r7, #0xff
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _080183A8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017874
	adds r1, r6, #0
	adds r1, #0x45
	strb r0, [r1]
_080183A8:
	adds r1, r6, #0
	adds r1, #0x43
	ldrb r0, [r5, #4]
	ldrb r2, [r1]
	cmp r0, r2
	bls _080183B6
	strb r0, [r1]
_080183B6:
	ldrb r0, [r5, #5]
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r5, #6]
	adds r2, r4, #0
	adds r2, #0x3d
	strb r1, [r2]
	movs r0, #6
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080183D6
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2]
_080183D6:
	ldrb r0, [r5, #7]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	ldrb r1, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	ands r7, r1
	cmp r7, #0
	beq _080183FA
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08017874
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080183FA:
	adds r1, r4, #0
	adds r1, #0x43
	ldrb r0, [r5, #9]
	ldrb r2, [r1]
	cmp r0, r2
	bls _08018408
	strb r0, [r1]
_08018408:
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801841A
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017940
_0801841A:
	ldrb r2, [r5, #0xa]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801842C
	adds r1, r6, #0
	adds r1, #0x41
	movs r0, #0xca
	strb r0, [r1]
_0801842C:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801847E
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0801847E
	adds r1, r2, #0
	adds r1, #0x41
	movs r0, #0xcc
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3e
	mov r1, r8
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08018470
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	strb r0, [r1]
_08018470:
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x46
	strh r0, [r1]
	str r6, [r2, #0x4c]
_0801847E:
	ldrb r1, [r6, #8]
	cmp r1, #8
	bne _080184DA
	ldrb r0, [r6, #9]
	cmp r0, #1
	bne _0801849A
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _080184DA
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080179EC
	b _080184DA
_0801849A:
	cmp r0, #4
	bne _080184BA
	adds r0, r6, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _080184B0
	ldrb r0, [r5, #0xa]
	ands r1, r0
	cmp r1, #0
	beq _080184DA
_080184B0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08017A90
	b _080184DA
_080184BA:
	cmp r0, #3
	bne _080184CE
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _080184DA
	adds r0, r4, #0
	movs r1, #0xfe
	bl sub_0800449C
	b _080184DA
_080184CE:
	cmp r0, #5
	bne _080184DA
	ldr r0, _080184FC @ =gPlayerEntity
	adds r0, #0x3d
	movs r1, #0x80
	strb r1, [r0]
_080184DA:
	ldrb r0, [r4, #8]
	cmp r0, #8
	bne _080184EE
	ldrb r0, [r6, #9]
	cmp r0, #5
	bne _080184EE
	ldr r0, _080184FC @ =gPlayerEntity
	adds r0, #0x3d
	movs r1, #0x80
	strb r1, [r0]
_080184EE:
	movs r0, #1
_080184F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080184FC: .4byte gPlayerEntity
