	.syntax unified
.ifdef EU
	push {r4, r5, lr}
	ldr r1, _080A66CC @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #8]
	ldr r1, _080A66D0 @ =gMenu
	adds r4, r1, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r1, #3]
	bl sub_080A6EE0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x5e
	cmp r0, #0
	beq _080A6698
	movs r1, #0x5d
_080A6698:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
	movs r4, #0
	ldr r5, _080A66D4 @ =gSave
_080A66A4EU:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r5, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A66C4
	adds r0, r4, #0
	bl sub_080A6EE0
	movs r0, #0xfd
	lsls r0, r0, #1
	movs r1, #0x5c
	bl DrawDirect
_080A66C4:
	adds r4, #1
	cmp r4, #7
	bls _080A66A4EU
	pop {r4, r5, pc}
	.align 2, 0
_080A66CC: .4byte gOamCmd
_080A66D0: .4byte gMenu
_080A66D4: .4byte gSave
.else
	push {r4, r5, lr}
	ldr r1, _080A6ED0 @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #8]
	ldr r1, _080A6ED4 @ =gMenu
	adds r4, r1, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r1, #3]
	bl sub_080A6EE0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x5e
	cmp r0, #0
	beq _080A6EA0
	movs r1, #0x5d
_080A6EA0:
	ldr r0, _080A6ED8 @ =0x000001FB
	bl DrawDirect
	movs r4, #0
	ldr r5, _080A6EDC @ =gSave
_080A6EAA:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r5, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A6EC8
	adds r0, r4, #0
	bl sub_080A6EE0
	ldr r0, _080A6ED8 @ =0x000001FB
	movs r1, #0x5c
	bl DrawDirect
_080A6EC8:
	adds r4, #1
	cmp r4, #7
	bls _080A6EAA
	pop {r4, r5, pc}
	.align 2, 0
_080A6ED0: .4byte gOamCmd
_080A6ED4: .4byte gMenu
_080A6ED8: .4byte 0x000001FB
_080A6EDC: .4byte gSave
.endif
	.syntax divided
