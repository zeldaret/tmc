	.syntax unified
	push {r4, lr}
	ldr r1, _080537DC @ =gMenu
	movs r2, #0
	movs r3, #1
	strb r3, [r1, #6]
	movs r4, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x1e
	strh r0, [r1, #0xa]
	strb r4, [r1, #0x10]
	ldr r0, _080537E0 @ =gUnk_02032EC0
	strb r3, [r0, #6]
	ldr r0, _080537E4 @ =gMapBottom
	str r2, [r0]
	ldr r0, _080537E8 @ =gMapTop
	str r2, [r0]
	ldr r0, _080537EC @ =gRoomControls
	str r2, [r0, #0x30]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xa]
	bl sub_0801B170
	movs r0, #0
	bl DispReset
	ldr r2, _080537F0 @ =gScreen
	movs r0, #0x99
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080537F4 @ =0x00002244
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	subs r1, #8
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x60
	strh r0, [r1]
	ldr r0, _080537F8 @ =0x00001C4E
	strh r0, [r2, #0x14]
	ldr r0, _080537FC @ =0x00001DC1
	strh r0, [r2, #0x20]
	movs r0, #0xf
	bl SoundReq
	bl ResetSystemPriority
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl SetFade
	pop {r4, pc}
	.align 2, 0
_080537DC: .4byte gMenu
_080537E0: .4byte gUnk_02032EC0
_080537E4: .4byte gMapBottom
_080537E8: .4byte gMapTop
_080537EC: .4byte gRoomControls
_080537F0: .4byte gScreen
_080537F4: .4byte 0x00002244
_080537F8: .4byte 0x00001C4E
_080537FC: .4byte 0x00001DC1
	.syntax divided
