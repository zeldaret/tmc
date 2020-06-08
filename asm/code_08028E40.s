	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
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
	bl sub_0807CBD0
	cmp r0, #0
	bne _08028E6C
	ldrh r0, [r5, #0xa]
	bl sub_0807CCB4
_08028E6C:
	movs r0, #0
	bl sub_08078A90
_08028E72:
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
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
	bl TextboxTryNoOverlap
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
	bl UpdateSprite
	ldr r0, _08029074 @ =0x00004022
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
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
	bl sub_0805E7BC
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
	bl UpdateCollisionLayer
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
	bl UpdateSprite
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
	bl GetProgressFlag
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
	bl GetProgressFlag
	b _080291D0
_080291C4:
	bl GetInventoryValue
	b _080291D0
_080291CA:
	ldrh r0, [r2, #0xa]
	bl sub_0807CBD0
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
	bl sub_0807CD04
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
	bl UpdateSprite
	b _0802929C
_08029296:
	adds r0, r2, #0
	bl sub_08004274
_0802929C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080292A0
sub_080292A0: @ 0x080292A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080292F8
	adds r0, r5, #0
	bl sub_080043E8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080292CE
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bne _080292C4
	adds r0, r5, #0
	bl sub_080296D8
_080292C4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001290
	b _080292FE
_080292CE:
	ldr r4, _080292F4 @ =gUnk_080CCC00
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	b _080292FE
	.align 2, 0
_080292F4: .4byte gUnk_080CCC00
_080292F8:
	adds r0, r5, #0
	bl sub_080293DC
_080292FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08029300
sub_08029300: @ 0x08029300
	push {lr}
	ldr r2, _08029314 @ =gUnk_080CCC18
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08029314: .4byte gUnk_080CCC18

	thumb_func_start sub_08029318
sub_08029318: @ 0x08029318
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x8e
	bne _0802932C
	adds r0, r4, #0
	bl sub_08029770
	b _080293A6
_0802932C:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _08029338
	adds r0, r4, #0
	bl sub_080296D8
_08029338:
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _08029394
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _08029356
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl UpdateSprite
_08029356:
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x41
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08029390 @ =gLinkEntity
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x80
	strb r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	b _080293A6
	.align 2, 0
_08029390: .4byte gLinkEntity
_08029394:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080293A6
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080293A6:
	ldr r1, _080293B0 @ =gUnk_080CCC00
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_080293B0: .4byte gUnk_080CCC00

	thumb_func_start sub_080293B4
sub_080293B4: @ 0x080293B4
	push {lr}
	ldr r3, _080293D4 @ =gUnk_080CCC34
	adds r1, r0, #0
	adds r1, #0x84
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldrb r2, [r0, #0xa]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r1, #0xff
	bl sub_0804A7E0
	pop {pc}
	.align 2, 0
_080293D4: .4byte gUnk_080CCC34

	thumb_func_start nullsub_141
nullsub_141: @ 0x080293D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080293DC
sub_080293DC: @ 0x080293DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _08029408 @ =gUnk_080CCC3C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08029408: .4byte gUnk_080CCC3C

	thumb_func_start sub_0802940C
sub_0802940C: @ 0x0802940C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	movs r0, #0x17
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _0802944A
	adds r0, r4, #0
	bl sub_0804A720
	str r4, [r5, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xb]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080297F0
_0802944A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802944C
sub_0802944C: @ 0x0802944C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029470
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08029470
	adds r0, r4, #0
	bl sub_08029770
_08029470:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029474
sub_08029474: @ 0x08029474
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080294C0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r1, _080294BC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	bl UpdateSprite
	b _080294D2
	.align 2, 0
_080294BC: .4byte gLinkEntity
_080294C0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080294D2
	strb r1, [r3]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_080294D2:
	pop {r4, pc}

	thumb_func_start sub_080294D4
sub_080294D4: @ 0x080294D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802951C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029508
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r1, _08029518 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0802969C
_08029508:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080296C8
	b _08029538
	.align 2, 0
_08029518: .4byte gLinkEntity
_0802951C:
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	ldr r0, [r4, #0x54]
	movs r1, #7
	bl UpdateSprite
_08029538:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802953C
sub_0802953C: @ 0x0802953C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080296C8
	adds r0, r5, #0
	bl sub_080296C8
	bl sub_0807953C
	cmp r0, #0
	beq _08029558
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
_08029558:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08029562
	subs r0, #1
	strb r0, [r5, #0xe]
_08029562:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x2d
	bhi _08029572
	ldr r0, _08029580 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029584
_08029572:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08029584
	adds r0, r5, #0
	bl sub_080296D8
	b _080295FE
	.align 2, 0
_08029580: .4byte gUnk_02002A40
_08029584:
	bl sub_08077B2C
	ldr r2, _08029600 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _08029604 @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080295FE
	movs r0, #0x41
	strb r0, [r1]
	ldr r0, _08029608 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080295FE
	ldr r1, _0802960C @ =gUnk_080CCC44
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl ModRupees
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
_080295FE:
	pop {r4, r5, pc}
	.align 2, 0
_08029600: .4byte gLinkState
_08029604: .4byte gLinkEntity
_08029608: .4byte gUnk_02002A40
_0802960C: .4byte gUnk_080CCC44

	thumb_func_start sub_08029610
sub_08029610: @ 0x08029610
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029628
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0xe]
_08029628:
	adds r0, r1, #0
	bl sub_080296C8
	pop {pc}

	thumb_func_start sub_08029630
sub_08029630: @ 0x08029630
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802965E
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r4, #0
	bl sub_080297F0
_0802965E:
	pop {r4, pc}

	thumb_func_start sub_08029660
sub_08029660: @ 0x08029660
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xd1
	strh r1, [r0, #0x12]
	ldr r2, _08029684 @ =gUnk_080CCC47
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r0, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
_08029684: .4byte gUnk_080CCC47

	thumb_func_start sub_08029688
sub_08029688: @ 0x08029688
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802969A
	adds r0, r1, #0
	bl sub_0805E7BC
_0802969A:
	pop {pc}

	thumb_func_start sub_0802969C
sub_0802969C: @ 0x0802969C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080296C4
	lsrs r4, r1, #4
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _080296C4
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl UpdateSprite
	ldr r0, [r5, #0x54]
	adds r1, r4, #4
	bl UpdateSprite
_080296C4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080296C8
sub_080296C8: @ 0x080296C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x54]
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080296D8
sub_080296D8: @ 0x080296D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08029764 @ =gLinkState
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08029768 @ =gLinkEntity
	mov ip, r0
	ldrb r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	adds r1, #0x3d
	movs r0, #0xa6
	strb r0, [r1]
	movs r3, #0
	ldr r0, _0802976C @ =0x0000FFFE
	mov r1, ip
	strh r0, [r1, #0x36]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	mov r5, ip
	adds r5, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r0, ip
	adds r0, #0x63
	strb r3, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r1, ip
	strh r0, [r1, #0x24]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08029762
	movs r0, #0xf4
	strb r0, [r1]
_08029762:
	pop {r4, r5, pc}
	.align 2, 0
_08029764: .4byte gLinkState
_08029768: .4byte gLinkEntity
_0802976C: .4byte 0x0000FFFE

	thumb_func_start sub_08029770
sub_08029770: @ 0x08029770
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x73
	bl sub_080ADF80
	cmp r0, #0
	beq _080297E8
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xd1
	strh r0, [r4, #0x12]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x8d
	strb r0, [r1]
	ldr r0, _080297EC @ =gUnk_080FD260
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_080A29BC
_080297E8:
	pop {r4, pc}
	.align 2, 0
_080297EC: .4byte gUnk_080FD260

	thumb_func_start sub_080297F0
sub_080297F0: @ 0x080297F0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x8e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AE068
	ldr r0, _08029850 @ =0x00000143
	strh r0, [r4, #0x12]
	ldr r1, _08029854 @ =gUnk_080CCC47
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #9
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x54
	bl UpdateSprite
	pop {r4, pc}
	.align 2, 0
_08029850: .4byte 0x00000143
_08029854: .4byte gUnk_080CCC47

	thumb_func_start sub_08029858
sub_08029858: @ 0x08029858
	push {lr}
	ldr r2, _0802986C @ =gUnk_080CCD44
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802986C: .4byte gUnk_080CCD44

	thumb_func_start sub_08029870
sub_08029870: @ 0x08029870
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08029888 @ =gUnk_080CCD60
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08029888: .4byte gUnk_080CCD60

	thumb_func_start sub_0802988C
sub_0802988C: @ 0x0802988C
	push {lr}
	ldr r2, _080298A0 @ =gUnk_080CCD78
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080298A0: .4byte gUnk_080CCD78

	thumb_func_start sub_080298A4
sub_080298A4: @ 0x080298A4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _08029970
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1e
	bhi _08029948
	lsls r0, r1, #2
	ldr r1, _080298C8 @ =_080298CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080298C8: .4byte _080298CC
_080298CC: @ jump table
	.4byte _08029970 @ case 0
	.4byte _08029970 @ case 1
	.4byte _08029970 @ case 2
	.4byte _08029970 @ case 3
	.4byte _08029948 @ case 4
	.4byte _08029948 @ case 5
	.4byte _08029948 @ case 6
	.4byte _08029948 @ case 7
	.4byte _08029948 @ case 8
	.4byte _08029948 @ case 9
	.4byte _08029948 @ case 10
	.4byte _08029948 @ case 11
	.4byte _08029948 @ case 12
	.4byte _08029948 @ case 13
	.4byte _08029948 @ case 14
	.4byte _08029970 @ case 15
	.4byte _08029948 @ case 16
	.4byte _08029948 @ case 17
	.4byte _08029948 @ case 18
	.4byte _08029970 @ case 19
	.4byte _08029948 @ case 20
	.4byte _08029948 @ case 21
	.4byte _08029948 @ case 22
	.4byte _08029948 @ case 23
	.4byte _08029948 @ case 24
	.4byte _08029948 @ case 25
	.4byte _08029948 @ case 26
	.4byte _08029970 @ case 27
	.4byte _08029948 @ case 28
	.4byte _08029948 @ case 29
	.4byte _08029970 @ case 30
_08029948:
	movs r1, #0
	movs r4, #2
	strb r4, [r5, #0xc]
	strb r1, [r5, #0xe]
	adds r2, r5, #0
	adds r2, #0x3f
	movs r0, #0x6b
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x77
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0xfe
	bl sub_08004488
	ldr r0, [r5, #0x54]
	strb r4, [r0, #0xc]
_08029970:
	ldr r1, _0802997C @ =gUnk_080CCD60
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0802997C: .4byte gUnk_080CCD60

	thumb_func_start sub_08029980
sub_08029980: @ 0x08029980
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	beq _08029990
	subs r0, #1
	strb r0, [r1, #0xf]
	b _08029996
_08029990:
	adds r0, r1, #0
	bl sub_0804A7D4
_08029996:
	pop {pc}

	thumb_func_start nullsub_14
nullsub_14: @ 0x08029998
	bx lr
	.align 2, 0