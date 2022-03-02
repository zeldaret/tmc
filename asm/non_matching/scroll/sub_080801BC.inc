	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	adds r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1e
	bls _08080232
	ldr r2, [r5, #0x30]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	subs r0, r1, r0
	ldrh r1, [r5, #0x18]
	subs r7, r0, r1
	cmp r7, #0
	bge _080801F0
	movs r7, #0
_080801F0:
	adds r6, r0, r1
	cmp r6, #0xf0
	ble _080801F8
	movs r6, #0xf0
_080801F8:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r0, r1, r0
	ldrh r1, [r5, #0x1a]
	subs r4, r0, r1
	cmp r4, #0
	bge _0808020C
	movs r4, #0
_0808020C:
	adds r3, r0, r1
	cmp r3, #0xa0
	ble _08080214
	movs r3, #0xa0
_08080214:
	ldr r2, _08080260 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_08080232:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _08080268
	strb r0, [r5, #2]
	strh r0, [r5]
	bl ResetSystemPriority
	ldr r1, _08080260 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _08080264 @ =0x0000BFFF
	ands r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x60
	ldrb r0, [r2]
	strh r0, [r2]
	adds r1, #0x62
	ldrh r2, [r1]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	strh r0, [r1]
	b _08080272
	.align 2, 0
_08080260: .4byte gScreen
_08080264: .4byte 0x0000BFFF
_08080268:
	ldr r0, _08080274 @ =gUpdateVisibleTiles
	movs r1, #4
	strb r1, [r0]
	movs r0, #0
	strh r0, [r5, #0x1c]
_08080272:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080274: .4byte gUpdateVisibleTiles
	.syntax divided
