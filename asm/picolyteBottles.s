	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806DED0
sub_0806DED0: @ 0x0806DED0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806DEF8 @ =gUnk_081142BC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806DEF4
	ldr r2, _0806DEFC @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
_0806DEF4:
	pop {r4, pc}
	.align 2, 0
_0806DEF8: .4byte gUnk_081142BC
_0806DEFC: .4byte gLinkState

	thumb_func_start sub_0806DF00
sub_0806DF00: @ 0x0806DF00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	bne _0806DF5C
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x51
	movs r1, #1
	movs r2, #0
	bl CreateNPC
	str r0, [r4, #0x68]
	str r4, [r0, #0x50]
	movs r0, #0x51
	movs r1, #1
	movs r2, #1
	bl CreateNPC
	str r0, [r4, #0x6c]
	str r4, [r0, #0x50]
	movs r0, #0x51
	movs r1, #1
	movs r2, #2
	bl CreateNPC
	str r0, [r4, #0x70]
	str r4, [r0, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _0806DF58 @ =gUnk_030010A0
	strh r1, [r0, #6]
	adds r0, r4, #0
	bl sub_0806E014
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806DF6E
	.align 2, 0
_0806DF58: .4byte gUnk_030010A0
_0806DF5C:
	ldr r0, _0806DF70 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806E0DC
_0806DF6E:
	pop {r4, r5, pc}
	.align 2, 0
_0806DF70: .4byte gUnk_080FD150

	thumb_func_start sub_0806DF74
sub_0806DF74: @ 0x0806DF74
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	beq _0806DFB0
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806DF96
	ldr r1, [r4, #0x70]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
_0806DF96:
	ldr r1, [r4, #0x68]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x6c]
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xe]
	movs r0, #0
	bl SetRoomFlag
_0806DFB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806DFB4
sub_0806DFB4: @ 0x0806DFB4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x39
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806DFD6
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xe]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0xb]
	b _0806E00C
_0806DFD6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0806E00C
	strb r2, [r4, #0xe]
	ldrb r2, [r4, #0xf]
	movs r0, #0x35
	movs r1, #2
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0806DFF8
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
_0806DFF8:
	adds r0, r4, #0
	bl sub_080788E0
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	movs r0, #0x74
	movs r2, #2
	bl sub_0807B7D8
_0806E00C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_111
nullsub_111: @ 0x0806E010
	bx lr
	.align 2, 0

	thumb_func_start sub_0806E014
sub_0806E014: @ 0x0806E014
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl Random
	movs r1, #0x70
	ands r1, r0
	lsrs r4, r1, #4
	movs r0, #0xff
	strb r0, [r5, #0xb]
	movs r0, #1
	rsbs r0, r0, #0
	adds r7, r0, #0
	strb r0, [r5, #0xe]
	movs r0, #0x93
	bl CheckLocalFlag
	adds r1, r0, #0
	cmp r1, #0
	bne _0806E088
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	lsls r1, r4, #1
	ldr r0, _0806E084 @ =gUnk_081142CC
	adds r6, r1, r0
	ldr r1, [r5, #0x68]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x68]
	movs r4, #0x90
	lsls r4, r4, #0xf
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x6c]
	ldrb r0, [r6, #1]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x6c]
	movs r2, #0xd0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x70]
	ldrb r0, [r1, #0xf]
	orrs r0, r7
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x70]
	adds r0, r5, #0
	bl CopyPosition
	b _0806E0D6
	.align 2, 0
_0806E084: .4byte gUnk_081142CC
_0806E088:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	lsls r1, r4, #2
	ldr r0, _0806E0D8 @ =gUnk_081142DC
	adds r6, r1, r0
	ldr r1, [r5, #0x68]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x68]
	movs r2, #0xe0
	lsls r2, r2, #0xe
	movs r4, #0x90
	lsls r4, r4, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x6c]
	ldrb r0, [r6, #1]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x6c]
	movs r2, #0xb0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x70]
	ldrb r0, [r6, #2]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x70]
	movs r2, #0xf0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
_0806E0D6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806E0D8: .4byte gUnk_081142DC

	thumb_func_start sub_0806E0DC
sub_0806E0DC: @ 0x0806E0DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	strb r6, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	cmp r0, #0xff
	beq _0806E138
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0806E134 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x76
	strh r1, [r5]
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0806E120
	bl DeleteEntity
	str r6, [r4, #0x54]
_0806E120:
	adds r0, r4, #0
	bl sub_08078828
	ldrh r1, [r5]
	movs r0, #0x73
	movs r2, #2
	bl sub_0807B7D8
	b _0806E13C
	.align 2, 0
_0806E134: .4byte gRoomControls
_0806E138:
	movs r0, #3
	strb r0, [r4, #0xc]
_0806E13C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806E140
sub_0806E140: @ 0x0806E140
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldrb r1, [r3, #0xb]
	cmp r1, #0
	beq _0806E1AC
	movs r0, #1
	str r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r2, [r1]
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	bne _0806E16E
	lsls r0, r2, #1
	b _0806E172
_0806E16E:
	lsls r0, r2, #1
	adds r0, r0, r2
_0806E172:
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806E18C @ =0x000003E7
	cmp r0, r1
	bls _0806E194
	strh r1, [r4]
	movs r0, #0
	str r0, [r5, #0x14]
	ldr r0, _0806E190 @ =0x0000421B
	bl TextboxNoOverlapFollow
	b _0806E1C0
	.align 2, 0
_0806E18C: .4byte 0x000003E7
_0806E190: .4byte 0x0000421B
_0806E194:
	ldr r0, _0806E1A4 @ =0x00004218
	bl TextboxNoOverlapFollow
	ldr r1, _0806E1A8 @ =gTextBox
	ldrh r0, [r4]
	str r0, [r1, #0x10]
	b _0806E1C0
	.align 2, 0
_0806E1A4: .4byte 0x00004218
_0806E1A8: .4byte gTextBox
_0806E1AC:
	str r1, [r5, #0x14]
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r4, r3, #0
	adds r4, #0x76
	strh r1, [r4]
	ldr r0, _0806E1D4 @ =0x0000421C
	bl TextboxNoOverlapFollow
_0806E1C0:
	ldr r1, _0806E1D8 @ =gUnk_030010A0
	ldrh r0, [r4]
	strh r0, [r1, #6]
	ldr r2, _0806E1DC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0806E1D4: .4byte 0x0000421C
_0806E1D8: .4byte gUnk_030010A0
_0806E1DC: .4byte gUnk_02033280

	thumb_func_start sub_0806E1E0
sub_0806E1E0: @ 0x0806E1E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E014
	ldr r0, [r4, #0x68]
	bl sub_0806E0DC
	ldr r0, [r4, #0x6c]
	bl sub_0806E0DC
	ldr r0, [r4, #0x70]
	bl sub_0806E0DC
	pop {r4, pc}

	thumb_func_start sub_0806E1FC
sub_0806E1FC: @ 0x0806E1FC
	push {lr}
	ldr r0, _0806E208 @ =gUnk_0813AD4C
	bl sub_08080840
	pop {pc}
	.align 2, 0
_0806E208: .4byte gUnk_0813AD4C

	thumb_func_start sub_0806E20C
sub_0806E20C: @ 0x0806E20C
	push {r4, lr}
	ldr r4, _0806E224 @ =gUnk_030010A0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _0806E230
	ldr r0, _0806E228 @ =0x0000421F
	bl TextboxNoOverlapFollow
	ldr r1, _0806E22C @ =gTextBox
	ldrh r0, [r4, #6]
	str r0, [r1, #0x10]
	b _0806E236
	.align 2, 0
_0806E224: .4byte gUnk_030010A0
_0806E228: .4byte 0x0000421F
_0806E22C: .4byte gTextBox
_0806E230:
	ldr r0, _0806E238 @ =0x00004220
	bl TextboxNoOverlapFollow
_0806E236:
	pop {r4, pc}
	.align 2, 0
_0806E238: .4byte 0x00004220

	thumb_func_start sub_0806E23C
sub_0806E23C: @ 0x0806E23C
	push {lr}
	ldr r1, _0806E24C @ =gUnk_030010A0
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0806E24A
	bl ModRupees
_0806E24A:
	pop {pc}
	.align 2, 0
_0806E24C: .4byte gUnk_030010A0

	thumb_func_start sub_0806E250
sub_0806E250: @ 0x0806E250
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x31
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0806E266
	movs r0, #1
	str r0, [r4, #0x14]
_0806E266:
	ldr r2, _0806E274 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0806E274: .4byte gUnk_02033280
