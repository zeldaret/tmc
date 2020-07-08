	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Bombarossa
Bombarossa: @ 0x080333B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080333D0 @ =gUnk_080CEB38
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080333D0: .4byte gUnk_080CEB38

	thumb_func_start sub_080333D4
sub_080333D4: @ 0x080333D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803340E
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0xf
	ands r0, r1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803340E
	bl GetCurrentRoomProperty
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x76
	adds r0, r4, #0
	bl sub_080A2CC0
_0803340E:
	ldr r2, _08033444 @ =gUnk_080CEB50
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08033440
	adds r0, r4, #0
	bl sub_0803350C
_08033440:
	pop {r4, pc}
	.align 2, 0
_08033444: .4byte gUnk_080CEB50

	thumb_func_start sub_08033448
sub_08033448: @ 0x08033448
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	subs r0, #1
	cmp r0, #0x1d
	bhi _080334E0
	lsls r0, r0, #2
	ldr r1, _08033464 @ =_08033468
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033464: .4byte _08033468
_08033468: @ jump table
	.4byte _080334FA @ case 0
	.4byte _080334E0 @ case 1
	.4byte _080334E0 @ case 2
	.4byte _080334E0 @ case 3
	.4byte _080334E0 @ case 4
	.4byte _080334E0 @ case 5
	.4byte _080334E0 @ case 6
	.4byte _080334E0 @ case 7
	.4byte _080334E0 @ case 8
	.4byte _080334E0 @ case 9
	.4byte _080334E0 @ case 10
	.4byte _080334E0 @ case 11
	.4byte _080334E0 @ case 12
	.4byte _080334E0 @ case 13
	.4byte _080334FA @ case 14
	.4byte _080334E0 @ case 15
	.4byte _080334E0 @ case 16
	.4byte _080334E0 @ case 17
	.4byte _080334FA @ case 18
	.4byte _080334E0 @ case 19
	.4byte _080334E0 @ case 20
	.4byte _080334E0 @ case 21
	.4byte _080334E0 @ case 22
	.4byte _080334E0 @ case 23
	.4byte _080334E0 @ case 24
	.4byte _080334E0 @ case 25
	.4byte _080334FA @ case 26
	.4byte _080334E0 @ case 27
	.4byte _080334FA @ case 28
	.4byte _080334FA @ case 29
_080334E0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080334F6
	adds r0, r4, #0
	bl CopyPosition
_080334F6:
	bl DeleteThisEntity
_080334FA:
	ldr r1, _08033504 @ =gUnk_080CEB38
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08033504: .4byte gUnk_080CEB38

	thumb_func_start nullsub_158
nullsub_158: @ 0x08033508
	bx lr
	.align 2, 0

	thumb_func_start sub_0803350C
sub_0803350C: @ 0x0803350C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08033520
	adds r0, r4, #0
	bl sub_0806F69C
_08033520:
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803353A
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0803353A:
	pop {r4, pc}
