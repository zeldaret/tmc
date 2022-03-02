	.syntax unified
	push {r4, r5, lr}
	ldr r0, _080A2FF4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A30A8
	movs r5, #0
	ldr r0, _080A2FF8 @ =gInput
	ldrh r0, [r0]
	cmp r0, #0x10
	beq _080A3020
	cmp r0, #0x10
	bgt _080A2FFC
	cmp r0, #1
	beq _080A303C
	cmp r0, #8
	beq _080A303C
	b _080A3052
	.align 2, 0
_080A2FF4: .4byte gFadeControl
_080A2FF8: .4byte gInput
_080A2FFC:
	cmp r0, #0x40
	beq _080A3052
	cmp r0, #0x40
	bgt _080A3052
	cmp r0, #0x20
	bne _080A3052
	ldr r1, _080A301C @ =gMenu
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A3052
	movs r5, #1
	rsbs r5, r5, #0
	adds r1, #0x20
	movs r0, #0xfc
	b _080A302E
	.align 2, 0
_080A301C: .4byte gMenu
_080A3020:
	ldr r1, _080A3038 @ =gMenu
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A3052
	movs r5, #1
	adds r1, #0x20
	movs r0, #4
_080A302E:
	strb r0, [r1]
	movs r0, #0x69
	bl SoundReq
	b _080A3052
	.align 2, 0
_080A3038: .4byte gMenu
_080A303C:
	ldr r0, _080A3090 @ =gMenu
	ldrb r2, [r0]
	cmp r2, #0
	bne _080A3052
	ldr r1, _080A3094 @ =gMain
	movs r0, #2
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	movs r0, #0x6a
	bl SoundReq
_080A3052:
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldrb r0, [r4, #4]
	adds r1, r5, #3
	adds r0, r0, r1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #4]
	ldr r5, _080A3090 @ =gMenu
	movs r0, #0x10
	ldrsh r2, [r5, r0]
	ldrb r1, [r4, #4]
	movs r0, #0x68
	muls r0, r1, r0
	cmp r0, r2
	beq _080A3098
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl __modsi3
	strh r0, [r5, #0x10]
	movs r0, #1
	b _080A309A
	.align 2, 0
_080A3090: .4byte gMenu
_080A3094: .4byte gMain
_080A3098:
	movs r0, #0
_080A309A:
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #4]
	movs r1, #0
	bl sub_080A3198
_080A30A8:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
