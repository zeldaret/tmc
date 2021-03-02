	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object36
Object36: @ 0x0808BB18
	push {lr}
	ldr r2, _0808BB2C @ =gUnk_08121440
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808BB2C: .4byte gUnk_08121440

	thumb_func_start sub_0808BB30
sub_0808BB30: @ 0x0808BB30
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x17
	bl CheckGlobalFlag
	adds r1, r0, #0
	cmp r1, #0
	beq _0808BB4C
	movs r0, #0x4a
	bl LoadGfxGroup
	bl DeleteThisEntity
	b _0808BBD4
_0808BB4C:
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x10]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1b]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #5
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0808BBD8 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	movs r0, #2
	strb r0, [r4, #0x1e]
	ldr r0, _0808BBDC @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0808BDB0
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x20]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0808BBE0
_0808BBD4:
	pop {r4, pc}
	.align 2, 0
_0808BBD8: .4byte gUnk_080FD150
_0808BBDC: .4byte gPlayerEntity

	thumb_func_start sub_0808BBE0
sub_0808BBE0: @ 0x0808BBE0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldr r1, _0808BC20 @ =gRoomControls
	movs r2, #0xc
	ldrsh r1, [r1, r2]
	subs r1, r0, r1
	cmp r1, #0x9f
	bhi _0808BC2C
	adds r0, r1, #0
	cmp r1, #0
	bge _0808BBFC
	adds r0, #0xf
_0808BBFC:
	asrs r1, r0, #4
	ldr r0, _0808BC24 @ =gUnk_08121474
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r2, r3, #0
	adds r2, #0x63
	strb r0, [r2]
	lsls r0, r1, #2
	ldr r1, _0808BC28 @ =gUnk_0812144C
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0808BC38
	.align 2, 0
_0808BC20: .4byte gRoomControls
_0808BC24: .4byte gUnk_08121474
_0808BC28: .4byte gUnk_0812144C
_0808BC2C:
	adds r2, r3, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0808BC38:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808BC3C
sub_0808BC3C: @ 0x0808BC3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _0808BC98 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r0, #0x78
	movs r4, #0
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x50]
	ldr r1, [r0, #0x20]
	ldr r0, _0808BC9C @ =0xFFFFFE90
	adds r1, r1, r0
	ldrh r0, [r2, #8]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	adds r0, r5, #0
	bl sub_0808BBE0
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x93
	bne _0808BCE4
	ldrb r0, [r5, #0xe]
	subs r2, r0, #1
	strb r2, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _0808BCA0
	movs r0, #0x17
	bl SetGlobalFlag
	movs r0, #2
	strb r0, [r5, #0xc]
	movs r0, #0x80
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x63
	strb r4, [r0]
	b _0808BCFE
	.align 2, 0
_0808BC98: .4byte gRoomControls
_0808BC9C: .4byte 0xFFFFFE90
_0808BCA0:
	movs r6, #1
	ands r2, r6
	cmp r2, #0
	beq _0808BCCA
	bl Random
	movs r4, #3
	ands r0, r4
	ldr r1, _0808BCDC @ =0x0000FFFE
	adds r0, r0, r1
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	bl Random
	ands r0, r4
	ldr r1, _0808BCE0 @ =0x0000FFFF
	adds r0, r0, r1
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
_0808BCCA:
	ldrb r0, [r5, #0xf]
	cmp r0, #1
	beq _0808BCFE
	strb r6, [r5, #0xf]
	movs r0, #0x4a
	bl LoadGfxGroup
	b _0808BCFE
	.align 2, 0
_0808BCDC: .4byte 0x0000FFFE
_0808BCE0: .4byte 0x0000FFFF
_0808BCE4:
	movs r0, #0x78
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0x7c
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0808BCFE
	strb r4, [r5, #0xf]
	movs r0, #0x49
	bl LoadGfxGroup
_0808BCFE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808BD00
sub_0808BD00: @ 0x0808BD00
	push {lr}
	movs r0, #0x17
	bl SetGlobalFlag
	movs r0, #0x72
	bl SoundReq
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_0808BD14
sub_0808BD14: @ 0x0808BD14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0808BD34
	subs r0, #8
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0xf]
	movs r2, #0x80
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0808BD34:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x93
	bne _0808BD74
	ldr r4, _0808BD70 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, #6
	adds r0, r5, #0
	movs r3, #0x1c
	bl sub_0806FCB8
	cmp r0, #0
	beq _0808BDAE
	adds r0, r5, #0
	bl sub_0808BD00
	b _0808BDAE
	.align 2, 0
_0808BD70: .4byte gPlayerEntity
_0808BD74:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808BD8A
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	b _0808BDAE
_0808BD8A:
	ldrb r2, [r5, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808BDAE
	adds r0, r5, #0
	bl sub_0808BD00
_0808BDAE:
	pop {r4, r5, pc}

	thumb_func_start sub_0808BDB0
sub_0808BDB0: @ 0x0808BDB0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r4, _0808BDD4 @ =gUnk_03003DA0
	ldr r2, [r4, #4]
	movs r0, #0
	str r0, [r3, #0x50]
	cmp r2, r4
	beq _0808BDE6
	ldr r6, _0808BDD8 @ =0x0000FFFF
	ldr r5, _0808BDDC @ =0x00000C09
_0808BDC4:
	ldrh r1, [r2, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, r5
	bne _0808BDE0
	str r2, [r3, #0x50]
	b _0808BDE6
	.align 2, 0
_0808BDD4: .4byte gUnk_03003DA0
_0808BDD8: .4byte 0x0000FFFF
_0808BDDC: .4byte 0x00000C09
_0808BDE0:
	ldr r2, [r2, #4]
	cmp r2, r4
	bne _0808BDC4
_0808BDE6:
	pop {r4, r5, r6, pc}
