    .syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080740EA
	ldrb r0, [r4, #0x15]
	b _080740F0
_080740EA:
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	eors r0, r1
_080740F0:
	cmp r0, #8
	beq _08074128
	cmp r0, #8
	bhi _080740FE
	cmp r0, #0
	beq _08074168
	b _0807418C
_080740FE:
	cmp r0, #0x10
	beq _08074148
	cmp r0, #0x18
	bne _0807418C
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	ldrb r0, [r2, #2]
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _08074124 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _08074182
	.align 2, 0
_08074124: .4byte gRoomControls
_08074128:
	ldr r2, [r4, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r3, _08074144 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r6, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _08074182
	.align 2, 0
_08074144: .4byte gRoomControls
_08074148:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _08074164 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #5]
	adds r0, r0, r1
	b _08074182
	.align 2, 0
_08074164: .4byte gRoomControls
_08074168:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, [r4, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _080741A4 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r6, r1, r0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
_08074182:
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r3, #8]
	subs r5, r0, r1
_0807418C:
	ldr r2, _080741A8 @ =gUnk_080082DC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080086B4
	cmp r0, #0
	beq _080741AC
	adds r0, r4, #0
	bl LinearMoveUpdate
	b _080741B0
	.align 2, 0
_080741A4: .4byte gRoomControls
_080741A8: .4byte gUnk_080082DC
_080741AC:
	movs r0, #1
	strb r0, [r4, #0xf]
_080741B0:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl GravityUpdate
	cmp r0, #0
	bne _080741C2
	bl sub_0807921C
_080741C2:
	pop {r4, r5, r6, pc}
    .syntax divided
