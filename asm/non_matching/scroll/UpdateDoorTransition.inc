	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r7, _08080A70 @ =gRoomControls
	ldr r1, [r7, #0x30]
	ldr r0, _08080A74 @ =gPlayerEntity
	adds r2, r7, #0
	cmp r1, r0
	beq _08080A50
	b _08080B5C
_08080A50:
	ldr r0, _08080A78 @ =gPlayerState
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08080A5A
	b _08080B5C
_08080A5A:
	ldrb r0, [r1, #0xc]
	subs r0, #1
	cmp r0, #0x1c
	bls _08080A64
	b _08080B5C
_08080A64:
	lsls r0, r0, #2
	ldr r1, _08080A7C @ =_08080A80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080A70: .4byte gRoomControls
_08080A74: .4byte gPlayerEntity
_08080A78: .4byte gPlayerState
_08080A7C: .4byte _08080A80
_08080A80: @ jump table
	.4byte _08080AFA @ case 0
	.4byte _08080B5C @ case 1
	.4byte _08080B5C @ case 2
	.4byte _08080B5C @ case 3
	.4byte _08080B5C @ case 4
	.4byte _08080B5C @ case 5
	.4byte _08080B5C @ case 6
	.4byte _08080B5C @ case 7
	.4byte _08080AFA @ case 8
	.4byte _08080B5C @ case 9
	.4byte _08080B5C @ case 10
	.4byte _08080B5C @ case 11
	.4byte _08080B5C @ case 12
	.4byte _08080B5C @ case 13
	.4byte _08080AF4 @ case 14
	.4byte _08080B5C @ case 15
	.4byte _08080B5C @ case 16
	.4byte _08080B5C @ case 17
	.4byte _08080B5C @ case 18
	.4byte _08080B5C @ case 19
	.4byte _08080B5C @ case 20
	.4byte _08080B5C @ case 21
	.4byte _08080B5C @ case 22
	.4byte _08080AFA @ case 23
	.4byte _08080B5C @ case 24
	.4byte _08080B5C @ case 25
	.4byte _08080B5C @ case 26
	.4byte _08080B5C @ case 27
	.4byte _08080AFA @ case 28
_08080AF4:
	ldrb r0, [r2, #4]
	cmp r0, #0x48
	beq _08080B5C
_08080AFA:
	ldr r3, [r7, #0x30]
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	ldrh r0, [r7, #8]
	subs r6, r1, r0
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldrh r0, [r7, #6]
	subs r5, r1, r0
	asrs r0, r5, #4
	movs r2, #0x3f
	ands r0, r2
	asrs r1, r6, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	adds r3, #0x38
	ldrb r1, [r3]
	bl sub_080002C8
	adds r4, r0, #0
	ldr r0, [r7, #0x30]
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080002A8
	ldr r1, _08080B48 @ =gRoomTransition
	strh r0, [r1, #0xa]
	cmp r4, #0x3f
	beq _08080B50
	cmp r4, #0x3f
	bhi _08080B4C
	cmp r4, #0x29
	bhi _08080B5C
	cmp r4, #0x28
	blo _08080B5C
	b _08080B50
	.align 2, 0
_08080B48: .4byte gRoomTransition
_08080B4C:
	cmp r4, #0xf1
	bne _08080B5C
_08080B50:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xff
	movs r3, #0xa
	bl sub_080806BC
_08080B5C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
