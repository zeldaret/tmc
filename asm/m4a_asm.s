	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start umul3232H32
umul3232H32: @ 0x080AF310
	add r2, pc, #0x0 @ =sub_080AF314
	bx r2

	arm_func_start sub_080AF314
sub_080AF314: @ 0x080AF314
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x080AF320
	ldr r0, _080AF38C @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080AF390 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _080AF32E
	bx lr
_080AF32E:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080AF352
	ldr r2, _080AF398 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _080AF350
	adds r2, #0xe4
_080AF350:
	adds r1, r1, r2
_080AF352:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080AF362
	ldr r0, [r0, #0x24]
	bl sub_080AF6CE
	ldr r0, [sp, #0x18]
_080AF362:
	ldr r3, [r0, #0x28]
	bl sub_080AF6CE
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080AF39C @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080AF382
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080AF382:
	str r5, [sp, #8]
	ldr r6, _080AF3A0 @ =0x00000630
	ldr r3, _080AF394 @ =gUnk_0300404D
	bx r3
	.align 2, 0
_080AF38C: .4byte 0x03007FF0
_080AF390: .4byte 0x68736D53
_080AF394: .4byte gUnk_0300404D
_080AF398: .4byte 0x04000006
_080AF39C: .4byte 0x00000350
_080AF3A0: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x080AF3A4
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_080AF3F0
	add r1, pc, #0x4 @ =sub_080AF3B0
	bx r1
	.align 2, 0

	arm_func_start sub_080AF3B0
sub_080AF3B0: @ 0x080AF3B0
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_080AF3C0:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _080AF3C0
	add r0, pc, #0x1F @ =sub_080AF40E
	bx r0

	thumb_func_start sub_080AF3F0
sub_080AF3F0: @ 0x080AF3F0
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _080AF3FA
	stm r5!, {r0}
_080AF3FA:
	lsrs r1, r1, #1
	blo _080AF402
	stm r5!, {r0}
	stm r5!, {r0}
_080AF402:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _080AF402

	non_word_aligned_thumb_func_start sub_080AF40E
sub_080AF40E: @ 0x080AF40E
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_080AF418:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080AF438
	ldr r1, _080AF434 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _080AF42C
	adds r1, #0xe4
_080AF42C:
	cmp r1, r0
	blo _080AF438
	b _080AF6BA
	.align 2, 0
_080AF434: .4byte 0x04000006
_080AF438:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _080AF442
	b sub_080AF6B0
_080AF442:
	movs r0, #0x80
	tst r0, r6
	beq _080AF472
	movs r0, #0x40
	tst r0, r6
	bne _080AF482
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080AF4CA
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _080AF4CA
_080AF472:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080AF488
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080AF4D8
_080AF482:
	movs r0, #0
	strb r0, [r4]
	b sub_080AF6B0
_080AF488:
	movs r0, #0x40
	tst r0, r6
	beq _080AF4A8
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080AF4D8
_080AF49A:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080AF482
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _080AF4D8
_080AF4A8:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080AF4C6
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080AF4D8
	adds r5, r0, #0
	beq _080AF49A
	subs r6, #1
	strb r6, [r4]
	b _080AF4D8
_080AF4C6:
	cmp r2, #3
	bne _080AF4D8
_080AF4CA:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080AF4D8
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_080AF4D8:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080AF508
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080AF508:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_080AF514
	bx r0
	.align 2, 0

	arm_func_start sub_080AF514
sub_080AF514: @ 0x080AF514
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _080AF61C
_080AF52C:
	cmp r2, #4
	ble _080AF588
	subs r2, r2, r8
	movgt lr, #0
	bgt _080AF558
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_080AF558:
	ldr r6, [r5]
_080AF55C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _080AF55C
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080AF558
	adds r8, r8, lr
	beq _080AF69C
_080AF588:
	ldr r6, [r5]
_080AF58C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _080AF5EC
_080AF5A4:
	adds r5, r5, #0x40000000
	blo _080AF58C
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080AF52C
	b _080AF69C
_080AF5BC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080AF5E0
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080AF5D0:
	adds r2, r0, r2
	bgt _080AF670
	sub sb, sb, r0
	b _080AF5D0
_080AF5E0:
	pop {r4, ip}
	mov r2, #0
	b _080AF5FC
_080AF5EC:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _080AF5A4
_080AF5FC:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _080AF6A4
_080AF61C:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080AF638:
	ldr r6, [r5]
_080AF63C:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _080AF67C
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _080AF5BC
	subs sb, sb, #1
	addeq r0, r0, r1
_080AF670:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080AF67C:
	adds r5, r5, #0x40000000
	blo _080AF63C
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080AF638
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_080AF69C:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080AF6A4:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080AF6B0
	bx r0

	thumb_func_start sub_080AF6B0
sub_080AF6B0: @ 0x080AF6B0
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080AF6BA
	adds r4, #0x40
	b _080AF418
_080AF6BA:
	ldr r0, [sp, #0x18]
	ldr r3, _080AF6D0 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_080AF6CE
sub_080AF6CE: @ 0x080AF6CE
	bx r3
	.align 2, 0
_080AF6D0: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080AF6D4
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start RealClearChain
RealClearChain: @ 0x080AF6EC
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080AF70A
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080AF6FE
	str r1, [r2, #0x34]
	b _080AF700
_080AF6FE:
	str r1, [r3, #0x20]
_080AF700:
	cmp r1, #0
	beq _080AF706
	str r2, [r1, #0x30]
_080AF706:
	movs r1, #0
	str r1, [r0, #0x2c]
_080AF70A:
	bx lr

	thumb_func_start ply_fine
ply_fine: @ 0x080AF70C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080AF73A
_080AF716:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080AF724
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080AF724:
	adds r0, r4, #0
	bl RealClearChain
	ldr r1, [r4, #0x34]
	cmp r1, r4
	bne _080AF734
	movs r1, #0
	str r1, [r4, #0x34]
_080AF734:
	adds r4, r1, #0
	cmp r4, #0
	bne _080AF716
_080AF73A:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x080AF744
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080AF774 @ =gMPlayJumpTableTemplate
_080AF74A:
	ldr r3, [r2]
	bl _080AF75E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080AF74A
	bx ip
	.align 2, 0

	thumb_func_start sub_080AF75C
sub_080AF75C: @ 0x080AF75C
	ldrb r3, [r2]
_080AF75E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _080AF770
	ldr r0, _080AF774 @ =gMPlayJumpTableTemplate
	cmp r2, r0
	blo _080AF76E
	lsrs r0, r2, #0xe
	beq _080AF770
_080AF76E:
	movs r3, #0
_080AF770:
	pop {r0}
	bx lr
	.align 2, 0
_080AF774: .4byte gMPlayJumpTableTemplate

	thumb_func_start sub_080AF778
sub_080AF778: @ 0x080AF778
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_080AF77A
sub_080AF77A: @ 0x080AF77A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _080AF75E
	.align 2, 0

	thumb_func_start ply_goto
ply_goto:
	push {lr}
_080AF786:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_080AF75C
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x080AF7A4
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080AF7BC
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_080AF7BC:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080AF7C0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080AF7D2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080AF7D2:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x080AF7D4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080AF7E4
	adds r2, #1
	str r2, [r1, #0x40]
	b _080AF786
_080AF7E4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_080AF778
	cmp ip, r3
	bhs _080AF7F6
	b _080AF786
_080AF7F6:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x080AF804
	mov ip, lr
	bl sub_080AF778
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x080AF810
	mov ip, lr
	bl sub_080AF778
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x080AF824
	mov ip, lr
	bl sub_080AF778
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x080AF838
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _080AF75E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _080AF75E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _080AF75E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x080AF868
	mov ip, lr
	bl sub_080AF778
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x080AF87C
	mov ip, lr
	bl sub_080AF778
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x080AF890
	mov ip, lr
	bl sub_080AF778
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x080AF8A4
	mov ip, lr
	bl sub_080AF778
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080AF8B8
	mov ip, lr
	bl sub_080AF778
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080AF8C4
	mov ip, lr
	bl sub_080AF778
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080AF8DA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080AF8DA:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x080AF8DC
	mov ip, lr
	bl sub_080AF778
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x080AF8F0
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080AF904 @ =0x04000060
	adds r0, r0, r3
	bl sub_080AF77A

	thumb_func_start sub_080AF900
sub_080AF900: @ 0x080AF900
	strb r3, [r0]
	bx ip
	.align 2, 0
_080AF904: .4byte 0x04000060

	thumb_func_start MPlayMain
MPlayMain: @ 0x080AF908
	ldr r2, _080AFB80 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080AF912
	bx lr
_080AF912:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080AF924
	ldr r0, [r0, #0x3c]
	bl sub_080AFB74
_080AF924:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080AF93C
	b _080AFB64
_080AF93C:
	ldr r0, _080AFB7C @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080AF950
	b _080AFB64
_080AF950:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080AFAAA
_080AF958:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080AF960:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080AF96A
	b _080AFA86
_080AF96A:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080AF9A8
_080AF976:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080AF992
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080AF998
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080AF998
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _080AF998
_080AF992:
	adds r0, r4, #0
	bl ClearChain
_080AF998:
	ldr r1, [r4, #0x34]
	cmp r1, r4
	bne _080AF9A2
	movs r1, #0
	str r1, [r4, #0x34]
_080AF9A2:
	adds r4, r1, #0
	cmp r4, #0
	bne _080AF976
_080AF9A8:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080AFA26
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080AFA26
_080AF9CE:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _080AF9DA
	ldrb r1, [r5, #7]
	b _080AF9E4
_080AF9DA:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080AF9E4
	strb r1, [r5, #7]
_080AF9E4:
	cmp r1, #0xcf
	blo _080AF9FA
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_080AFB74
	b _080AFA26
_080AF9FA:
	cmp r1, #0xb0
	bls _080AFA1C
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080AFB74
	ldrb r0, [r5]
	cmp r0, #0
	beq _080AFA82
	b _080AFA26
_080AFA1C:
	ldr r0, _080AFB78 @ =gClockTable
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080AFA26:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080AF9CE
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080AFA82
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080AFA82
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080AFA48
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080AFA82
_080AFA48:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _080AFA5C
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _080AFA60
_080AFA5C:
	movs r0, #0x80
	subs r2, r0, r1
_080AFA60:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080AFA82
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080AFA7C
	movs r1, #0xc
	b _080AFA7E
_080AFA7C:
	movs r1, #3
_080AFA7E:
	orrs r0, r1
	strb r0, [r5]
_080AFA82:
	mov r3, sl
	mov r4, fp
_080AFA86:
	subs r6, #1
	ble _080AFA92
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080AF960
_080AFA92:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080AFAA4
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _080AFB64
_080AFAA4:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080AFAAA:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080AFAB2
	b _080AF958
_080AFAB2:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080AFAB6:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _080AFB5A
	movs r1, #0xf
	tst r1, r0
	beq _080AFB5A
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080AFB50
_080AFAD4:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _080AFAE4
	adds r0, r4, #0
	bl ClearChain
	b _080AFB40
_080AFAE4:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _080AFB02
	bl ChnVolSetAsm
	cmp r6, #0
	beq _080AFB02
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080AFB02:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _080AFB40
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080AFB16
	movs r2, #0
_080AFB16:
	cmp r6, #0
	beq _080AFB34
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_080AFB74
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _080AFB40
_080AFB34:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_080AFB40:
	ldr r1, [r4, #0x34]
	cmp r1, r4
	bne _080AFB4A
	movs r1, #0
	str r1, [r4, #0x34]
_080AFB4A:
	adds r4, r1, #0
	cmp r4, #0
	bne _080AFAD4
_080AFB50:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_080AFB5A:
	subs r2, #1
	ble _080AFB64
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080AFAB6
_080AFB64:
	ldr r0, _080AFB80 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_080AFB74
sub_080AFB74: @ 0x080AFB74
	bx r3
	.align 2, 0
_080AFB78: .4byte gClockTable
_080AFB7C: .4byte 0x03007FF0
_080AFB80: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x080AFB84
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080AFBC6
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080AFBC4
	movs r6, #0
_080AFB98:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AFBB2
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080AFBB0
	ldr r3, _080AFBCC @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_080AFB74
_080AFBB0:
	strb r6, [r4]
_080AFBB2:
	str r6, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	cmp r0, r4
	bne _080AFBBE
	movs r0, #0
	str r0, [r4, #0x34]
_080AFBBE:
	adds r4, r0, #0
	cmp r4, #0
	bne _080AFB98
_080AFBC4:
	str r4, [r5, #0x20]
_080AFBC6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFBCC: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x080AFBD0
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080AFBE8
	movs r0, #0xff
_080AFBE8:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080AFBFC
	movs r0, #0xff
_080AFBFC:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x080AFC00
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080AFDF8 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080AFDFC @ =gClockTable
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080AFC46
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080AFC44
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080AFC44
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080AFC44:
	str r3, [r5, #0x40]
_080AFC46:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080AFC98
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080AFC66
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080AFC68
_080AFC66:
	adds r0, r3, #0
_080AFC68:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080AFC80
	b _080AFDE6
_080AFC80:
	movs r0, #0x80
	tst r0, r2
	beq _080AFC9C
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080AFC94
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080AFC94:
	ldrb r3, [r6, #1]
	b _080AFC9C
_080AFC98:
	mov sb, r4
	ldrb r3, [r5, #5]
_080AFC9C:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080AFCAC
	movs r0, #0xff
_080AFCAC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080AFCEC
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080AFCC4
	b _080AFDE6
_080AFCC4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080AFD40
	movs r0, #0x40
	tst r0, r1
	bne _080AFD40
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080AFD40
	beq _080AFCE4
	b _080AFDE6
_080AFCE4:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080AFD40
	b _080AFDE6
_080AFCEC:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080AFCFA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080AFD40
	movs r0, #0x40
	tst r0, r1
	beq _080AFD14
	cmp r2, #0
	bne _080AFD18
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080AFD32
_080AFD14:
	cmp r2, #0
	bne _080AFD34
_080AFD18:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080AFD24
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080AFD32
_080AFD24:
	bhi _080AFD34
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080AFD30
	adds r7, r0, #0
	b _080AFD32
_080AFD30:
	blo _080AFD34
_080AFD32:
	mov r8, r4
_080AFD34:
	adds r4, #0x40
	subs r3, #1
	bgt _080AFCFA
	mov r4, r8
	cmp r4, #0
	beq _080AFDE6
_080AFD40:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080AFD54
	str r4, [r3, #0x30]
_080AFD54:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080AFD66
	adds r1, r5, #0
	bl clear_modM
_080AFD66:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080AFDA0
	movs r3, #0
_080AFDA0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080AFDCE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080AFDBA
	movs r0, #0x70
	tst r0, r1
	bne _080AFDBC
_080AFDBA:
	movs r1, #8
_080AFDBC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_080AFB74
	b _080AFDD8
_080AFDCE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_080AFDD8:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080AFDE6:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080AFDF8: .4byte 0x03007FF0
_080AFDFC: .4byte gClockTable

	thumb_func_start ply_endtie
ply_endtie: @ 0x080AFE00
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080AFE12
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080AFE14
_080AFE12:
	ldrb r3, [r1, #5]
_080AFE14:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080AFE46
	movs r4, #0x83
	movs r5, #0x40
_080AFE1E:
	ldrb r2, [r1]
	tst r2, r4
	beq _080AFE36
	tst r2, r5
	bne _080AFE36
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080AFE36
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080AFE46
_080AFE36:
	ldr r2, [r1, #0x34]
	cmp r2, r1
	bne _080AFE40
	movs r2, #0
	str r2, [r1, #0x34]
_080AFE40:
	adds r1, r2, #0
	cmp r1, #0
	bne _080AFE1E
_080AFE46:
	pop {r4, r5}
	bx lr
	.align 2, 0

	thumb_func_start clear_modM
clear_modM: @ 0x080AFE4C
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080AFE5C
	movs r2, #0xc
	b _080AFE5E
_080AFE5C:
	movs r2, #3
_080AFE5E:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_080AFE68
sub_080AFE68: @ 0x080AFE68
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x080AFE74
	mov ip, lr
	bl sub_080AFE68
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080AFE84
	bl clear_modM
_080AFE84:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x080AFE88
	mov ip, lr
	bl sub_080AFE68
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080AFE98
	bl clear_modM
_080AFE98:
	bx ip
	.align 2, 0
