	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806ED78
sub_0806ED78: @ 0x0806ED78
	push {r4, lr}
	bl sub_0800445C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806ED94
	ldr r0, _0806ED98 @ =gLinkState
	ldrb r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806ED94
	bl sub_08077B20
_0806ED94:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0806ED98: .4byte gLinkState

	thumb_func_start sub_0806ED9C
sub_0806ED9C: @ 0x0806ED9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	movs r6, #1
	rsbs r6, r6, #0
	ldr r1, _0806EDC0 @ =gLinkEntity
	adds r2, r4, #0
	bl sub_080041A0
	cmp r0, #0
	beq _0806EDBC
	adds r0, r5, #0
	bl sub_0806EDC4
	adds r6, r0, #0
_0806EDBC:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806EDC0: .4byte gLinkEntity

	thumb_func_start sub_0806EDC4
sub_0806EDC4: @ 0x0806EDC4
	push {lr}
	ldr r1, _0806EDD4 @ =gLinkEntity
	bl sub_080045C4
	bl sub_0806F5A4
	pop {pc}
	.align 2, 0
_0806EDD4: .4byte gLinkEntity

	thumb_func_start sub_0806EDD8
sub_0806EDD8: @ 0x0806EDD8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	movs r7, #1
	rsbs r7, r7, #0
	ldr r6, _0806EE00 @ =gLinkEntity
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080041A0
	cmp r0, #0
	beq _0806EDFC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080045C4
	adds r7, r0, #0
_0806EDFC:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806EE00: .4byte gLinkEntity

	thumb_func_start sub_0806EE04
sub_0806EE04: @ 0x0806EE04
	adds r3, r0, #0
	str r1, [r3, #0x54]
	adds r0, #0x3c
	movs r1, #0
	strb r2, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r2, r3, #0
	adds r2, #0x46
	movs r0, #0
	strh r1, [r2]
	strb r0, [r3, #0x16]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EE20
sub_0806EE20: @ 0x0806EE20
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806EE4C
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0806EE66
	ldr r1, _0806EE48 @ =gUnk_08114EFC
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806EE68
	.align 2, 0
_0806EE48: .4byte gUnk_08114EFC
_0806EE4C:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0806EE6C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
_0806EE66:
	movs r0, #0
_0806EE68:
	pop {r4, pc}
	.align 2, 0
_0806EE6C: .4byte gLinkEntity

	thumb_func_start sub_0806EE70
sub_0806EE70: @ 0x0806EE70
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0806EE92
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0806EF14
_0806EE92:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	mov r1, sp
	bl sub_0806EF4C
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r4, #0
	bl sub_080041DC
	adds r1, r0, #0
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0806EEB8
	rsbs r0, r0, #0
_0806EEB8:
	lsrs r0, r0, #3
	cmp r0, r1
	bhi _0806EEC2
	movs r0, #0
	b _0806EECA
_0806EEC2:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806EF74
_0806EECA:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806EED0
sub_0806EED0: @ 0x0806EED0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806EEE8
	movs r0, #0
	b _0806EEF0
_0806EEE8:
	adds r0, r2, #0
	movs r1, #2
	bl sub_0806EF74
_0806EEF0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806EEF4
sub_0806EEF4: @ 0x0806EEF4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806EF08
	movs r0, #0
	b _0806EF10
_0806EF08:
	adds r0, r2, #0
	movs r1, #1
	bl sub_0806EF74
_0806EF10:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806EF14
sub_0806EF14: @ 0x0806EF14
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r1, sp
	bl sub_0806EF4C
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r4, #0
	bl sub_080045B4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806EF48
	ldrb r0, [r4, #0x15]
	bl sub_0806F5A4
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
_0806EF48:
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_0806EF4C
sub_0806EF4C: @ 0x0806EF4C
	push {r4, lr}
	adds r2, r0, #0
	adds r2, #0x3f
	ldrb r2, [r2]
	lsls r2, r2, #1
	ldr r3, [r0, #0x54]
	adds r3, r3, r2
	ldr r2, _0806EF70 @ =gRoomControls
	ldrh r0, [r3, #2]
	ldrh r4, [r2, #6]
	adds r0, r0, r4
	strh r0, [r1]
	ldrh r0, [r3, #4]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r1, #2]
	pop {r4, pc}
	.align 2, 0
_0806EF70: .4byte gRoomControls

	thumb_func_start sub_0806EF74
sub_0806EF74: @ 0x0806EF74
	push {lr}
	adds r3, r0, #0
	adds r3, #0x3f
	ldrb r2, [r3]
	adds r2, r2, r1
	strb r2, [r3]
	bl sub_0806EF88
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806EF88
sub_0806EF88: @ 0x0806EF88
	push {lr}
	adds r1, r0, #0
	adds r1, #0x3f
	ldrb r2, [r1]
	lsls r2, r2, #1
	ldr r1, [r0, #0x54]
	adds r1, r1, r2
	ldr r3, _0806EFA8 @ =gUnk_08114F0C
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_0806EFA8: .4byte gUnk_08114F0C

	thumb_func_start sub_0806EFAC
sub_0806EFAC: @ 0x0806EFAC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0
	strb r1, [r2]
	bl sub_0806EF88
	pop {pc}

	thumb_func_start sub_0806EFBC
sub_0806EFBC: @ 0x0806EFBC
	movs r1, #1
	strb r1, [r0, #0x16]
	adds r0, #0x46
	movs r1, #8
	strh r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EFCC
sub_0806EFCC: @ 0x0806EFCC
	movs r2, #2
	strb r2, [r0, #0x16]
	ldrh r1, [r1, #2]
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0806EFDC
sub_0806EFDC: @ 0x0806EFDC
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r1]
	lsrs r0, r0, #8
	cmp r0, #0
	beq _0806EFF4
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	b _0806EFFE
_0806EFF4:
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
_0806EFFE:
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_0806EF88
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806F014
sub_0806F014: @ 0x0806F014
	push {lr}
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	ldrb r1, [r2]
	adds r1, #2
	strb r1, [r2]
	bl sub_0806EF88
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806F02C
sub_0806F02C: @ 0x0806F02C
	push {lr}
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r2, r0, #0
	adds r2, #0x3e
	strb r1, [r2]
	adds r2, #1
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	bl sub_0806EF88
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806F048
sub_0806F048: @ 0x0806F048
	movs r1, #3
	strb r1, [r0, #0x16]
	movs r0, #0
	bx lr

	thumb_func_start sub_0806F050
sub_0806F050: @ 0x0806F050
	push {lr}
	adds r1, #2
	str r1, [r0, #0x54]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0
	strb r1, [r2]
	bl sub_0806EF88
	pop {pc}

	thumb_func_start sub_0806F064
sub_0806F064: @ 0x0806F064
	movs r2, #0
	strb r2, [r0, #0x16]
	adds r0, #0x3f
	ldrb r2, [r0]
	adds r2, #1
	strb r2, [r0]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F078
sub_0806F078: @ 0x0806F078
	push {lr}
	adds r2, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _0806F0A0
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806F096
	adds r0, r2, #0
	bl InitAnimationForceUpdate
	b _0806F09C
_0806F096:
	adds r0, r2, #0
	bl InitializeAnimation
_0806F09C:
	movs r0, #1
	b _0806F0A2
_0806F0A0:
	movs r0, #0
_0806F0A2:
	pop {pc}

	thumb_func_start sub_0806F0A4
sub_0806F0A4: @ 0x0806F0A4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _0806F114 @ =gUnk_03003DA8
	ldr r5, [r7, #4]
	movs r0, #0
	cmp r5, r7
	beq _0806F0BA
_0806F0B2:
	adds r0, #1
	ldr r5, [r5, #4]
	cmp r5, r7
	bne _0806F0B2
_0806F0BA:
	cmp r0, #1
	bls _0806F10E
	ldr r5, [r7, #4]
	cmp r5, r7
	beq _0806F10E
	movs r2, #1
_0806F0C6:
	ldrb r1, [r5, #0x10]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F108
	ldrb r1, [r5, #0x17]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F108
	ldr r4, [r5, #4]
	cmp r4, r7
	beq _0806F108
	movs r6, #1
_0806F0E2:
	ldrb r1, [r4, #0x10]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F102
	ldrb r1, [r4, #0x17]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F102
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_08004484
	ldr r2, [sp]
_0806F102:
	ldr r4, [r4, #4]
	cmp r4, r7
	bne _0806F0E2
_0806F108:
	ldr r5, [r5, #4]
	cmp r5, r7
	bne _0806F0C6
_0806F10E:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806F114: .4byte gUnk_03003DA8

	thumb_func_start sub_0806F118
sub_0806F118: @ 0x0806F118
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08002632
	ldr r1, _0806F140 @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldrh r3, [r0, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0806F144 @ =gLinkState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0806F140: .4byte gUnk_08001A7C
_0806F144: .4byte gLinkState

	thumb_func_start UpdateFuseInteraction
UpdateFuseInteraction: @ 0x0806F148
	push {r4, lr}
	bl sub_0801E00C
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _0806F164 @ =gUnk_02022740
	ldrb r0, [r0]
	cmp r0, #1
	beq _0806F172
	cmp r0, #2
	beq _0806F168
	movs r4, #0
	b _0806F17E
	.align 2, 0
_0806F164: .4byte gUnk_02022740
_0806F168:
	ldr r0, _0806F184 @ =gLinkState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	movs r4, #1
_0806F172:
	bl sub_0807919C
	ldr r0, _0806F184 @ =gLinkState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
_0806F17E:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0806F184: .4byte gLinkState

	thumb_func_start sub_0806F188
sub_0806F188: @ 0x0806F188
	push {lr}
	bl sub_08002632
	adds r1, r0, #0
	cmp r1, #0
	beq _0806F1A0
	ldr r0, _0806F1A4 @ =gUnk_02002A40
	ldr r2, _0806F1A8 @ =0x000001C1
	adds r0, r0, r2
	adds r0, r1, r0
	movs r1, #0xf3
	strb r1, [r0]
_0806F1A0:
	pop {pc}
	.align 2, 0
_0806F1A4: .4byte gUnk_02002A40
_0806F1A8: .4byte 0x000001C1

	thumb_func_start ShowNPCDialogue
ShowNPCDialogue: @ 0x0806F1AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r6, r1, #0
	ldrh r1, [r6, #2]
	asrs r7, r1, #4
	movs r0, #1
	ands r7, r0
	movs r0, #0xf
	ands r1, r0
	cmp r1, #6
	bls _0806F1C8
	b _0806F332
_0806F1C8:
	lsls r0, r1, #2
	ldr r1, _0806F1D4 @ =_0806F1D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F1D4: .4byte _0806F1D8
_0806F1D8: @ jump table
	.4byte _0806F332 @ case 0
	.4byte _0806F342 @ case 1
	.4byte _0806F1F4 @ case 2
	.4byte _0806F24E @ case 3
	.4byte _0806F2BA @ case 4
	.4byte _0806F324 @ case 5
	.4byte _0806F336 @ case 6
_0806F1F4:
	ldr r4, [r6]
	asrs r1, r4, #0xc
	movs r0, #0xf
	ands r1, r0
	ldr r0, _0806F210 @ =0x00000FFF
	ands r4, r0
	movs r5, #0
	cmp r1, #1
	beq _0806F22A
	cmp r1, #1
	bgt _0806F214
	cmp r1, #0
	beq _0806F21A
	b _0806F248
	.align 2, 0
_0806F210: .4byte 0x00000FFF
_0806F214:
	cmp r1, #2
	beq _0806F23A
	b _0806F248
_0806F21A:
	adds r0, r4, #0
	bl CheckRoomFlag
	adds r5, r0, #0
_0806F222:
	adds r0, r4, #0
	bl SetRoomFlag
	b _0806F248
_0806F22A:
	adds r0, r4, #0
	bl CheckLocalFlag
	adds r5, r0, #0
_0806F232:
	adds r0, r4, #0
	bl SetLocalFlag
	b _0806F248
_0806F23A:
	adds r0, r4, #0
	bl CheckGlobalFlag
	adds r5, r0, #0
	adds r0, r4, #0
	bl SetGlobalFlag
_0806F248:
	cmp r5, #0
	beq _0806F342
	b _0806F34C
_0806F24E:
	ldr r4, [r6]
	asrs r1, r4, #0xc
	movs r0, #0xf
	ands r1, r0
	ldr r0, _0806F26C @ =0x00000FFF
	ands r4, r0
	movs r5, #0
	cmp r1, #1
	beq _0806F28A
	cmp r1, #1
	bgt _0806F270
	cmp r1, #0
	beq _0806F276
	b _0806F248
	.align 2, 0
_0806F26C: .4byte 0x00000FFF
_0806F270:
	cmp r1, #2
	beq _0806F29E
	b _0806F248
_0806F276:
	adds r0, r4, #0
	bl CheckRoomFlag
	adds r5, r0, #0
	cmp r5, #0
	beq _0806F222
	adds r0, r4, #0
	bl ClearRoomFlag
	b _0806F248
_0806F28A:
	adds r0, r4, #0
	bl CheckLocalFlag
	adds r5, r0, #0
	cmp r5, #0
	beq _0806F232
	adds r0, r4, #0
	bl ClearLocalFlag
	b _0806F248
_0806F29E:
	adds r0, r4, #0
	bl CheckGlobalFlag
	adds r5, r0, #0
	cmp r5, #0
	bne _0806F2B2
	adds r0, r4, #0
	bl SetGlobalFlag
	b _0806F248
_0806F2B2:
	adds r0, r4, #0
	bl ClearGlobalFlag
	b _0806F248
_0806F2BA:
	ldr r4, [r6]
	asrs r1, r4, #0xc
	movs r0, #0xf
	ands r1, r0
	ldr r0, _0806F2D8 @ =0x00000FFF
	ands r4, r0
	movs r5, #0
	cmp r1, #4
	bhi _0806F248
	lsls r0, r1, #2
	ldr r1, _0806F2DC @ =_0806F2E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F2D8: .4byte 0x00000FFF
_0806F2DC: .4byte _0806F2E0
_0806F2E0: @ jump table
	.4byte _0806F2F4 @ case 0
	.4byte _0806F2FC @ case 1
	.4byte _0806F304 @ case 2
	.4byte _0806F30C @ case 3
	.4byte _0806F314 @ case 4
_0806F2F4:
	adds r0, r4, #0
	bl CheckRoomFlag
	b _0806F320
_0806F2FC:
	adds r0, r4, #0
	bl CheckLocalFlag
	b _0806F320
_0806F304:
	adds r0, r4, #0
	bl CheckGlobalFlag
	b _0806F320
_0806F30C:
	adds r0, r4, #0
	bl CheckKinstoneFused
	b _0806F320
_0806F314:
	adds r0, r4, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _0806F320
	movs r0, #1
_0806F320:
	adds r5, r0, #0
	b _0806F248
_0806F324:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _0806F332
	mov r0, r8
	bl _call_via_r1
	b _0806F35E
_0806F332:
	movs r0, #0
	b _0806F34E
_0806F336:
	ldr r0, _0806F348 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806F34C
_0806F342:
	ldrh r0, [r6, #6]
	b _0806F34E
	.align 2, 0
_0806F348: .4byte gLinkState
_0806F34C:
	ldrh r0, [r6, #4]
_0806F34E:
	cmp r7, #0
	beq _0806F35A
	mov r1, r8
	bl TextboxNoOverlap
	b _0806F35E
_0806F35A:
	bl TextboxNoOverlapFollow
_0806F35E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0806F364
sub_0806F364: @ 0x0806F364
	push {lr}
	ldr r2, _0806F384 @ =gArea
	ldrb r0, [r2, #8]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r2, #8]
	ldrb r1, [r2, #8]
	adds r0, r1, #7
	asrs r0, r0, #3
	ldr r3, _0806F388 @ =0x00000868
	adds r1, r2, r3
	adds r0, r0, r1
	movs r1, #0x10
	bl sub_0801D630
	pop {pc}
	.align 2, 0
_0806F384: .4byte gArea
_0806F388: .4byte 0x00000868

	thumb_func_start sub_0806F38C
sub_0806F38C: @ 0x0806F38C
	ldr r0, _0806F398 @ =gArea
	ldrb r1, [r0, #8]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #8]
	bx lr
	.align 2, 0
_0806F398: .4byte gArea

	thumb_func_start sub_0806F39C
sub_0806F39C: @ 0x0806F39C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0806F3B8 @ =gLinkEntity
	ldrb r1, [r2, #0x14]
	movs r0, #2
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0806F3BC
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	b _0806F3C4
	.align 2, 0
_0806F3B8: .4byte gLinkEntity
_0806F3BC:
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
_0806F3C4:
	subs r1, r1, r0
	cmp r1, #0
	bge _0806F3CC
	rsbs r1, r1, #0
_0806F3CC:
	cmp r1, #0x40
	bgt _0806F3D4
	movs r0, #0
	b _0806F3E2
_0806F3D4:
	movs r0, #0x24
	ldrsh r1, [r3, r0]
	ldrb r2, [r3, #0x15]
	adds r0, r4, #0
	bl sub_080027EA
	movs r0, #1
_0806F3E2:
	pop {r4, pc}

	thumb_func_start sub_0806F3E4
sub_0806F3E4: @ 0x0806F3E4
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r0, #0
	ldr r2, _0806F408 @ =gLinkState
	ldrb r1, [r2, #0x1c]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #1
	bne _0806F4E0
	ldrb r0, [r2, #0x1d]
	cmp r0, #2
	beq _0806F420
	cmp r0, #2
	bgt _0806F40C
	cmp r0, #1
	beq _0806F416
	b _0806F410
	.align 2, 0
_0806F408: .4byte gLinkState
_0806F40C:
	cmp r0, #3
	beq _0806F42A
_0806F410:
	adds r3, r5, #0
	adds r3, #0x46
	b _0806F436
_0806F416:
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #0x40
	b _0806F432
_0806F420:
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #0x80
	b _0806F432
_0806F42A:
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #0xc0
_0806F432:
	strh r0, [r1]
	adds r3, r1, #0
_0806F436:
	adds r2, r3, #0
	ldrh r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #3
	cmp r0, r1
	bls _0806F444
	strh r1, [r2]
_0806F444:
	ldr r6, _0806F4BC @ =gLinkEntity
	ldrb r0, [r6, #0x14]
	movs r1, #0xe
	ands r1, r0
	ldr r0, _0806F4C0 @ =gUnk_08126EE4
	adds r1, r1, r0
	mov r2, sp
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r4, [r6, #0x2e]
	adds r0, r0, r4
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrh r4, [r3]
	adds r0, r5, #0
	mov r1, sp
	bl sub_080045C4
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806F5BC
	mov r0, sp
	adds r1, r5, #0
	movs r2, #4
	movs r3, #4
	bl sub_0800419C
	cmp r0, #0
	beq _0806F4E0
	ldrb r0, [r5, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #2
	bne _0806F4C8
	movs r0, #3
	strb r0, [r5, #0xd]
	str r5, [r6, #0x70]
	ldr r1, _0806F4C4 @ =gLinkState
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #0x11
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08077CB8
	cmp r0, #0
	beq _0806F4B4
	str r5, [r0, #0x54]
	str r0, [r5, #0x50]
_0806F4B4:
	movs r0, #0xed
	bl PlaySFX
	b _0806F4D8
	.align 2, 0
_0806F4BC: .4byte gLinkEntity
_0806F4C0: .4byte gUnk_08126EE4
_0806F4C4: .4byte gLinkState
_0806F4C8:
	cmp r1, #1
	bne _0806F4D8
	ldr r0, _0806F4DC @ =gLinkState
	ldr r0, [r0, #0x2c]
	strb r1, [r0, #0xa]
	movs r0, #0xef
	bl PlaySFX
_0806F4D8:
	movs r0, #1
	b _0806F4E2
	.align 2, 0
_0806F4DC: .4byte gLinkState
_0806F4E0:
	movs r0, #0
_0806F4E2:
	add sp, #0x88
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806F4E8
sub_0806F4E8: @ 0x0806F4E8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x1d]
	movs r2, #3
	ands r2, r0
	cmp r2, #1
	beq _0806F516
	cmp r2, #1
	bgt _0806F500
	cmp r2, #0
	beq _0806F510
	b _0806F51C
_0806F500:
	cmp r2, #2
	beq _0806F50A
	cmp r2, #3
	beq _0806F516
	b _0806F51C
_0806F50A:
	adds r1, #0x62
	movs r0, #0xfe
	b _0806F51A
_0806F510:
	adds r1, #0x62
	movs r0, #2
	b _0806F51A
_0806F516:
	adds r1, #0x62
	movs r0, #0
_0806F51A:
	strb r0, [r1]
_0806F51C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806F520
sub_0806F520: @ 0x0806F520
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x93
	beq _0806F544
	adds r3, r2, #0
	adds r3, #0x3a
	ldrb r1, [r3]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x63
	strb r1, [r0]
	movs r0, #0
	b _0806F546
_0806F544:
	movs r0, #1
_0806F546:
	pop {pc}

	thumb_func_start sub_0806F548
sub_0806F548: @ 0x0806F548
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080041A0
	cmp r0, #0
	bne _0806F55A
	movs r0, #0
	b _0806F562
_0806F55A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806F58C
_0806F562:
	pop {r4, r5, pc}

	thumb_func_start sub_0806F564
sub_0806F564: @ 0x0806F564
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	bl sub_080045D4
	bl sub_0806F5A4
	movs r2, #0
	ldrb r1, [r4, #0x14]
	cmp r1, r0
	bne _0806F588
	movs r2, #1
_0806F588:
	adds r0, r2, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0806F58C
sub_0806F58C: @ 0x0806F58C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FCA0
	movs r2, #0
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	cmp r1, r0
	bne _0806F5A0
	movs r2, #1
_0806F5A0:
	adds r0, r2, #0
	pop {r4, pc}

	thumb_func_start sub_0806F5A4
sub_0806F5A4: @ 0x0806F5A4
	ldr r1, _0806F5AC @ =gUnk_08114F38
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0806F5AC: .4byte gUnk_08114F38

	thumb_func_start sub_0806F5B0
sub_0806F5B0: @ 0x0806F5B0
	ldr r1, _0806F5B8 @ =gUnk_08114F58
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0806F5B8: .4byte gUnk_08114F58

	thumb_func_start sub_0806F5BC
sub_0806F5BC: @ 0x0806F5BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0806F620
	ldr r0, _0806F628 @ =gUnk_080C9160
	mov r8, r0
	lsls r4, r2, #3
	lsls r0, r2, #4
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x2c]
	adds r1, r1, r0
	str r1, [r7, #0x2c]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x30]
	subs r1, r1, r0
	str r1, [r7, #0x30]
_0806F620:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806F628: .4byte gUnk_080C9160

	thumb_func_start sub_0806F62C
sub_0806F62C: @ 0x0806F62C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r0, _0806F698 @ =gUnk_080C9160
	mov sb, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x30]
	subs r1, r1, r0
	str r1, [r6, #0x30]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806F698: .4byte gUnk_080C9160

	thumb_func_start sub_0806F69C
sub_0806F69C: @ 0x0806F69C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r1, [r6, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806F6FE
	ldr r5, _0806F700 @ =gUnk_080C9160
	ldrb r0, [r6, #0x15]
	lsls r0, r0, #4
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0x24
	ldrsh r1, [r6, r2]
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	ldrb r0, [r6, #0x15]
	lsls r0, r0, #4
	adds r0, #0x80
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0x24
	ldrsh r1, [r6, r2]
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x30]
	subs r1, r1, r0
	str r1, [r6, #0x30]
_0806F6FE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806F700: .4byte gUnk_080C9160

	thumb_func_start sub_0806F704
sub_0806F704: @ 0x0806F704
	push {r4, r5, r6, lr}
	lsls r3, r1, #4
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r6, r2, #0
	ands r3, r6
	movs r5, #8
	orrs r3, r5
	ldr r4, _0806F72C @ =gRoomControls
	ldrh r2, [r4, #6]
	adds r2, r2, r3
	strh r2, [r0, #0x2e]
	lsrs r1, r1, #2
	ands r1, r6
	orrs r1, r5
	ldrh r2, [r4, #8]
	adds r2, r2, r1
	strh r2, [r0, #0x32]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806F72C: .4byte gRoomControls

	thumb_func_start sub_0806F730
sub_0806F730: @ 0x0806F730
	push {r4, r5, r6, lr}
	movs r6, #0x3f
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r4, [r0, #0x48]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r2, r2, r1
	ldr r3, _0806F764 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r5, r2, r1
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #1
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	ldrb r0, [r0, #0x14]
	cmp r0, #2
	beq _0806F77E
	cmp r0, #2
	bgt _0806F768
	cmp r0, #0
	beq _0806F772
	b _0806F788
	.align 2, 0
_0806F764: .4byte gRoomControls
_0806F768:
	cmp r0, #4
	beq _0806F778
	cmp r0, #6
	beq _0806F784
	b _0806F788
_0806F772:
	ldrb r0, [r4, #5]
	subs r1, r1, r0
	b _0806F788
_0806F778:
	ldrb r0, [r4, #5]
	adds r1, r1, r0
	b _0806F788
_0806F77E:
	ldrb r0, [r4, #2]
	adds r5, r5, r0
	b _0806F788
_0806F784:
	ldrb r0, [r4, #2]
	subs r5, r5, r0
_0806F788:
	lsrs r0, r5, #4
	ands r0, r6
	lsrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	adds r0, r0, r1
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806F798
sub_0806F798: @ 0x0806F798
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r4, [r2, #0x48]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r3, _0806F7CC @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	movs r5, #0x32
	ldrsh r1, [r2, r5]
	movs r2, #1
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	movs r2, #0x3f
	lsrs r0, r0, #4
	ands r0, r2
	lsrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	adds r0, r0, r1
	pop {r4, r5, pc}
	.align 2, 0
_0806F7CC: .4byte gRoomControls

	thumb_func_start sub_0806F7D0
sub_0806F7D0: @ 0x0806F7D0
	push {r4, lr}
	ldr r4, _0806F7E4 @ =gUnk_02025EB0
	bl sub_0806F730
	ldr r1, _0806F7E8 @ =0x00002004
	adds r4, r4, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	pop {r4, pc}
	.align 2, 0
_0806F7E4: .4byte gUnk_02025EB0
_0806F7E8: .4byte 0x00002004

	thumb_func_start sub_0806F7EC
sub_0806F7EC: @ 0x0806F7EC
	push {r4, lr}
	ldr r4, _0806F800 @ =gUnk_02025EB0
	bl sub_0806F730
	lsls r0, r0, #1
	adds r4, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	pop {r4, pc}
	.align 2, 0
_0806F800: .4byte gUnk_02025EB0

	thumb_func_start sub_0806F804
sub_0806F804: @ 0x0806F804
	lsrs r0, r0, #4
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0xfc
	lsls r2, r2, #2
	ands r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, _0806F820 @ =gUnk_02025EB0
	lsls r0, r0, #1
	adds r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0806F820: .4byte gUnk_02025EB0

	thumb_func_start sub_0806F824
sub_0806F824: @ 0x0806F824
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r2, #0
	adds r5, r3, #0
	movs r2, #0x2e
	ldrsh r6, [r0, r2]
	movs r2, #0x32
	ldrsh r3, [r0, r2]
	mov r8, r3
	movs r3, #0x2e
	ldrsh r2, [r1, r3]
	adds r2, r2, r4
	movs r0, #0x32
	ldrsh r3, [r1, r0]
	adds r3, r3, r5
	adds r0, r6, #0
	mov r1, r8
	bl sub_080045D4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806F854
sub_0806F854: @ 0x0806F854
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0806F8D6
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806F8D6
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r0, r0, r3
	ldr r2, _0806F8BC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r5, #0x3f
	ands r0, r5
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	adds r1, r1, r6
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #2
	movs r2, #8
	bl sub_080002F0
	cmp r0, #0
	beq _0806F8C0
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r1, [r4, #0x1b]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1b]
	movs r0, #1
	b _0806F8D8
	.align 2, 0
_0806F8BC: .4byte gRoomControls
_0806F8C0:
	ldrb r1, [r4, #0x19]
	adds r0, r5, #0
	ands r0, r1
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r1, [r4, #0x1b]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1b]
_0806F8D6:
	movs r0, #0
_0806F8D8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0806F8DC
sub_0806F8DC: @ 0x0806F8DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806F942
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r1, #4
	movs r2, #2
	bl GetTileTypeByPos
	cmp r0, #0
	beq _0806F91C
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
	movs r0, #1
	b _0806F944
_0806F91C:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r1, #4
	ldrb r2, [r5]
	bl GetTileTypeByPos
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1b]
_0806F942:
	movs r0, #0
_0806F944:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0806F948
sub_0806F948: @ 0x0806F948
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806F974 @ =gLinkState
	ldrb r0, [r1, #0xd]
	cmp r0, #0xff
	beq _0806F994
	ldrb r0, [r1, #0xd]
	lsrs r3, r0, #2
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0806F978
	ldrb r2, [r4, #0x14]
	subs r0, r2, #1
	subs r0, r3, r0
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0806F978
	adds r0, r2, #0
	b _0806F996
	.align 2, 0
_0806F974: .4byte gLinkState
_0806F978:
	movs r2, #0
	cmp r3, #4
	bls _0806F980
	movs r2, #1
_0806F980:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #6
	ands r3, r0
	strb r3, [r4, #0x14]
_0806F994:
	ldrb r0, [r4, #0x14]
_0806F996:
	pop {r4, pc}

	thumb_func_start sub_0806F998
sub_0806F998: @ 0x0806F998
	push {r4, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #0x14]
	ldrb r1, [r2, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806F9E6
	movs r0, #0x1c
	ands r0, r1
	lsrs r3, r0, #2
	movs r1, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F9C4
	subs r0, r3, r4
	adds r0, #1
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806F9E6
_0806F9C4:
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #2
	movs r1, #0x7e
	ands r0, r1
	strb r0, [r2, #0x14]
	adds r4, r0, #0
	cmp r4, #4
	bhi _0806F9DE
	ldrb r1, [r2, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0806F9E4
_0806F9DE:
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0806F9E4:
	strb r0, [r2, #0x18]
_0806F9E6:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
