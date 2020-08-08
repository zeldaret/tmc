	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Armos
Armos: @ 0x08030198
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080301B8 @ =gUnk_080CE124
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	adds r0, r4, #0
	bl sub_08030150
	pop {r4, pc}
	.align 2, 0
_080301B8: .4byte gUnk_080CE124

	thumb_func_start sub_080301BC
sub_080301BC: @ 0x080301BC
	push {lr}
	ldr r2, _080301D0 @ =gUnk_080CE13C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080301D0: .4byte gUnk_080CE13C

	thumb_func_start sub_080301D4
sub_080301D4: @ 0x080301D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _080301EE
	ldr r1, [r4, #0x4c]
	ldr r0, _08030238 @ =gPlayerEntity
	cmp r1, r0
	bne _080301EE
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
_080301EE:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r5, r4, #0
	adds r5, #0x81
	cmp r1, #0
	beq _08030216
	ldrb r0, [r5]
	cmp r1, r0
	beq _08030216
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #6
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080309E8
_08030216:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030228
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08030228:
	ldrb r0, [r6]
	strb r0, [r5]
	ldr r1, _0803023C @ =gUnk_080CE124
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030238: .4byte gPlayerEntity
_0803023C: .4byte gUnk_080CE124

	thumb_func_start sub_08030240
sub_08030240: @ 0x08030240
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	bne _08030260
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08030260
	adds r0, r4, #0
	bl GetNextFrame
_08030260:
	adds r0, r4, #0
	bl sub_08001242
	pop {r4, pc}

	thumb_func_start nullsub_17
nullsub_17: @ 0x08030268
	bx lr
	.align 2, 0

	thumb_func_start sub_0803026C
sub_0803026C: @ 0x0803026C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x80
	strb r0, [r3]
	ldrb r2, [r3]
	lsls r0, r2, #2
	ldr r5, _080302A8 @ =gUnk_0300110C
	adds r0, r0, r5
	ldrh r1, [r0]
	cmp r1, #0
	beq _080302AC
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x84
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	ldrb r3, [r3]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	str r0, [r2]
	b _080302BA
	.align 2, 0
_080302A8: .4byte gUnk_0300110C
_080302AC:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, _08030304 @ =0x0000047D
	asrs r1, r2
	movs r2, #1
	ands r1, r2
	str r1, [r0]
_080302BA:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080302C6
	bl GetCurrentRoomProperty
	str r0, [r4, #0x7c]
_080302C6:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08030580
	adds r0, r4, #0
	bl sub_080307EC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	bne _08030302
	ldr r0, _08030308 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0x80
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _08030302
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl sub_080309C8
_08030302:
	pop {r4, r5, pc}
	.align 2, 0
_08030304: .4byte 0x0000047D
_08030308: .4byte gRoomControls

	thumb_func_start sub_0803030C
sub_0803030C: @ 0x0803030C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803086C
	adds r5, r0, #0
	cmp r5, #0
	bne _08030334
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08030334
	adds r0, r4, #0
	bl sub_08030650
	cmp r0, #0
	beq _08030334
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
_08030334:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08030338
sub_08030338: @ 0x08030338
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803034C
	adds r0, r4, #0
	bl sub_080309A8
	b _08030368
_0803034C:
	adds r0, r4, #0
	movs r1, #3
	bl UpdateAnimationVariableFrames
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08030368
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _08030368
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_08030368:
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	adds r1, r2, #0
	cmp r1, #1
	bne _0803039C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0803037C
	strb r1, [r4, #0xd]
_0803037C:
	ldrb r0, [r4, #0xe]
	adds r2, r0, #1
	strb r2, [r4, #0xe]
	ands r1, r2
	cmp r1, #0
	beq _0803042C
	ldr r1, _08030398 @ =gUnk_080CE160
	movs r0, #6
	ands r2, r0
	lsrs r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08030426
	.align 2, 0
_08030398: .4byte gUnk_080CE160
_0803039C:
	cmp r1, #2
	bne _080303D4
	movs r0, #0
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _080303C0
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #0xb
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080303D0 @ =gUnk_080FD2F0
	str r0, [r4, #0x48]
_080303C0:
	adds r0, r4, #0
	bl sub_08030834
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
	b _0803042C
	.align 2, 0
_080303D0: .4byte gUnk_080FD2F0
_080303D4:
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08030426
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08030412
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x7a
	movs r1, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080306C4
	adds r0, r4, #0
	bl sub_080309E8
	b _0803042C
_08030412:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	b _0803042C
_08030426:
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
_0803042C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030430
sub_08030430: @ 0x08030430
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08030A04
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0803044A
	adds r0, r4, #0
	bl GetNextFrame
_0803044A:
	adds r0, r4, #0
	bl sub_080309A8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803045E
	subs r0, #1
	strh r0, [r1]
_0803045E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030470
	adds r0, r4, #0
	bl sub_080306C4
_08030470:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030474
sub_08030474: @ 0x08030474
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803049C
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080309E8
	b _080304BA
_0803049C:
	adds r0, r4, #0
	bl sub_080305BC
	cmp r0, #0
	beq _080304AE
	adds r0, r4, #0
	bl sub_08030590
	b _080304BA
_080304AE:
	adds r0, r4, #0
	bl sub_080307D4
	adds r0, r4, #0
	bl sub_080309A8
_080304BA:
	pop {r4, pc}

	thumb_func_start sub_080304BC
sub_080304BC: @ 0x080304BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080304DE
	adds r0, r4, #0
	bl sub_08030580
	b _080304F0
_080304DE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080304F0
	strb r2, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
_080304F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080304F4
sub_080304F4: @ 0x080304F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080309A8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030520
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #5
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080307EC
_08030520:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030524
sub_08030524: @ 0x08030524
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803053E
	adds r0, r2, #0
	bl sub_080309A8
	b _08030552
_0803053E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08030552
	movs r0, #0
	strb r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #1
	bl sub_08004488
_08030552:
	pop {pc}

	thumb_func_start sub_08030554
sub_08030554: @ 0x08030554
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080309A8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803057C
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080306C4
_0803057C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030580
sub_08030580: @ 0x08030580
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #4
	bl sub_080309C8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08030590
sub_08030590: @ 0x08030590
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #1
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	ldr r0, _080305B8 @ =gUnk_080FD2F8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #5
	bl sub_080309C8
	adds r0, r4, #0
	bl sub_080307EC
	pop {r4, pc}
	.align 2, 0
_080305B8: .4byte gUnk_080FD2F8

	thumb_func_start sub_080305BC
sub_080305BC: @ 0x080305BC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2e]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0
	cmp r0, #8
	bne _080305D0
	movs r3, #1
_080305D0:
	ldrh r0, [r4, #0x32]
	ands r2, r0
	cmp r2, #8
	bne _080305DC
	movs r0, #2
	orrs r3, r0
_080305DC:
	cmp r3, #3
	bne _080305E4
	movs r0, #1
	b _0803064C
_080305E4:
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803061E
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08030608
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030608:
	cmp r2, #8
	ble _08030610
	movs r0, #0x10
	b _08030612
_08030610:
	movs r0, #0
_08030612:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803064A
_0803061E:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08030638
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803064A
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	b _08030648
_08030638:
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	ble _08030646
	movs r0, #8
	b _08030648
_08030646:
	movs r0, #0x18
_08030648:
	strb r0, [r4, #0x15]
_0803064A:
	movs r0, #0
_0803064C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08030650
sub_08030650: @ 0x08030650
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08030668
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080306B6
_08030664:
	movs r0, #1
	b _080306B8
_08030668:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #2
	beq _08030698
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080306B6
	ldr r0, _08030694 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	adds r0, #0x10
	cmp r0, #0x20
	bhi _080306B6
	b _08030664
	.align 2, 0
_08030694: .4byte gUnk_020000B0
_08030698:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080306B6
	ldr r0, _080306BC @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r0, _080306C0 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r0, #0xa8
	cmp r1, r0
	blt _08030664
_080306B6:
	movs r0, #0
_080306B8:
	pop {r4, pc}
	.align 2, 0
_080306BC: .4byte gUnk_020000B0
_080306C0: .4byte gRoomControls

	thumb_func_start sub_080306C4
sub_080306C4: @ 0x080306C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080307C0
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _080307C0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldr r0, _080307B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r5, r0, #0
	cmp r5, #0xff
	beq _080307CC
	movs r0, #0
	mov r8, r0
	bl Random
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _0803070E
	ldrb r0, [r4, #0x14]
	adds r6, r4, #0
	adds r6, #0x82
	cmp r0, #0xff
	bne _0803072A
_0803070E:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #3
	beq _0803072A
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r1, #1
	mov r8, r1
_0803072A:
	mov r7, r8
	cmp r7, #0
	bne _08030746
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r5, r1
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
_08030746:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r1, _080307B4 @ =gUnk_02027EB4
	mov ip, r1
	cmp r0, #2
	bne _08030758
	ldr r7, _080307B8 @ =gUnk_0200D654
	mov ip, r7
_08030758:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r3, _080307BC @ =gUnk_080CE164
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r2, r0, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, ip
	movs r3, #0
	bl sub_080AE4CC
	cmp r0, #0
	beq _0803079E
	movs r0, #4
	adds r1, r5, #0
	ands r1, r0
	eors r1, r0
	lsls r1, r1, #1
	movs r0, #0x10
	ands r5, r0
	orrs r1, r5
	strb r1, [r4, #0x15]
	movs r0, #0
	mov r8, r0
_0803079E:
	adds r0, r4, #0
	bl sub_080307D4
	ldrb r0, [r6]
	lsls r0, r0, #1
	mov r1, r8
	orrs r0, r1
	strb r0, [r6]
	b _080307CC
	.align 2, 0
_080307B0: .4byte gUnk_020000B0
_080307B4: .4byte gUnk_02027EB4
_080307B8: .4byte gUnk_0200D654
_080307BC: .4byte gUnk_080CE164
_080307C0:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080307CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080307D4
sub_080307D4: @ 0x080307D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	lsrs r1, r0, #3
	ldrb r0, [r2, #0x14]
	cmp r1, r0
	beq _080307EA
	strb r1, [r2, #0x14]
	adds r0, r2, #0
	bl sub_080309C8
_080307EA:
	pop {pc}

	thumb_func_start sub_080307EC
sub_080307EC: @ 0x080307EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, _0803082C @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	adds r6, r5, #0
	adds r6, #0x38
	ldrb r1, [r6]
	adds r0, r4, #0
	bl sub_080001DA
	adds r5, #0x78
	strh r0, [r5]
	ldr r0, _08030830 @ =0x00004022
	ldrb r2, [r6]
	adds r1, r4, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803082C: .4byte gRoomControls
_08030830: .4byte 0x00004022

	thumb_func_start sub_08030834
sub_08030834: @ 0x08030834
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _08030868 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_08030868: .4byte gRoomControls

	thumb_func_start sub_0803086C
sub_0803086C: @ 0x0803086C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _08030880
	b _0803099C
_08030880:
	ldr r0, _08030928 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803088E
	b _0803098A
_0803088E:
	ldr r0, _0803092C @ =gRoomControls
	mov sb, r0
	ldrh r0, [r5, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #0x32]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r0, #0x38
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	ldr r1, _08030930 @ =0x00004049
	mov sl, r1
	cmp r0, sl
	bne _08030950
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #2
	movs r3, #0xc
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0803093C
	subs r1, r6, #4
	adds r0, r7, #0
	movs r2, #2
	movs r3, #4
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0803098A
	ldr r2, _08030934 @ =gPlayerEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x7c]
	bl DoExitTransition
	ldr r0, _08030938 @ =gScreenTransition
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r1, [r1]
	adds r0, #0xae
	strh r1, [r0]
	movs r0, #1
	b _0803099E
	.align 2, 0
_08030928: .4byte gPlayerState
_0803092C: .4byte gRoomControls
_08030930: .4byte 0x00004049
_08030934: .4byte gPlayerEntity
_08030938: .4byte gScreenTransition
_0803093C:
	ldr r0, _0803094C @ =0x00004022
	mov r3, r8
	ldrb r2, [r3]
	adds r1, r4, #0
	bl SetTile
	b _0803098A
	.align 2, 0
_0803094C: .4byte 0x00004022
_08030950:
	adds r1, r6, #6
	adds r0, r7, #0
	movs r2, #2
	movs r3, #5
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0803098A
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
_0803098A:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803099C:
	movs r0, #0
_0803099E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080309A8
sub_080309A8: @ 0x080309A8
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _080309C4
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _080309C4
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_080309C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080309C8
sub_080309C8: @ 0x080309C8
	push {r4, lr}
	adds r4, r0, #0
	bl InitializeAnimation
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _080309E4
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x25
	bne _080309E4
	movs r0, #0x19
	strb r0, [r4, #0x1e]
_080309E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080309E8
sub_080309E8: @ 0x080309E8
	push {lr}
	adds r1, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #4
	bhi _080309FA
	movs r0, #0x90
	lsls r0, r0, #1
	b _08030A00
_080309FA:
	cmp r0, #8
	bhi _08030A02
	movs r0, #0xe0
_08030A00:
	strh r0, [r1, #0x24]
_08030A02:
	pop {pc}

	thumb_func_start sub_08030A04
sub_08030A04: @ 0x08030A04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030A24
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08030A28 @ =0x00000101
	bl sub_08004488
_08030A24:
	pop {r4, pc}
	.align 2, 0
_08030A28: .4byte 0x00000101
