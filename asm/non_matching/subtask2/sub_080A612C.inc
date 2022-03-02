	.syntax unified
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A6178
	ldr r1, _080A614C @ =gMenu
	ldrb r2, [r1, #3]
	ldr r0, _080A6150 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #0x10
	beq _080A6154
	cmp r0, #0x20
	bne _080A6156
	subs r2, #1
	b _080A6156
	.align 2, 0
_080A614C: .4byte gMenu
_080A6150: .4byte gInput
_080A6154:
	adds r2, #1
_080A6156:
	adds r3, r2, #0
	adds r3, #8
	adds r0, r3, #0
	cmp r3, #0
	bge _080A6164
	adds r0, r2, #0
	adds r0, #0xf
_080A6164:
	asrs r2, r0, #3
	lsls r0, r2, #3
	subs r2, r3, r0
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A6178
	strb r2, [r1, #3]
	movs r0, #0x69
	bl SoundReq
_080A6178:
	pop {pc}
	.align 2, 0
	.syntax divided
