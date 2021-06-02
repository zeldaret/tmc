	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABC52
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	blt _080ABC52
	cmp r0, #1
	ble _080ABC3E
	cmp r0, #2
	bne _080ABC52
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	beq _080ABC32
	cmp r0, #3
	bgt _080ABC24
	cmp r0, #0
	beq _080ABC2A
	b _080ABC52
_080ABC24:
	cmp r0, #0x14
	beq _080ABC32
	b _080ABC52
_080ABC2A:
	movs r0, #4
	rsbs r0, r0, #0
	bl ModHealth
_080ABC32:
	adds r0, r4, #0
	bl CreateDust
	bl DeleteThisEntity
	b _080ABC52
_080ABC3E:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080ABC52
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	bl DeleteThisEntity
_080ABC52:
	pop {r4, pc}
	.syntax divided
