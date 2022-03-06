	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r0, r7, #0
	movs r1, #1
	bl sub_080B1B44
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #1
	bl GetTileIndex
	adds r3, r0, #0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	bne _0809012C
	adds r3, r5, #0
	ldr r1, _080900D0 @ =0xFFFFBFDC
	adds r0, r3, r1
	cmp r0, #0xb
	bhi _0809011A
	lsls r0, r0, #2
	ldr r1, _080900D4 @ =_080900D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080900D0: .4byte 0xFFFFBFDC
_080900D4: .4byte _080900D8
_080900D8: @ jump table
	.4byte _08090114 @ case 0
	.4byte _08090108 @ case 1
	.4byte _0809011A @ case 2
	.4byte _0809011A @ case 3
	.4byte _0809011A @ case 4
	.4byte _0809011A @ case 5
	.4byte _0809011A @ case 6
	.4byte _0809011A @ case 7
	.4byte _08090114 @ case 8
	.4byte _0809010E @ case 9
	.4byte _08090114 @ case 10
	.4byte _0809010E @ case 11
_08090108:
	cmp r4, #5
	bne _0809011A
	b _08090118
_0809010E:
	cmp r4, #5
	bne _0809011A
	b _08090118
_08090114:
	cmp r4, #0xa
	bne _0809011A
_08090118:
	ldr r3, _08090128 @ =0x00004022
_0809011A:
	adds r0, r3, #0
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
	b _08090242
	.align 2, 0
_08090128: .4byte 0x00004022
_0809012C:
	ldr r1, _08090140 @ =0xFFFFBFDE
	adds r0, r3, r1
	cmp r0, #0xd
	bls _08090136
	b _08090242
_08090136:
	lsls r0, r0, #2
	ldr r1, _08090144 @ =_08090148
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090140: .4byte 0xFFFFBFDE
_08090144: .4byte _08090148
_08090148: @ jump table
	.4byte _08090242 @ case 0
	.4byte _08090242 @ case 1
	.4byte _080901EC @ case 2
	.4byte _08090180 @ case 3
	.4byte _08090242 @ case 4
	.4byte _08090242 @ case 5
	.4byte _08090242 @ case 6
	.4byte _08090242 @ case 7
	.4byte _08090242 @ case 8
	.4byte _08090242 @ case 9
	.4byte _08090210 @ case 10
	.4byte _080901B4 @ case 11
	.4byte _08090210 @ case 12
	.4byte _080901B4 @ case 13
_08090180:
	ldr r0, _080901A8 @ =0x00004024
	cmp r5, r0
	bne _08090194
	ldr r3, _080901AC @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_08090194:
	ldr r0, _080901B0 @ =0x0000402C
	cmp r5, r0
	bne _08090238
	ldr r3, _080901AC @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	b _08090234
	.align 2, 0
_080901A8: .4byte 0x00004024
_080901AC: .4byte 0x00004022
_080901B0: .4byte 0x0000402C
_080901B4:
	ldr r0, _080901DC @ =0x0000402C
	cmp r5, r0
	bne _080901C8
	ldr r3, _080901E0 @ =0x0000402B
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_080901C8:
	ldr r0, _080901E4 @ =0x00004024
	cmp r5, r0
	bne _08090238
	ldr r3, _080901E8 @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x10
	b _08090234
	.align 2, 0
_080901DC: .4byte 0x0000402C
_080901E0: .4byte 0x0000402B
_080901E4: .4byte 0x00004024
_080901E8: .4byte 0x00004022
_080901EC:
	ldr r0, _08090204 @ =0x00004025
	cmp r5, r0
	bne _08090200
	ldr r3, _08090208 @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08090200:
	ldr r0, _0809020C @ =0x0000402D
	b _08090226
	.align 2, 0
_08090204: .4byte 0x00004025
_08090208: .4byte 0x00004022
_0809020C: .4byte 0x0000402D
_08090210:
	ldr r0, _08090244 @ =0x0000402D
	cmp r5, r0
	bne _08090224
	ldr r3, _08090248 @ =0x0000402B
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08090224:
	ldr r0, _0809024C @ =0x00004025
_08090226:
	cmp r5, r0
	bne _08090238
	ldr r3, _08090250 @ =0x00004022
	adds r2, r6, #0
	adds r2, #0x83
	ldrb r1, [r2]
	movs r0, #0x20
_08090234:
	orrs r0, r1
	strb r0, [r2]
_08090238:
	adds r0, r3, #0
	adds r1, r7, #0
	movs r2, #1
	bl SetTile
_08090242:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08090244: .4byte 0x0000402D
_08090248: .4byte 0x0000402B
_0809024C: .4byte 0x00004025
_08090250: .4byte 0x00004022
	.syntax divided
