	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803746C
sub_0803746C: @ 0x0803746C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08037488 @ =gUnk_080CF294
	bl sub_0800129E
	movs r3, #0x15
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08037488: .4byte gUnk_080CF294

	thumb_func_start sub_0803748C
sub_0803748C: @ 0x0803748C
	push {lr}
	ldr r2, _080374A0 @ =gUnk_080CF2AC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080374A0: .4byte gUnk_080CF2AC

	thumb_func_start sub_080374A4
sub_080374A4: @ 0x080374A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x87
	bne _080374D4
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bne _080374BC
	adds r0, r4, #0
	bl sub_08037ACC
_080374BC:
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08037B48
	b _08037534
_080374D4:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #6
	beq _0803752E
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x27
	bne _080374F2
	cmp r2, #0x80
	bne _080374F2
	adds r0, r4, #0
	bl sub_08037A14
	b _08037534
_080374F2:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037534
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0x10
	eors r0, r1
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	beq _08037534
	movs r0, #4
	strb r0, [r4, #0xe]
	b _08037534
_0803752E:
	adds r0, r4, #0
	bl sub_08037A58
_08037534:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037546
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08037546:
	ldr r1, _08037550 @ =gUnk_080CF294
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08037550: .4byte gUnk_080CF294

	thumb_func_start nullsub_162
nullsub_162: @ 0x08037554
	bx lr
	.align 2, 0

	thumb_func_start sub_08037558
sub_08037558: @ 0x08037558
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x76
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08037794
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037580
sub_08037580: @ 0x08037580
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037810
	cmp r0, #0
	bne _080375A2
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080375A2
	adds r0, r4, #0
	bl sub_080377B0
_080375A2:
	pop {r4, pc}

	thumb_func_start sub_080375A4
sub_080375A4: @ 0x080375A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _080375F4
	adds r0, r4, #0
	bl sub_08037810
	cmp r0, #0
	bne _080375F4
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080375D2
	adds r0, r4, #0
	bl sub_08037794
	b _080375F4
_080375D2:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _080375F4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080375F4
	adds r0, r4, #0
	bl sub_080379BC
_080375F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080375F8
sub_080375F8: @ 0x080375F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _08037622
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037622
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
_08037622:
	pop {r4, pc}

	thumb_func_start sub_08037624
sub_08037624: @ 0x08037624
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080378B0
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_08037914
	cmp r0, #0
	bne _0803768E
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037652
	adds r0, r4, #0
	bl sub_08037794
	b _0803768E
_08037652:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803767C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_080379BC
	b _0803768E
_0803767C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803768E
	adds r0, r4, #0
	bl sub_0803797C
_0803768E:
	pop {r4, pc}

	thumb_func_start sub_08037690
sub_08037690: @ 0x08037690
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080376B6
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08037794
	b _080376CC
_080376B6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080376CC
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x27
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AEF88
_080376CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080376D0
sub_080376D0: @ 0x080376D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080379EC
	cmp r0, #0
	bne _0803773A
	bl sub_08077B2C
	ldr r2, _08037724 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08037728 @ =gLinkEntity
	adds r1, r4, #0
	bl sub_0806FA6C
	adds r0, r4, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803773A
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803772C
	adds r0, r4, #0
	bl sub_08037A58
	b _0803773A
	.align 2, 0
_08037724: .4byte gLinkState
_08037728: .4byte gLinkEntity
_0803772C:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08037B10
_0803773A:
	pop {r4, pc}

	thumb_func_start sub_0803773C
sub_0803773C: @ 0x0803773C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037758
	adds r0, r4, #0
	bl sub_08037794
_08037758:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803775C
sub_0803775C: @ 0x0803775C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037790
	movs r0, #0x42
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0803778A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0804A4E4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08037C0C
_0803778A:
	adds r0, r5, #0
	bl DeleteEntity
_08037790:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08037794
sub_08037794: @ 0x08037794
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x74
	movs r1, #0x1e
	strh r1, [r2]
	subs r2, #0x35
	movs r1, #0x26
	strb r1, [r2]
	ldrb r1, [r0, #0x14]
	bl LoadAnimation
	pop {pc}

	thumb_func_start sub_080377B0
sub_080377B0: @ 0x080377B0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xf]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080377F8
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080377F8
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	b _080377FE
_080377F8:
	movs r0, #0x18
	ands r5, r0
	strb r5, [r4, #0x15]
_080377FE:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, r5, pc}

	thumb_func_start sub_08037810
sub_08037810: @ 0x08037810
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x76
	ldrb r0, [r1]
	cmp r0, #0
	bne _080378A8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080378AC
	ldr r6, _080378A4 @ =gUnk_020000B0
	ldr r0, [r6]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	movs r3, #0x40
	bl sub_0806FCB8
	cmp r0, #0
	beq _080378AC
	ldr r1, [r6]
	adds r0, r5, #0
	bl sub_080045C4
	ldrb r1, [r5, #0x15]
	subs r0, r0, r1
	adds r0, #6
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0xc
	bhi _080378AC
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r0, #0xc0
	strh r0, [r5, #0x24]
	ldr r1, [r6]
	adds r0, r5, #0
	bl sub_080045C4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, [r6]
	ldrh r1, [r2, #0x2e]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r3, r5, #0
	adds r3, #0x7a
	strh r0, [r3]
	ldrb r1, [r5, #0x14]
	adds r0, r5, #0
	bl LoadAnimation
	movs r0, #1
	b _080378AE
	.align 2, 0
_080378A4: .4byte gUnk_020000B0
_080378A8:
	subs r0, #1
	strb r0, [r1]
_080378AC:
	movs r0, #0
_080378AE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080378B0
sub_080378B0: @ 0x080378B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803790C
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _08037910
	ldr r5, _08037908 @ =gUnk_020000B0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_0804A044
	ldrb r1, [r4, #0x15]
	cmp r0, r1
	bne _08037910
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x18
	bl sub_0806FCB8
	cmp r0, #0
	beq _08037910
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, #0xfb
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl LoadAnimation
	movs r0, #1
	b _08037912
	.align 2, 0
_08037908: .4byte gUnk_020000B0
_0803790C:
	subs r0, #1
	strb r0, [r1]
_08037910:
	movs r0, #0
_08037912:
	pop {r4, r5, pc}

	thumb_func_start sub_08037914
sub_08037914: @ 0x08037914
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08037970
	ldr r7, _08037950 @ =gUnk_020000B0
	ldr r0, [r7]
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x7a
	ldrh r2, [r6]
	movs r3, #0x28
	bl sub_0806FCB8
	cmp r0, #0
	bne _08037954
	ldr r0, [r7]
	ldrh r1, [r0, #0x2e]
	strh r1, [r5]
	ldrh r0, [r0, #0x32]
	strh r0, [r6]
	adds r0, r4, #0
	bl sub_0803797C
	movs r0, #0
	b _08037978
	.align 2, 0
_08037950: .4byte gUnk_020000B0
_08037954:
	ldrh r1, [r5]
	ldrh r2, [r6]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	bne _08037968
	movs r0, #0
	b _08037978
_08037968:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0x3c
	strb r0, [r1]
_08037970:
	adds r0, r4, #0
	bl sub_08037794
	movs r0, #1
_08037978:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803797C
sub_0803797C: @ 0x0803797C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x18
	movs r0, #0x18
	strb r0, [r5, #0xe]
	movs r0, #8
	strb r0, [r5, #0xf]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	adds r2, r5, #0
	adds r2, #0x78
	ldrh r2, [r2]
	adds r3, r5, #0
	adds r3, #0x7a
	ldrh r3, [r3]
	bl sub_080045D4
	adds r0, #4
	ands r0, r4
	strb r0, [r5, #0x15]
	lsrs r0, r0, #3
	ldrb r1, [r5, #0x14]
	cmp r0, r1
	beq _080379BA
	strb r0, [r5, #0x14]
	adds r1, r0, #4
	adds r0, r5, #0
	bl LoadAnimation
_080379BA:
	pop {r4, r5, pc}

	thumb_func_start sub_080379BC
sub_080379BC: @ 0x080379BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	bl Random
	movs r1, #2
	ands r0, r1
	ldrb r1, [r4, #0x14]
	adds r1, r1, r0
	subs r1, #1
	movs r0, #3
	ands r1, r0
	strb r1, [r4, #0x14]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}

	thumb_func_start sub_080379EC
sub_080379EC: @ 0x080379EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807953C
	cmp r0, #0
	beq _08037A0E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037A0E
	adds r0, r4, #0
	bl sub_08037A58
	movs r0, #1
	b _08037A10
_08037A0E:
	movs r0, #0
_08037A10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037A14
sub_08037A14: @ 0x08037A14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x18
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x20
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #5
	strb r0, [r1]
	ldr r1, [r4, #0x4c]
	adds r0, r4, #0
	bl CopyPosition
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037A58
sub_08037A58: @ 0x08037A58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037ACC
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xf
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x3d
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08037A84
	movs r0, #0xec
	strb r0, [r3]
_08037A84:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x26
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf4
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0x30
	movs r0, #0x3c
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037ACC
sub_08037ACC: @ 0x08037ACC
	ldr r3, _08037B04 @ =gLinkState
	ldr r1, [r3, #0x30]
	ldr r2, _08037B08 @ =0xFFFFFEFF
	ands r1, r2
	str r1, [r3, #0x30]
	ldr r3, _08037B0C @ =gLinkEntity
	ldrb r2, [r3, #0x10]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x3d
	movs r1, #0x1e
	strb r1, [r2]
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #4
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08037B04: .4byte gLinkState
_08037B08: .4byte 0xFFFFFEFF
_08037B0C: .4byte gLinkEntity

	thumb_func_start sub_08037B10
sub_08037B10: @ 0x08037B10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08037B44 @ =gLinkEntity
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x14
	bl ModHealth
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x7a
	bl sub_0800449C
	cmp r4, #0
	bne _08037B40
	adds r0, r6, #0
	bl sub_08037A58
	adds r1, r6, #0
	adds r1, #0x76
	movs r0, #0xf0
	strb r0, [r1]
_08037B40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08037B44: .4byte gLinkEntity

	thumb_func_start sub_08037B48
sub_08037B48: @ 0x08037B48
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037B88
	ldrb r0, [r4, #0xe]
	movs r2, #0
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x62
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037B88:
	adds r0, r4, #0
	adds r0, #0x80
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037BCA
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xfd
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	str r4, [r3, #0x50]
_08037BCA:
	adds r0, r4, #0
	adds r0, #0x84
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037C06
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf5
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037C06:
	str r3, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08037C0C
sub_08037C0C: @ 0x08037C0C
	push {lr}
	adds r3, r0, #0
	adds r0, #0x80
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C1E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C1E:
	adds r0, r3, #0
	adds r0, #0x84
	ldr r2, [r0]
	cmp r2, #0
	beq _08037C2E
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C2E:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08037C3A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	str r1, [r2, #0x50]
_08037C3A:
	pop {pc}
