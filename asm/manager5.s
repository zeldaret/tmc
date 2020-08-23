	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057AD0
sub_08057AD0: @ 0x08057AD0
	push {lr}
	ldr r2, _08057AE4 @ =gUnk_08108044
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08057AE4: .4byte gUnk_08108044

	thumb_func_start sub_08057AE8
sub_08057AE8: @ 0x08057AE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _08057B04
	ldr r0, _08057B00 @ =0x00000323
	strh r0, [r5, #0x30]
	b _08057B12
	.align 2, 0
_08057B00: .4byte 0x00000323
_08057B04:
	movs r0, #2
	ands r0, r1
	movs r2, #0x36
	cmp r0, #0
	beq _08057B10
	movs r2, #0x37
_08057B10:
	strh r2, [r5, #0x30]
_08057B12:
	ldr r2, _08057B9C @ =gUnk_08108024
	lsls r3, r1, #1
	adds r0, r3, r2
	ldrh r0, [r0]
	movs r4, #0
	strh r0, [r5, #0x28]
	adds r1, #1
	lsls r1, r1, #1
	adds r2, r1, r2
	ldrh r0, [r2]
	strh r0, [r5, #0x2a]
	ldr r2, _08057BA0 @ =gUnk_08108034
	adds r3, r3, r2
	ldrh r0, [r3]
	strh r0, [r5, #0x2c]
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r5, #0x2e]
	ldrb r2, [r5, #0xb]
	lsrs r0, r2, #2
	movs r1, #0xf
	ands r0, r1
	adds r0, #1
	strh r0, [r5, #0x32]
	movs r0, #0x1c
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	movs r0, #0x80
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08057B54
	movs r1, #2
_08057B54:
	strb r1, [r5, #0xc]
	cmp r1, #2
	bne _08057B9A
	ldrh r0, [r5, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08057B9A
	ldrh r0, [r5, #0x32]
	cmp r0, #0
	beq _08057B94
_08057B6A:
	ldrh r1, [r5, #0x28]
	ldrh r2, [r5, #0x2a]
	adds r0, r5, #0
	bl sub_08057CA4
	ldrh r0, [r5, #0x30]
	movs r2, #0x38
	ldrsh r1, [r5, r2]
	movs r3, #0x3a
	ldrsh r2, [r5, r3]
	lsls r2, r2, #6
	orrs r1, r2
	ldrh r2, [r5, #0x3c]
	bl sub_0807B7D8
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08057B6A
_08057B94:
	adds r0, r5, #0
	bl DeleteManager
_08057B9A:
	pop {r4, r5, pc}
	.align 2, 0
_08057B9C: .4byte gUnk_08108024
_08057BA0: .4byte gUnk_08108034

	thumb_func_start sub_08057BA4
sub_08057BA4: @ 0x08057BA4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057C24
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08057BF6
	ldrh r0, [r4, #0x32]
	ldrb r1, [r4, #0xf]
	cmp r0, r1
	beq _08057C24
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_08057CA4
	ldrh r0, [r4, #0x30]
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	movs r3, #0x3a
	ldrsh r2, [r4, r3]
	lsls r2, r2, #6
	orrs r1, r2
	ldrh r2, [r4, #0x3c]
	bl sub_0807B7D8
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x71
	bl PlaySFX
	b _08057C24
_08057BF6:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08057C24
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	lsls r1, r1, #6
	orrs r0, r1
	ldrh r1, [r4, #0x3c]
	bl sub_0807BA8C
	ldrh r1, [r4, #0x2c]
	ldrh r2, [r4, #0x2e]
	adds r0, r4, #0
	bl sub_08057CA4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x71
	bl PlaySFX
_08057C24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08057C28
sub_08057C28: @ 0x08057C28
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08057C44
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08057C9C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _08057C9C
_08057C44:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057C9C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrh r0, [r4, #0x32]
	ldrb r1, [r4, #0xf]
	cmp r0, r1
	beq _08057C88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_08057CA4
	ldrh r0, [r4, #0x30]
	movs r2, #0x38
	ldrsh r1, [r4, r2]
	movs r3, #0x3a
	ldrsh r2, [r4, r3]
	lsls r2, r2, #6
	orrs r1, r2
	ldrh r2, [r4, #0x3c]
	bl sub_0807B7D8
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x71
	bl PlaySFX
	b _08057C9C
_08057C88:
	ldrh r1, [r4, #0x30]
	ldr r0, _08057CA0 @ =0x00000323
	cmp r1, r0
	beq _08057C96
	movs r0, #0x72
	bl PlaySFX
_08057C96:
	adds r0, r4, #0
	bl DeleteManager
_08057C9C:
	pop {r4, pc}
	.align 2, 0
_08057CA0: .4byte 0x00000323

	thumb_func_start sub_08057CA4
sub_08057CA4: @ 0x08057CA4
	ldrh r3, [r0, #0x38]
	adds r3, r3, r1
	strh r3, [r0, #0x38]
	ldrh r1, [r0, #0x3a]
	adds r1, r1, r2
	strh r1, [r0, #0x3a]
	bx lr
	.align 2, 0