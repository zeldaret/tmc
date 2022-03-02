	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808085C @ =gRoomTransition
	movs r1, #1
	strb r1, [r0, #8]
	adds r2, r0, #0
	adds r2, #0xc
	ldrh r1, [r4, #6]
	ldr r0, _08080860 @ =0x000003FF
	cmp r1, r0
	bhi _08080864
	strh r1, [r2, #4]
	b _08080872
	.align 2, 0
_0808085C: .4byte gRoomTransition
_08080860: .4byte 0x000003FF
_08080864:
	ldr r0, _08080880 @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x2e]
	ldr r3, _08080884 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
_08080872:
	ldrh r1, [r4, #8]
	ldr r0, _08080888 @ =0x000003FF
	cmp r1, r0
	bhi _0808088C
	strh r1, [r2, #6]
	b _0808089A
	.align 2, 0
_08080880: .4byte gRoomControls
_08080884: .4byte 0xFFFF8000
_08080888: .4byte 0x000003FF
_0808088C:
	ldr r0, _080808CC @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x32]
	ldr r3, _080808D0 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0808089A:
	ldrb r0, [r4, #0xb]
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	strb r0, [r2, #1]
	ldrb r0, [r4, #0xd]
	strb r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	strb r0, [r2, #3]
	ldrb r0, [r4, #0xf]
	strb r0, [r2, #2]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _080808B8
	bl SoundReq
_080808B8:
	ldr r0, _080808D4 @ =gUnk_0811E7C4
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r4, #0xa]
	ldr r1, [r1]
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080808CC: .4byte gRoomControls
_080808D0: .4byte 0xFFFF8000
_080808D4: .4byte gUnk_0811E7C4
	.syntax divided
