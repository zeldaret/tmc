	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803C160
sub_0803C160: @ 0x0803C160
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803C17C @ =gUnk_080CFF78
	bl sub_0800129E
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_0803C17C: .4byte gUnk_080CFF78

	thumb_func_start sub_0803C180
sub_0803C180: @ 0x0803C180
	push {lr}
	ldr r2, _0803C194 @ =gUnk_080CFF90
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803C194: .4byte gUnk_080CFF90

	thumb_func_start sub_0803C198
sub_0803C198: @ 0x0803C198
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C1AC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803C1AC:
	ldr r1, _0803C1D8 @ =gUnk_080CFF78
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C1D4
	adds r0, r4, #0
	bl sub_0803C5F0
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0803C1D4
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
_0803C1D4:
	pop {r4, pc}
	.align 2, 0
_0803C1D8: .4byte gUnk_080CFF78

	thumb_func_start nullsub_168
nullsub_168: @ 0x0803C1DC
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C1E0
sub_0803C1E0: @ 0x0803C1E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #5
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	subs r0, #7
	strb r1, [r0]
	adds r0, #8
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803C228
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #1
	strb r0, [r4, #0x14]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0803C690
	b _0803C232
_0803C228:
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803C4B0
_0803C232:
	pop {r4, pc}

	thumb_func_start sub_0803C234
sub_0803C234: @ 0x0803C234
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C246
	subs r0, #1
	strb r0, [r1]
_0803C246:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C292
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0xf
	bls _0803C26E
	adds r0, r4, #0
	bl sub_0803C5C4
	b _0803C2D2
_0803C26E:
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	bne _0803C28A
	bl Random
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803C28A
	adds r0, r4, #0
	bl sub_0803C624
	b _0803C2D2
_0803C28A:
	adds r0, r4, #0
	bl sub_0803C4B0
	b _0803C2D2
_0803C292:
	adds r0, r4, #0
	bl sub_0803C6F8
	cmp r0, #0
	beq _0803C2C2
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803C690
	b _0803C2D2
_0803C2C2:
	adds r0, r4, #0
	bl sub_0803C568
	cmp r0, #0
	beq _0803C2D2
	adds r0, r4, #0
	bl sub_0803C5F0
_0803C2D2:
	adds r0, r4, #0
	bl sub_0803C6DC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C2DC
sub_0803C2DC: @ 0x0803C2DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0803C308
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x82
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	movs r0, #0x10
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803C4B0
	b _0803C31E
_0803C308:
	adds r0, r4, #0
	bl sub_0803C568
	cmp r0, #0
	beq _0803C31E
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_0803C31E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xb
	bls _0803C336
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C33A
	adds r0, r4, #0
	bl sub_0803C5F0
	b _0803C33A
_0803C336:
	adds r0, #1
	strb r0, [r4, #0xf]
_0803C33A:
	adds r0, r4, #0
	bl sub_0803C6DC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C344
sub_0803C344: @ 0x0803C344
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C3F8
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bhi _0803C3C8
	lsls r0, r1, #2
	ldr r1, _0803C36C @ =_0803C370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C36C: .4byte _0803C370
_0803C370: @ jump table
	.4byte _0803C3C8 @ case 0
	.4byte _0803C3C8 @ case 1
	.4byte _0803C3A6 @ case 2
	.4byte _0803C388 @ case 3
	.4byte _0803C3BE @ case 4
	.4byte _0803C39C @ case 5
_0803C388:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0803C3E2
_0803C39C:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _0803C3E2
_0803C3A6:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x24]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x40
	b _0803C3E0
_0803C3BE:
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_0803C3C8:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0x22
_0803C3E0:
	strb r1, [r4, #0xe]
_0803C3E2:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803C690
_0803C3F8:
	adds r0, r4, #0
	bl sub_0803C6DC
	pop {r4, pc}

	thumb_func_start sub_0803C400
sub_0803C400: @ 0x0803C400
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r1, r0, #0
	cmp r1, #0
	beq _0803C458
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0803C4AC
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803C450
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ands r0, r2
	cmp r0, #2
	bhi _0803C450
	bl Random
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _0803C450
	strb r5, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0803C690
	adds r0, r4, #0
	bl sub_0803C6DC
	b _0803C4AC
_0803C450:
	adds r0, r4, #0
	bl sub_0803C634
	b _0803C4AC
_0803C458:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0803C46C
	cmp r0, #0x18
	beq _0803C494
	b _0803C49A
_0803C46C:
	ldrb r2, [r4, #0x14]
	lsls r0, r2, #2
	strb r0, [r4, #0x15]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x19
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0803C49A
	str r2, [r4, #0x54]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	str r4, [r2, #0x50]
	b _0803C49A
_0803C494:
	strb r1, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
_0803C49A:
	adds r0, r4, #0
	bl sub_0803C6DC
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _0803C4AC
	adds r0, r4, #0
	bl sub_0803C714
_0803C4AC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803C4B0
sub_0803C4B0: @ 0x0803C4B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0
	strb r1, [r5, #0xf]
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803C54C
	bl Random
	ldr r1, _0803C4F0 @ =gUnk_080CFFA4
	movs r7, #7
	ands r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xe]
	movs r0, #0x80
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803C4F4
	bl Random
	adds r4, r0, #0
	movs r0, #6
	ands r4, r0
	lsls r0, r4, #2
	strb r0, [r5, #0x15]
	b _0803C556
	.align 2, 0
_0803C4F0: .4byte gUnk_080CFFA4
_0803C4F4:
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803C520
	bl Random
	ldr r2, _0803C51C @ =gUnk_080CFFAC
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	b _0803C53E
	.align 2, 0
_0803C51C: .4byte gUnk_080CFFAC
_0803C520:
	bl Random
	ldr r1, _0803C548 @ =gUnk_080CFFAC
	ands r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	ldrb r0, [r5, #0xe]
	adds r0, #0x10
	strb r0, [r5, #0xe]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0803C53E:
	adds r0, r4, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0803C554
	.align 2, 0
_0803C548: .4byte gUnk_080CFFAC
_0803C54C:
	movs r0, #0xc
	strb r0, [r5, #0xe]
	strh r1, [r5, #0x24]
	ldrb r0, [r5, #0x15]
_0803C554:
	lsrs r4, r0, #2
_0803C556:
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _0803C564
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803C690
_0803C564:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803C568
sub_0803C568: @ 0x0803C568
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C5C0
	movs r0, #1
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _0803C5C0
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803C598
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl sub_0806FC80
	cmp r0, #0
	bne _0803C5BC
_0803C598:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _0803C5C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	ldrb r5, [r5, #0x14]
	cmp r0, r5
	bne _0803C5C0
_0803C5BC:
	movs r0, #1
	b _0803C5C2
_0803C5C0:
	movs r0, #0
_0803C5C2:
	pop {r4, r5, pc}

	thumb_func_start sub_0803C5C4
sub_0803C5C4: @ 0x0803C5C4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803C664
	adds r4, #0x82
	movs r0, #2
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_0803C5F0
sub_0803C5F0: @ 0x0803C5F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049F84
	movs r2, #0
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	subs r0, #9
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_0803C664
	adds r4, #0x82
	movs r0, #3
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803C624
sub_0803C624: @ 0x0803C624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803C664
	adds r4, #0x82
	movs r0, #5
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_0803C634
sub_0803C634: @ 0x0803C634
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #2
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803C664
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #1
	strb r0, [r4, #0xe]
	adds r4, #0x82
	movs r0, #4
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_0803C664
sub_0803C664: @ 0x0803C664
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	adds r0, #0x80
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	movs r0, #0
	strh r1, [r2, #0x24]
	adds r1, r2, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0803C690
	pop {pc}

	thumb_func_start sub_0803C690
sub_0803C690: @ 0x0803C690
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x14]
	lsrs r2, r0, #1
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0803C6D2
	lsls r0, r0, #2
	ldr r1, _0803C6AC @ =_0803C6B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C6AC: .4byte _0803C6B0
_0803C6B0: @ jump table
	.4byte _0803C6D2 @ case 0
	.4byte _0803C6C8 @ case 1
	.4byte _0803C6D0 @ case 2
	.4byte _0803C6CC @ case 3
	.4byte _0803C6C8 @ case 4
	.4byte _0803C6CC @ case 5
_0803C6C8:
	adds r2, #4
	b _0803C6D2
_0803C6CC:
	adds r2, #8
	b _0803C6D2
_0803C6D0:
	adds r2, #0xc
_0803C6D2:
	adds r0, r3, #0
	adds r1, r2, #0
	bl UpdateSprite
	pop {pc}

	thumb_func_start sub_0803C6DC
sub_0803C6DC: @ 0x0803C6DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C6EA
	strh r0, [r4, #0x24]
_0803C6EA:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0803C6F8
sub_0803C6F8: @ 0x0803C6F8
	ldr r2, _0803C710 @ =gUnk_080CFFBC
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r0, #0x2a]
	ldrh r1, [r1]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803C710: .4byte gUnk_080CFFBC

	thumb_func_start sub_0803C714
sub_0803C714: @ 0x0803C714
	push {lr}
	ldr r1, [r0, #0x54]
	ldrb r3, [r0, #0x14]
	ldr r2, _0803C734 @ =gUnk_080CFFC4
	adds r3, r3, r2
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	bl PositionRelative
	pop {pc}
	.align 2, 0
_0803C734: .4byte gUnk_080CFFC4
