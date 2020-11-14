	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object74
Object74: @ 0x08097B6C
	push {lr}
	ldr r2, _08097B80 @ =gUnk_08123330
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08097B80: .4byte gUnk_08123330

	thumb_func_start sub_08097B84
sub_08097B84: @ 0x08097B84
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08097BCC @ =gUnk_08123328
	str r0, [r4, #0x48]
	adds r2, #0x5d
	ldrh r1, [r2]
	ldr r0, _08097BD0 @ =0x0000FFFF
	cmp r1, r0
	beq _08097BB0
	adds r0, r1, #0
	bl CheckFlags
	cmp r0, #0
	beq _08097BD4
_08097BB0:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08097CFC
	b _08097BD8
	.align 2, 0
_08097BCC: .4byte gUnk_08123328
_08097BD0: .4byte 0x0000FFFF
_08097BD4:
	bl sub_0805BC4C
_08097BD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08097BDC
sub_08097BDC: @ 0x08097BDC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08097C10
	movs r0, #1
	bl sub_08078A90
	ldr r0, _08097C14 @ =gUnk_02034490
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0805E4E0
	adds r0, r4, #0
	bl sub_08097CB0
	cmp r0, #0
	bne _08097C10
	adds r0, r4, #0
	bl sub_08097CB4
_08097C10:
	pop {r4, pc}
	.align 2, 0
_08097C14: .4byte gUnk_02034490

	thumb_func_start sub_08097C18
sub_08097C18: @ 0x08097C18
	bx lr
	.align 2, 0

	thumb_func_start sub_08097C1C
sub_08097C1C: @ 0x08097C1C
	bx lr
	.align 2, 0

	thumb_func_start sub_08097C20
sub_08097C20: @ 0x08097C20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	bl sub_0805E510
	adds r0, r4, #0
	bl sub_0800445C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_080577AC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08097CA6
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r1, r0
	ldr r6, _08097CA8 @ =gScreen
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x68
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _08097CA6
	movs r0, #0
	bl sub_08078A90
	ldr r1, _08097CAC @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x66
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_08097CFC
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	subs r0, #0x11
	ands r0, r1
	strb r0, [r4, #0x19]
	movs r0, #0x72
	bl PlaySFX
	movs r0, #0x63
	bl SetGlobalFlag
_08097CA6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08097CA8: .4byte gScreen
_08097CAC: .4byte gUnk_02034490

	thumb_func_start sub_08097CB0
sub_08097CB0: @ 0x08097CB0
	movs r0, #0
	bx lr

	thumb_func_start sub_08097CB4
sub_08097CB4: @ 0x08097CB4
	push {lr}
	movs r3, #0
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #7
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x19]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0, #0x19]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	strb r3, [r0, #0xf]
	ldr r1, _08097CF8 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	adds r0, #0xc0
	strh r0, [r1]
	movs r0, #0xa5
	lsls r0, r0, #1
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08097CF8: .4byte gScreen

	thumb_func_start sub_08097CFC
sub_08097CFC: @ 0x08097CFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08097D40
	ldr r0, _08097D38 @ =gUnk_0812336A
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08097D3C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0801AF18
	b _08097D6C
	.align 2, 0
_08097D38: .4byte gUnk_0812336A
_08097D3C: .4byte gRoomControls
_08097D40:
	ldr r0, _08097D70 @ =gUnk_08123344
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08097D74 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0801AF18
_08097D6C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08097D70: .4byte gUnk_08123344
_08097D74: .4byte gRoomControls
