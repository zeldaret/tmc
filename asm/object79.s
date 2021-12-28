	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object79
Object79: @ 0x08097F84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08097FAC @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08097F98
	bl DeleteThisEntity
_08097F98:
	ldr r0, _08097FB0 @ =gUnk_08123410
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08097FAC: .4byte gPlayerState
_08097FB0: .4byte gUnk_08123410

	thumb_func_start sub_08097FB4
sub_08097FB4: @ 0x08097FB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	movs r2, #0
	strh r1, [r4, #0x24]
	str r1, [r4, #0x6c]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x90
	lsls r0, r0, #5
	strh r0, [r1]
	strb r2, [r4, #0xe]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldr r1, _08098014 @ =gUnk_0812341C
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x74]
	adds r0, r4, #0
	movs r1, #6
	bl SetDefaultPriority
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08098018
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #0x40
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl LoadSwapGFX
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _08098032
	.align 2, 0
_08098014: .4byte gUnk_0812341C
_08098018:
	ldr r0, [r4, #0x50]
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0xa]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2, #0x1e]
	adds r0, r0, r2
	strb r0, [r4, #0x1e]
_08098032:
	adds r0, r4, #0
	bl sub_08098130
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809803C
sub_0809803C: @ 0x0809803C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	bne _08098070
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08098082
	ldr r0, _0809806C @ =gPlayerEntity
	strb r5, [r0, #0xf]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	movs r0, #0xbc
	lsls r0, r0, #1
	bl SoundReq
	b _08098082
	.align 2, 0
_0809806C: .4byte gPlayerEntity
_08098070:
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0xa]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r1, [r2, #0x1e]
	adds r0, r0, r1
	strb r0, [r4, #0x1e]
	ldrb r0, [r2, #0xc]
	strb r0, [r4, #0xc]
_08098082:
	pop {r4, r5, pc}

	thumb_func_start sub_08098084
sub_08098084: @ 0x08098084
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x6c]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	cmp r1, r0
	bls _080980A8
	ldr r0, _080980A4 @ =gPlayerState
	ldr r1, [r0, #0x30]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0, #0x30]
	bl DeleteThisEntity
	b _0809812E
	.align 2, 0
_080980A4: .4byte gPlayerState
_080980A8:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080980D8
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r2, r4, #0
	adds r2, #0x7e
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080980D4 @ =0xFFFF0000
	cmp r0, r1
	bne _080980E6
	movs r0, #0x40
	strh r0, [r2]
	movs r0, #0xbc
	lsls r0, r0, #1
	bl SoundReq
	b _080980E6
	.align 2, 0
_080980D4: .4byte 0xFFFF0000
_080980D8:
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0xa]
	movs r0, #0xd
	muls r0, r1, r0
	ldrb r2, [r2, #0x1e]
	adds r0, r0, r2
	strb r0, [r4, #0x1e]
_080980E6:
	ldr r0, [r4, #0x6c]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	adds r2, r4, #0
	adds r2, #0x72
	ldrh r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x74]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08098128
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	movs r1, #1
	eors r0, r1
	strb r0, [r4, #0xe]
_08098128:
	adds r0, r4, #0
	bl sub_08098130
_0809812E:
	pop {r4, pc}

	thumb_func_start sub_08098130
sub_08098130: @ 0x08098130
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08098160 @ =gPlayerEntity
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldr r0, [r4, #0x30]
	ldr r1, _08098164 @ =0xFFEC0000
	adds r0, r0, r1
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
_08098160: .4byte gPlayerEntity
_08098164: .4byte 0xFFEC0000
