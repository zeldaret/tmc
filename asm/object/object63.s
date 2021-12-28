	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object63
Object63: @ 0x08093D70
	push {lr}
	ldr r2, _08093D84 @ =gUnk_08122944
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08093D84: .4byte gUnk_08122944

	thumb_func_start sub_08093D88
sub_08093D88: @ 0x08093D88
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x36]
	subs r0, #8
	strh r0, [r4, #0x36]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08093DAC
	cmp r0, #1
	beq _08093DC4
	b _08093DDE
_08093DAC:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0805457C
	cmp r0, #0
	bne _08093DBC
	movs r0, #2
	strb r0, [r4, #0xc]
_08093DBC:
	ldr r1, [r4, #0x54]
	ldr r0, [r4, #0x20]
	str r0, [r1, #0x20]
	b _08093DDE
_08093DC4:
	movs r0, #0
	movs r1, #0x5f
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08093DDE
	movs r0, #5
	strb r0, [r1, #0xe]
	adds r0, r4, #0
	bl sub_08093E10
_08093DDE:
	pop {r4, pc}

	thumb_func_start sub_08093DE0
sub_08093DE0: @ 0x08093DE0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08093DF4
	movs r0, #2
	strb r0, [r2, #0xc]
_08093DF4:
	ldrb r1, [r2, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08093E06
	ldr r1, [r2, #0x54]
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
_08093E06:
	pop {pc}

	thumb_func_start sub_08093E08
sub_08093E08: @ 0x08093E08
	push {lr}
	bl DeleteEntity
	pop {pc}

	thumb_func_start sub_08093E10
sub_08093E10: @ 0x08093E10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl CopyPosition
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	pop {r4, r5, pc}
