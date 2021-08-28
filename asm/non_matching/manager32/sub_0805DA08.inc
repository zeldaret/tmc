	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _0805DA78 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0805DA7C @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r3, #0
	mov r8, r2
	mov sb, r1
	ldr r0, _0805DA80 @ =gSineTable
	mov ip, r0
	movs r2, #0xff
	ldr r1, _0805DA84 @ =gScreen
_0805DA34:
	adds r0, r6, r3
	adds r0, r0, r5
	ands r0, r2
	lsls r0, r0, #1
	add r0, ip
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	lsrs r0, r0, #8
	ldrh r7, [r1, #0x2e]
	adds r0, r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r3, #1
	adds r5, #0x17
	cmp r3, #0x9f
	bls _0805DA34
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, sb
	ldr r1, _0805DA88 @ =0x0400001C
	ldr r2, _0805DA8C @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805DA78: .4byte gUnk_03003DE4
_0805DA7C: .4byte gUnk_02017AA0
_0805DA80: .4byte gSineTable
_0805DA84: .4byte gScreen
_0805DA88: .4byte 0x0400001C
_0805DA8C: .4byte 0xA2600001
	.syntax divided
