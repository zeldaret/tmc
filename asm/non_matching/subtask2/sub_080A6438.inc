	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	ldr r2, _080A5C7C @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	strh r1, [r2, #8]
	ldr r0, _080A5C80 @ =gSave
	ldr r1, _080A5C84 @ =gMenu
	ldrh r0, [r0, #0x20]
	ldrh r5, [r1, #0x10]
	ands r5, r0
	ldr r4, _080A5C88EU @ =gUnk_08128F58
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A5C78
	adds r7, r2, #0
_080A5C52:
	movs r0, #1
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080A5C6E
	ldrb r0, [r4, #1]
	strh r0, [r7]
	ldrb r0, [r4, #2]
	strh r0, [r7, #2]
	ldrb r1, [r4]
	movs r0, #0xfd
	lsls r0, r0, #1
	bl DrawDirect
_080A5C6E:
	adds r6, #1
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A5C52
_080A5C78:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5C7C: .4byte gOamCmd
_080A5C80: .4byte gSave
_080A5C84: .4byte gMenu
_080A5C88EU: .4byte gUnk_08128F58
.else
	push {r4, r5, r6, r7, lr}
	ldr r2, _080A6484 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	strh r1, [r2, #8]
	ldr r0, _080A6488 @ =gSave
	ldr r1, _080A648C @ =gMenu
	ldrh r0, [r0, #0x20]
	ldrh r5, [r1, #0x10]
	ands r5, r0
	ldr r4, _080A6490 @ =gUnk_08128F58
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A6482
	adds r7, r2, #0
_080A645E:
	movs r0, #1
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080A6478
	ldrb r0, [r4, #1]
	strh r0, [r7]
	ldrb r0, [r4, #2]
	strh r0, [r7, #2]
	ldrb r1, [r4]
	ldr r0, _080A6494 @ =0x000001FB
	bl DrawDirect
_080A6478:
	adds r6, #1
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A645E
_080A6482:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6484: .4byte gOamCmd
_080A6488: .4byte gSave
_080A648C: .4byte gMenu
_080A6490: .4byte gUnk_08128F58
_080A6494: .4byte 0x000001FB
.endif
	.syntax divided
