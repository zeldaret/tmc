	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08078060 @ =gSave
	adds r5, r6, #0
	adds r5, #0xb4
	ldrb r0, [r5]
	bl ItemIsSword
	cmp r0, #0
	bne _0807802C
	adds r5, r6, #0
	adds r5, #0xb5
	ldrb r0, [r5]
	bl ItemIsSword
	movs r2, #0
	cmp r0, #0
	beq _0807802E
_0807802C:
	ldrb r2, [r5]
_0807802E:
	subs r0, r2, #1
	cmp r0, #1
	bhi _08078036
	movs r2, #0
_08078036:
	cmp r2, #0
	beq _08078068
	ldr r0, _08078064 @ =gPlayerState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08078068
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _0807806C
	movs r0, #0xa
	strb r0, [r4, #1]
	movs r0, #3
	strb r0, [r4]
	strb r2, [r4, #2]
	b _0807806C
	.align 2, 0
_08078060: .4byte gSave
_08078064: .4byte gPlayerState
_08078068:
	movs r0, #0
	strb r0, [r4, #1]
_0807806C:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.syntax divided
