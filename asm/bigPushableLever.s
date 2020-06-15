	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BigPushableLever
BigPushableLever: @ 0x08098EE0
	push {lr}
	ldr r2, _08098EF4 @ =gUnk_081236DC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098EF4: .4byte gUnk_081236DC

	thumb_func_start sub_08098EF8
sub_08098EF8: @ 0x08098EF8
	push {lr}
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #5
	orrs r1, r2
	strb r1, [r3]
	bl sub_08098FCC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08098F14
sub_08098F14: @ 0x08098F14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080990EC
	cmp r0, #0
	beq _08098F84
	movs r6, #0
	movs r0, #2
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x70
	ldrh r1, [r1]
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x72
	ldrh r1, [r1]
	ldrb r2, [r4]
	bl SetTile
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r5, #0
	movs r1, #0x1e
	bl sub_0805E4E0
	bl sub_08079F8C
	cmp r0, #0
	beq _08098F84
	ldr r2, _08098F88 @ =gLinkState
	movs r0, #0x98
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _08098F8C @ =gLinkEntity
	strh r6, [r1, #0x2c]
	strh r6, [r1, #0x30]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
_08098F84:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08098F88: .4byte gLinkState
_08098F8C: .4byte gLinkEntity

	thumb_func_start sub_08098F90
sub_08098F90: @ 0x08098F90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08098FC8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08098FB8
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	b _08098FC2
_08098FB8:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl ClearFlag
_08098FC2:
	adds r0, r4, #0
	bl sub_08098FCC
_08098FC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08098FCC
sub_08098FCC: @ 0x08098FCC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x84
	movs r1, #0x3c
	strh r1, [r2]
	bl sub_08098FE0
	pop {pc}

	thumb_func_start sub_08098FE0
sub_08098FE0: @ 0x08098FE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _0809906C
	strb r0, [r6, #0xb]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r1, _08099060 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r1, [r1, #8]
	adds r1, #0x10
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	adds r5, r6, #0
	adds r5, #0x70
	strh r2, [r5]
	subs r2, #0x40
	adds r7, r6, #0
	adds r7, #0x72
	strh r2, [r7]
	ldrh r0, [r5]
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrh r0, [r7]
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _08099064 @ =0x00004057
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _08099068 @ =0x00004058
	ldrh r1, [r7]
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	movs r1, #1
	bl InitializeAnimation
	b _080990DC
	.align 2, 0
_08099060: .4byte gRoomControls
_08099064: .4byte 0x00004057
_08099068: .4byte 0x00004058
_0809906C:
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _080990E0 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r0, #0x10
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r6, #0
	adds r5, #0x70
	strh r1, [r5]
	subs r1, #1
	adds r7, r6, #0
	adds r7, #0x72
	strh r1, [r7]
	ldrh r0, [r5]
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrh r0, [r7]
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r0, _080990E4 @ =0x00004055
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _080990E8 @ =0x00004056
	ldrh r1, [r7]
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	movs r1, #0
	bl InitializeAnimation
_080990DC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080990E0: .4byte gRoomControls
_080990E4: .4byte 0x00004055
_080990E8: .4byte 0x00004056

	thumb_func_start sub_080990EC
sub_080990EC: @ 0x080990EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x72
	ldrh r0, [r6]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	ldr r1, _0809911C @ =0x00004059
	cmp r0, r1
	bne _08099140
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08099120
	movs r0, #1
	b _08099156
	.align 2, 0
_0809911C: .4byte 0x00004059
_08099120:
	adds r0, r4, #0
	bl sub_08099158
	ldr r1, _0809913C @ =gUnk_081236E8
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6]
	ldrb r2, [r5]
	bl SetTile
	b _08099154
	.align 2, 0
_0809913C: .4byte gUnk_081236E8
_08099140:
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x62
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
_08099154:
	movs r0, #0
_08099156:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08099158
sub_08099158: @ 0x08099158
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xb]
	ldr r4, _08099198 @ =gUnk_081236F4
	cmp r0, #0
	bne _08099166
	ldr r4, _0809919C @ =gUnk_081236EC
_08099166:
	adds r2, r3, #0
	adds r2, #0x84
	ldrh r0, [r2]
	lsrs r0, r0, #2
	movs r1, #6
	ands r0, r1
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r1, r3, #0
	adds r1, #0x62
	strb r0, [r1]
	ldrb r1, [r4, #1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r1, [r0]
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08099194
	ldr r0, _080991A0 @ =0x00000131
	bl sub_08004488
_08099194:
	pop {r4, pc}
	.align 2, 0
_08099198: .4byte gUnk_081236F4
_0809919C: .4byte gUnk_081236EC
_080991A0: .4byte 0x00000131
