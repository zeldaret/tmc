
	.syntax unified

	.text

	push {r4, lr}
	ldr r0, _080B0658 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080B065C @ =0x68736D53
	cmp r3, r0
	beq _080B0650
	ldr r1, _080B0660 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
	ldr r3, _080B0664 @ =0x04000006
	ldrb r0, [r3]
	ldr r1, [r2, #0x10]
	cmp r0, #0x9f
	bne _080B0636
	adds r2, r3, #0
_080B0630:
	ldrb r0, [r2]
	cmp r0, #0x9f
	beq _080B0630
_080B0636:
	ldr r2, _080B0664 @ =0x04000006
_080B0638:
	ldrb r0, [r2]
	cmp r0, #0x9f
	bne _080B0638
	ldr r4, _080B0668 @ =0x04000100
	ldr r0, _080B066C @ =0x00044940
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	ldr r1, _080B0670 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
_080B0650:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0658: .4byte 0x03007FF0
_080B065C: .4byte 0x68736D53
_080B0660: .4byte 0x040000C6
_080B0664: .4byte 0x04000006
_080B0668: .4byte 0x04000100
_080B066C: .4byte 0x00044940
_080B0670: .4byte 0x04000102

    .syntax divided
