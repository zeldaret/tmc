.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _08054138 @ =gRoomVars
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08054126
	b _080542CC
_08054126:
	ldr r2, _0805413C @ =gUnk_08001A1C
	movs r4, #0
	cmp r3, #0x18
	bhi _080541BC
	lsls r0, r3, #2
	ldr r1, _08054140 @ =_08054144
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054138: .4byte gRoomVars
_0805413C: .4byte gUnk_08001A1C
_08054140: .4byte _08054144
_08054144: @ jump table
	.4byte _080541BC @ case 0
	.4byte _080541A8 @ case 1
	.4byte _080541A8 @ case 2
	.4byte _080541A8 @ case 3
	.4byte _080541A8 @ case 4
	.4byte _080541A8 @ case 5
	.4byte _080541A8 @ case 6
	.4byte _080541A8 @ case 7
	.4byte _080541A8 @ case 8
	.4byte _080541A8 @ case 9
	.4byte _080541A8 @ case 10
	.4byte _080541A8 @ case 11
	.4byte _080541A8 @ case 12
	.4byte _080541BC @ case 13
	.4byte _080541BC @ case 14
	.4byte _080541BA @ case 15
	.4byte _080541B4 @ case 16
	.4byte _080541B4 @ case 17
	.4byte _080541B4 @ case 18
	.4byte _080541B4 @ case 19
	.4byte _080541B4 @ case 20
	.4byte _080541B4 @ case 21
	.4byte _080541B4 @ case 22
	.4byte _080541B4 @ case 23
	.4byte _080541B4 @ case 24
_080541A8:
	lsls r1, r3, #5
	ldr r0, _080541B0 @ =gUnk_0800137C
	adds r4, r1, r0
	b _080541BC
	.align 2, 0
_080541B0: .4byte gUnk_0800137C
_080541B4:
	lsls r1, r3, #5
	ldr r0, _080541D0 @ =gUnk_0800161C
	adds r2, r1, r0
_080541BA:
	ldr r4, _080541D4 @ =gUnk_02034398
_080541BC:
	cmp r4, #0
	bne _080541C2
	b _080542CC
_080541C2:
	ldr r0, _080541D8 @ =gSave
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #0
	bne _080541E0
	ldr r3, _080541DC @ =gUnk_08001A1C
	b _080541E6
	.align 2, 0
_080541D0: .4byte gUnk_0800161C
_080541D4: .4byte gUnk_02034398
_080541D8: .4byte gSave
_080541DC: .4byte gUnk_08001A1C
_080541E0:
	lsls r1, r1, #5
	ldr r0, _080542BC @ =0x080014E4
	adds r3, r1, r0
_080541E6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08000F14
	ldr r4, _080542C0 @ =gSave
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08054204
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #5
	strh r0, [r1, #8]
_08054204:
	adds r0, r4, #0
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054218
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xc]
	adds r0, #3
	strh r0, [r1, #0xc]
_08054218:
	adds r0, r4, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805422C
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
_0805422C:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0xa
	bhi _08054240
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #4]
	adds r0, #1
	strh r0, [r1, #4]
_08054240:
	ldr r2, _080542C4 @ =gUnk_08001A1C
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	beq _08054250
	adds r2, #0x20
_08054250:
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805425E
	adds r3, #0x40
_0805425E:
	mov r0, sp
	mov r1, sp
	bl sub_08000F2C
	adds r4, r0, #0
	bl Random
	adds r2, r0, #0
	asrs r5, r2, #0x18
	movs r0, #0xf
	ands r5, r0
	adds r0, r2, #0
	adds r1, r4, #0
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0
	lsls r0, r5, #1
	add r0, sp
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, r2
	bgt _080542A6
	movs r4, #0xf
_0805428E:
	adds r3, #1
	adds r5, #1
	ands r5, r4
	cmp r3, #0xf
	bhi _080542A6
	lsls r0, r5, #1
	add r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
	cmp r1, r2
	ble _0805428E
_080542A6:
	ldr r0, _080542C8 @ =gUnk_080FE1B4
	adds r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _080542CC
	adds r0, r6, #0
	movs r2, #0
	bl CreateItemDrop
	b _080542CE
	.align 2, 0
_080542BC: .4byte 0x080014E4
_080542C0: .4byte gSave
_080542C4: .4byte gUnk_08001A1C
_080542C8: .4byte gUnk_080FE1B4
_080542CC:
	movs r0, #0
_080542CE:
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

.syntax divided
