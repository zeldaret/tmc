	.syntax unified
	push {r4, r5, r6, lr}
	ldr r3, _08080C40 @ =gRoomControls
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #6]
	subs r5, r1, r0
	movs r2, #0xf
	ands r5, r2
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	ands r0, r2
	adds r6, r0, #0
	adds r6, #8
	ldrh r2, [r3, #0x16]
	adds r4, r2, #0
	cmp r4, #0
	beq _08080C50
	subs r2, #1
	strh r2, [r3, #0x16]
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #4
	movs r1, #0xe
	ands r2, r1
	adds r0, r0, r2
	ldr r1, _08080C44 @ =gUnk_080169A4
	adds r2, r0, r1
	ldr r4, _08080C48 @ =gMapBottom
	ldr r1, [r4]
	cmp r1, #0
	beq _08080C16
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r5
	strh r0, [r1, #2]
	ldr r1, [r4]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r6
	strh r0, [r1, #4]
_08080C16:
	ldr r4, _08080C4C @ =gMapTop
	ldr r1, [r4]
	cmp r1, #0
	beq _08080C30
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r5
	strh r0, [r1, #2]
	ldr r1, [r4]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r0, r0, r6
	strh r0, [r1, #4]
_08080C30:
	ldrb r1, [r2]
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldrb r1, [r2, #1]
	adds r0, #1
	strb r1, [r0]
	b _08080C76
	.align 2, 0
_08080C40: .4byte gRoomControls
_08080C44: .4byte gUnk_080169A4
_08080C48: .4byte gMapBottom
_08080C4C: .4byte gMapTop
_08080C50:
	ldr r0, _08080C78 @ =gMapBottom
	ldr r1, [r0]
	cmp r1, #0
	beq _08080C5E
	strh r5, [r1, #2]
	ldr r0, [r0]
	strh r6, [r0, #4]
_08080C5E:
	ldr r0, _08080C7C @ =gMapTop
	ldr r1, [r0]
	cmp r1, #0
	beq _08080C6C
	strh r5, [r1, #2]
	ldr r0, [r0]
	strh r6, [r0, #4]
_08080C6C:
	adds r0, r3, #0
	adds r0, #0x24
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
_08080C76:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08080C78: .4byte gMapBottom
_08080C7C: .4byte gMapTop
	.syntax divided
