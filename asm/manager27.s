	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805C81C
sub_0805C81C: @ 0x0805C81C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805C854 @ =gUnk_08108D10
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r0, #0xc0
	lsls r0, r0, #2
	ldrb r1, [r4, #0xa]
	adds r1, #0x67
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0805C85C
	ldr r0, _0805C858 @ =gUnk_030010A0
	adds r0, #0xac
	movs r1, #1
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	b _0805C86C
	.align 2, 0
_0805C854: .4byte gUnk_08108D10
_0805C858: .4byte gUnk_030010A0
_0805C85C:
	ldr r2, _0805C870 @ =gUnk_030010A0
	adds r2, #0xac
	movs r1, #1
	ldrb r4, [r4, #0xa]
	lsls r1, r4
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_0805C86C:
	pop {r4, pc}
	.align 2, 0
_0805C870: .4byte gUnk_030010A0

	thumb_func_start sub_0805C874
sub_0805C874: @ 0x0805C874
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805C920
	cmp r0, #0
	beq _0805C884
	movs r0, #2
	b _0805C886
_0805C884:
	movs r0, #1
_0805C886:
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805C894
sub_0805C894: @ 0x0805C894
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805C920
	cmp r0, #0
	beq _0805C8B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x8d
	lsls r0, r0, #1
	bl PlaySFX
_0805C8B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805C8B4
sub_0805C8B4: @ 0x0805C8B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0805C8F4
	movs r0, #0x14
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ands r0, r2
	cmp r0, #5
	bls _0805C8DA
	strb r1, [r4, #0xf]
_0805C8DA:
	ldr r1, _0805C904 @ =gUnk_08108D20
	ldrb r0, [r4, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0801D714
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0805C8F4
	movs r0, #0x8d
	lsls r0, r0, #1
	bl PlaySFX
_0805C8F4:
	adds r0, r4, #0
	bl sub_0805C920
	cmp r0, #0
	bne _0805C902
	movs r0, #3
	strb r0, [r4, #0xc]
_0805C902:
	pop {r4, pc}
	.align 2, 0
_0805C904: .4byte gUnk_08108D20

	thumb_func_start sub_0805C908
sub_0805C908: @ 0x0805C908
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _0805C918
	movs r0, #1
	strb r0, [r1, #0xc]
	b _0805C91E
_0805C918:
	adds r0, r1, #0
	bl sub_0805C8B4
_0805C91E:
	pop {pc}

	thumb_func_start sub_0805C920
sub_0805C920: @ 0x0805C920
	push {lr}
	movs r2, #0xc0
	lsls r2, r2, #2
	ldrb r1, [r0, #0xa]
	adds r1, #0x67
	adds r0, r2, #0
	bl CheckLocalFlagByOffset
	pop {pc}
	.align 2, 0
