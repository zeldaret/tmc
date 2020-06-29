	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805D280
sub_0805D280: @ 0x0805D280
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805D292
	bl DeleteThisEntity
_0805D292:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D2A6
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_0805D2A6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0805D2B4
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805D2B4:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D2C0
sub_0805D2C0: @ 0x0805D2C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D2EE
	ldr r0, _0805D2F0 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #1
	bhi _0805D2EE
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _0805D2E6
	adds r0, r4, #0
	bl sub_0805D2F4
_0805D2E6:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0805E4E0
_0805D2EE:
	pop {r4, pc}
	.align 2, 0
_0805D2F0: .4byte gUnk_03003DC0

	thumb_func_start sub_0805D2F4
sub_0805D2F4: @ 0x0805D2F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D310 @ =gUnk_03003DC0
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _0805D328
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0805D314
	bl PlaySFX
	b _0805D31A
	.align 2, 0
_0805D310: .4byte gUnk_03003DC0
_0805D314:
	movs r0, #0x72
	bl PlaySFX
_0805D31A:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0805D324
	bl SetFlag
_0805D324:
	bl DeleteThisEntity
_0805D328:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D32C
sub_0805D32C: @ 0x0805D32C
	push {lr}
	ldr r2, _0805D340 @ =gUnk_08108D50
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805D340: .4byte gUnk_08108D50

	thumb_func_start sub_0805D344
sub_0805D344: @ 0x0805D344
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0805D35C
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805D35C:
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805D36C
sub_0805D36C: @ 0x0805D36C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805D382
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
_0805D382:
	pop {r4, pc}

	thumb_func_start sub_0805D384
sub_0805D384: @ 0x0805D384
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0805D3B2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D3C6
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #0x72
	cmp r0, #0
	beq _0805D3A4
	adds r1, r0, #0
_0805D3A4:
	adds r0, r1, #0
	bl PlaySFX
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	b _0805D3C6
_0805D3B2:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805D3C6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl ClearFlag
_0805D3C6:
	pop {r4, pc}
