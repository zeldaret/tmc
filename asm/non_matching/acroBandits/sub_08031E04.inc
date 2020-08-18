
	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08031E44
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r3, #6
	ands r3, r0
	ldr r0, _08031E40 @ =gUnk_080CE5C0
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0x50
	bl sub_0806FCB8
	b _08031E46
	.align 2, 0
_08031E40: .4byte gUnk_080CE5C0
_08031E44:
	movs r0, #0
_08031E46:
	pop {r4, pc}
    .syntax divided
	