	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	subs r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x2a
	bls _080800C6
	ldr r3, [r5, #0x30]
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x18]
	subs r0, r2, r1
	adds r7, r0, #0
	adds r7, #8
	cmp r7, #0
	bge _08080078
	movs r7, #0
_08080078:
	adds r0, r2, r1
	adds r6, r0, #0
	subs r6, #8
	cmp r6, #0xf0
	ble _08080084
	movs r6, #0xf0
_08080084:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x1a]
	subs r0, r2, r1
	adds r4, r0, #0
	adds r4, #8
	cmp r4, #0
	bge _0808009C
	movs r4, #0
_0808009C:
	adds r0, r2, r1
	adds r3, r0, #0
	subs r3, #8
	cmp r3, #0xa0
	ble _080800A8
	movs r3, #0xa0
_080800A8:
	ldr r2, _080800F0 @ =gScreen
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
_080800C6:
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _080800FC
	movs r0, #3
	strb r0, [r5, #3]
	bl DeleteSleepingEntities
	bl sub_0807C810
	ldr r1, _080800F4 @ =gUnk_08109194
	ldr r0, _080800F8 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08080C80
	b _08080102
	.align 2, 0
_080800F0: .4byte gScreen
_080800F4: .4byte gUnk_08109194
_080800F8: .4byte gUnk_03004030
_080800FC:
	ldr r1, _08080104 @ =gUpdateVisibleTiles
	movs r0, #4
	strb r0, [r1]
_08080102:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080104: .4byte gUpdateVisibleTiles
	.syntax divided
