	.syntax unified
.ifdef EU
	push {r4, r5, r6, lr}
	ldr r0, _080A5C18 @ =gMenu
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r6, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080A5B86
	bl sub_080A6438
_080A5B86:
	ldr r5, _080A5C1C @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	movs r0, #0xe0
	lsls r0, r0, #7
	strh r0, [r5, #8]
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080A5BE0
	ldr r4, _080A5C20 @ =gRoomTransition
	ldrh r1, [r4, #0x20]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xf9
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0x28
	strh r0, [r5]
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #7
	movs r1, #0xc6
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0xc
	strh r0, [r5, #2]
	ldr r0, _080A5C24 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x59
	cmp r0, #0
	beq _080A5BD8
	movs r1, #0x5a
_080A5BD8:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
_080A5BE0:
	ldr r3, _080A5C18 @ =gMenu
	ldrb r0, [r3, #3]
	lsls r0, r0, #3
	ldr r1, _080A5C28 @ =gUnk_08128DE8
	adds r0, r0, r1
	ldr r2, _080A5C1C @ =gOamCmd
	ldrb r1, [r0, #6]
	strh r1, [r2]
	ldrb r0, [r0, #7]
	strh r0, [r2, #2]
	ldrb r0, [r3, #3]
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, #0x26
	adds r3, #0x2c
	ldrb r1, [r3]
	lsrs r1, r1, #4
	movs r0, #1
	bics r0, r1
	adds r1, r2, r0
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
	bl sub_080A6498
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A5C18: .4byte gMenu
_080A5C1C: .4byte gOamCmd
_080A5C20: .4byte gRoomTransition
_080A5C24: .4byte gPlayerState
_080A5C28: .4byte gUnk_08128DE8
.else
	push {r4, r5, r6, lr}
	ldr r0, _080A6420 @ =gMenu
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r6, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080A6392
	bl sub_080A6438
_080A6392:
	ldr r5, _080A6424 @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	movs r0, #0xe0
	lsls r0, r0, #7
	strh r0, [r5, #8]
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080A63EA
	ldr r4, _080A6428 @ =gRoomTransition
	ldrh r1, [r4, #0x20]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xf9
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0x28
	strh r0, [r5]
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #7
	movs r1, #0xc6
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0xc
	strh r0, [r5, #2]
	ldr r0, _080A642C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x59
	cmp r0, #0
	beq _080A63E4
	movs r1, #0x5a
_080A63E4:
	ldr r0, _080A6430 @ =0x000001FB
	bl DrawDirect
_080A63EA:
	ldr r3, _080A6420 @ =gMenu
	ldrb r0, [r3, #3]
	lsls r0, r0, #3
	ldr r1, _080A6434 @ =gUnk_08128DE8
	adds r0, r0, r1
	ldr r2, _080A6424 @ =gOamCmd
	ldrb r1, [r0, #6]
	strh r1, [r2]
	ldrb r0, [r0, #7]
	strh r0, [r2, #2]
	ldrb r0, [r3, #3]
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, #0x26
	adds r3, #0x2c
	ldrb r1, [r3]
	lsrs r1, r1, #4
	movs r0, #1
	bics r0, r1
	adds r1, r2, r0
	ldr r0, _080A6430 @ =0x000001FB
	bl DrawDirect
	bl sub_080A6498
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6420: .4byte gMenu
_080A6424: .4byte gOamCmd
_080A6428: .4byte gRoomTransition
_080A642C: .4byte gPlayerState
_080A6430: .4byte 0x000001FB
_080A6434: .4byte gUnk_08128DE8
.endif
	.syntax divided
