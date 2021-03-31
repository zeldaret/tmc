
    .syntax unified

	push {r4, r5, r6, r7, lr}
	ldr r6, _08056F10 @ =gNewWindow
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _08056F0E
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _08056F0E
	adds r4, r0, #0
	ldrb r0, [r6, #5]
	lsls r0, r0, #5
	ldrb r1, [r6, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08056F14 @ =gUnk_02034CB2
	adds r5, r0, r1
	movs r0, #4
	subs r0, r0, r4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	ldr r7, _08056F18 @ =gUnk_0202281E
_08056EEC:
	ldrb r3, [r6, #6]
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r2, [r0]
	adds r5, #0x40
	adds r0, r1, #1
	subs r4, #1
	adds r1, r5, #0
_08056EFC:
	strh r2, [r1]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bgt _08056EFC
	adds r1, r0, #0
	cmp r4, #0
	bne _08056EEC
_08056F0E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08056F10: .4byte gNewWindow
_08056F14: .4byte gUnk_02034CB2
_08056F18: .4byte gUnk_0202281E

    .syntax divided
