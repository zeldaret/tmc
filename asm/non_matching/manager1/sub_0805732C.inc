	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r2, _08057390 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _08057394 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r3, #0
	mov ip, r2
	mov r8, r1
	ldr r0, _08057398 @ =gSineTable
	mov sb, r0
	movs r2, #0xff
	ldr r1, _0805739C @ =gScreen
_08057354:
	adds r0, r5, r3
	ands r0, r2
	lsls r0, r0, #1
	add r0, sb
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	lsrs r0, r0, #8
	ldrh r7, [r1, #0x2e]
	adds r0, r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r3, #1
	cmp r3, #0x9f
	bls _08057354
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, r8
	ldr r1, _080573A0 @ =0x0400001C
	ldr r2, _080573A4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057390: .4byte gUnk_03003DE4
_08057394: .4byte gUnk_02017AA0
_08057398: .4byte gSineTable
_0805739C: .4byte gScreen
_080573A0: .4byte 0x0400001C
_080573A4: .4byte 0xA2600001
	.syntax divided
