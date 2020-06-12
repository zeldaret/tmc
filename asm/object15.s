	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808601C
sub_0808601C: @ 0x0808601C
	push {lr}
	ldr r2, _08086030 @ =gUnk_08120648
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086030: .4byte gUnk_08120648

	thumb_func_start sub_08086034
sub_08086034: @ 0x08086034
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	adds r1, r0, #0
	adds r1, #0x58
	ldrb r1, [r1]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08086054
sub_08086054: @ 0x08086054
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08086064
	adds r0, r4, #0
	bl sub_08004274
_08086064:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0808607C
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0808607C:
	ldrb r0, [r4, #0xe]
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _080860AA
	cmp r1, #0
	beq _08086098
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080860AA
	bl DeleteThisEntity
	b _080860AA
_08086098:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080860AA
	bl DeleteThisEntity
_080860AA:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080860BC
	ldr r0, [r1, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r1, #0x34]
	str r0, [r4, #0x34]
_080860BC:
	pop {r4, pc}
	.align 2, 0
