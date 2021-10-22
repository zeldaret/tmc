	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805CBB8
	adds r0, r4, #0
	bl sub_0805CBD0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805CBCE
	adds r0, r4, #0
	bl sub_0805CC3C
	adds r0, r4, #0
	bl DeleteManager
	b _0805CBCE
_0805CBB8:
	adds r0, r4, #0
	bl sub_0805CF80
	cmp r0, #0
	beq _0805CBCE
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	adds r0, r4, #0
	bl DeleteManager
_0805CBCE:
	pop {r4, pc}
	.syntax divided
