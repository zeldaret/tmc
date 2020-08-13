	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0804AB70
sub_0804AB70: @ 0x0804AB70
	push {r4, r5, lr}
	movs r0, #0
	bl sub_0801DA90
	ldr r1, _0804ABF8 @ =gScreen
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
	ldr r0, _0804AC04 @ =gArea
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
	bl LoadPaletteGroup
	ldrb r0, [r4, #1]
	bl LoadGfxGroup
	ldr r0, _0804AC10 @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _0804AC14 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	bl EraseAllEntities
	ldr r1, _0804AC18 @ =gUnk_080D4110
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl LoadRoomEntityList
	bl sub_0805E5B4
	ldr r1, _0804AC04 @ =gArea
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r4, r5, pc}
	.align 2, 0
_0804ABF8: .4byte gScreen
_0804ABFC: .4byte 0x00009E83
_0804AC00: .4byte gRoomControls
_0804AC04: .4byte gArea
_0804AC08: .4byte gUnk_02032EC0
_0804AC0C: .4byte gUnk_080D4138
_0804AC10: .4byte gUnk_02017700
_0804AC14: .4byte gUsedPalettes
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
	ldr r2, _0804ACA0 @ =gScreen
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
	ldr r1, _0804ACA4 @ =gArea
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #7
	movs r1, #0x10
	bl DoFade
_0804AC96:
	pop {r4, pc}
	.align 2, 0
_0804AC98: .4byte gUnk_02018EB0
_0804AC9C: .4byte gRoomControls
_0804ACA0: .4byte gScreen
_0804ACA4: .4byte gArea

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
	ldr r0, _0804ACF0 @ =gArea
	ldrb r0, [r0, #0x17]
	adds r0, #0x5e
	bl SetGlobalFlag
	ldr r0, _0804ACF4 @ =gUnk_02032EDC
	bl sub_0804AD6C
	movs r0, #0
	bl sub_080A71F4
_0804ACE8:
	pop {pc}
	.align 2, 0
_0804ACEC: .4byte gUnk_03000FD0
_0804ACF0: .4byte gArea
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
	bl PlaySFX
_0804AD12:
	pop {pc}
	.align 2, 0
_0804AD14: .4byte gRoomControls

	thumb_func_start sub_0804AD18
sub_0804AD18: @ 0x0804AD18
	push {lr}
	ldr r0, _0804AD30 @ =gArea
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
_0804AD30: .4byte gArea
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
	bl CheckGlobalFlag
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
	ldr r3, _0804ADD0 @ =gScreenTransition
	movs r1, #0
	movs r6, #1
	strb r6, [r3, #8]
	strb r1, [r3, #9]
	ldr r4, _0804ADD4 @ =gArea
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
_0804ADD0: .4byte gScreenTransition
_0804ADD4: .4byte gArea
_0804ADD8: .4byte gUnk_080D4140
