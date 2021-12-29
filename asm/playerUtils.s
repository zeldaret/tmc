	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08077698
sub_08077698: @ 0x08077698
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0807771C @ =gPlayerState
	ldrb r1, [r2, #3]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #3]
	ldrb r1, [r2, #4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #4]
	ldrb r0, [r2, #7]
	ldrb r3, [r2, #2]
	orrs r0, r3
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08077700
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08077700
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077700
	adds r0, r4, #0
	bl sub_08077758
	cmp r0, #0
	beq _08077700
	bl sub_080777A0
	cmp r0, #0
	bne _08077700
	ldr r4, _08077720 @ =gSave
	adds r0, r4, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #0
	bl sub_08077880
	adds r4, #0xb5
	ldrb r0, [r4]
	movs r1, #2
	movs r2, #0
	bl sub_08077880
	bl sub_080778CC
_08077700:
	movs r5, #0
	ldr r4, _08077724 @ =gUnk_03000B80
_08077704:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _08077712
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080752E8
_08077712:
	adds r4, #0x1c
	adds r5, #1
	cmp r5, #3
	bls _08077704
	pop {r4, r5, pc}
	.align 2, 0
_0807771C: .4byte gPlayerState
_08077720: .4byte gSave
_08077724: .4byte gUnk_03000B80

	thumb_func_start sub_08077728
sub_08077728: @ 0x08077728
	push {lr}
	cmp r0, #0
	bne _08077744
	ldr r0, _08077740 @ =gSave
	adds r0, #0xb4
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #1
	bl sub_08077880
	b _08077752
	.align 2, 0
_08077740: .4byte gSave
_08077744:
	ldr r0, _08077754 @ =gSave
	adds r0, #0xb5
	ldrb r0, [r0]
	movs r1, #2
	movs r2, #1
	bl sub_08077880
_08077752:
	pop {pc}
	.align 2, 0
_08077754: .4byte gSave

	thumb_func_start sub_08077758
sub_08077758: @ 0x08077758
	push {lr}
	adds r3, r0, #0
	ldr r2, _08077794 @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807779C
	movs r0, #0xd5
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08077798
	ldrb r0, [r2, #0x1e]
	ldrb r1, [r2, #0x1a]
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _0807779C
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807779C
	movs r0, #1
	b _0807779E
	.align 2, 0
_08077794: .4byte gPlayerState
_08077798:
	bl DeleteClones
_0807779C:
	movs r0, #0
_0807779E:
	pop {pc}

	thumb_func_start sub_080777A0
sub_080777A0: @ 0x080777A0
	push {r4, lr}
	ldr r3, _080777D0 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08077870
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080777D4
	adds r1, r3, #0
	adds r1, #0xa0
	movs r0, #1
	strb r0, [r1]
	bl DeleteClones
_080777CC:
	movs r0, #1
	b _0807787C
	.align 2, 0
_080777D0: .4byte gPlayerState
_080777D4:
	ldr r2, _080777F4 @ =gArea
	ldrb r0, [r2, #0x18]
	cmp r0, #2
	beq _080777FC
	cmp r0, #3
	beq _08077810
	ldr r0, _080777F8 @ =gUnk_0200AF00
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0807787A
	adds r2, r3, #0
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _0807787A
	b _08077838
	.align 2, 0
_080777F4: .4byte gArea
_080777F8: .4byte gUnk_0200AF00
_080777FC:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _080777CC
	ldr r1, _0807780C @ =gPlayerEntity
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _080777CC
	.align 2, 0
_0807780C: .4byte gPlayerEntity
_08077810:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _0807787A
	ands r1, r4
	cmp r1, #0
	beq _0807787A
	ldr r0, _08077834 @ =gPlayerEntity
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xb4
	bl RequestPriorityDuration
	b _080777CC
	.align 2, 0
_08077834: .4byte gPlayerEntity
_08077838:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	beq _0807787A
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807787A
	ldr r0, [r2, #0x30]
	ldr r1, _0807786C @ =0x00040400
	ands r0, r1
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0807787A
	movs r0, #0x18
	strb r0, [r2, #0xc]
	b _0807787A
	.align 2, 0
_0807786C: .4byte 0x00040400
_08077870:
	ldr r0, [r3, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080777CC
_0807787A:
	movs r0, #0
_0807787C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08077880
sub_08077880: @ 0x08077880
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _080778C0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080778C4 @ =gUnk_0811BE48
	adds r5, r0, r1
	ldr r1, _080778C8 @ =gUnk_03004010
	ldrb r0, [r5]
	cmp r0, #0
	beq _080778A0
	adds r1, #2
_080778A0:
	ldrh r0, [r1]
	ands r0, r6
	cmp r0, #0
	bne _080778AC
	cmp r2, #0
	beq _080778C0
_080778AC:
	adds r0, r4, #0
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	beq _080778C0
	ldrb r0, [r5, #1]
	strb r0, [r1, #9]
	strb r4, [r1, #1]
	strb r6, [r1, #3]
_080778C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080778C4: .4byte gUnk_0811BE48
_080778C8: .4byte gUnk_03004010

	thumb_func_start sub_080778CC
sub_080778CC: @ 0x080778CC
	push {lr}
	ldr r2, _08077920 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08077924 @ =0x000400A0
	ands r0, r1
	cmp r0, #0
	bne _0807791C
	ldr r0, _08077928 @ =gPlayerEntity
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	bne _080778FA
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _080778FA
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807791C
_080778FA:
	bl sub_080789A8
	cmp r0, #0
	bne _08077910
	ldr r0, _08077920 @ =gPlayerState
	adds r0, #0x90
	ldrh r1, [r0]
	ldr r0, _0807792C @ =0x00000F03
	ands r0, r1
	cmp r0, #0
	bne _0807791C
_08077910:
	movs r0, #0x1b
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	bne _08077930
_0807791C:
	movs r0, #0
	b _08077940
	.align 2, 0
_08077920: .4byte gPlayerState
_08077924: .4byte 0x000400A0
_08077928: .4byte gPlayerEntity
_0807792C: .4byte 0x00000F03
_08077930:
	movs r0, #0x1b
	strb r0, [r1, #1]
	ldr r0, _08077944 @ =gUnk_0811BE48
	ldr r2, _08077948 @ =0x00000145
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #9]
	movs r0, #1
_08077940:
	pop {pc}
	.align 2, 0
_08077944: .4byte gUnk_0811BE48
_08077948: .4byte 0x00000145

	thumb_func_start sub_0807794C
sub_0807794C: @ 0x0807794C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080779B8 @ =gPlayerState
	ldrb r1, [r0, #0xc]
	adds r3, r0, #0
	cmp r1, #0x18
	bne _0807795E
	cmp r2, #0x1b
	bne _080779B2
_0807795E:
	ldr r0, [r3, #0x30]
	movs r1, #0x88
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807796E
	cmp r2, #6
	bhi _080779B2
_0807796E:
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _0807797C
	ldr r0, _080779BC @ =gPlayerEntity
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _08077980
_0807797C:
	cmp r2, #6
	bhi _080779B2
_08077980:
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807799A
	ldr r0, _080779C0 @ =gUnk_0811BE48
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _080779B2
_0807799A:
	ldrb r0, [r3, #0x12]
	cmp r0, #0x11
	bne _080779C4
	adds r0, r3, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _080779C4
	adds r0, r2, #0
	subs r0, #0x14
	cmp r0, #1
	bls _080779C4
_080779B2:
	movs r0, #0
	b _080779DE
	.align 2, 0
_080779B8: .4byte gPlayerState
_080779BC: .4byte gPlayerEntity
_080779C0: .4byte gUnk_0811BE48
_080779C4:
	ldr r1, _080779E0 @ =gUnk_0811BE48
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r1, _080779E4 @ =gUnk_0811BFC8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
_080779DE:
	pop {pc}
	.align 2, 0
_080779E0: .4byte gUnk_0811BE48
_080779E4: .4byte gUnk_0811BFC8

	thumb_func_start sub_080779E8
sub_080779E8: @ 0x080779E8
	movs r0, #0
	bx lr

	thumb_func_start sub_080779EC
sub_080779EC: @ 0x080779EC
	push {lr}
	ldr r1, _08077A00 @ =gUnk_03000B80
	adds r0, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	bne _08077A04
	adds r0, r1, #0
	adds r0, #0x1c
	b _08077A16
	.align 2, 0
_08077A00: .4byte gUnk_03000B80
_08077A04:
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _08077A12
	movs r0, #0
	b _08077A16
_08077A12:
	adds r0, r1, #0
	adds r0, #0x38
_08077A16:
	pop {pc}

	thumb_func_start sub_08077A18
sub_08077A18: @ 0x08077A18
	push {lr}
	adds r1, r0, #0
	ldr r0, _08077A3C @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077A44
	ldr r0, _08077A40 @ =gUnk_03000B80
	ldrb r2, [r0, #0x1d]
	cmp r1, r2
	beq _08077A44
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r1, r0
	beq _08077A44
	adds r0, r1, #0
	bl sub_080779EC
	b _08077A46
	.align 2, 0
_08077A3C: .4byte gPlayerState
_08077A40: .4byte gUnk_03000B80
_08077A44:
	movs r0, #0
_08077A46:
	pop {pc}

	thumb_func_start sub_08077A48
sub_08077A48: @ 0x08077A48
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r6, _08077A88 @ =gPlayerState
	ldrb r0, [r6, #5]
	cmp r0, #0
	bne _08077A94
	ldrb r1, [r6, #2]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08077A94
	ldr r0, _08077A8C @ =gUnk_0811BE48
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r5, _08077A90 @ =gUnk_03000B80
	ldrb r0, [r1, #1]
	ldrb r1, [r5, #9]
	cmp r0, r1
	blo _08077A94
	adds r0, r5, #0
	movs r1, #0
	bl sub_08077E78
	strb r4, [r6, #1]
	strb r4, [r6, #0x1c]
	strb r4, [r6, #0x1b]
	adds r0, r5, #0
	b _08077A96
	.align 2, 0
_08077A88: .4byte gPlayerState
_08077A8C: .4byte gUnk_0811BE48
_08077A90: .4byte gUnk_03000B80
_08077A94:
	movs r0, #0
_08077A96:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08077A98
sub_08077A98: @ 0x08077A98
	push {lr}
	ldr r0, _08077AB8 @ =gSave
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	beq _08077AC4
	ldr r0, _08077ABC @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08077AC4
	ldr r1, _08077AC0 @ =gUnk_03000B80
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _08077AC4
	adds r0, r1, #0
	b _08077AC6
	.align 2, 0
_08077AB8: .4byte gSave
_08077ABC: .4byte gPlayerState
_08077AC0: .4byte gUnk_03000B80
_08077AC4:
	movs r0, #0
_08077AC6:
	pop {pc}

	thumb_func_start sub_08077AC8
sub_08077AC8: @ 0x08077AC8
	push {lr}
	movs r2, #0
	ldr r1, _08077AD8 @ =gUnk_03000B80
_08077ACE:
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08077ADC
	movs r0, #0
	b _08077AE6
	.align 2, 0
_08077AD8: .4byte gUnk_03000B80
_08077ADC:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, #3
	bls _08077ACE
	ldr r0, _08077AE8 @ =gUnk_03000BD4
_08077AE6:
	pop {pc}
	.align 2, 0
_08077AE8: .4byte gUnk_03000BD4

	thumb_func_start sub_08077AEC
sub_08077AEC: @ 0x08077AEC
	push {lr}
	ldr r0, _08077B14 @ =gUnk_03000BD4
	movs r1, #3
	bl sub_08077E78
	ldr r2, _08077B18 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08077B1C @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x10
	bl IsItemEquipped
	adds r1, r0, #0
	cmp r1, #2
	beq _08077B12
	movs r0, #0xf
	bl ForceEquipItem
_08077B12:
	pop {pc}
	.align 2, 0
_08077B14: .4byte gUnk_03000BD4
_08077B18: .4byte gPlayerState
_08077B1C: .4byte 0xFF7FFFFF

	thumb_func_start sub_08077B20
sub_08077B20: @ 0x08077B20
	push {lr}
	bl ResetPlayer
	bl sub_08077AEC
	pop {pc}
