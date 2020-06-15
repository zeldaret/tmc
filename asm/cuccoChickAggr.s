	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start CuccoChickAggr
CuccoChickAggr: @ 0x08022918
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08022930 @ =gUnk_080CBB64
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08022930: .4byte gUnk_080CBB64

	thumb_func_start sub_08022934
sub_08022934: @ 0x08022934
	push {lr}
	ldr r2, _08022948 @ =gUnk_080CBB7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08022948: .4byte gUnk_080CBB7C

	thumb_func_start sub_0802294C
sub_0802294C: @ 0x0802294C
	push {lr}
	ldr r1, _08022958 @ =gUnk_080CBB64
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_08022958: .4byte gUnk_080CBB64

	thumb_func_start nullsub_132
nullsub_132: @ 0x0802295C
	bx lr
	.align 2, 0

	thumb_func_start sub_08022960
sub_08022960: @ 0x08022960
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	adds r0, r4, #0
	bl sub_08022A88
	pop {r4, pc}

	thumb_func_start sub_08022970
sub_08022970: @ 0x08022970
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022986
	adds r0, r1, #0
	bl sub_08022AA4
_08022986:
	pop {pc}

	thumb_func_start sub_08022988
sub_08022988: @ 0x08022988
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080229A6
	adds r0, r4, #0
	bl sub_08022B20
	cmp r0, #0
	beq _080229A6
	adds r0, r4, #0
	bl sub_08022B0C
	b _080229F6
_080229A6:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080229C6
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080229F6
	movs r0, #1
	strb r0, [r4, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xd6
	bl sub_08004488
_080229C6:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r1, r0, #0
	cmp r1, #0
	bne _080229F6
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080229F0
	adds r0, r4, #0
	bl sub_08022A88
	b _080229F6
_080229F0:
	movs r0, #4
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x1e]
_080229F6:
	pop {r4, pc}

	thumb_func_start sub_080229F8
sub_080229F8: @ 0x080229F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _08022A3C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08022A30
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x1e]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08022B44
	b _08022A3C
_08022A30:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0xd6
	bl sub_08004488
_08022A3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08022A40
sub_08022A40: @ 0x08022A40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08022A58
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022A86
	movs r0, #1
	strb r0, [r4, #0x1e]
_08022A58:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08022A86
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022A80
	adds r0, r4, #0
	bl sub_08022A88
	b _08022A86
_08022A80:
	adds r0, r4, #0
	bl sub_08022B44
_08022A86:
	pop {r4, pc}

	thumb_func_start sub_08022A88
sub_08022A88: @ 0x08022A88
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0xe]
	strb r5, [r4, #0x1e]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022AA4
sub_08022AA4: @ 0x08022AA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08022AE0
	lsrs r0, r5, #8
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022AE0
	adds r0, r4, #0
	bl sub_08049EE4
	b _08022AE6
_08022AE0:
	lsrs r0, r5, #0x10
	movs r1, #0x1f
	ands r0, r1
_08022AE6:
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022B08
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08022B08:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08022B0C
sub_08022B0C: @ 0x08022B0C
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #8
	strb r1, [r0, #0xf]
	bl sub_08022B44
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08022B20
sub_08022B20: @ 0x08022B20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl sub_08049DF4
	cmp r0, #0
	beq _08022B40
	ldr r1, _08022B3C @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x24
	movs r3, #0x24
	bl sub_080041A0
	b _08022B42
	.align 2, 0
_08022B3C: .4byte gLinkEntity
_08022B40:
	movs r0, #0
_08022B42:
	pop {r4, pc}

	thumb_func_start sub_08022B44
sub_08022B44: @ 0x08022B44
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	ldr r1, _08022B84 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	strb r1, [r4, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08022B7A
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_08022B7A:
	movs r0, #0xd6
	bl sub_08004488
	pop {r4, pc}
	.align 2, 0
_08022B84: .4byte gLinkEntity
