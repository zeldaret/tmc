	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057ED0
sub_08057ED0: @ 0x08057ED0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08057F20
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08057EF2
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08057EF4 @ =gScreen
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x32]
	ldr r1, _08057EF8 @ =sub_08057EFC
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_08057EF2:
	pop {r4, pc}
	.align 2, 0
_08057EF4: .4byte gScreen
_08057EF8: .4byte sub_08057EFC

	thumb_func_start sub_08057EFC
sub_08057EFC: @ 0x08057EFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08057F1C @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl sub_0801D7EC
	bl sub_08058034
	movs r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08057F20
	pop {r4, pc}
	.align 2, 0
_08057F1C: .4byte gRoomVars

	thumb_func_start sub_08057F20
sub_08057F20: @ 0x08057F20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, _08057FF4 @ =gRoomControls
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r4, r1, r0
	lsrs r2, r4, #3
	adds r2, r4, r2
	ldrh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r2, r0
	ldr r6, _08057FF8 @ =gScreen
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	strh r0, [r6, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	movs r1, #0x30
	subs r0, r1, r0
	asrs r0, r0, #2
	mov sl, r1
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r6, #0x30]
	ldr r0, _08057FFC @ =gUnk_02001A40
	mov r8, r0
	str r0, [r6, #0x34]
	ldr r1, _08058000 @ =gUnk_02006F00
	mov sb, r1
	adds r0, r4, #0
	mov r2, r8
	bl sub_08058004
	lsrs r0, r4, #4
	lsls r4, r0, #1
	ldr r0, [r7, #0x38]
	cmp r0, r4
	beq _08057F8C
	str r4, [r7, #0x38]
	movs r0, #1
	strh r0, [r6, #0x32]
_08057F8C:
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r4, r1, r0
	lsrs r2, r4, #2
	adds r2, r4, r2
	ldrh r0, [r5, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r2, r0
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	strh r0, [r6, #0x16]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	movs r1, #0x30
	subs r0, r1, r0
	asrs r0, r0, #1
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #4
	add r2, r8
	str r2, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #6
	add r1, sb
	adds r0, r4, #0
	bl sub_08058004
	lsrs r0, r4, #4
	lsls r4, r0, #1
	ldr r0, [r7, #0x3c]
	cmp r0, r4
	beq _08057FE8
	str r4, [r7, #0x3c]
	movs r0, #1
	strh r0, [r6, #0x1a]
_08057FE8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057FF4: .4byte gRoomControls
_08057FF8: .4byte gScreen
_08057FFC: .4byte gUnk_02001A40
_08058000: .4byte gUnk_02006F00

	thumb_func_start sub_08058004
sub_08058004: @ 0x08058004
	push {r4, r5, r6, lr}
	movs r4, #0x20
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _0805802C @ =0x040000D4
	ldr r6, _08058030 @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_08058016:
	str r1, [r3]
	str r2, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r1, r1, r5
	adds r2, #0x40
	subs r4, #1
	cmp r4, #0
	bne _08058016
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805802C: .4byte 0x040000D4
_08058030: .4byte 0x80000020

	thumb_func_start sub_08058034
sub_08058034: @ 0x08058034
	push {r4, r5, r6, lr}
	ldr r6, _08058080 @ =gUnk_02002F00
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r6, r0
	movs r4, #0
_08058040:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08058084
	movs r1, #0x80
	lsls r1, r1, #4
	adds r6, r6, r1
	adds r5, #0x40
	adds r4, #1
	cmp r4, #3
	bls _08058040
	ldr r0, _08058080 @ =gUnk_02002F00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r6, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r5, r0, r1
	movs r4, #0
_08058066:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08058084
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r5, #0x40
	adds r4, #1
	cmp r4, #3
	bls _08058066
	pop {r4, r5, r6, pc}
	.align 2, 0
_08058080: .4byte gUnk_02002F00

	thumb_func_start sub_08058084
sub_08058084: @ 0x08058084
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, _080580A8 @ =0x040000D4
	ldr r6, _080580AC @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_08058092:
	str r3, [r2]
	str r1, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	adds r3, #0x40
	adds r1, r1, r5
	cmp r4, #0x1f
	bls _08058092
	pop {r4, r5, r6, pc}
	.align 2, 0
_080580A8: .4byte 0x040000D4
_080580AC: .4byte 0x80000020

	thumb_func_start sub_080580B0
sub_080580B0: @ 0x080580B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080581B0 @ =gUnk_0200B650
	movs r1, #0
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0801D7EC
	ldr r0, _080581B4 @ =gRoomVars
	strb r4, [r0, #0x10]
	bl sub_08058034
	ldr r5, _080581B8 @ =gRoomControls
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r7, r1, r0
	asrs r2, r7, #3
	adds r2, r7, r2
	ldrh r0, [r5, #0x1e]
	movs r4, #0x80
	lsls r4, r4, #3
	subs r0, r4, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r7, r2, r0
	ldr r1, _080581BC @ =gUnk_02006F00
	mov sb, r1
	ldr r2, _080581C0 @ =gUnk_02001A40
	mov r8, r2
	adds r0, r7, #0
	bl sub_08058004
	ldr r0, _080581C4 @ =gScreen
	mov sl, r0
	movs r1, #0xf
	ands r7, r1
	strh r7, [r0, #0x2e]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	movs r6, #0x30
	subs r0, r6, r0
	asrs r0, r0, #1
	movs r3, #0x30
	subs r0, r3, r0
	mov r1, sl
	strh r0, [r1, #0x30]
	ldr r0, _080581C8 @ =0x00001D09
	strh r0, [r1, #0x2c]
	mov r2, r8
	str r2, [r1, #0x34]
	movs r0, #1
	strh r0, [r1, #0x32]
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	ldrh r0, [r5, #6]
	subs r7, r1, r0
	asrs r1, r7, #2
	adds r1, r7, r1
	ldrh r0, [r5, #0x1e]
	subs r4, r4, r0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	adds r7, r1, r4
	movs r0, #0x80
	lsls r0, r0, #6
	add sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	add r8, r1
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	str r3, [sp]
	bl sub_08058004
	movs r2, #0xf
	ands r7, r2
	mov r0, sl
	strh r7, [r0, #0x16]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	subs r6, r6, r0
	asrs r6, r6, #1
	ldr r3, [sp]
	subs r3, r3, r6
	mov r2, sl
	strh r3, [r2, #0x18]
	ldr r0, _080581CC @ =0x00001E09
	strh r0, [r2, #0x14]
	mov r0, r8
	str r0, [r2, #0x1c]
	movs r1, #1
	strh r1, [r2, #0x1a]
	mov r1, sl
	adds r1, #0x66
	ldr r0, _080581D0 @ =0x00003C48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080581D4 @ =0x00000609
	strh r0, [r1]
	ldrh r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sl
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080581B0: .4byte gUnk_0200B650
_080581B4: .4byte gRoomVars
_080581B8: .4byte gRoomControls
_080581BC: .4byte gUnk_02006F00
_080581C0: .4byte gUnk_02001A40
_080581C4: .4byte gScreen
_080581C8: .4byte 0x00001D09
_080581CC: .4byte 0x00001E09
_080581D0: .4byte 0x00003C48
_080581D4: .4byte 0x00000609
