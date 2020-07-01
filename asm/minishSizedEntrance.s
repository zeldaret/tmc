	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MinishSizedEntrance
MinishSizedEntrance: @ 0x08090EA8
	push {lr}
	ldr r2, _08090EBC @ =gUnk_08122254
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08090EBC: .4byte gUnk_08122254

	thumb_func_start sub_08090EC0
sub_08090EC0: @ 0x08090EC0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x1e]
	bl CheckIsDungeon
	cmp r0, #0
	beq _08090EFE
	ldrb r0, [r4, #0x1e]
	adds r0, #4
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_080AE068
	movs r1, #0xc2
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_080ADF80
_08090EFE:
	pop {r4, pc}

	thumb_func_start sub_08090F00
sub_08090F00: @ 0x08090F00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #1
	bne _08090F1C
	ldr r0, [r4, #0x50]
	ldrb r2, [r4, #0xf]
	lsls r1, r2
	ldr r0, [r0, #0x20]
	ands r0, r1
	cmp r0, #0
	bne _08090F1C
	bl DeleteThisEntity
_08090F1C:
	ldr r6, _08090F64 @ =gLinkState
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08090F62
	ldr r5, _08090F68 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #4
	bl sub_080041A0
	cmp r0, #0
	beq _08090F62
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08090F62
	adds r2, r6, #0
	adds r2, #0x90
	ldr r1, _08090F6C @ =gUnk_0812225C
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08090F62
	ldrb r0, [r4, #0xe]
	bl sub_0804B128
	bl DoExitTransition
_08090F62:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08090F64: .4byte gLinkState
_08090F68: .4byte gLinkEntity
_08090F6C: .4byte gUnk_0812225C
