	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
		thumb_func_start sub_0804AA84
sub_0804AA84: @ 0x0804AA84
	push {lr}
	ldr r3, _0804AA98 @ =gUnk_02033A90
	ldrb r0, [r3, #0x19]
	cmp r0, #0
	bne _0804AA9C
	strb r0, [r3, #0x18]
	strb r0, [r3, #0x19]
	movs r0, #0
	b _0804AAB0
	.align 2, 0
_0804AA98: .4byte gUnk_02033A90
_0804AA9C:
	ldr r2, _0804AAB4 @ =gUnk_03001000
	movs r1, #0
	movs r0, #4
	strb r0, [r2, #4]
	strb r1, [r3, #0xe]
	strb r1, [r3, #0xf]
	strh r1, [r3, #0x10]
	bl sub_0805E5A8
	movs r0, #1
_0804AAB0:
	pop {pc}
	.align 2, 0
_0804AAB4: .4byte gUnk_03001000

	thumb_func_start sub_0804AAB8
sub_0804AAB8: @ 0x0804AAB8
	push {lr}
	ldr r1, _0804AACC @ =gUnk_080D4120
	ldr r0, _0804AAD0 @ =gUnk_02033A90
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0804AACC: .4byte gUnk_080D4120
_0804AAD0: .4byte gUnk_02033A90

	thumb_func_start sub_0804AAD4
sub_0804AAD4: @ 0x0804AAD4
	push {r4, lr}
	ldr r4, _0804AAFC @ =gUnk_02018EB0
	adds r0, r4, #0
	movs r1, #0x28
	bl sub_0801D630
	movs r0, #0
	str r0, [r4, #0x14]
	bl sub_0805E60C
	ldr r4, _0804AB00 @ =gUnk_02033A90
	ldrb r1, [r4, #0x17]
	movs r0, #0x3d
	movs r2, #0
	bl CreateObject
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0
_0804AAFC: .4byte gUnk_02018EB0
_0804AB00: .4byte gUnk_02033A90

	thumb_func_start sub_0804AB04
sub_0804AB04: @ 0x0804AB04
	push {lr}
	bl sub_0805E5C0
	ldr r0, _0804AB20 @ =gUnk_02033A90
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0804AB1E
	bl sub_080AD90C
	bl sub_080AD9B0
	bl sub_080AD918
_0804AB1E:
	pop {pc}
	.align 2, 0
_0804AB20: .4byte gUnk_02033A90

	thumb_func_start sub_0804AB24
sub_0804AB24: @ 0x0804AB24
	push {r4, r5, lr}
	ldr r5, _0804AB48 @ =gUnk_03000FD0
	ldrb r1, [r5]
	cmp r1, #0
	bne _0804AB46
	ldr r0, _0804AB4C @ =gLCDControls
	movs r4, #0
	strh r1, [r0]
	bl sub_0801E104
	ldr r0, _0804AB50 @ =gUnk_02033A90
	strb r4, [r0, #0xe]
	movs r0, #6
	movs r1, #0
	bl sub_080A7138
	strb r4, [r5]
_0804AB46:
	pop {r4, r5, pc}
	.align 2, 0
_0804AB48: .4byte gUnk_03000FD0
_0804AB4C: .4byte gLCDControls
_0804AB50: .4byte gUnk_02033A90

	thumb_func_start sub_0804AB54
sub_0804AB54: @ 0x0804AB54
	push {lr}
	ldr r1, _0804AB68 @ =gUnk_080D412C
	ldr r0, _0804AB6C @ =gUnk_02033A90
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0804AB68: .4byte gUnk_080D412C
_0804AB6C: .4byte gUnk_02033A90

	thumb_func_start sub_0804AB70
sub_0804AB70: @ 0x0804AB70
	push {r4, r5, lr}
	movs r0, #0
	bl sub_0801DA90
	ldr r1, _0804ABF8 @ =gLCDControls
	movs r2, #0
	movs r0, #0x92
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _0804ABFC @ =0x00009E83
	strh r0, [r1, #0x14]
	ldr r0, _0804AC00 @ =gRoomControls
	strh r2, [r1, #0x16]
	strh r2, [r0, #0xa]
	strh r2, [r1, #0x18]
	strh r2, [r0, #0xc]
	ldr r0, _0804AC04 @ =gUnk_02033A90
	ldrb r5, [r0, #0x17]
	cmp r5, #2
	bne _0804ABA4
	ldr r0, _0804AC08 @ =gUnk_02032EC0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804ABA4
	movs r5, #3
_0804ABA4:
	lsls r4, r5, #1
	ldr r0, _0804AC0C @ =gUnk_080D4138
	adds r4, r4, r0
	ldrb r0, [r4]
	bl sub_0801D714
	ldrb r0, [r4, #1]
	bl sub_0801D7EC
	ldr r0, _0804AC10 @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _0804AC14 @ =gUnk_0200B644
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	bl sub_0805E60C
	ldr r1, _0804AC18 @ =gUnk_080D4110
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl LoadRoomEntityList
	bl sub_0805E5B4
	ldr r1, _0804AC04 @ =gUnk_02033A90
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	pop {r4, r5, pc}
	.align 2, 0
_0804ABF8: .4byte gLCDControls
_0804ABFC: .4byte 0x00009E83
_0804AC00: .4byte gRoomControls
_0804AC04: .4byte gUnk_02033A90
_0804AC08: .4byte gUnk_02032EC0
_0804AC0C: .4byte gUnk_080D4138
_0804AC10: .4byte gUnk_02017700
_0804AC14: .4byte gUnk_0200B644
_0804AC18: .4byte gUnk_080D4110

	thumb_func_start sub_0804AC1C
sub_0804AC1C: @ 0x0804AC1C
	push {r4, lr}
	bl sub_0805E5C0
	ldr r0, _0804AC98 @ =gUnk_02018EB0
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0804AC5E
	ldr r3, _0804AC9C @ =gRoomControls
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	movs r4, #0x32
	ldrsh r1, [r2, r4]
	subs r1, #0x50
	subs r0, r0, r1
	movs r4, #0x36
	ldrsh r1, [r2, r4]
	subs r1, r0, r1
	cmp r1, #0
	beq _0804AC5E
	ldrh r0, [r3, #0xc]
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0804AC52
	movs r0, #0
	strh r0, [r3, #0xc]
_0804AC52:
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	cmp r0, #0x9f
	ble _0804AC5E
	movs r0, #0x9f
	strh r0, [r3, #0xc]
_0804AC5E:
	ldr r2, _0804ACA0 @ =gLCDControls
	ldr r1, _0804AC9C @ =gRoomControls
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0x18]
	bl sub_080AD90C
	bl sub_080AD9B0
	bl sub_080AD918
	ldr r0, _0804AC98 @ =gUnk_02018EB0
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _0804AC86
	bl sub_0804ACA8
	cmp r0, #0
	beq _0804AC96
_0804AC86:
	ldr r1, _0804ACA4 @ =gUnk_02033A90
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
_0804AC96:
	pop {r4, pc}
	.align 2, 0
_0804AC98: .4byte gUnk_02018EB0
_0804AC9C: .4byte gRoomControls
_0804ACA0: .4byte gLCDControls
_0804ACA4: .4byte gUnk_02033A90

	thumb_func_start sub_0804ACA8
sub_0804ACA8: @ 0x0804ACA8
	push {lr}
	ldr r0, _0804ACC0 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0x81
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804ACC4
	bl sub_0804AD18
	b _0804ACC6
	.align 2, 0
_0804ACC0: .4byte gUnk_03000FF0
_0804ACC4:
	movs r0, #0
_0804ACC6:
	pop {pc}

	thumb_func_start sub_0804ACC8
sub_0804ACC8: @ 0x0804ACC8
	push {lr}
	ldr r0, _0804ACEC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804ACE8
	ldr r0, _0804ACF0 @ =gUnk_02033A90
	ldrb r0, [r0, #0x17]
	adds r0, #0x5e
	bl sub_0807CD04
	ldr r0, _0804ACF4 @ =gUnk_02032EDC
	bl sub_0804AD6C
	movs r0, #0
	bl sub_080A71F4
_0804ACE8:
	pop {pc}
	.align 2, 0
_0804ACEC: .4byte gUnk_03000FD0
_0804ACF0: .4byte gUnk_02033A90
_0804ACF4: .4byte gUnk_02032EDC

	thumb_func_start sub_0804ACF8
sub_0804ACF8: @ 0x0804ACF8
	push {lr}
	bl sub_0804AD18
	cmp r0, #0
	beq _0804AD12
	ldr r0, _0804AD14 @ =gRoomControls
	bl sub_0804AD6C
	bl sub_0805E5A8
	movs r0, #0xf8
	bl sub_080A3268
_0804AD12:
	pop {pc}
	.align 2, 0
_0804AD14: .4byte gRoomControls

	thumb_func_start sub_0804AD18
sub_0804AD18: @ 0x0804AD18
	push {lr}
	ldr r0, _0804AD30 @ =gUnk_02033A90
	ldrb r1, [r0, #0x17]
	adds r2, r0, #0
	cmp r1, #6
	bhi _0804AD66
	lsls r0, r1, #2
	ldr r1, _0804AD34 @ =_0804AD38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804AD30: .4byte gUnk_02033A90
_0804AD34: .4byte _0804AD38
_0804AD38: @ jump table
	.4byte _0804AD54 @ case 0
	.4byte _0804AD54 @ case 1
	.4byte _0804AD54 @ case 2
	.4byte _0804AD66 @ case 3
	.4byte _0804AD66 @ case 4
	.4byte _0804AD66 @ case 5
	.4byte _0804AD62 @ case 6
_0804AD54:
	ldrb r0, [r2, #0x17]
	adds r0, #0x5e
	bl GetProgressFlag
	adds r1, r0, #0
	cmp r1, #0
	bne _0804AD68
_0804AD62:
	movs r0, #0
	b _0804AD68
_0804AD66:
	movs r0, #0
_0804AD68:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804AD6C
sub_0804AD6C: @ 0x0804AD6C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _0804ADD0 @ =gUnk_030010A0
	movs r1, #0
	movs r6, #1
	strb r6, [r3, #8]
	strb r1, [r3, #9]
	ldr r4, _0804ADD4 @ =gUnk_02033A90
	ldr r5, _0804ADD8 @ =gUnk_080D4140
	ldrb r1, [r4, #0x16]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r1, [r1]
	ldrh r2, [r4, #0x12]
	adds r1, r1, r2
	ldrh r2, [r0, #6]
	subs r1, r1, r2
	movs r2, #0
	mov r8, r2
	strh r1, [r3, #0x10]
	ldrb r1, [r4, #0x16]
	lsls r1, r1, #1
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	ldrh r2, [r4, #0x14]
	adds r1, r1, r2
	ldrh r2, [r0, #8]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	ldrb r1, [r4, #0x16]
	lsls r1, r1, #1
	strb r1, [r3, #0xe]
	strb r6, [r3, #0xf]
	ldrb r1, [r0, #4]
	strb r1, [r3, #0xc]
	ldrb r0, [r0, #5]
	strb r0, [r3, #0xd]
	mov r0, r8
	strb r0, [r3, #0x14]
	bl sub_080300AC
	bl sub_080300C4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_0804ADD0: .4byte gUnk_030010A0
_0804ADD4: .4byte gUnk_02033A90
_0804ADD8: .4byte gUnk_080D4140
