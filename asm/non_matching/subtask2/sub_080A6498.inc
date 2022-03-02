	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A5CDCEU @ =gOamCmd
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r4, #0
	ldr r7, _080A5CE0 @ =gSave
	adds r6, r0, #0
	movs r5, #0x28
_080A5CA4:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080A5CC8EU
	lsls r1, r4, #3
	ldr r0, _080A5CE4 @ =gUnk_08128DE8
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strh r0, [r6]
	ldrb r0, [r1, #7]
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r1, r5, #0
	bl DrawDirect
_080A5CC8EU:
	adds r5, #3
	adds r4, #1
	cmp r4, #0x10
	bls _080A5CA4
	ldr r0, _080A5CE8 @ =gScreen
	adds r0, #0x62
	ldr r1, _080A5CEC @ =0x00003D3F
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5CDCEU: .4byte gOamCmd
_080A5CE0: .4byte gSave
_080A5CE4: .4byte gUnk_08128DE8
_080A5CE8: .4byte gScreen
_080A5CEC: .4byte 0x00003D3F
.else
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A64E4 @ =gOamCmd
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r4, #0
	ldr r7, _080A64E8 @ =gSave
	adds r6, r0, #0
	movs r5, #0x28
_080A64B0:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080A64D2
	lsls r1, r4, #3
	ldr r0, _080A64EC @ =gUnk_08128DE8
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strh r0, [r6]
	ldrb r0, [r1, #7]
	strh r0, [r6, #2]
	ldr r0, _080A64F0 @ =0x000001FB
	adds r1, r5, #0
	bl DrawDirect
_080A64D2:
	adds r5, #3
	adds r4, #1
	cmp r4, #0x10
	bls _080A64B0
	ldr r0, _080A64F4 @ =gScreen
	adds r0, #0x62
	ldr r1, _080A64F8 @ =0x00003D3F
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A64E4: .4byte gOamCmd
_080A64E8: .4byte gSave
_080A64EC: .4byte gUnk_08128DE8
_080A64F0: .4byte 0x000001FB
_080A64F4: .4byte gScreen
_080A64F8: .4byte 0x00003D3F
.endif
	.syntax divided
