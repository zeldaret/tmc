	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08055FF4
sub_08055FF4: @ 0x08055FF4
	push {lr}
	movs r2, #0
	ldr r0, _0805600C @ =gUnk_03000FF0
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _08056006
	movs r2, #1
_08056006:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805600C: .4byte gUnk_03000FF0

	thumb_func_start sub_08056010
sub_08056010: @ 0x08056010
	ldr r1, _0805601C @ =gUnk_03001000
	movs r2, #0
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	strb r2, [r1, #4]
	bx lr
	.align 2, 0
_0805601C: .4byte gUnk_03001000

	thumb_func_start sub_08056020
sub_08056020: @ 0x08056020
	push {r4, lr}
	ldr r2, _08056088 @ =0x04000208
	movs r1, #0
	strh r1, [r2]
	ldr r0, _0805608C @ =0x04000200
	strh r1, [r0]
	ldr r0, _08056090 @ =0x04000004
	strh r1, [r0]
	ldr r0, _08056094 @ =0x04000202
	strh r1, [r0]
	strh r1, [r2]
	ldr r1, _08056098 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0805609C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _080560A0 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080560A4 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	pop {r4, pc}
	.align 2, 0
_08056088: .4byte 0x04000208
_0805608C: .4byte 0x04000200
_08056090: .4byte 0x04000004
_08056094: .4byte 0x04000202
_08056098: .4byte 0x040000B0
_0805609C: .4byte 0x0000C5FF
_080560A0: .4byte 0x00007FFF
_080560A4: .4byte 0x040000D4

	thumb_func_start sub_080560A8
sub_080560A8: @ 0x080560A8
	push {lr}
	bl sub_08056020
	movs r0, #0xde
	bl SoftReset
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080560B8
sub_080560B8: @ 0x080560B8
	push {r4, lr}
	bl sub_08056134
	cmp r0, #0
	bne _080560F8
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl sub_0807CF30
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	blt _080560E4
	cmp r1, #0
	ble _080560E4
	cmp r1, #1
	bne _080560E4
	bl sub_08056134
	cmp r0, #0
	bne _080560F8
_080560E4:
	ldr r0, _08056128 @ =gUnk_08100CD4
	movs r4, #0x80
	lsls r4, r4, #0x12
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_0801D66C
	adds r0, r4, #0
	bl sub_0807CF10
_080560F8:
	ldr r2, _0805612C @ =gUnk_02000010
	ldr r1, [r2]
	ldr r0, _08056130 @ =0x4D435A33
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldrb r1, [r2, #4]
	cmp r1, #0
	beq _08056112
	cmp r1, #0xc1
	beq _08056112
	movs r0, #1
_08056112:
	cmp r0, #0
	beq _08056124
	ldr r4, _0805612C @ =gUnk_02000010
	adds r0, r4, #0
	movs r1, #0x20
	bl _DmaZero
	ldr r0, _08056130 @ =0x4D435A33
	str r0, [r4]
_08056124:
	pop {r4, pc}
	.align 2, 0
_08056128: .4byte gUnk_08100CD4
_0805612C: .4byte gUnk_02000010
_08056130: .4byte 0x4D435A33

	thumb_func_start sub_08056134
sub_08056134: @ 0x08056134
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldr r1, [r2]
	ldr r0, _08056164 @ =0x4D435A33
	cmp r1, r0
	bne _08056160
	ldrb r0, [r2, #4]
	cmp r0, #2
	bhi _08056160
	ldrb r0, [r2, #5]
	cmp r0, #2
	bhi _08056160
	ldrb r0, [r2, #6]
	cmp r0, #2
	bhi _08056160
	ldrb r0, [r2, #7]
	cmp r0, #1
	bne _08056160
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _08056168
_08056160:
	movs r0, #0
	b _0805616A
	.align 2, 0
_08056164: .4byte 0x4D435A33
_08056168:
	movs r0, #1
_0805616A:
	pop {pc}

	thumb_func_start sub_0805616C
sub_0805616C: @ 0x0805616C
	push {lr}
	ldr r0, _080561E8 @ =0x80040000
	bl PlaySFX
	ldr r0, _080561EC @ =gScreen
	adds r3, r0, #0
	adds r3, #0x6c
	ldrb r2, [r3]
	adds r0, #0x6d
	movs r1, #0
	strb r2, [r0]
	strb r1, [r3]
	ldr r1, _080561F0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080561F4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080561F8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080561AA
_080561A2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080561A2
_080561AA:
	ldr r2, _080561FC @ =0x040000BC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080561BE
_080561B6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080561B6
_080561BE:
	ldr r2, _08056200 @ =0x040000C8
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080561D2
_080561CA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080561CA
_080561D2:
	ldr r2, _08056204 @ =0x040000D4
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080561E6
_080561DE:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080561DE
_080561E6:
	pop {pc}
	.align 2, 0
_080561E8: .4byte 0x80040000
_080561EC: .4byte gScreen
_080561F0: .4byte 0x040000B0
_080561F4: .4byte 0x0000C5FF
_080561F8: .4byte 0x00007FFF
_080561FC: .4byte 0x040000BC
_08056200: .4byte 0x040000C8
_08056204: .4byte 0x040000D4

	thumb_func_start sub_08056208
sub_08056208: @ 0x08056208
	push {lr}
	ldr r0, _08056224 @ =0x80060000
	bl PlaySFX
	ldr r0, _08056228 @ =gScreen
	adds r3, r0, #0
	adds r3, #0x6d
	ldrb r2, [r3]
	adds r0, #0x6c
	movs r1, #0
	strb r2, [r0]
	strb r1, [r3]
	pop {pc}
	.align 2, 0
_08056224: .4byte 0x80060000
_08056228: .4byte gScreen

	thumb_func_start sub_0805622C
sub_0805622C: @ 0x0805622C
	ldr r3, _08056248 @ =gScreen
	str r0, [r3, #0x70]
	str r1, [r3, #0x74]
	str r2, [r3, #0x78]
	adds r3, #0x6c
	movs r2, #1
	movs r0, #1
	strb r0, [r3]
	ldr r1, _0805624C @ =gUnk_03003DE4
	ldrb r0, [r1]
	eors r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08056248: .4byte gScreen
_0805624C: .4byte gUnk_03003DE4

	thumb_func_start sub_08056250
sub_08056250: @ 0x08056250
	ldr r0, _0805625C @ =gScreen
	adds r0, #0x6c
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0805625C: .4byte gScreen

	thumb_func_start sub_08056260
sub_08056260: @ 0x08056260
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	ldr r1, _080562B8 @ =0x04000132
	ldr r2, _080562BC @ =0x00008304
	adds r0, r2, #0
	strh r0, [r1]
	ldr r6, _080562C0 @ =0x04000208
	movs r0, #0
	mov r8, r0
	strh r0, [r6]
	ldr r5, _080562C4 @ =0x04000200
	ldrh r4, [r5]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r5]
	movs r2, #1
	mov sb, r2
	strh r2, [r6]
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	mov r0, r8
	strh r0, [r6]
	strh r4, [r5]
	mov r1, sb
	strh r1, [r6]
	ldr r0, _080562C8 @ =gUnk_03001000
	ldrb r1, [r0, #1]
	mov r2, r8
	strb r2, [r0, #1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_080562B8: .4byte 0x04000132
_080562BC: .4byte 0x00008304
_080562C0: .4byte 0x04000208
_080562C4: .4byte 0x04000200
_080562C8: .4byte gUnk_03001000

	thumb_func_start sub_080562CC
sub_080562CC: @ 0x080562CC
	push {r4, r5, r6, lr}
	ldr r6, _080562FC @ =gRoomControls
	movs r4, #0xa
	ldrsh r5, [r6, r4]
	ldrh r4, [r6, #6]
	subs r5, r5, r4
	subs r5, r5, r0
	adds r5, #0xf0
	movs r4, #0xc
	ldrsh r0, [r6, r4]
	ldrh r4, [r6, #8]
	subs r0, r0, r4
	subs r0, r0, r1
	adds r0, #0xa0
	adds r2, #0xf0
	adds r3, #0xa0
	movs r1, #0
	cmp r5, r2
	bhs _080562F8
	cmp r0, r3
	bhs _080562F8
	movs r1, #1
_080562F8:
	adds r0, r1, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080562FC: .4byte gRoomControls

	thumb_func_start sub_08056300
sub_08056300: @ 0x08056300
	push {r4, lr}
	adds r4, r0, #0
	b _0805631C
_08056306:
	ldrh r0, [r4, #2]
	ldrh r1, [r4, #4]
	ldrh r2, [r4, #6]
	ldrh r3, [r4, #8]
	bl sub_080562CC
	cmp r0, #0
	beq _0805631A
	ldrh r0, [r4]
	b _08056324
_0805631A:
	adds r4, #0xa
_0805631C:
	ldrh r0, [r4]
	cmp r0, #0xff
	bne _08056306
	movs r0, #0xff
_08056324:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start NulledItem
NulledItem: @ 0x08056328
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_08056330
sub_08056330: @ 0x08056330
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_08056338
sub_08056338: @ 0x08056338
	push {lr}
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _08056358 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08056354
	ldr r1, _0805635C @ =gUnk_02000040
	ldrb r0, [r1]
	cmp r0, #3
	bne _08056354
	ldrb r2, [r1, #1]
_08056354:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_08056358: .4byte gTextBox
_0805635C: .4byte gUnk_02000040
