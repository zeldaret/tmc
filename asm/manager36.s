	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager36_Main
Manager36_Main: @ 0x0805DDB4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #2
	ldr r1, _0805DDE0 @ =gUnk_08108DA8
	adds r3, r0, r1
	ldrb r0, [r2, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0805DDCE
	adds r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xe]
_0805DDCE:
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _0805DDE4
	ldrh r0, [r3]
	strb r0, [r2, #0xe]
	ldrh r0, [r3, #2]
	bl SoundReq
	b _0805DDE8
	.align 2, 0
_0805DDE0: .4byte gUnk_08108DA8
_0805DDE4:
	subs r0, #1
	strb r0, [r2, #0xe]
_0805DDE8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805DDEC
sub_0805DDEC: @ 0x0805DDEC
	push {r4, r5, lr}
	adds r5, r1, #0
	bl GetEmptyManager
	adds r4, r0, #0
	cmp r4, #0
	beq _0805DE16
	movs r0, #9
	strb r0, [r4, #8]
	movs r0, #0x36
	strb r0, [r4, #9]
	ldr r0, [r5, #4]
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #6
	bl AppendEntityToList
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_0805DE16:
	pop {r4, r5, pc}

	thumb_func_start sub_0805DE18
sub_0805DE18: @ 0x0805DE18
	push {lr}
	sub sp, #4
	ldr r3, [r1, #4]
	movs r0, #0
	str r0, [sp]
	movs r0, #9
	movs r1, #0x36
	movs r2, #6
	bl FindEntity
	cmp r0, #0
	beq _0805DE34
	bl DeleteEntityAny
_0805DE34:
	add sp, #4
	pop {pc}
