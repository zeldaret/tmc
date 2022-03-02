	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080A6DA4 @ =gSave
	ldr r0, [r0, #0x40]
	lsrs r2, r0, #0x18
	ldr r0, _080A6DA8 @ =gMenu
	ldrb r1, [r0, #3]
	cmp r3, #0
	bne _080A6DAC
	movs r1, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080A6DC6
	movs r3, #1
_080A6D92:
	adds r1, #1
	cmp r1, #7
	bhi _080A6DC6
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080A6D92
	b _080A6DC6
	.align 2, 0
_080A6DA4: .4byte gSave
_080A6DA8: .4byte gMenu
_080A6DAC:
	cmp r2, #0
	beq _080A6DC6
	movs r4, #7
	movs r5, #1
_080A6DB4:
	adds r0, r1, r3
	adds r1, r0, #0
	adds r1, #8
	ands r1, r4
	adds r0, r5, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080A6DB4
_080A6DC6:
	movs r0, #7
	ands r1, r0
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
