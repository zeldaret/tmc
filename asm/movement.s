	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080AE3E4
sub_080AE3E4: @ 0x080AE3E4
	movs r0, #0
	bx lr

	thumb_func_start sub_080AE3E8
sub_080AE3E8: @ 0x080AE3E8
	movs r0, #1
	bx lr

	thumb_func_start sub_080AE3EC
sub_080AE3EC: @ 0x080AE3EC
	adds r2, r0, #0
	ldr r0, _080AE404 @ =gUnk_08133918
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE404: .4byte gUnk_08133918

	thumb_func_start sub_080AE408
sub_080AE408: @ 0x080AE408
	adds r2, r0, #0
	ldr r0, _080AE420 @ =gUnk_08133938
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE420: .4byte gUnk_08133938

	thumb_func_start sub_080AE424
sub_080AE424: @ 0x080AE424
	adds r2, r0, #0
	ldr r0, _080AE43C @ =gUnk_08133958
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE43C: .4byte gUnk_08133958

	thumb_func_start sub_080AE440
sub_080AE440: @ 0x080AE440
	adds r2, r0, #0
	ldr r0, _080AE458 @ =gUnk_08133978
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE458: .4byte gUnk_08133978

	thumb_func_start sub_080AE45C
sub_080AE45C: @ 0x080AE45C
	adds r2, r0, #0
	ldr r0, _080AE474 @ =gUnk_08133998
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE474: .4byte gUnk_08133998

	thumb_func_start sub_080AE478
sub_080AE478: @ 0x080AE478
	adds r2, r0, #0
	ldr r0, _080AE490 @ =gUnk_081339B8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE490: .4byte gUnk_081339B8

	thumb_func_start sub_080AE494
sub_080AE494: @ 0x080AE494
	adds r2, r0, #0
	ldr r0, _080AE4AC @ =gUnk_081339D8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE4AC: .4byte gUnk_081339D8

	thumb_func_start sub_080AE4B0
sub_080AE4B0: @ 0x080AE4B0
	adds r2, r0, #0
	ldr r0, _080AE4C8 @ =gUnk_081339F8
	movs r3, #0xf
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	ands r2, r3
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080AE4C8: .4byte gUnk_081339F8

	thumb_func_start sub_080AE4CC
sub_080AE4CC: @ 0x080AE4CC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r1, _080AE4FC @ =gRoomControls
	ldrh r2, [r1, #6]
	subs r2, r6, r2
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	ldrh r1, [r1, #8]
	subs r1, r5, r1
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	adds r0, r0, r2
	ldrb r3, [r0]
	cmp r3, #0
	bne _080AE500
	cmp r4, #4
	beq _080AE588
	b _080AE516
	.align 2, 0
_080AE4FC: .4byte gRoomControls
_080AE500:
	cmp r3, #0xf
	bhi _080AE53E
	ldr r2, _080AE51C @ =gUnk_08133A40
	lsls r1, r4, #1
	adds r0, r3, #1
	lsrs r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	cmp r0, #0
	bne _080AE520
_080AE516:
	movs r0, #0
	b _080AE58A
	.align 2, 0
_080AE51C: .4byte gUnk_08133A40
_080AE520:
	cmp r0, #1
	beq _080AE588
	movs r0, #8
	ands r5, r0
	cmp r5, #0
	bne _080AE52E
	lsrs r3, r3, #2
_080AE52E:
	ands r6, r0
	cmp r6, #0
	bne _080AE536
	lsrs r3, r3, #1
_080AE536:
	movs r0, #1
	ands r3, r0
	adds r0, r3, #0
	b _080AE58A
_080AE53E:
	cmp r3, #0xff
	bne _080AE558
	ldr r1, _080AE550 @ =gUnk_08133A18
	ldr r0, _080AE554 @ =gUnk_08133A5A
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080AE572
	.align 2, 0
_080AE550: .4byte gUnk_08133A18
_080AE554: .4byte gUnk_08133A5A
_080AE558:
	cmp r3, #0x6f
	bhi _080AE588
	ldr r2, _080AE580 @ =gUnk_08133A18
	ldr r1, _080AE584 @ =gUnk_08133A67
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r3
	subs r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
_080AE572:
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r2
	b _080AE58A
	.align 2, 0
_080AE580: .4byte gUnk_08133A18
_080AE584: .4byte gUnk_08133A67
_080AE588:
	movs r0, #1
_080AE58A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080AE58C
sub_080AE58C: @ 0x080AE58C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	ldr r1, _080AE624 @ =0x00002004
	adds r5, r0, r1
	ldr r2, [sp]
	ldr r2, [r2, #0x48]
	str r2, [sp, #8]
	ldr r0, [sp]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [sp]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r2, #2]
	mov sb, r0
	ldrb r1, [r2, #3]
	mov r8, r1
	movs r0, #0xf
	ldr r2, [sp, #4]
	ands r0, r2
	cmp r0, #0
	beq _080AE65C
	cmp r2, #0xf
	bhi _080AE628
	ldr r7, [sp, #0xc]
	add r7, sb
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r2, sl
	add r2, r8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	mov r0, sl
	mov r1, r8
	subs r2, r0, r1
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #6
	b _080AE6D2
	.align 2, 0
_080AE624: .4byte 0x00002004
_080AE628:
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r7, r2, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r2, sl
	add r2, r8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	mov r1, sl
	mov r0, r8
	subs r2, r1, r0
	adds r0, r5, #0
	adds r1, r7, #0
	b _080AE6C8
_080AE65C:
	ldr r7, [sp, #0xc]
	add r7, sb
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r1, sl
	add r1, r8
	str r1, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x10]
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	mov r2, sl
	mov r0, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #2
	ldr r1, [sp, #0xc]
	mov r2, sb
	subs r7, r1, r2
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x10]
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
_080AE6C8:
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #2
_080AE6D2:
	ldr r0, [sp, #8]
	ldrb r0, [r0, #4]
	mov sb, r0
	ldr r1, [sp, #8]
	ldrb r1, [r1, #5]
	mov r8, r1
	ldr r2, [sp, #4]
	subs r2, #8
	str r2, [sp, #4]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080AE760
	cmp r2, #0xf
	bhi _080AE72C
	mov r7, sl
	add r7, r8
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r0, [sp, #0xc]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #5
	b _080AE7D6
_080AE72C:
	mov r0, sl
	mov r1, r8
	subs r7, r0, r1
	lsls r6, r6, #4
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r1, r2, r0
	adds r0, r5, #0
	b _080AE7CA
_080AE760:
	mov r7, sl
	add r7, r8
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	str r1, [sp, #0x14]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r2, r2, r0
	mov sb, r2
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #2
	mov r1, sl
	mov r2, r8
	subs r7, r1, r2
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	mov r1, sb
_080AE7CA:
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AE4CC
	orrs r6, r0
	lsls r6, r6, #1
_080AE7D6:
	ldr r0, [sp]
	strh r6, [r0, #0x2a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AE7E8
sub_080AE7E8: @ 0x080AE7E8
	push {r4, r5, lr}
	ldr r5, _080AE7FC @ =gUnk_08133F48
	lsls r4, r2, #2
	adds r4, r4, r5
	lsls r2, r2, #3
	ldr r4, [r4]
	bl _call_via_r4
	pop {r4, r5, pc}
	.align 2, 0
_080AE7FC: .4byte gUnk_08133F48

	thumb_func_start sub_080AE800
sub_080AE800: @ 0x080AE800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r2, r3, #0
	movs r6, #0
	mov r8, r6
	ldrh r1, [r4, #0x2a]
	movs r7, #0xe
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080AE89C
	cmp r0, #2
	bne _080AE85C
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	ldr r0, _080AE858 @ =gSineTable
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov r8, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AE8AC
	.align 2, 0
_080AE858: .4byte gSineTable
_080AE85C:
	cmp r0, #4
	bne _080AE8AE
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _080AE8AE
	ldr r0, _080AE898 @ =gSineTable
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov r8, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AE8AC
	.align 2, 0
_080AE898: .4byte gSineTable
_080AE89C:
	ldr r0, _080AE8C4 @ =gSineTable
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
_080AE8AC:
	str r0, [r4, #0x30]
_080AE8AE:
	ldr r1, _080AE8C8 @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AE8CC @ =0x00006665
	cmp r0, r1
	bhi _080AE8D0
	ldr r0, _080AE8C8 @ =0x00003333
	add r0, r8
	cmp r0, r1
	bhi _080AE8D0
	movs r0, #0
	b _080AE8D2
	.align 2, 0
_080AE8C4: .4byte gSineTable
_080AE8C8: .4byte 0x00003333
_080AE8CC: .4byte 0x00006665
_080AE8D0:
	movs r0, #1
_080AE8D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AE8D8
sub_080AE8D8: @ 0x080AE8D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #8
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AE904
	cmp r2, #0
	bne _080AE99E
_080AE904:
	orrs r1, r2
	cmp r1, #0
	bne _080AE928
	ldr r1, _080AE924 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AE98A
	.align 2, 0
_080AE924: .4byte gSineTable
_080AE928:
	mov r2, ip
	cmp r2, #2
	bne _080AE942
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #4
	mov r2, sb
	bl sub_080AE58C
	b _080AE95C
_080AE942:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	bne _080AE95C
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #4
	mov r2, sb
	bl sub_080AE58C
_080AE95C:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AE97E
	ldr r1, _080AE9B4 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AE97E:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080AE99E
	ldr r1, _080AE9B4 @ =gSineTable
_080AE98A:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AE99E:
	ldr r2, _080AE9B8 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AE9BC @ =0x00006665
	cmp r0, r1
	bhi _080AE9C0
	ldr r2, _080AE9B8 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AE9C0
	movs r0, #0
	b _080AE9C2
	.align 2, 0
_080AE9B4: .4byte gSineTable
_080AE9B8: .4byte 0x00003333
_080AE9BC: .4byte 0x00006665
_080AE9C0:
	movs r0, #1
_080AE9C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AE9CC
sub_080AE9CC: @ 0x080AE9CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r6, #0
	mov sb, r6
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	lsls r0, r0, #8
	mov r8, r0
	mov r1, r8
	ands r1, r2
	cmp r1, #0
	beq _080AEA7C
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080AEA34
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AEA90
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEA90
	ldr r1, _080AEA30 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEA8E
	.align 2, 0
_080AEA30: .4byte gSineTable
_080AEA34:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bne _080AEA90
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEA90
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #4
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEA90
	ldr r1, _080AEA78 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEA8E
	.align 2, 0
_080AEA78: .4byte gSineTable
_080AEA7C:
	ldr r1, _080AEAA8 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
_080AEA8E:
	str r0, [r4, #0x2c]
_080AEA90:
	ldr r1, _080AEAAC @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AEAB0 @ =0x00006665
	cmp r0, r1
	bhi _080AEAB4
	ldr r0, _080AEAAC @ =0x00003333
	add r0, sb
	cmp r0, r1
	bhi _080AEAB4
	movs r0, #0
	b _080AEAB6
	.align 2, 0
_080AEAA8: .4byte gSineTable
_080AEAAC: .4byte 0x00003333
_080AEAB0: .4byte 0x00006665
_080AEAB4:
	movs r0, #1
_080AEAB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEAC0
sub_080AEAC0: @ 0x080AEAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe0
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #8
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AEAEC
	cmp r2, #0
	bne _080AEB86
_080AEAEC:
	orrs r1, r2
	cmp r1, #0
	bne _080AEB10
	ldr r1, _080AEB0C @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AEB72
	.align 2, 0
_080AEB0C: .4byte gSineTable
_080AEB10:
	mov r2, ip
	cmp r2, #0x20
	bne _080AEB2A
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sb
	bl sub_080AE58C
	b _080AEB44
_080AEB2A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r3, r0
	bne _080AEB44
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0xc
	mov r2, sb
	bl sub_080AE58C
_080AEB44:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AEB66
	ldr r1, _080AEB9C @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AEB66:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080AEB86
	ldr r1, _080AEB9C @ =gSineTable
_080AEB72:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AEB86:
	ldr r2, _080AEBA0 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AEBA4 @ =0x00006665
	cmp r0, r1
	bhi _080AEBA8
	ldr r2, _080AEBA0 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AEBA8
	movs r0, #0
	b _080AEBAA
	.align 2, 0
_080AEB9C: .4byte gSineTable
_080AEBA0: .4byte 0x00003333
_080AEBA4: .4byte 0x00006665
_080AEBA8:
	movs r0, #1
_080AEBAA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEBB4
sub_080AEBB4: @ 0x080AEBB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r2, r3, #0
	movs r6, #0
	mov sb, r6
	ldrh r1, [r4, #0x2a]
	movs r0, #0xe0
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _080AEC64
	cmp r0, #0x20
	bne _080AEC1C
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	ldr r1, _080AEC18 @ =gSineTable
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AEC7A
	.align 2, 0
_080AEC18: .4byte gSineTable
_080AEC1C:
	cmp r0, #0x40
	bne _080AEC7C
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	lsls r6, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r6
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEC7C
	ldr r1, _080AEC60 @ =gSineTable
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	b _080AEC7A
	.align 2, 0
_080AEC60: .4byte gSineTable
_080AEC64:
	ldr r1, _080AEC94 @ =gSineTable
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
_080AEC7A:
	str r0, [r4, #0x30]
_080AEC7C:
	ldr r1, _080AEC98 @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AEC9C @ =0x00006665
	cmp r0, r1
	bhi _080AECA0
	ldr r0, _080AEC98 @ =0x00003333
	add r0, sb
	cmp r0, r1
	bhi _080AECA0
	movs r0, #0
	b _080AECA2
	.align 2, 0
_080AEC94: .4byte gSineTable
_080AEC98: .4byte 0x00003333
_080AEC9C: .4byte 0x00006665
_080AECA0:
	movs r0, #1
_080AECA2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AECAC
sub_080AECAC: @ 0x080AECAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe0
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #4
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AECD8
	cmp r2, #0
	bne _080AED72
_080AECD8:
	orrs r1, r2
	cmp r1, #0
	bne _080AECFC
	ldr r1, _080AECF8 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AED5E
	.align 2, 0
_080AECF8: .4byte gSineTable
_080AECFC:
	mov r2, ip
	cmp r2, #0x40
	bne _080AED16
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x14
	mov r2, sb
	bl sub_080AE58C
	b _080AED30
_080AED16:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	bne _080AED30
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x14
	mov r2, sb
	bl sub_080AE58C
_080AED30:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AED52
	ldr r1, _080AED88 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AED52:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080AED72
	ldr r1, _080AED88 @ =gSineTable
_080AED5E:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AED72:
	ldr r2, _080AED8C @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AED90 @ =0x00006665
	cmp r0, r1
	bhi _080AED94
	ldr r2, _080AED8C @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AED94
	movs r0, #0
	b _080AED96
	.align 2, 0
_080AED88: .4byte gSineTable
_080AED8C: .4byte 0x00003333
_080AED90: .4byte 0x00006665
_080AED94:
	movs r0, #1
_080AED96:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEDA0
sub_080AEDA0: @ 0x080AEDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r6, #0
	mov sb, r6
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	lsls r0, r0, #4
	mov r8, r0
	mov r1, r8
	ands r1, r2
	cmp r1, #0
	beq _080AEE50
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080AEE08
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AEE64
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEE64
	ldr r1, _080AEE04 @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEE62
	.align 2, 0
_080AEE04: .4byte gSineTable
_080AEE08:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _080AEE64
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEE64
	lsls r6, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	adds r2, r3, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080AEE64
	ldr r1, _080AEE4C @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	mov sb, r1
	ldr r0, [r4, #0x2c]
	add r0, sb
	b _080AEE62
	.align 2, 0
_080AEE4C: .4byte gSineTable
_080AEE50:
	ldr r1, _080AEE7C @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
_080AEE62:
	str r0, [r4, #0x2c]
_080AEE64:
	ldr r1, _080AEE80 @ =0x00003333
	adds r0, r6, r1
	ldr r1, _080AEE84 @ =0x00006665
	cmp r0, r1
	bhi _080AEE88
	ldr r0, _080AEE80 @ =0x00003333
	add r0, sb
	cmp r0, r1
	bhi _080AEE88
	movs r0, #0
	b _080AEE8A
	.align 2, 0
_080AEE7C: .4byte gSineTable
_080AEE80: .4byte 0x00003333
_080AEE84: .4byte 0x00006665
_080AEE88:
	movs r0, #1
_080AEE8A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AEE94
sub_080AEE94: @ 0x080AEE94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #4
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AEEC0
	cmp r2, #0
	bne _080AEF5A
_080AEEC0:
	orrs r1, r2
	cmp r1, #0
	bne _080AEEE4
	ldr r1, _080AEEE0 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AEF46
	.align 2, 0
_080AEEE0: .4byte gSineTable
_080AEEE4:
	mov r2, ip
	cmp r2, #4
	bne _080AEEFE
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x1c
	mov r2, sb
	bl sub_080AE58C
	b _080AEF18
_080AEEFE:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bne _080AEF18
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	mov r2, sb
	bl sub_080AE58C
_080AEF18:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEF3A
	ldr r1, _080AEF70 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AEF3A:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080AEF5A
	ldr r1, _080AEF70 @ =gSineTable
_080AEF46:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AEF5A:
	ldr r2, _080AEF74 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AEF78 @ =0x00006665
	cmp r0, r1
	bhi _080AEF7C
	ldr r2, _080AEF74 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AEF7C
	movs r0, #0
	b _080AEF7E
	.align 2, 0
_080AEF70: .4byte gSineTable
_080AEF74: .4byte 0x00003333
_080AEF78: .4byte 0x00006665
_080AEF7C:
	movs r0, #1
_080AEF7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start ProcessMovement
ProcessMovement: @ 0x080AEF88
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AEFB0
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #0
	bl sub_080AE7E8
	b _080AEFB2
_080AEFB0:
	movs r0, #0
_080AEFB2:
	pop {r4, pc}

	thumb_func_start sub_080AEFB4
sub_080AEFB4: @ 0x080AEFB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AEFDC
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #1
	bl sub_080AE7E8
	b _080AEFDE
_080AEFDC:
	movs r0, #0
_080AEFDE:
	pop {r4, pc}

	thumb_func_start sub_080AEFE0
sub_080AEFE0: @ 0x080AEFE0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF008
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #2
	bl sub_080AE7E8
	b _080AF00A
_080AF008:
	movs r0, #0
_080AF00A:
	pop {r4, pc}

	thumb_func_start sub_080AF00C
sub_080AF00C: @ 0x080AF00C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF034
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_080AE7E8
	b _080AF036
_080AF034:
	movs r0, #0
_080AF036:
	pop {r4, pc}

	thumb_func_start sub_080AF038
sub_080AF038: @ 0x080AF038
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF060
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_080AE7E8
	b _080AF062
_080AF060:
	movs r0, #0
_080AF062:
	pop {r4, pc}

	thumb_func_start sub_080AF064
sub_080AF064: @ 0x080AF064
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _080AF08A
	adds r0, r5, #0
	movs r2, #0
	bl sub_080AE58C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_080AE7E8
	b _080AF08C
_080AF08A:
	movs r0, #0
_080AF08C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AF090
sub_080AF090: @ 0x080AF090
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF0C2
	adds r0, r4, #0
	bl sub_080AF0C8
	cmp r0, #0
	bne _080AF0C2
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #3
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #3
	bl sub_080AE7E8
	b _080AF0C4
_080AF0C2:
	movs r0, #0
_080AF0C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AF0C8
sub_080AF0C8: @ 0x080AF0C8
	push {r4, lr}
	adds r4, r0, #0
	bl GetTileTypeByEntity
	cmp r0, #0x88
	beq _080AF10A
	cmp r0, #0x88
	bhi _080AF0DE
	cmp r0, #0x87
	beq _080AF0E8
	b _080AF130
_080AF0DE:
	cmp r0, #0x89
	beq _080AF11A
	cmp r0, #0x8a
	beq _080AF0F8
	b _080AF130
_080AF0E8:
	ldrb r0, [r4, #0x15]
	adds r0, #7
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe
	b _080AF12A
_080AF0F8:
	ldrb r0, [r4, #0x15]
	subs r0, #1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe0
	lsls r0, r0, #8
	b _080AF12A
_080AF10A:
	ldrb r0, [r4, #0x15]
	subs r0, #9
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe0
	b _080AF12A
_080AF11A:
	ldrb r0, [r4, #0x15]
	subs r0, #0x11
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bgt _080AF130
	movs r0, #0xe0
	lsls r0, r0, #4
_080AF12A:
	strh r0, [r4, #0x2a]
	movs r0, #1
	b _080AF132
_080AF130:
	movs r0, #0
_080AF132:
	pop {r4, pc}

	thumb_func_start sub_080AF134
sub_080AF134: @ 0x080AF134
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF15C
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #4
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #4
	bl sub_080AE7E8
	b _080AF15E
_080AF15C:
	movs r0, #0
_080AF15E:
	pop {r4, pc}

	thumb_func_start sub_080AF160
sub_080AF160: @ 0x080AF160
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF188
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #5
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #5
	bl sub_080AE7E8
	b _080AF18A
_080AF188:
	movs r0, #0
_080AF18A:
	pop {r4, pc}

	thumb_func_start sub_080AF18C
sub_080AF18C: @ 0x080AF18C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #2
	bl sub_080AE7E8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AF1BC
sub_080AF1BC: @ 0x080AF1BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r1, [r5]
	adds r0, r4, #0
	movs r2, #1
	bl sub_080AE58C
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r3, #1
	bl sub_080AE7E8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AF1EC
sub_080AF1EC: @ 0x080AF1EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AF214
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080AE58C
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r3, #6
	bl sub_080AE7E8
	b _080AF216
_080AF214:
	movs r0, #0
_080AF216:
	pop {r4, pc}

	thumb_func_start sub_080AF218
sub_080AF218: @ 0x080AF218
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _080AF23E
	adds r0, r5, #0
	movs r2, #6
	bl sub_080AE58C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_080AE7E8
	b _080AF240
_080AF23E:
	movs r0, #0
_080AF240:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AF244
sub_080AF244: @ 0x080AF244
	push {lr}
	movs r3, #2
	bl sub_080AE7E8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AF250
sub_080AF250: @ 0x080AF250
	push {r4, lr}
	adds r4, r0, #0
	bl GetCurrentRoomInfo
	adds r1, r0, #0
	ldr r0, _080AF26C @ =gArea
	ldr r2, _080AF270 @ =0x0000085C
	adds r0, r0, r2
	str r1, [r0]
	cmp r4, #0
	beq _080AF278
	ldr r0, _080AF274 @ =gUnk_08135190
	b _080AF27A
	.align 2, 0
_080AF26C: .4byte gArea
_080AF270: .4byte 0x0000085C
_080AF274: .4byte gUnk_08135190
_080AF278:
	ldr r0, _080AF280 @ =gExitList_RoyalValley_ForestMaze
_080AF27A:
	str r0, [r1, #0x18]
	pop {r4, pc}
	.align 2, 0
_080AF280: .4byte gExitList_RoyalValley_ForestMaze

	thumb_func_start sub_080AF284
sub_080AF284: @ 0x080AF284
	push {lr}
	ldr r0, _080AF2AC @ =gRoomControls
	ldrh r1, [r0, #0x20]
	subs r1, #0x50
	movs r0, #0x78
	movs r2, #0x78
	movs r3, #0x50
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _080AF2BC
	bl GetCurrentRoomInfo
	ldr r1, _080AF2B0 @ =gArea
	ldr r2, _080AF2B4 @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080AF2B8 @ =gUnk_08135048
	b _080AF2D4
	.align 2, 0
_080AF2AC: .4byte gRoomControls
_080AF2B0: .4byte gArea
_080AF2B4: .4byte 0x0000085C
_080AF2B8: .4byte gUnk_08135048
_080AF2BC:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _080AF2D6
	bl GetCurrentRoomInfo
	ldr r1, _080AF2D8 @ =gArea
	ldr r2, _080AF2DC @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080AF2E0 @ =gUnk_08134FBC
_080AF2D4:
	str r1, [r0, #0x18]
_080AF2D6:
	pop {pc}
	.align 2, 0
_080AF2D8: .4byte gArea
_080AF2DC: .4byte 0x0000085C
_080AF2E0: .4byte gUnk_08134FBC

	thumb_func_start sub_080AF2E4
sub_080AF2E4: @ 0x080AF2E4
	push {lr}
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _080AF300
	bl GetCurrentRoomInfo
	ldr r1, _080AF304 @ =gArea
	ldr r2, _080AF308 @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080AF30C @ =gUnk_0813A76C
	str r1, [r0, #0x18]
_080AF300:
	pop {pc}
	.align 2, 0
_080AF304: .4byte gArea
_080AF308: .4byte 0x0000085C
_080AF30C: .4byte gUnk_0813A76C
