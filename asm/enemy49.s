	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Enemy49
Enemy49: @ 0x0803CE80
	push {lr}
	ldr r2, _0803CE94 @ =gUnk_080D0448
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803CE94: .4byte gUnk_080D0448

	thumb_func_start sub_0803CE98
sub_0803CE98: @ 0x0803CE98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r2, [r1]
	movs r5, #0xf0
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #5
	strh r0, [r6, #0x24]
	ldrh r2, [r1]
	ldr r4, _0803CF1C @ =0x00000FFF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r6, #0xc]
	adds r3, r6, #0
	adds r3, #0x82
	ldrh r0, [r3]
	ands r4, r0
	adds r0, r6, #0
	adds r0, #0x74
	strh r4, [r0]
	ldrh r0, [r3]
	movs r1, #0x3f
	ands r1, r0
	lsls r1, r1, #4
	ldr r2, _0803CF20 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r0, #8
	adds r1, r1, r0
	strh r1, [r6, #0x2e]
	ldrh r1, [r3]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r1, [r2, #8]
	adds r1, #8
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ands r0, r5
	asrs r0, r0, #0xa
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0803CFF0
	cmp r0, #0
	beq _0803CF18
	adds r0, r6, #0
	bl sub_0803D0B0
_0803CF18:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803CF1C: .4byte 0x00000FFF
_0803CF20: .4byte gRoomControls

	thumb_func_start sub_0803CF24
sub_0803CF24: @ 0x0803CF24
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CFD8
	cmp r0, #0
	beq _0803CF36
	adds r0, r4, #0
	bl sub_0803D024
_0803CF36:
	pop {r4, pc}

	thumb_func_start sub_0803CF38
sub_0803CF38: @ 0x0803CF38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803CFF0
	cmp r0, #0
	beq _0803CF4C
	adds r0, r4, #0
	bl sub_0803D0B0
	b _0803CF8C
_0803CF4C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049FDC
	cmp r0, #0
	beq _0803CF8C
	ldr r0, _0803CF90 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803CF8C
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803CF8C
	adds r0, r4, #0
	bl sub_0803D058
	adds r0, r4, #0
	bl sub_0803D024
_0803CF8C:
	pop {r4, pc}
	.align 2, 0
_0803CF90: .4byte gUnk_020000B0

	thumb_func_start sub_0803CF94
sub_0803CF94: @ 0x0803CF94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	cmp r0, #0x76
	bne _0803CFBA
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803D024
	b _0803CFD4
_0803CFBA:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803CFD4
	adds r0, r4, #0
	bl sub_0803CFD8
	cmp r0, #0
	beq _0803CFD4
	adds r0, r4, #0
	bl sub_0803D024
_0803CFD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803CFD8
sub_0803CFD8: @ 0x0803CFD8
	push {lr}
	adds r1, r0, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	bne _0803CFE8
	movs r0, #1
	b _0803CFEE
_0803CFE8:
	ldrh r0, [r1]
	bl CheckFlags
_0803CFEE:
	pop {pc}

	thumb_func_start sub_0803CFF0
sub_0803CFF0: @ 0x0803CFF0
	push {lr}
	adds r1, r0, #0
	adds r1, #0x80
	ldrh r2, [r1]
	cmp r2, #0
	beq _0803D01E
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r2, r0
	bne _0803D016
	adds r0, r2, #0
	bl CheckFlags
	movs r1, #0
	cmp r0, #0
	bne _0803D012
	movs r1, #1
_0803D012:
	adds r0, r1, #0
	b _0803D020
_0803D016:
	ldrh r0, [r1]
	bl CheckFlags
	b _0803D020
_0803D01E:
	movs r0, #0
_0803D020:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803D024
sub_0803D024: @ 0x0803D024
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803D03A
	adds r0, #2
	b _0803D04E
_0803D03A:
	bl Random
	ldr r2, _0803D054 @ =gUnk_080D0458
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
_0803D04E:
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0803D054: .4byte gUnk_080D0458

	thumb_func_start sub_0803D058
sub_0803D058: @ 0x0803D058
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x16
	movs r2, #0
	bl CreateProjectileWithParent
	adds r5, r0, #0
	cmp r5, #0
	beq _0803D0AE
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803D078
	strh r1, [r5, #0x24]
	b _0803D08A
_0803D078:
	bl Random
	ldr r2, _0803D0A4 @ =gUnk_080D0468
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r5, #0x24]
_0803D08A:
	ldrb r1, [r4, #0x15]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803D0AC
	ldr r0, _0803D0A8 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	b _0803D0AE
	.align 2, 0
_0803D0A4: .4byte gUnk_080D0468
_0803D0A8: .4byte gUnk_020000B0
_0803D0AC:
	strb r1, [r5, #0x15]
_0803D0AE:
	pop {r4, r5, pc}

	thumb_func_start sub_0803D0B0
sub_0803D0B0: @ 0x0803D0B0
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x75
	bl sub_0807B7D8
	pop {pc}
