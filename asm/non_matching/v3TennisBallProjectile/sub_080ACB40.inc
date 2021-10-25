	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r1, [r0, #0x50]
	ldr r3, [r2, #0x54]
	ldr r0, [r1, #0x64]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB5A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB5A:
	ldr r1, [r1, #0x64]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB6A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB6A:
	ldr r0, [r1, #0x24]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB78
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB78:
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB8A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	bne _080ACB8A
_080ACB86:
	movs r0, #0
	b _080ACB8C
_080ACB8A:
	movs r0, #1
_080ACB8C:
	pop {pc}
	.align 2, 0
	.syntax divided
