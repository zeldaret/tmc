	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WindTribeTeleporter
WindTribeTeleporter: @ 0x080A0F24
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A0F40 @ =gUnk_08124C10
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080A11E0
	pop {r4, pc}
	.align 2, 0
_080A0F40: .4byte gUnk_08124C10

	thumb_func_start sub_080A0F44
sub_080A0F44: @ 0x080A0F44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #1
	strb r6, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x59
	movs r0, #8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A0FA8 @ =gUnk_080FD460
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_080A11C0
	cmp r0, #0
	beq _080A0FA4
	ldr r1, _080A0FAC @ =gPlayerEntity
	ldrh r0, [r5, #0x2e]
	movs r4, #0
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r1, #0x32]
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	bl FreezeTime
	movs r0, #0x89
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x68
	strb r6, [r0]
_080A0FA4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A0FA8: .4byte gUnk_080FD460
_080A0FAC: .4byte gPlayerEntity

	thumb_func_start sub_080A0FB0
sub_080A0FB0: @ 0x080A0FB0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080A11C0
	adds r1, r0, #0
	cmp r1, #0
	beq _080A0FF8
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A0FFE
	ldr r1, _080A0FF4 @ =gPlayerEntity
	ldrh r0, [r5, #0x2e]
	movs r4, #0
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #0x32]
	strh r0, [r1, #0x32]
	movs r0, #3
	bl sub_08078A90
	bl sub_08078B48
	bl FreezeTime
	movs r0, #0x89
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	b _080A0FFE
	.align 2, 0
_080A0FF4: .4byte gPlayerEntity
_080A0FF8:
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
_080A0FFE:
	pop {r4, r5, pc}

	thumb_func_start sub_080A1000
sub_080A1000: @ 0x080A1000
.ifdef DEMO_JP
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xd]
	cmp r1, #1
	beq _080A0B52
	cmp r1, #1
	bgt _080A0B3C
	cmp r1, #0
	beq _080A0B46
	b _080A0BB0
_080A0B3C:
	cmp r1, #2
	beq _080A0B60
	cmp r1, #3
	beq _080A0B8C
	b _080A0BB0
_080A0B46:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080A0BF0
_080A0B52:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0BF0
	b _080A0B98
_080A0B60:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0B7E
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, #0xf5
	bl SoundReq
	b _080A0BF0
_080A0B7E:
	ldr r0, _080A0B88 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	b _080A0BDE
	.align 2, 0
_080A0B88: .4byte gScreenTransition
_080A0B8C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0BA4
_080A0B98:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _080A0BF0
_080A0BA4:
	ldr r0, _080A0BAC @ =gScreenTransition
	ldr r0, [r0]
	b _080A0BDE
	.align 2, 0
_080A0BAC: .4byte gScreenTransition
_080A0BB0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0BD8
	movs r0, #0xfc
	bl SetLocalFlag
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A0BD4 @ =0x0813AA10
	adds r0, r0, r1
	bl DoExitTransition
	b _080A0BF0
	.align 2, 0
_080A0BD4: .4byte 0x0813AA10
_080A0BD8:
	ldr r0, _080A0BF4 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
_080A0BDE:
	ands r0, r1
	cmp r0, #0
	bne _080A0BF0
	ldr r0, _080A0BF8 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_080A0BF0:
	pop {r4, pc}
	.align 2, 0
_080A0BF4: .4byte gScreenTransition
_080A0BF8: .4byte gPlayerEntity


.else
.ifdef JP
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0xd]
	cmp r2, #1
	beq _080A0DF2
	cmp r2, #1
	bgt _080A0DDC
	cmp r2, #0
	beq _080A0DE6
	b _080A0E50
_080A0DDC:
	cmp r2, #2
	beq _080A0E00
	cmp r2, #3
	beq _080A0E2C
	b _080A0E50
_080A0DE6:
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _080A0E8C
_080A0DF2:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0E8C
	b _080A0E38
_080A0E00:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0E1E
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	adds r0, #0xf5
	bl SoundReq
	b _080A0E8C
_080A0E1E:
	ldr r0, _080A0E28 @ =0x030010A0
	ldr r0, [r0]
	movs r1, #7
	b _080A0E7A
	.align 2, 0
_080A0E28: .4byte 0x030010A0
_080A0E2C:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0E44
_080A0E38:
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	b _080A0E8C
_080A0E44:
	ldr r0, _080A0E4C @ =0x030010A0
	ldr r0, [r0]
	ands r0, r2
	b _080A0E7C
	.align 2, 0
_080A0E4C: .4byte 0x030010A0
_080A0E50:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0E74
	ldrb r1, [r1, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A0E70 @ =0x0813AA18
	adds r0, r0, r1
	bl DoExitTransition
	b _080A0E8C
	.align 2, 0
_080A0E70: .4byte 0x0813AA18
_080A0E74:
	ldr r0, _080A0E90 @ =0x030010A0
	ldr r0, [r0]
	movs r1, #1
_080A0E7A:
	ands r0, r1
_080A0E7C:
	cmp r0, #0
	bne _080A0E8C
	ldr r0, _080A0E94 @ =0x03001160
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_080A0E8C:
	pop {pc}
	.align 2, 0
_080A0E90: .4byte 0x030010A0
_080A0E94: .4byte 0x03001160
.else
.ifdef EU
	push {lr}
	adds r1, r0, #0
	ldrb r2, [r1, #0xd]
	cmp r2, #1
	beq _080A0876
	cmp r2, #1
	bgt _080A0860
	cmp r2, #0
	beq _080A086A
	b _080A08D4
_080A0860:
	cmp r2, #2
	beq _080A0884
	cmp r2, #3
	beq _080A08B0
	b _080A08D4
_080A086A:
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _080A0910
_080A0876:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0910
	b _080A08BC
_080A0884:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A08A2
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	adds r0, #0xf5
	bl SoundReq
	b _080A0910
_080A08A2:
	ldr r0, _080A08AC @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	b _080A08FE
	.align 2, 0
_080A08AC: .4byte gScreenTransition
_080A08B0:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A08C8
_080A08BC:
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	b _080A0910
_080A08C8:
	ldr r0, _080A08D0 @ =gScreenTransition
	ldr r0, [r0]
	ands r0, r2
	b _080A0900
	.align 2, 0
_080A08D0: .4byte gScreenTransition
_080A08D4:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A08F8
	ldrb r1, [r1, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A08F4 @ =gUnk_0813ADEC
	adds r0, r0, r1
	bl DoExitTransition
	b _080A0910
	.align 2, 0
_080A08F4: .4byte gUnk_0813ADEC
_080A08F8:
	ldr r0, _080A0914 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
_080A08FE:
	ands r0, r1
_080A0900:
	cmp r0, #0
	bne _080A0910
	ldr r0, _080A0918 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_080A0910:
	pop {pc}
	.align 2, 0
_080A0914: .4byte gScreenTransition
_080A0918: .4byte gPlayerEntity

.else
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xd]
	cmp r1, #1
	beq _080A102A
	cmp r1, #1
	bgt _080A1014
	cmp r1, #0
	beq _080A101E
	b _080A1088
_080A1014:
	cmp r1, #2
	beq _080A1038
	cmp r1, #3
	beq _080A1064
	b _080A1088
_080A101E:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _080A10D4
_080A102A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A10D4
	b _080A1070
_080A1038:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A1056
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, #0xf5
	bl SoundReq
	b _080A10D4
_080A1056:
	ldr r0, _080A1060 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	b _080A10C2
	.align 2, 0
_080A1060: .4byte gScreenTransition
_080A1064:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A107C
_080A1070:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _080A10D4
_080A107C:
	ldr r0, _080A1084 @ =gScreenTransition
	ldr r0, [r0]
	b _080A10C2
	.align 2, 0
_080A1084: .4byte gScreenTransition
_080A1088:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A10BC
	ldr r0, _080A10B4 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _080A10A2
	movs r0, #0xf9
	bl SetLocalFlag
_080A10A2:
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A10B8 @ =gUnk_0813ADEC
	adds r0, r0, r1
	bl DoExitTransition
	b _080A10D4
	.align 2, 0
_080A10B4: .4byte gRoomControls
_080A10B8: .4byte gUnk_0813ADEC
_080A10BC:
	ldr r0, _080A10D8 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
_080A10C2:
	ands r0, r1
	cmp r0, #0
	bne _080A10D4
	ldr r0, _080A10DC @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
_080A10D4:
	pop {r4, pc}
	.align 2, 0
_080A10D8: .4byte gScreenTransition
_080A10DC: .4byte gPlayerEntity
.endif
.endif
.endif

	thumb_func_start sub_080A10E0
sub_080A10E0: @ 0x080A10E0
	push {r4, lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xd]
	cmp r1, #1
	beq _080A110E
	cmp r1, #1
	bgt _080A10F4
	cmp r1, #0
	beq _080A10FE
	b _080A1180
_080A10F4:
	cmp r1, #2
	beq _080A1124
	cmp r1, #3
	beq _080A1148
	b _080A1180
_080A10FE:
	movs r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	adds r0, #0xf6
	bl SoundReq
	b _080A11BA
_080A110E:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A1130
	ldr r0, _080A1120 @ =gScreenTransition
	ldr r0, [r0]
	b _080A1162
	.align 2, 0
_080A1120: .4byte gScreenTransition
_080A1124:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A113C
_080A1130:
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	b _080A11BA
_080A113C:
	ldr r0, _080A1144 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	b _080A1162
	.align 2, 0
_080A1144: .4byte gScreenTransition
_080A1148:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A115C
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	b _080A11BA
_080A115C:
	ldr r0, _080A1178 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
_080A1162:
	ands r0, r1
	cmp r0, #0
	bne _080A11BA
	ldr r0, _080A117C @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	adds r1, #2
	movs r2, #6
	ands r1, r2
	strb r1, [r0, #0x14]
	b _080A11BA
	.align 2, 0
_080A1178: .4byte gScreenTransition
_080A117C: .4byte gPlayerEntity
_080A1180:
	ldr r4, _080A11A0 @ =gPlayerEntity
	ldrb r3, [r4, #0x14]
	cmp r3, #4
	beq _080A11A8
	ldr r0, _080A11A4 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080A11BA
	adds r0, r3, #2
	movs r1, #6
	ands r0, r1
	strb r0, [r4, #0x14]
	b _080A11BA
	.align 2, 0
_080A11A0: .4byte gPlayerEntity
_080A11A4: .4byte gScreenTransition
_080A11A8:
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldr r0, _080A11BC @ =gPlayerState
	adds r0, #0x8b
	strb r1, [r0]
	bl UnfreezeTime
_080A11BA:
	pop {r4, pc}
	.align 2, 0
_080A11BC: .4byte gPlayerState

	thumb_func_start sub_080A11C0
sub_080A11C0: @ 0x080A11C0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080A11D8 @ =gPlayerEntity
	movs r2, #0x36
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080A11DC
	adds r0, r1, #0
	bl sub_08017850
	b _080A11DE
	.align 2, 0
_080A11D8: .4byte gPlayerEntity
_080A11DC:
	movs r0, #0
_080A11DE:
	pop {pc}

	thumb_func_start sub_080A11E0
sub_080A11E0: @ 0x080A11E0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x59
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A1202
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r2, #0x1e]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #0x1e]
_080A1202:
	pop {pc}
