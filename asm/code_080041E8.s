	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	
	.text
	
	thumb_func_start sub_080041E8
sub_080041E8: @ 0x080041E8
	subs r0, r0, r2
	subs r1, r1, r3

	thumb_func_start sub_080041EC
sub_080041EC: @ 0x080041EC
	adds r2, r0, #0
	muls r0, r2, r0
	adds r3, r1, #0
	muls r1, r3, r1
	push {lr}
	adds r0, r0, r1
	lsls r0, r0, #8
	bl Sqrt
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_08004202
sub_08004202: @ 0x08004202
	push {r1, lr}
	ldrb r1, [r0, #0x14]
	bl sub_08004212
	pop {r0}
	str r1, [r0]
	adds r0, r2, #0
	pop {pc}

	non_word_aligned_thumb_func_start sub_08004212
sub_08004212: @ 0x08004212
	push {r4}
	adds r4, r1, #0
	movs r3, #3
	tst r4, r3
	beq _08004226
	movs r3, #2
	lsrs r4, r4, #3
	blo _08004224
	rsbs r3, r3, #0
_08004224:
	adds r2, r2, r3
_08004226:
	adds r4, r1, #0
	movs r3, #3
	ands r4, r3
	cmp r4, #2
	beq _0800423C
	movs r3, #0x80
	adds r1, #1
	lsrs r1, r1, #3
	bhs _0800423A
	rsbs r3, r3, #0
_0800423A:
	adds r2, r2, r3
_0800423C:
	ldr r3, _08004390 @ =0x00001FFF
	ands r2, r3
	movs r4, #0x38
	ldrb r4, [r0, r4]
	lsls r4, r4, #3
	ldr r3, _08004394 @ =gUnk_08000228
	adds r3, r3, r4
	ldr r4, [r3]
	ldrh r1, [r4, r2]
	ldr r4, _08004398 @ =0x00004000
	tst r1, r4
	bne _0800425C
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x10
	ldr r4, [r3, #4]
	ldrh r1, [r4, r1]
_0800425C:
	pop {r4}
	bx lr

	thumb_func_start InitializeAnimation
InitializeAnimation: @ 0x08004260
	movs r2, #0x58
	strb r1, [r0, r2]
	ldrh r3, [r0, #0x12]
	lsls r3, r3, #4
	ldr r2, _0800439C @ =gUnk_080029B4
	ldr r2, [r2, r3]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [r0, #0x5c]
	b _0800432A

	thumb_func_start GetNextFrame
GetNextFrame: @ 0x08004274
	movs r1, #1

	non_word_aligned_thumb_func_start UpdateAnimationVariableFrames
UpdateAnimationVariableFrames: @ 0x08004276
	movs r3, #0x59
	ldrb r2, [r0, r3]
	subs r2, r2, r1
	beq _0800432A
	ble _08004284
	strb r2, [r0, r3]
	bx lr
_08004284:
	ldr r1, [r0, #0x5c]
_08004286:
	ldrb r3, [r1, #1]
	adds r2, r2, r3
	bgt _0800429C
	ldrb r3, [r1, #3]
	adds r1, #4
	lsrs r3, r3, #8
	blo _08004286
	ldrb r3, [r1]
	lsls r3, r3, #2
	subs r1, r1, r3
	b _08004286
_0800429C:
	str r1, [r0, #0x5c]
	push {r2, lr}
	bl _0800432A
	pop {r2, r3}
	movs r1, #0x59
	strb r2, [r0, r1]
	bx r3

	thumb_func_start InitAnimationForceUpdate
InitAnimationForceUpdate: @ 0x080042AC
	push {lr}
	bl InitializeAnimation
	movs r2, #0xff
	strb r2, [r0, #0x1f]
	b _080042C0

	thumb_func_start UpdateAnimationSingleFrame
UpdateAnimationSingleFrame: @ 0x080042B8
	movs r1, #1

	non_word_aligned_thumb_func_start sub_080042BA
sub_080042BA: @ 0x080042BA
	push {lr}
	bl UpdateAnimationVariableFrames
_080042C0:
	pop {r1}
	mov lr, r1
	ldrb r1, [r0, #0x1e]
	ldrb r3, [r0, #0x1f]
	strb r1, [r0, #0x1f]
	cmp r1, r3
	beq _08004328
	ldrh r2, [r0, #0x12]

	thumb_func_start sub_080042D0
sub_080042D0: @ 0x080042D0
	cmp r1, #0xff
	beq _08004328
	lsls r2, r2, #4
	lsls r3, r1, #2
	ldr r1, _080043A0 @ =gUnk_080029B4
	adds r1, r1, r2
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _08004328
	ldr r1, [r1, #8]
	adds r2, r2, r3
	ldrb r3, [r2]
	cmp r3, #0
	beq _08004328
	push {r4, r5}
	movs r3, #0x26
	ldrb r3, [r0, r3]
	movs r4, #0xc
	muls r3, r4, r3
	ldr r4, _080043A4 @ =gUnk_02024494
	adds r4, r4, r3
	ldrb r3, [r4]
	movs r5, #0xf
	ands r3, r5
	cmp r3, #5
	blo _08004326
	ldrb r5, [r4, #6]
	ldrb r3, [r2]
	strb r3, [r4, #6]
	subs r5, r5, r3
	ldrh r3, [r2, #2]
	lsls r3, r3, #5
	adds r1, r1, r3
	ldr r2, [r4, #8]
	str r1, [r4, #8]
	subs r2, r2, r1
	orrs r5, r2
	beq _08004326
	movs r2, #0xf0
	ldrb r1, [r4]
	bics r1, r2
	adds r1, #0x30
	strb r1, [r4]
_08004326:
	pop {r4, r5}
_08004328:
	bx lr
_0800432A:
	ldrb r3, [r0, #0x1e]
	strb r3, [r0, #0x1f]
	ldr r1, [r0, #0x5c]
	ldrb r3, [r1]
	strb r3, [r0, #0x1e]
	ldrb r3, [r1, #1]
	movs r2, #0x59
	strb r3, [r0, r2]
	ldrb r3, [r1, #2]
	movs r2, #0x5b
	strb r3, [r0, r2]
	ldrb r3, [r1, #3]
	movs r2, #0x5a
	strb r3, [r0, r2]
	adds r1, #4
	lsrs r3, r3, #8
	blo _08004352
	ldrb r3, [r1]
	lsls r3, r3, #2
	subs r1, r1, r3
_08004352:
	str r1, [r0, #0x5c]
	bx lr
	.align 2, 0
_08004358: .4byte gUnk_081326EC
_0800435C: .4byte gUnk_02024048
_08004360: .4byte gUnk_02021F20
_08004364: .4byte gUnk_02024048
_08004368: .4byte gRoomControls
_0800436C: .4byte 0x0000016E
_08004370: .4byte 0x0000011E
_08004374: .4byte gUnk_03000BF6
_08004378: .4byte gUnk_03000BF8
_0800437C: .4byte 0x000003F0
_08004380: .4byte gUnk_08000248
_08004384: .4byte 0x000FFFFF
_08004388: .4byte 0x00080000
_0800438C: .4byte 0x0000EE00
_08004390: .4byte 0x00001FFF
_08004394: .4byte gUnk_08000228
_08004398: .4byte 0x00004000
_0800439C: .4byte gUnk_080029B4
_080043A0: .4byte gUnk_080029B4
_080043A4: .4byte gUnk_02024494

	thumb_func_start sub_080043A8
sub_080043A8: @ 0x080043A8
	movs r1, #0xb
	b _080043B6

	thumb_func_start sub_080043AC
sub_080043AC: @ 0x080043AC
	movs r1, #0xc
	b _080043B6

	thumb_func_start sub_080043B0
sub_080043B0: @ 0x080043AC
	movs r1, #0x52
	b _080043B6

	thumb_func_start sub_080043B4
sub_080043B4: @ 0x080043B4
	movs r1, #0
_080043B6:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _080043E0
	movs r1, #0x48
	ldr r1, [r4, r1]
	ldrh r3, [r4, #0x2e]
	strh r3, [r0, #0x2e]
	ldrh r3, [r4, #0x32]
	strh r3, [r0, #0x32]
	ldrh r3, [r4, #0x36]
	strh r3, [r0, #0x36]
	ldrb r3, [r4, #8]
	cmp r3, #3
	bne _080043E0
	movs r1, #1
	strb r1, [r0, #0xb]
_080043E0:
	adds r0, r4, #0
	bl DeleteEntity
	pop {r4, pc}
