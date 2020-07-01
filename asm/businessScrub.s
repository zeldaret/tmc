	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BusinessScrub
BusinessScrub: @ 0x0802890C
	push {lr}
	ldr r1, _08028918 @ =gUnk_080CC9C8
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_08028918: .4byte gUnk_080CC9C8

	thumb_func_start sub_0802891C
sub_0802891C: @ 0x0802891C
	push {lr}
	ldr r2, _08028930 @ =gUnk_080CC9E0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08028930: .4byte gUnk_080CC9E0

	thumb_func_start sub_08028934
sub_08028934: @ 0x08028934
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	bne _08028988
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x42
	bne _08028988
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080290E0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08028982
	ldrh r0, [r1, #0x36]
	subs r0, #8
	strh r0, [r1, #0x36]
_08028982:
	ldr r0, _0802898C @ =0x000001BB
	bl sub_08004488
_08028988:
	pop {r4, pc}
	.align 2, 0
_0802898C: .4byte 0x000001BB

	thumb_func_start nullsub_140
nullsub_140: @ 0x08028990
	bx lr
	.align 2, 0

	thumb_func_start sub_08028994
sub_08028994: @ 0x08028994
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	movs r5, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	strb r5, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08028E9C
	ldr r0, [r4, #0x7c]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080289D4
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080289FC
_080289D4:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0802925C
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E0
	b _08028A42
_080289FC:
	strb r5, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08028A44 @ =gRoomControls
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
	adds r0, r4, #0
	adds r0, #0x76
	strh r1, [r0]
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	subs r1, #0x34
	movs r0, #0x41
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08028FFC
_08028A42:
	pop {r4, r5, pc}
	.align 2, 0
_08028A44: .4byte gRoomControls

	thumb_func_start sub_08028A48
sub_08028A48: @ 0x08028A48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08028A5A
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08028A72
_08028A5A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08028F98
	cmp r0, #0
	beq _08028A72
	adds r0, r4, #0
	bl sub_08029078
	strb r5, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xf]
_08028A72:
	pop {r4, r5, pc}

	thumb_func_start sub_08028A74
sub_08028A74: @ 0x08028A74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bls _08028A84
	b _08028BA6
_08028A84:
	lsls r0, r0, #2
	ldr r1, _08028A90 @ =_08028A94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08028A90: .4byte _08028A94
_08028A94: @ jump table
	.4byte _08028AA8 @ case 0
	.4byte _08028ACA @ case 1
	.4byte _08028B1A @ case 2
	.4byte _08028B54 @ case 3
	.4byte _08028B76 @ case 4
_08028AA8:
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	strb r6, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	b _08028B6C
_08028ACA:
	movs r6, #1
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08028AF6
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #2
	bl sub_080290E0
	b _08028BA6
_08028AF6:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #0
	bne _08028BA6
	adds r0, r4, #0
	bl sub_08028FDC
	cmp r0, #0
	beq _08028B14
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
_08028B14:
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08028BA6
_08028B1A:
	movs r6, #1
	adds r0, r4, #0
	bl sub_080290FC
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08028BA6
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldrb r1, [r5]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r4, #0xd]
	b _08028BA6
_08028B54:
	movs r6, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028BA6
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
_08028B6C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
	b _08028BA6
_08028B76:
	movs r6, #2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028BA6
	adds r0, r4, #0
	movs r1, #0
	bl sub_08028F98
	adds r5, r0, #0
	cmp r5, #0
	beq _08028BB4
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08028FDC
	b _08028BC2
_08028BA6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08028F98
	adds r5, r0, #0
	cmp r5, #0
	bne _08028BC2
_08028BB4:
	adds r0, r4, #0
	bl sub_08028FFC
	strb r5, [r4, #0xd]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
_08028BC2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08028BC4
sub_08028BC4: @ 0x08028BC4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08028BD4
	cmp r0, #1
	beq _08028C14
	b _08028C76
_08028BD4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08028C0E
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028C76
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #5
	bl sub_080290E0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _08028C76
_08028C0E:
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08028C76
_08028C14:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08028C76
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #5
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_080290E0
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r2, r0, #0
	cmp r2, #0
	beq _08028C66
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r2, #0x36]
	subs r0, #0xc
	strh r0, [r2, #0x36]
	adds r0, r2, #0
	movs r1, #2
	bl sub_0805E3A0
_08028C66:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	adds r0, r4, #0
	bl sub_0802925C
_08028C76:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0800445C
	pop {r4, pc}

	thumb_func_start sub_08028C84
sub_08028C84: @ 0x08028C84
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028CD2
	movs r0, #0x30
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r5, r0, #0
	cmp r5, #0
	beq _08028CB4
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _08028CD2
	adds r0, r4, #0
	bl sub_0804AA1C
	b _08028CD2
_08028CB4:
	adds r0, r4, #0
	bl sub_08028FDC
	adds r1, r4, #0
	adds r1, #0x80
	cmp r0, #0
	bne _08028CC8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08028CD2
_08028CC8:
	strb r5, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E0
_08028CD2:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08028F0C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08028CE8
sub_08028CE8: @ 0x08028CE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x7c]
	ldr r0, _08028D30 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08028DCC
	adds r0, r5, #0
	bl sub_0802915C
	cmp r0, #0
	beq _08028DCC
	bl sub_08056338
	cmp r0, #0
	bne _08028DCC
	ldr r0, _08028D34 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r1, [r6, #2]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08028DC0
	adds r0, r5, #0
	bl sub_080291DC
	cmp r0, #0
	beq _08028D3C
	ldr r0, _08028D38 @ =0x00002904
	bl TextboxNoOverlapFollow
	movs r0, #0
	bl sub_08078A90
	b _08028DCC
	.align 2, 0
_08028D30: .4byte gTextBox
_08028D34: .4byte gUnk_02002A40
_08028D38: .4byte 0x00002904
_08028D3C:
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	bl ModRupees
	ldrb r0, [r6]
	lsrs r7, r0, #2
	cmp r7, #1
	beq _08028D9C
	cmp r7, #1
	bgt _08028D56
	cmp r7, #0
	beq _08028D5C
	b _08028DCC
_08028D56:
	cmp r7, #2
	beq _08028DAA
	b _08028DCC
_08028D5C:
	ldrb r1, [r6, #9]
	cmp r1, #0xff
	bne _08028D70
	ldr r4, _08028D98 @ =gUnk_080CC9C0
	bl Random
	movs r1, #7
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
_08028D70:
	ldrb r0, [r6, #8]
	movs r2, #0
	bl CreateItemEntity
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x81
	strb r7, [r0]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E0
	movs r0, #0x87
	bl SetLocalFlag
	b _08028DE2
	.align 2, 0
_08028D98: .4byte gUnk_080CC9C0
_08028D9C:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #9]
	movs r2, #0
	bl CreateItemEntity
	movs r0, #4
	b _08028DB6
_08028DAA:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #9]
	movs r2, #0
	bl CreateItemEntity
	movs r0, #8
_08028DB6:
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0802922C
	b _08028DE2
_08028DC0:
	ldr r0, _08028DE4 @ =0x00002903
	bl TextboxNoOverlapFollow
	movs r0, #0
	bl sub_08078A90
_08028DCC:
	adds r0, r5, #0
	bl sub_0800445C
	movs r0, #4
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E0
_08028DE2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08028DE4: .4byte 0x00002903

	thumb_func_start sub_08028DE8
sub_08028DE8: @ 0x08028DE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08028E08 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _08028E0C
	adds r4, #0x81
	ldrb r0, [r4]
	cmp r0, #0
	bne _08028E3A
	movs r0, #1
	bl sub_08078A90
	movs r0, #1
	strb r0, [r4]
	b _08028E3A
	.align 2, 0
_08028E08: .4byte gLinkEntity
_08028E0C:
	ldr r0, _08028E3C @ =0x00002902
	bl TextboxNoOverlapFollow
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08028EDC
	movs r0, #0
	bl sub_08078A90
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl GetNextFrame
_08028E3A:
	pop {r4, pc}
	.align 2, 0
_08028E3C: .4byte 0x00002902

	thumb_func_start sub_08028E40
sub_08028E40: @ 0x08028E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08028E80 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08028E72
	ldr r5, [r4, #0x7c]
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrh r0, [r5, #0xa]
	bl CheckLocalFlag
	cmp r0, #0
	bne _08028E6C
	ldrh r0, [r5, #0xa]
	bl SetLocalFlag
_08028E6C:
	movs r0, #0
	bl sub_08078A90
_08028E72:
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}
	.align 2, 0
_08028E80: .4byte gTextBox

	thumb_func_start sub_08028E84
sub_08028E84: @ 0x08028E84
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08028E98
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
_08028E98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08028E9C
sub_08028E9C: @ 0x08028E9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r6, _08028ED8 @ =gUnk_080CC954
	adds r4, r1, r6
	adds r0, r4, #0
	bl sub_08029198
	cmp r0, #0
	beq _08028ECA
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08028ECA
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r6
_08028ECA:
	str r4, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08028ED8: .4byte gUnk_080CC954

	thumb_func_start sub_08028EDC
sub_08028EDC: @ 0x08028EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x7c]
	adds r0, r4, #0
	bl sub_08029198
	cmp r0, #0
	beq _08028F04
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08028F04
	ldrh r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08028F08 @ =gUnk_080CC954
	adds r4, r1, r0
	str r4, [r5, #0x7c]
_08028F04:
	pop {r4, r5, pc}
	.align 2, 0
_08028F08: .4byte gUnk_080CC954

	thumb_func_start sub_08028F0C
sub_08028F0C: @ 0x08028F0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08028F2C
	movs r1, #0
	movs r0, #8
	strb r0, [r5, #0xc]
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_0806F118
	b _08028F90
_08028F2C:
	cmp r0, #0
	beq _08028F90
	ldr r6, [r5, #0x7c]
	movs r4, #0
	strb r4, [r2]
	adds r0, r5, #0
	bl sub_0804AA1C
	adds r0, r5, #0
	bl sub_0806EDC4
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E0
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	adds r0, r6, #0
	bl sub_08029198
	cmp r0, #0
	beq _08028F6A
	ldrh r4, [r6, #6]
	b _08028F84
_08028F6A:
	ldrb r1, [r6]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0xc
	beq _08028F78
	movs r0, #5
	b _08028F7A
_08028F78:
	movs r0, #7
_08028F7A:
	strb r0, [r5, #0xc]
	ldrh r4, [r6, #4]
	movs r0, #1
	bl sub_08078A90
_08028F84:
	adds r0, r4, #0
	bl TextboxNoOverlapFollow
	ldr r1, _08028F94 @ =gTextBox
	ldrh r0, [r6, #2]
	str r0, [r1, #0x10]
_08028F90:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08028F94: .4byte gTextBox

	thumb_func_start sub_08028F98
sub_08028F98: @ 0x08028F98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08028FD4
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x28
	movs r3, #0x28
	bl sub_080041A0
	cmp r0, #0
	bne _08028FD4
	cmp r5, #2
	beq _08028FD8
	movs r3, #0x50
	cmp r5, #0
	beq _08028FC6
	movs r3, #0x58
_08028FC6:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080041A0
	cmp r0, #0
	bne _08028FD8
_08028FD4:
	movs r0, #0
	b _08028FDA
_08028FD8:
	movs r0, #1
_08028FDA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08028FDC
sub_08028FDC: @ 0x08028FDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	adds r1, r0, #4
	movs r0, #0x18
	ands r1, r0
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _08028FF8
	strb r1, [r4, #0x15]
	movs r0, #1
	b _08028FFA
_08028FF8:
	movs r0, #0
_08028FFA:
	pop {r4, pc}

	thumb_func_start sub_08028FFC
sub_08028FFC: @ 0x08028FFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080AE068
	adds r0, r4, #0
	bl sub_0801D230
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0xe8
	strh r0, [r1]
	ldrb r1, [r4, #0x1a]
	subs r0, #0xf8
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xa7
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _08029074 @ =0x00004022
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	pop {r4, pc}
	.align 2, 0
_08029074: .4byte 0x00004022

	thumb_func_start sub_08029078
sub_08029078: @ 0x08029078
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x72
	bl sub_080ADF80
	cmp r0, #0
	bne _080290AE
	adds r0, r4, #0
	bl DeleteEntity
	b _080290DE
_080290AE:
	adds r0, r4, #0
	movs r1, #0x6e
	bl sub_0801D040
	movs r0, #0xd0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08028FDC
	adds r0, r4, #0
	movs r1, #1
	bl sub_080290E0
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_080290DE:
	pop {r4, pc}

	thumb_func_start sub_080290E0
sub_080290E0: @ 0x080290E0
	push {lr}
	adds r3, r1, #0
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #3
	ldr r2, _080290F8 @ =gUnk_080CCA04
	adds r3, r3, r2
	ldrb r2, [r3]
	orrs r1, r2
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_080290F8: .4byte gUnk_080CCA04

	thumb_func_start sub_080290FC
sub_080290FC: @ 0x080290FC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _08029158
	subs r1, r0, #1
	strb r1, [r2, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _08029158
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08029158
	ldrb r4, [r2, #0x15]
	movs r0, #0x10
	ands r0, r4
	movs r5, #1
	cmp r0, #0
	beq _08029128
	subs r5, #2
_08029128:
	movs r3, #8
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08029146
	movs r4, #0x2e
	ldrsh r0, [r2, r4]
	ands r1, r3
	cmp r1, #0
	beq _08029140
	subs r0, r0, r5
	b _08029142
_08029140:
	adds r0, r0, r5
_08029142:
	strh r0, [r2, #0x2e]
	b _08029158
_08029146:
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	ands r1, r3
	cmp r1, #0
	bne _08029154
	subs r0, r0, r5
	b _08029156
_08029154:
	adds r0, r0, r5
_08029156:
	strh r0, [r2, #0x32]
_08029158:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802915C
sub_0802915C: @ 0x0802915C
	push {lr}
	ldr r0, [r0, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x5c
	beq _08029190
	cmp r0, #0x5c
	bgt _08029174
	cmp r0, #0x1c
	beq _08029186
	cmp r0, #0x44
	beq _0802917E
	b _08029194
_08029174:
	cmp r0, #0x6c
	beq _08029190
	cmp r0, #0x6f
	beq _08029190
	b _08029194
_0802917E:
	movs r0, #0x44
	bl GetInventoryValue
	b _0802918C
_08029186:
	movs r0, #0x5a
	bl CheckGlobalFlag
_0802918C:
	cmp r0, #0
	bne _08029194
_08029190:
	movs r0, #1
	b _08029196
_08029194:
	movs r0, #0
_08029196:
	pop {pc}

	thumb_func_start sub_08029198
sub_08029198: @ 0x08029198
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0xc
	beq _080291CA
	ldrb r0, [r2, #8]
	cmp r0, #0x1c
	beq _080291BC
	cmp r0, #0x1c
	bgt _080291B6
	cmp r0, #9
	beq _080291C4
	b _080291D8
_080291B6:
	cmp r0, #0x44
	beq _080291C4
	b _080291D8
_080291BC:
	movs r0, #0x5a
	bl CheckGlobalFlag
	b _080291D0
_080291C4:
	bl GetInventoryValue
	b _080291D0
_080291CA:
	ldrh r0, [r2, #0xa]
	bl CheckLocalFlag
_080291D0:
	cmp r0, #0
	beq _080291D8
	movs r0, #1
	b _080291DA
_080291D8:
	movs r0, #0
_080291DA:
	pop {pc}

	thumb_func_start sub_080291DC
sub_080291DC: @ 0x080291DC
	push {lr}
	ldr r0, [r0, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x6c
	beq _080291EC
	cmp r0, #0x6f
	beq _08029204
	b _08029228
_080291EC:
	ldr r2, _080291FC @ =gBombBagSizes
	ldr r1, _08029200 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xac
	b _08029212
	.align 2, 0
_080291FC: .4byte gBombBagSizes
_08029200: .4byte gUnk_02002A40
_08029204:
	ldr r2, _08029220 @ =gQuiverSizes
	ldr r1, _08029224 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xad
_08029212:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _08029228
	movs r0, #1
	b _0802922A
	.align 2, 0
_08029220: .4byte gQuiverSizes
_08029224: .4byte gUnk_02002A40
_08029228:
	movs r0, #0
_0802922A:
	pop {pc}

	thumb_func_start sub_0802922C
sub_0802922C: @ 0x0802922C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #6
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	ldr r0, [r4, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x6c
	beq _08029252
	cmp r0, #0x6c
	bgt _08029252
	cmp r0, #0x1c
	bne _08029252
	movs r0, #0x5a
	bl SetGlobalFlag
_08029252:
	adds r0, r4, #0
	movs r1, #3
	bl sub_080290E0
	pop {r4, pc}

	thumb_func_start sub_0802925C
sub_0802925C: @ 0x0802925C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029270
sub_08029270: @ 0x08029270
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08029296
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #0xe
	bl InitializeAnimation
	b _0802929C
_08029296:
	adds r0, r2, #0
	bl GetNextFrame
_0802929C:
	pop {pc}
	.align 2, 0