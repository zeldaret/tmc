	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start DrLeft
DrLeft: @ 0x0806BF80
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806BFBE
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BFA2
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
_0806BFA2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806BFD8
	b _0806BFD4
_0806BFBE:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806BFD4
	adds r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAD8
_0806BFD4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806BFD8
sub_0806BFD8: @ 0x0806BFD8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r5, #3
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #1
	beq _0806BFF0
	cmp r1, #2
	beq _0806C002
	b _0806C00A
_0806BFF0:
	bl Random
	adds r1, r0, #0
	ands r1, r5
	adds r1, #0xc
	adds r0, r4, #0
	bl InitializeAnimation
	b _0806C00A
_0806C002:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0806C00A:
	pop {r4, r5, pc}

	thumb_func_start sub_0806C00C
sub_0806C00C: @ 0x0806C00C
	push {lr}
	adds r2, r1, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0806C022
	movs r0, #1
_0806C022:
	str r0, [r2, #0x14]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806C028
sub_0806C028: @ 0x0806C028
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	ldr r1, [r1, #4]
	adds r1, r1, r2
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_0806C038
sub_0806C038: @ 0x0806C038
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806C074 @ =gSave
	ldrb r0, [r0, #8]
	subs r4, r0, #5
	cmp r4, #0
	beq _0806C048
	movs r4, #0
_0806C048:
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0806C086
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #0
	bne _0806C078
	movs r4, #6
	movs r0, #0xaf
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806C086
	movs r4, #5
	movs r0, #0xaf
	bl SetLocalFlag
	b _0806C086
	.align 2, 0
_0806C074: .4byte gSave
_0806C078:
	movs r4, #7
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #1
	bls _0806C086
	movs r4, #0
_0806C086:
	ldr r0, _0806C098 @ =gUnk_081133A4
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_0806C098: .4byte gUnk_081133A4

	thumb_func_start sub_0806C09C
sub_0806C09C: @ 0x0806C09C
	push {lr}
	ldr r3, _0806C0AC @ =gUnk_081133B4
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	pop {pc}
	.align 2, 0
_0806C0AC: .4byte gUnk_081133B4
