	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801BB88 @ =gPlayerState
	ldr r0, [r0, #0x2c]
	cmp r0, r5
	beq _0801BB68
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801BB64
	ldrb r0, [r5, #0xb]
	cmp r0, #0x20
	beq _0801BB64
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r4, [r0]
	subs r4, #0x1c
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	bl SetBottleContents
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	movs r2, #5
.ifdef JP
	bl CreateItemEntity
.else
.ifdef EU
	bl CreateItemEntity
.else
.ifdef DEMO_JP
	bl CreateItemEntity @ TODO deduplicate
.else
	bl sub_080A7C18
.endif
.endif
.endif
	ldr r0, _0801BB8C @ =0x00000109
	bl SoundReq
_0801BB64:
	bl DeleteThisEntity
_0801BB68:
	ldr r1, _0801BB90 @ =gPlayerEntity
	adds r0, r5, #0
	bl sub_0801BDE8
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BC04
	lsls r0, r0, #2
	ldr r1, _0801BB94 @ =_0801BB98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BB88: .4byte gPlayerState
_0801BB8C: .4byte 0x00000109
_0801BB90: .4byte gPlayerEntity
_0801BB94: .4byte _0801BB98
_0801BB98: @ jump table
	.4byte _0801BBE0 @ case 0
	.4byte _0801BBE8 @ case 1
	.4byte _0801BBE8 @ case 2
	.4byte _0801BBE8 @ case 3
	.4byte _0801BBE8 @ case 4
	.4byte _0801BBE8 @ case 5
	.4byte _0801BC04 @ case 6
	.4byte _0801BC04 @ case 7
	.4byte _0801BC04 @ case 8
	.4byte _0801BBE8 @ case 9
	.4byte _0801BBE8 @ case 10
	.4byte _0801BBE8 @ case 11
	.4byte _0801BBE8 @ case 12
	.4byte _0801BBE8 @ case 13
	.4byte _0801BBE8 @ case 14
	.4byte _0801BC04 @ case 15
	.4byte _0801BC04 @ case 16
	.4byte _0801BC04 @ case 17
_0801BBE0:
	adds r0, r5, #0
	bl sub_0801BC0C
	b _0801BC0A
_0801BBE8:
	ldr r0, _0801BC00 @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801BC0A
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0801BC14
	b _0801BC0A
	.align 2, 0
_0801BC00: .4byte gPlayerEntity
_0801BC04:
	adds r0, r5, #0
	bl sub_0801BCB4
_0801BC0A:
	pop {r4, r5, pc}
	.syntax divided
