	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x23
	ldrb r0, [r4]
	cmp r0, #0
	beq _08059638
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059682
	ldr r0, _08059634 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bl SoundReq
	b _08059682
	.align 2, 0
_08059634: .4byte gArea
_08059638:
	bl sub_0805986C
	cmp r0, #0
	beq _08059668
	ldr r0, _0805965C @ =gArea
	ldr r2, _08059660 @ =0x00000864
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0x1e
	beq _08059682
	movs r0, #0x1e
	str r0, [r1]
	movs r0, #0x78
	strb r0, [r4]
	ldr r0, _08059664 @ =0x800D0000
	bl SoundReq
	b _08059682
	.align 2, 0
_0805965C: .4byte gArea
_08059660: .4byte 0x00000864
_08059664: .4byte 0x800D0000
_08059668:
	ldr r0, _08059684 @ =gArea
	ldr r2, _08059688 @ =0x00000864
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0x37
	beq _08059682
	movs r0, #0x37
	str r0, [r1]
	movs r0, #0x78
	strb r0, [r4]
	ldr r0, _0805968C @ =0x800D0000
	bl SoundReq
_08059682:
	pop {r4, pc}
	.align 2, 0
_08059684: .4byte gArea
_08059688: .4byte 0x00000864
_0805968C: .4byte 0x800D0000
	.syntax divided
