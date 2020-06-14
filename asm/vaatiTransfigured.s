	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803F770
sub_0803F770: @ 0x0803F770
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bhi _0803F810
	lsls r0, r0, #2
	ldr r1, _0803F784 @ =_0803F788
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F784: .4byte _0803F788
_0803F788: @ jump table
	.4byte _0803F7A0 @ case 0
	.4byte _0803F7D0 @ case 1
	.4byte _0803F7D8 @ case 2
	.4byte _0803F7E0 @ case 3
	.4byte _0803F7E8 @ case 4
	.4byte _0803F800 @ case 5
_0803F7A0:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0803F7C8
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x7a
	strh r0, [r2]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	adds r2, #4
	strh r0, [r2]
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080409B0
_0803F7C8:
	ldr r0, _0803F7CC @ =gUnk_080D0AC8
	b _0803F7EA
	.align 2, 0
_0803F7CC: .4byte gUnk_080D0AC8
_0803F7D0:
	ldr r0, _0803F7D4 @ =gUnk_080D0AE8
	b _0803F7EA
	.align 2, 0
_0803F7D4: .4byte gUnk_080D0AE8
_0803F7D8:
	ldr r0, _0803F7DC @ =gUnk_080D0AF0
	b _0803F7EA
	.align 2, 0
_0803F7DC: .4byte gUnk_080D0AF0
_0803F7E0:
	ldr r0, _0803F7E4 @ =gUnk_080D0AFC
	b _0803F7EA
	.align 2, 0
_0803F7E4: .4byte gUnk_080D0AFC
_0803F7E8:
	ldr r0, _0803F7FC @ =gUnk_080D0B04
_0803F7EA:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0803F810
	.align 2, 0
_0803F7FC: .4byte gUnk_080D0B04
_0803F800:
	ldr r0, _0803F814 @ =gUnk_080D0B0C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803F810:
	pop {r4, pc}
	.align 2, 0
_0803F814: .4byte gUnk_080D0B0C

	thumb_func_start sub_0803F818
sub_0803F818: @ 0x0803F818
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _0803F910
	ldr r0, _0803F8FC @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x50
	bhi _0803F910
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r3, r5, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	orrs r2, r0
	strb r2, [r1]
	bl Random
	movs r1, #0x17
	ands r0, r1
	adds r0, #4
	strb r0, [r5, #0x15]
	movs r0, #0x30
	strb r0, [r5, #0xe]
	movs r0, #0xc
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #4
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x74
	strb r4, [r0]
	adds r0, #3
	strb r4, [r0]
	adds r1, #4
	movs r0, #9
	strb r0, [r1]
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x86
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldrh r1, [r5, #0x2e]
	subs r0, #0xf
	strh r1, [r0]
	ldrh r0, [r5, #0x2e]
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x7c
	strh r1, [r0]
	ldrh r0, [r5, #0x32]
	adds r1, r5, #0
	adds r1, #0x7e
	strh r0, [r1]
	movs r4, #1
	adds r7, r5, #0
	adds r7, #0x75
_0803F8C2:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08040648
	adds r4, #1
	cmp r4, #5
	bls _0803F8C2
	bl Random
	adds r0, r5, #0
	bl sub_080408EC
	movs r4, #0
	movs r6, #1
_0803F8E0:
	movs r0, #0x5a
	movs r1, #0
	bl CreateEnemy
	str r5, [r0, #0x50]
	strb r4, [r0, #0xb]
	ldrb r1, [r7]
	asrs r1, r4
	ands r1, r6
	cmp r1, #0
	beq _0803F900
	strb r6, [r0, #0xe]
	b _0803F902
	.align 2, 0
_0803F8FC: .4byte gUnk_03003DBC
_0803F900:
	strb r1, [r0, #0xe]
_0803F902:
	adds r4, #1
	cmp r4, #7
	bls _0803F8E0
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0803F910:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803F914
sub_0803F914: @ 0x0803F914
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0x80
	ldrb r0, [r4]
	cmp r0, #2
	beq _0803F998
	cmp r0, #2
	bgt _0803F932
	cmp r0, #0
	beq _0803F95A
	cmp r0, #1
	beq _0803F97A
	b _0803FA40
_0803F932:
	cmp r0, #4
	bne _0803F938
	b _0803FA3A
_0803F938:
	cmp r0, #4
	blt _0803F9CE
	adds r3, r4, #0
	cmp r0, #0xff
	beq _0803F944
	b _0803FA42
_0803F944:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803FA42
	strb r0, [r3]
	movs r0, #0xb
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F95A:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	adds r3, r4, #0
	cmp r0, #0
	bne _0803FA42
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x24]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F97A:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	adds r3, r4, #0
	cmp r0, #0
	bne _0803FA42
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0xc0
	strh r0, [r7, #0x24]
	movs r0, #0xc
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F998:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, r4, #0
	cmp r1, #0
	bne _0803FA42
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	strh r1, [r7, #0x24]
	ldrb r0, [r7, #0x14]
	cmp r0, #1
	bhi _0803F9C8
	str r3, [sp]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r7, #0xe]
	ldr r3, [sp]
	b _0803FA42
_0803F9C8:
	movs r0, #8
	strb r0, [r7, #0xe]
	b _0803FA42
_0803F9CE:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FA32
	movs r0, #0
	strh r1, [r7, #0x36]
	strb r0, [r4]
	ldr r1, _0803FA04 @ =gUnk_080D0ABF
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #0xe]
	adds r0, r7, #0
	bl sub_08040934
	adds r1, r0, #0
	cmp r1, #2
	beq _0803FA1A
	cmp r1, #2
	bhi _0803FA08
	cmp r1, #1
	beq _0803FA0E
	b _0803FA26
	.align 2, 0
_0803FA04: .4byte gUnk_080D0ABF
_0803FA08:
	cmp r1, #3
	beq _0803FA20
	b _0803FA26
_0803FA0E:
	movs r0, #4
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x74
	strb r1, [r0]
	b _0803FA40
_0803FA1A:
	movs r0, #5
	strb r0, [r7, #0xc]
	b _0803FA40
_0803FA20:
	movs r0, #6
	strb r0, [r7, #0xc]
	b _0803FA40
_0803FA26:
	adds r1, r7, #0
	adds r1, #0x80
	movs r0, #4
	strb r0, [r1]
	adds r3, r1, #0
	b _0803FA42
_0803FA32:
	adds r0, r7, #0
	bl sub_08040AD4
	b _0803FA40
_0803FA3A:
	adds r0, r7, #0
	bl sub_08040670
_0803FA40:
	adds r3, r4, #0
_0803FA42:
	adds r1, r7, #0
	adds r1, #0x82
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803FAAC
	movs r0, #4
	strb r0, [r1]
	ldrb r2, [r7, #0x15]
	adds r2, #0x12
	movs r0, #0x1c
	ands r2, r0
	asrs r2, r2, #2
	movs r0, #0x9b
	movs r1, #0
	str r3, [sp]
	bl CreateObject
	adds r6, r0, #0
	ldr r3, [sp]
	cmp r6, #0
	beq _0803FAAC
	str r7, [r6, #0x50]
	str r3, [sp]
	bl Random
	movs r5, #0xf
	ands r0, r5
	ldr r1, _0803FAC4 @ =0x0000FFF9
	adds r4, r1, #0
	adds r0, r4, r0
	ldrh r1, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	bl Random
	ands r0, r5
	adds r4, r4, r0
	ldrh r0, [r6, #0x32]
	adds r4, r4, r0
	strh r4, [r6, #0x32]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [sp]
_0803FAAC:
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0803FAB8
	adds r0, r7, #0
	bl sub_080AEF88
_0803FAB8:
	adds r0, r7, #0
	bl UpdateAnimationSingleFrame
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0803FAC4: .4byte 0x0000FFF9

	thumb_func_start sub_0803FAC8
sub_0803FAC8: @ 0x0803FAC8
	push {lr}
	bl UpdateAnimationSingleFrame
	pop {pc}

	thumb_func_start sub_0803FAD0
sub_0803FAD0: @ 0x0803FAD0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #5
	bls _0803FADE
	b _0803FD32
_0803FADE:
	lsls r0, r0, #2
	ldr r1, _0803FAE8 @ =_0803FAEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803FAE8: .4byte _0803FAEC
_0803FAEC: @ jump table
	.4byte _0803FB04 @ case 0
	.4byte _0803FB34 @ case 1
	.4byte _0803FBB8 @ case 2
	.4byte _0803FBE2 @ case 3
	.4byte _0803FC80 @ case 4
	.4byte _0803FD0C @ case 5
_0803FB04:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r7, #0
	bl sub_080044EC
	adds r1, r0, #0
	cmp r1, #1
	beq _0803FB16
	b _0803FD32
_0803FB16:
	adds r0, r7, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0xc0
	strb r0, [r7, #0xe]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x14
	b _0803FC4A
_0803FB34:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r7, #0
	adds r3, #0x80
	cmp r2, #0
	bne _0803FB58
	movs r0, #2
	strb r0, [r3]
	adds r1, r7, #0
	adds r1, #0x3f
	movs r0, #0x35
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x62
	strb r2, [r0]
_0803FB58:
	adds r2, r7, #0
	adds r2, #0x45
	ldr r0, _0803FB70 @ =gUnk_080D0ABC
	ldrb r1, [r7, #0x14]
	adds r1, r1, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0803FB74
	movs r0, #1
	strb r0, [r7, #0xe]
	b _0803FB76
	.align 2, 0
_0803FB70: .4byte gUnk_080D0ABC
_0803FB74:
	movs r0, #0
_0803FB76:
	cmp r0, #0
	bne _0803FB7C
	b _0803FD32
_0803FB7C:
	movs r1, #0
	movs r0, #2
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x3f
	movs r0, #0x35
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x62
	strb r1, [r0]
	ldrb r0, [r7, #0x14]
	adds r0, #1
	strb r0, [r7, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803FBA0
	b _0803FD32
_0803FBA0:
	movs r0, #7
	strb r0, [r7, #0xc]
	movs r0, #0xe0
	strb r0, [r7, #0xe]
	bl sub_0807A108
	ldr r0, _0803FBB4 @ =0x00000127
	bl PlaySFX
	b _0803FD4E
	.align 2, 0
_0803FBB4: .4byte 0x00000127
_0803FBB8:
	ldr r0, [r7, #0x54]
	adds r0, #0x74
	movs r1, #0x10
	strb r1, [r0]
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0803FBD4
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #3
	strb r1, [r0]
	movs r0, #0x40
	strb r0, [r7, #0xe]
	b _0803FD32
_0803FBD4:
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #4
	strb r1, [r0]
	movs r0, #0x50
	strb r0, [r7, #0xe]
	b _0803FD32
_0803FBE2:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _0803FC08
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803FBF4
	b _0803FD32
_0803FBF4:
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #0xa
	str r0, [r7, #0x20]
	movs r0, #0x10
	strb r0, [r7, #0xf]
	b _0803FD32
_0803FC08:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r7, #0
	bl sub_08003FC4
	adds r2, r0, #0
	cmp r2, #0
	bne _0803FC52
	adds r1, r7, #0
	adds r1, #0x80
	movs r0, #5
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r7, #0xe]
	ldrb r1, [r7, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r7, #0
	bl sub_080408EC
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x1e
_0803FC4A:
	movs r1, #4
	bl sub_08080964
	b _0803FD32
_0803FC52:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _0803FD32
	subs r1, r0, #1
	strb r1, [r7, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FC6C
	movs r0, #0xd8
	lsls r0, r0, #1
	bl PlaySFX
	b _0803FD32
_0803FC6C:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FD32
	ldr r0, _0803FC7C @ =0x00000149
	bl PlaySFX
	b _0803FD32
	.align 2, 0
_0803FC7C: .4byte 0x00000149
_0803FC80:
	ldrb r0, [r7, #0xe]
	subs r1, r0, #1
	strb r1, [r7, #0xe]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0803FCA8
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #5
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r7, #0xe]
	adds r0, r7, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r0, r7, #0
	bl sub_080408EC
	b _0803FD32
_0803FCA8:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803FD32
	movs r0, #0x9b
	movs r1, #1
	movs r2, #0xff
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _0803FD32
	str r7, [r6, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	bl CopyPosition
	bl Random
	movs r5, #0xf
	ands r0, r5
	ldr r1, _0803FD08 @ =0x0000FFF9
	adds r4, r1, #0
	adds r0, r4, r0
	ldrh r1, [r6, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	bl Random
	ands r0, r5
	adds r4, r4, r0
	ldrh r0, [r6, #0x32]
	adds r4, r4, r0
	strh r4, [r6, #0x32]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
	b _0803FD32
	.align 2, 0
_0803FD08: .4byte 0x0000FFF9
_0803FD0C:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FD32
	movs r0, #1
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0xb
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_08040670
_0803FD32:
	adds r0, r7, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bls _0803FD48
	ldrb r1, [r7, #0xe]
	movs r0, #1
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x62
	strb r0, [r1]
_0803FD48:
	adds r0, r7, #0
	bl UpdateAnimationSingleFrame
_0803FD4E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803FD50
sub_0803FD50: @ 0x0803FD50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #1
	beq _0803FDA8
	cmp r0, #1
	bgt _0803FD68
	cmp r0, #0
	beq _0803FD72
	b _0803FE86
_0803FD68:
	cmp r0, #2
	beq _0803FE0C
	cmp r0, #3
	beq _0803FE62
	b _0803FE86
_0803FD72:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0803FD82
	b _0803FE86
_0803FD82:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r0, _0803FDA4 @ =0x0000012B
	bl PlaySFX
	b _0803FE86
	.align 2, 0
_0803FDA4: .4byte 0x0000012B
_0803FDA8:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0803FE86
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803FDD8
	cmp r0, #1
	bgt _0803FDD0
	cmp r0, #0
	beq _0803FDDE
	b _0803FDE4
_0803FDD0:
	cmp r0, #2
	beq _0803FDDE
	cmp r0, #3
	bne _0803FDE4
_0803FDD8:
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0803FDF0
_0803FDDE:
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803FDF0
_0803FDE4:
	bl Random
	movs r1, #0x20
	ands r1, r0
	lsrs r1, r1, #5
	strb r1, [r4, #0xf]
_0803FDF0:
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _0803FDFA
	movs r0, #1
	strb r0, [r4, #0xf]
_0803FDFA:
	movs r0, #0xa6
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #0x1e
	movs r1, #4
	bl sub_08080964
	b _0803FE86
_0803FE0C:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FE34
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, _0803FE30 @ =gUnk_080D0ABF
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	b _0803FE86
	.align 2, 0
_0803FE30: .4byte gUnk_080D0ABF
_0803FE34:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FE46
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0804A98C
_0803FE46:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803FE86
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _0803FE86
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _0803FE86
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803FE86
_0803FE62:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FE80
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r5]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08040670
	b _0803FE86
_0803FE80:
	adds r0, r4, #0
	bl sub_08040AD4
_0803FE86:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803FE90
sub_0803FE90: @ 0x0803FE90
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x80
	ldrb r2, [r3]
	cmp r2, #1
	beq _0803FED4
	cmp r2, #1
	bgt _0803FEA8
	cmp r2, #0
	beq _0803FEAE
	b _0803FF74
_0803FEA8:
	cmp r2, #2
	beq _0803FF52
	b _0803FF74
_0803FEAE:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803FF74
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _0803FF74
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	b _0803FF74
_0803FED4:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FEFC
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r1, _0803FEF8 @ =gUnk_080D0ABF
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	orrs r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	b _0803FF74
	.align 2, 0
_0803FEF8: .4byte gUnk_080D0ABF
_0803FEFC:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0803FF24
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FF14
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0804A98C
_0803FF14:
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _0803FF74
	movs r0, #0x40
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _0803FF74
_0803FF24:
	movs r5, #0xf
	ands r5, r1
	cmp r5, #0
	bne _0803FF74
	adds r0, r4, #0
	movs r1, #0x1f
	movs r2, #2
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0803FF74
	strb r5, [r1, #0xb]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FF74
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x24]
	b _0803FF74
_0803FF52:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803FF6E
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r3]
	adds r0, r4, #0
	bl sub_08040670
	b _0803FF74
_0803FF6E:
	adds r0, r4, #0
	bl sub_08040AD4
_0803FF74:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}

	thumb_func_start sub_0803FF7C
sub_0803FF7C: @ 0x0803FF7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r5, [r2]
	cmp r5, #1
	beq _0803FFBC
	cmp r5, #1
	bgt _0803FF94
	cmp r5, #0
	beq _0803FF9A
	b _08040062
_0803FF94:
	cmp r5, #2
	beq _08040040
	b _08040062
_0803FF9A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040062
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bls _08040062
	movs r0, #1
	strb r0, [r4, #0xf]
	b _08040062
_0803FFBC:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803FFE4
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r1, _0803FFE0 @ =gUnk_080D0ABF
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	orrs r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	b _08040062
	.align 2, 0
_0803FFE0: .4byte gUnk_080D0ABF
_0803FFE4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0804000C
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803FFFC
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_0804A98C
_0803FFFC:
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08040062
	movs r0, #0x80
	strb r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040062
_0804000C:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _08040062
	adds r0, r4, #0
	movs r1, #0x1f
	movs r2, #2
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08040062
	strb r5, [r1, #0xb]
	ldrh r0, [r1, #0x32]
	subs r0, #0x20
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040062
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x24]
	b _08040062
_08040040:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0804005C
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_08040670
	b _08040062
_0804005C:
	adds r0, r4, #0
	bl sub_08040AD4
_08040062:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804006C
sub_0804006C: @ 0x0804006C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08078B48
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08040090
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080400C2
	movs r0, #2
	bl SetRoomFlag
	movs r0, #8
	strb r0, [r4, #0xf]
	b _080400BA
_08040090:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080400B4
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080400BA
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080400BA
_080400B4:
	adds r0, r4, #0
	bl sub_0804A7D4
_080400BA:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _08040126
_080400C2:
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xf]
	cmp r0, #0
	bne _08040120
	adds r0, r4, #0
	movs r1, #0x55
	movs r2, #0
	bl CreateFx
	adds r5, r0, #0
	cmp r5, #0
	beq _08040120
	bl Random
	ldr r1, _08040128 @ =0x00003F3F
	ands r0, r1
	movs r3, #0xff
	adds r1, r0, #0
	ands r1, r3
	ldr r6, _0804012C @ =0x0000FFE0
	adds r2, r6, #0
	adds r1, r2, r1
	ldrh r6, [r5, #0x2e]
	adds r1, r1, r6
	strh r1, [r5, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r5, #0x32]
	adds r2, r2, r0
	strh r2, [r5, #0x32]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
_08040120:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08040126:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08040128: .4byte 0x00003F3F
_0804012C: .4byte 0x0000FFE0

	thumb_func_start sub_08040130
sub_08040130: @ 0x08040130
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xe]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #6
	orrs r1, r2
	strb r1, [r3]
	ldrb r1, [r0, #0xe]
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804015C
sub_0804015C: @ 0x0804015C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804017C
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_0804017C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804019E
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _080401A6
_0804019E:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
_080401A6:
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bls _080401C0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080401D2
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _080401D2
_080401C0:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080401D2
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_080401D2:
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _080401DC
	ldrh r0, [r5, #0x36]
	strh r0, [r4, #0x36]
_080401DC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080401E0
sub_080401E0: @ 0x080401E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	adds r5, r1, #0
	cmp r5, #0
	beq _08040212
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, #1
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0xb]
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _08040260
_08040212:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08040264 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _08040260
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_08040648
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	bl sub_08040648
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xe]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x17
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_08040260:
	pop {r4, r5, pc}
	.align 2, 0
_08040264: .4byte gUnk_03003DBC

	thumb_func_start sub_08040268
sub_08040268: @ 0x08040268
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040286
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_08040286:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r2, [r4, #0xb]
	cmp r2, #1
	beq _080402C6
	cmp r2, #1
	bgt _0804029E
	cmp r2, #0
	beq _080402E4
	b _08040382
_0804029E:
	cmp r2, #2
	bne _08040382
	ldr r1, _080402DC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	lsls r0, r0, #1
	ldr r1, _080402E0 @ =gUnk_080D0B18
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r2, [r4, #0x2e]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_080402C6:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x1e]
	cmp r0, #2
	beq _08040382
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08040382
	.align 2, 0
_080402DC: .4byte gLinkEntity
_080402E0: .4byte gUnk_080D0B18
_080402E4:
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r0, [r5]
	cmp r0, #1
	beq _0804032E
	cmp r0, #1
	bgt _080402F8
	cmp r0, #0
	beq _08040302
	b _08040382
_080402F8:
	cmp r0, #0x10
	beq _08040354
	cmp r0, #0x11
	beq _08040366
	b _08040382
_08040302:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040382
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x27
	strb r0, [r4, #0xf]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08040382
	strb r1, [r5]
	adds r0, r4, #0
	movs r1, #8
	bl InitAnimationForceUpdate
	b _08040382
_0804032E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040382
	strb r2, [r5]
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x17
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _08040382
_08040354:
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	movs r0, #0x11
	strb r0, [r5]
	movs r0, #0x50
	strb r0, [r4, #0xf]
	b _08040382
_08040366:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040382
	movs r0, #1
	strb r0, [r5]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #8
	bl InitAnimationForceUpdate
_08040382:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0804038C
sub_0804038C: @ 0x0804038C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080403AA
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_080403AA:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x1e]
	cmp r0, #2
	bne _080403CA
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
_080403CA:
	pop {r4, pc}

	thumb_func_start sub_080403CC
sub_080403CC: @ 0x080403CC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	subs r1, #9
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080403EC
sub_080403EC: @ 0x080403EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804040A
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_0804040A:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804041C
sub_0804041C: @ 0x0804041C
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x80
	strb r2, [r1]
	movs r1, #0xa
	strb r1, [r0, #0xe]
	ldrb r2, [r0, #0x18]
	subs r1, #0xe
	ands r1, r2
	strb r1, [r0, #0x18]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804044C
sub_0804044C: @ 0x0804044C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804046A
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_0804046A:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	beq _0804048A
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _080404BC
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080404BC
_0804048A:
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	bne _080404A6
	adds r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_080404A6:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080404BC
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r0, _080404CC @ =0x00000149
	bl PlaySFX
_080404BC:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080404CC: .4byte 0x00000149

	thumb_func_start sub_080404D0
sub_080404D0: @ 0x080404D0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _080404FC
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #0xa
	strb r0, [r2, #0xe]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x12
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	movs r1, #2
	bl InitializeAnimation
	b _08040518
_080404FC:
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08040518:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804051C
sub_0804051C: @ 0x0804051C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804053A
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_0804053A:
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804054A
	cmp r0, #1
	beq _0804056C
	b _080405C4
_0804054A:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	bne _080405CC
	movs r0, #1
	movs r2, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _080405C4
_0804056C:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	beq _08040582
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080405C4
_08040582:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080405A8
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080405D0 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x46
	bhi _080405A8
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08040648
_080405A8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080405BE
	movs r0, #0xa
	strb r0, [r4, #0xe]
	ldr r0, _080405D4 @ =0x00000149
	bl PlaySFX
_080405BE:
	adds r0, r4, #0
	bl sub_08004274
_080405C4:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080405CC:
	pop {r4, pc}
	.align 2, 0
_080405D0: .4byte gUnk_03003DBC
_080405D4: .4byte 0x00000149

	thumb_func_start sub_080405D8
sub_080405D8: @ 0x080405D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080405F6
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bl DeleteThisEntity
_080405F6:
	adds r3, r4, #0
	adds r3, #0x80
	ldrb r2, [r3]
	cmp r2, #0
	bne _08040626
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #6
	beq _08040638
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040638
	adds r0, r2, #1
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	b _08040638
_08040626:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040638
	bl DeleteThisEntity
_08040638:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_08040648
sub_08040648: @ 0x08040648
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r0, #0x4f
	bl CreateEnemy
	adds r5, r0, #0
	strb r7, [r5, #0xb]
	str r6, [r5, #0x50]
	adds r0, r6, #0
	adds r1, r5, #0
	bl CopyPosition
	cmp r4, #2
	bne _0804066E
	cmp r7, #0
	bne _0804066E
	str r5, [r6, #0x54]
_0804066E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08040670
sub_08040670: @ 0x08040670
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
	movs r0, #0xc
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08040698
	adds r0, r2, #0
	bl sub_080406A0
	b _0804069E
_08040698:
	adds r0, r2, #0
	bl sub_08040770
_0804069E:
	pop {pc}

	thumb_func_start sub_080406A0
sub_080406A0: @ 0x080406A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl Random
	mov r8, r0
	movs r0, #0x30
	mov r1, r8
	ands r1, r0
	mov r8, r1
	adds r0, r5, #0
	adds r0, #0x86
	ldrb r6, [r0]
	ldr r2, _080406F0 @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _080406F4 @ =gUnk_080D0B58
	lsls r1, r6, #1
	lsls r0, r6, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r7, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0x1c
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804071E
	cmp r6, #0
	beq _080406F8
	movs r6, #0
	b _08040702
	.align 2, 0
_080406F0: .4byte gRoomControls
_080406F4: .4byte gUnk_080D0B58
_080406F8:
	bl Random
	movs r1, #1
	ands r1, r0
	adds r6, r1, #1
_08040702:
	ldr r2, _0804074C @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _08040750 @ =gUnk_080D0B58
	lsls r1, r6, #1
	lsls r0, r6, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r7, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
_0804071E:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080045D4
	strb r0, [r5, #0x15]
	movs r0, #0x20
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804075A
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	beq _08040754
	adds r0, r1, #1
	b _08040758
	.align 2, 0
_0804074C: .4byte gRoomControls
_08040750: .4byte gUnk_080D0B58
_08040754:
	adds r0, r1, #0
	adds r0, #0x1f
_08040758:
	strb r0, [r5, #0x15]
_0804075A:
	ldrb r0, [r5, #0x15]
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x86
	strb r6, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08040770
sub_08040770: @ 0x08040770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl Random
	mov r8, r0
	movs r0, #0x38
	mov r1, r8
	ands r1, r0
	mov r8, r1
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r5, [r0]
	ldr r2, _080407CC @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _080407D0 @ =gUnk_080D0B64
	lsls r1, r5, #1
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r6, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0x1c
	bl sub_0806FCB8
	cmp r0, #0
	beq _0804089A
	ldrb r0, [r7, #0x14]
	cmp r0, #2
	beq _08040822
	movs r0, #8
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _080407D4
	adds r5, #1
	b _080407D6
	.align 2, 0
_080407CC: .4byte gRoomControls
_080407D0: .4byte gUnk_080D0B64
_080407D4:
	adds r5, #3
_080407D6:
	movs r0, #3
	ands r5, r0
	adds r0, r7, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804087E
	adds r0, r7, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0x3c
	beq _0804080A
	cmp r0, #0x3c
	bgt _080407F8
	cmp r0, #0xf
	beq _08040802
	b _0804087E
_080407F8:
	cmp r0, #0xc3
	beq _0804081A
	cmp r0, #0xf0
	beq _08040812
	b _0804087E
_08040802:
	cmp r5, #0
	bne _0804087E
	movs r5, #2
	b _0804087E
_0804080A:
	cmp r5, #1
	bne _0804087E
	movs r5, #3
	b _0804087E
_08040812:
	cmp r5, #2
	bne _0804087E
	movs r5, #0
	b _0804087E
_0804081A:
	cmp r5, #3
	bne _0804087E
	movs r5, #1
	b _0804087E
_08040822:
	adds r1, r7, #0
	adds r1, #0x87
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _08040848
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0804083E
	adds r5, #1
	b _08040840
_0804083E:
	adds r5, #3
_08040840:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0804087A
_08040848:
	bl Random
	movs r1, #7
	ands r0, r1
	adds r0, #4
	strb r0, [r4]
	ldrb r6, [r4]
	bl Random
	movs r1, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08040868
	movs r1, #0x80
	orrs r1, r6
	b _0804086A
_08040868:
	adds r1, r6, #0
_0804086A:
	strb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040878
	adds r5, #1
	b _0804087A
_08040878:
	adds r5, #3
_0804087A:
	movs r0, #3
	ands r5, r0
_0804087E:
	ldr r2, _080408C8 @ =gRoomControls
	ldrh r3, [r2, #6]
	ldr r4, _080408CC @ =gUnk_080D0B64
	lsls r1, r5, #1
	lsls r0, r5, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r6, r3, r0
	ldrh r2, [r2, #8]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r4, r2, r0
_0804089A:
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_080045D4
	strb r0, [r7, #0x15]
	movs r0, #0x20
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080408D6
	ldrb r1, [r7, #0x15]
	movs r0, #0x10
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	beq _080408D0
	adds r0, r1, #1
	b _080408D4
	.align 2, 0
_080408C8: .4byte gRoomControls
_080408CC: .4byte gUnk_080D0B64
_080408D0:
	adds r0, r1, #0
	adds r0, #0x1f
_080408D4:
	strb r0, [r7, #0x15]
_080408D6:
	ldrb r0, [r7, #0x15]
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r7, #0x15]
	adds r0, r7, #0
	adds r0, #0x86
	strb r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080408EC
sub_080408EC: @ 0x080408EC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08040902
	movs r1, #0xf0
	adds r4, r2, #0
	adds r4, #0x75
	adds r5, r2, #0
	adds r5, #0x76
	b _08040926
_08040902:
	adds r4, r2, #0
	adds r4, #0x75
	adds r5, r2, #0
	adds r5, #0x76
	ldr r7, _08040930 @ =gUnk_080D0B74
	movs r6, #0x3c
_0804090E:
	bl Random
	ands r0, r6
	lsrs r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0]
	ldrb r0, [r4]
	cmp r1, r0
	bne _08040922
	movs r1, #0xff
_08040922:
	cmp r1, #0xff
	beq _0804090E
_08040926:
	movs r0, #0
	strb r1, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08040930: .4byte gUnk_080D0B74

	thumb_func_start sub_08040934
sub_08040934: @ 0x08040934
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x3e
	ands r1, r0
	movs r2, #0
	cmp r1, #0x2e
	bhi _08040948
	movs r2, #1
_08040948:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08040958
	movs r2, #0
_08040958:
	adds r4, #0x84
	ldrb r0, [r4]
	cmp r0, #9
	beq _080409A4
	cmp r2, #0
	beq _080409AA
	adds r0, #1
	movs r1, #5
	bl __modsi3
	strb r0, [r4]
	bl Random
	movs r1, #0xf8
	ands r1, r0
	lsrs r1, r1, #3
	ldr r0, _08040998 @ =gUnk_080D0B84
	adds r0, r1, r0
	ldrb r2, [r0]
	ldrb r0, [r4]
	cmp r0, #1
	beq _0804099C
	cmp r0, #1
	blt _080409AA
	cmp r0, #4
	bgt _080409AA
	cmp r0, #3
	blt _080409AA
	cmp r2, #0
	bne _080409AA
	b _080409A8
	.align 2, 0
_08040998: .4byte gUnk_080D0B84
_0804099C:
	cmp r2, #0
	beq _080409A8
	movs r2, #3
	b _080409AA
_080409A4:
	movs r0, #0
	strb r0, [r4]
_080409A8:
	movs r2, #1
_080409AA:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080409B0
sub_080409B0: @ 0x080409B0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x81
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	cmp r1, #1
	beq _080409EA
	cmp r1, #1
	bgt _080409CA
	cmp r1, #0
	beq _080409D0
	b _08040A68
_080409CA:
	cmp r1, #2
	beq _08040A04
	b _08040A68
_080409D0:
	adds r0, r4, #0
	adds r0, #0x75
	adds r2, r4, #0
	adds r2, #0x76
	ldrb r0, [r0]
	ldrb r3, [r2]
	cmp r0, r3
	bne _08040A68
	movs r0, #1
	mov r3, ip
	strb r0, [r3]
	strb r1, [r2]
	b _08040A68
_080409EA:
	adds r0, r4, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040A68
	movs r0, #2
	mov r1, ip
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x10
	strb r0, [r1]
	b _08040A68
_08040A04:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08040A68
	adds r0, r4, #0
	adds r0, #0x75
	adds r3, r4, #0
	adds r3, #0x76
	ldrb r1, [r0]
	ldrb r0, [r3]
	ands r0, r1
	cmp r1, r0
	beq _08040A3C
	movs r0, #1
	mov r1, ip
	strb r0, [r1]
	strb r2, [r3]
	ldr r0, _08040A38 @ =0x00000155
	bl PlaySFX
	b _08040A68
	.align 2, 0
_08040A38: .4byte 0x00000155
_08040A3C:
	movs r1, #3
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	mov r3, ip
	strb r1, [r3]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x36
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xb2
	lsls r0, r0, #1
	bl PlaySFX
_08040A68:
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08040A84
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040AC8
	adds r0, r4, #0
	bl sub_080AF18C
	b _08040AC8
_08040A84:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08040AB0
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08040AB0
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
	ldr r0, _08040ACC @ =0x00000127
	bl PlaySFX
_08040AB0:
	ldrb r0, [r5]
	cmp r0, #0x8a
	bne _08040AC8
	ldr r0, _08040AD0 @ =gLinkState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bne _08040AC8
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xc0
	strb r0, [r1]
_08040AC8:
	pop {r4, r5, pc}
	.align 2, 0
_08040ACC: .4byte 0x00000127
_08040AD0: .4byte gLinkState

	thumb_func_start sub_08040AD4
sub_08040AD4: @ 0x08040AD4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	movs r1, #0x3f
	ands r1, r0
	lsls r6, r1, #0x18
	lsrs r4, r6, #0x18
	movs r0, #0x1f
	ands r0, r4
	cmp r0, #0
	bne _08040AF0
	ldr r0, _08040B0C @ =0x000001A9
	bl PlaySFX
_08040AF0:
	movs r0, #3
	ands r4, r0
	cmp r4, #0
	bne _08040B2A
	lsrs r4, r6, #0x1a
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	adds r0, r4, #4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08040B10
	subs r0, r2, #1
	b _08040B12
	.align 2, 0
_08040B0C: .4byte 0x000001A9
_08040B10:
	adds r0, r2, #1
_08040B12:
	strh r0, [r5, #0x2e]
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	adds r0, r4, #2
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08040B26
	subs r0, r2, #1
	b _08040B28
_08040B26:
	adds r0, r2, #1
_08040B28:
	strh r0, [r5, #0x32]
_08040B2A:
	pop {r4, r5, r6, pc}
