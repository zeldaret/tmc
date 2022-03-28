	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08079C68 @ =gPlayerState
	ldrb r1, [r0, #0x14]
	adds r7, r0, #0
	cmp r1, #0
	beq _08079C44
	b _08079D40
_08079C44:
	ldr r1, [r7, #0x30]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08079D40
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08079D36
	ldrb r0, [r7, #0x13]
	subs r0, #0xd
	cmp r0, #0x1d
	bhi _08079CE8
	lsls r0, r0, #2
	ldr r1, _08079C6C @ =_08079C70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08079C68: .4byte gPlayerState
_08079C6C: .4byte _08079C70
_08079C70: @ jump table
	.4byte _08079D36 @ case 0
	.4byte _08079D36 @ case 1
	.4byte _08079D36 @ case 2
	.4byte _08079D36 @ case 3
	.4byte _08079CE8 @ case 4
	.4byte _08079CE8 @ case 5
	.4byte _08079CE8 @ case 6
	.4byte _08079D36 @ case 7
	.4byte _08079CE8 @ case 8
	.4byte _08079CE8 @ case 9
	.4byte _08079D36 @ case 10
	.4byte _08079CE8 @ case 11
	.4byte _08079CE8 @ case 12
	.4byte _08079CE8 @ case 13
	.4byte _08079CE8 @ case 14
	.4byte _08079CE8 @ case 15
	.4byte _08079CE8 @ case 16
	.4byte _08079CE8 @ case 17
	.4byte _08079CE8 @ case 18
	.4byte _08079CE8 @ case 19
	.4byte _08079CE8 @ case 20
	.4byte _08079CE8 @ case 21
	.4byte _08079CE8 @ case 22
	.4byte _08079CE8 @ case 23
	.4byte _08079CE8 @ case 24
	.4byte _08079CE8 @ case 25
	.4byte _08079CE8 @ case 26
	.4byte _08079CE8 @ case 27
	.4byte _08079CE8 @ case 28
	.4byte _08079D36 @ case 29
_08079CE8:
	mov r8, r7
	mov r0, r8
	ldrb r4, [r0, #0x12]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	movs r1, #0
	bl GetRelativeCollisionTile
	ldr r5, _08079D3C @ =gUnk_08007CAC
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
	mov r0, r8
	ldrb r4, [r0, #0x12]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl GetRelativeCollisionTile
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
	ldrb r4, [r7, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r6, #0
	movs r2, #0
	bl GetRelativeCollisionTile
	adds r1, r5, #0
	bl sub_08007DD6
	cmp r4, r0
	bne _08079D40
_08079D36:
	movs r0, #1
	b _08079D42
	.align 2, 0
_08079D3C: .4byte gUnk_08007CAC
_08079D40:
	movs r0, #0
_08079D42:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
