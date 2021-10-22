
    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08066B18 @ =sub_08066B74
	bl sub_0807DD94
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08066AF6
	ldr r0, _08066B1C @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08066AF6
	adds r0, r4, #0
	bl sub_08095CB0
_08066AF6:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r5, r1, #0
	cmp r2, #0
	beq _08066B6E
	cmp r2, #2
	beq _08066B34
	cmp r2, #2
	bhi _08066B20
	cmp r2, #1
	beq _08066B2A
	b _08066B66
	.align 2, 0
_08066B18: .4byte sub_08066B74
_08066B1C: .4byte gScreenTransition
_08066B20:
	cmp r2, #3
	beq _08066B40
	cmp r2, #4
	beq _08066B52
	b _08066B66
_08066B2A:
	movs r0, #0x87
	lsls r0, r0, #2
	bl EnqueueSFX
	b _08066B66
_08066B34:
	ldr r0, _08066B3C @ =0x0000021E
	bl EnqueueSFX
	b _08066B66
	.align 2, 0
_08066B3C: .4byte 0x0000021E
_08066B40:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #4
	str r0, [r1, #4]
	adds r0, r4, #0
	bl CreateManager36
	b _08066B66
_08066B52:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	str r2, [r1, #4]
	adds r0, r4, #0
	bl DeleteManager36
	ldr r0, _08066B70 @ =0x0000021D
	bl EnqueueSFX
_08066B66:
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
_08066B6E:
	pop {r4, r5, pc}
	.align 2, 0
_08066B70: .4byte 0x0000021D
    .syntax divided
