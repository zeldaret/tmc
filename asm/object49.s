	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object49
Object49: @ 0x0808F0A0
	push {lr}
	ldr r2, _0808F0B4 @ =gUnk_08121E5C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808F0B4: .4byte gUnk_08121E5C

	thumb_func_start sub_0808F0B8
sub_0808F0B8: @ 0x0808F0B8
	push {lr}
	ldr r2, _0808F0CC @ =gUnk_08121E88
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808F0CC: .4byte gUnk_08121E88

	thumb_func_start sub_0808F0D0
sub_0808F0D0: @ 0x0808F0D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x49
	movs r2, #2
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r5, #0x54]
	cmp r0, #0
	bne _0808F0E8
	bl DeleteThisEntity
_0808F0E8:
	movs r6, #1
	strb r6, [r5, #0xc]
	ldr r0, _0808F148 @ =0x0000FF40
	strh r0, [r5, #0x36]
	bl Random
	adds r4, r0, #0
	movs r0, #0x3f
	ands r4, r0
	bl Random
	ands r0, r6
	cmp r0, #0
	beq _0808F106
	rsbs r4, r4, #0
_0808F106:
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
	bl Random
	adds r4, r0, #0
	movs r0, #0x1f
	ands r4, r0
	bl Random
	ands r0, r6
	cmp r0, #0
	beq _0808F124
	rsbs r4, r4, #0
_0808F124:
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x32]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r5, #0x74]
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	adds r0, r5, #0
	movs r1, #3
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_0808F14C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808F148: .4byte 0x0000FF40

	thumb_func_start sub_0808F14C
sub_0808F14C: @ 0x0808F14C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808F2B0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0808F16E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x84
	bl PlaySFX
_0808F16E:
	pop {r4, pc}

	thumb_func_start sub_0808F170
sub_0808F170: @ 0x0808F170
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x74]
	subs r0, #0x20
	str r0, [r4, #0x74]
	ldr r1, [r4, #0x78]
	adds r1, #0x20
	str r1, [r4, #0x78]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #2
	bl sub_0806FCF4
	ldr r1, [r4, #0x78]
	ldr r0, _0808F1A0 @ =0x000001FF
	cmp r1, r0
	bls _0808F198
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0808F198:
	adds r0, r4, #0
	bl sub_0808F2B0
	pop {r4, pc}
	.align 2, 0
_0808F1A0: .4byte 0x000001FF

	thumb_func_start sub_0808F1A4
sub_0808F1A4: @ 0x0808F1A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x78]
	adds r1, #0x10
	str r1, [r4, #0x78]
	ldr r0, [r4, #0x74]
	adds r0, #0x10
	str r0, [r4, #0x74]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #2
	bl sub_0806FCF4
	ldr r1, [r4, #0x78]
	ldr r0, _0808F1D4 @ =0x000003FF
	cmp r1, r0
	bls _0808F1D8
	ldr r1, [r4, #0x54]
	movs r0, #0xff
	strb r0, [r1, #0xc]
	bl DeleteThisEntity
	b _0808F1DE
	.align 2, 0
_0808F1D4: .4byte 0x000003FF
_0808F1D8:
	adds r0, r4, #0
	bl sub_0808F2B0
_0808F1DE:
	pop {r4, pc}

	thumb_func_start sub_0808F1E0
sub_0808F1E0: @ 0x0808F1E0
	push {lr}
	ldr r2, _0808F1F4 @ =gUnk_08121E98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808F1F4: .4byte gUnk_08121E98

	thumb_func_start sub_0808F1F8
sub_0808F1F8: @ 0x0808F1F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x19]
	movs r0, #3
	orrs r2, r0
	strb r2, [r4, #0x19]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x19]
	ldrb r1, [r3, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0808F244
	pop {r4, pc}

	thumb_func_start sub_0808F244
sub_0808F244: @ 0x0808F244
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r3, #0x32]
	adds r0, #3
	movs r2, #0
	strh r0, [r4, #0x32]
	ldr r1, [r4, #0x54]
	adds r0, r1, #0
	adds r0, #0x62
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	str r2, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	subs r0, r0, r1
	str r0, [r4, #0x74]
	movs r0, #0x36
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	str r0, [r4, #0x78]
	adds r3, #0x7f
	ldrb r0, [r3]
	str r0, [r4, #0x70]
	adds r0, r4, #0
	bl sub_0808F2B0
	ldr r0, [r4, #0x50]
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808F2AC
	bl DeleteThisEntity
_0808F2AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808F2B0
sub_0808F2B0: @ 0x0808F2B0
	push {lr}
	ldr r1, [r0, #0x74]
	ldr r2, [r0, #0x78]
	ldr r3, [r0, #0x70]
	bl sub_0805EC9C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808F2C0
sub_0808F2C0: @ 0x0808F2C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	adds r6, r0, #0
	cmp r6, #0
	bne _0808F322
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	str r6, [r5, #0x34]
	ldr r1, [r5, #0x50]
	ldrh r0, [r1, #0x32]
	adds r0, #3
	strh r0, [r5, #0x32]
	ldrh r0, [r1, #0x2e]
	strh r0, [r5, #0x2e]
	adds r0, r5, #0
	movs r1, #3
	bl InitializeAnimation
_0808F322:
	ldr r2, [r5, #0x50]
	movs r1, #0x36
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0808F334
	ldr r0, [r2, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r2, #0x78]
	b _0808F34C
_0808F334:
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	subs r0, r0, r1
	str r0, [r5, #0x74]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	lsls r1, r1, #1
	movs r0, #0xc0
	lsls r0, r0, #2
	subs r0, r0, r1
_0808F34C:
	str r0, [r5, #0x78]
	movs r0, #0
	str r0, [r5, #0x70]
	adds r0, r5, #0
	bl sub_0808F2B0
	ldr r1, [r5, #0x78]
	adds r0, r5, #0
	movs r2, #8
	movs r3, #2
	bl sub_0806FCF4
	ldrb r0, [r5, #0xc]
	cmp r0, #0xff
	bne _0808F36E
	bl DeleteThisEntity
_0808F36E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808F370
sub_0808F370: @ 0x0808F370
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0808F388
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _0808F3DA
	strb r0, [r4, #0xc]
	str r1, [r4, #0x70]
	b _0808F3CC
_0808F388:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xd]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0808F3D4
	ldr r0, [r4, #0x70]
	cmp r0, #0
	bne _0808F3C4
	ldr r0, [r4, #0x74]
	subs r0, #1
	str r0, [r4, #0x74]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0808F3DA
	bl Random
	ldr r2, _0808F3C0 @ =gUnk_08121EA0
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	str r0, [r4, #0x70]
	b _0808F3DA
	.align 2, 0
_0808F3C0: .4byte gUnk_08121EA0
_0808F3C4:
	subs r0, #1
	str r0, [r4, #0x70]
	cmp r0, #0
	bne _0808F3DA
_0808F3CC:
	adds r0, r4, #0
	bl sub_0808F5EC
	b _0808F3DA
_0808F3D4:
	movs r0, #0
	strb r0, [r4, #0xc]
	str r0, [r4, #0x74]
_0808F3DA:
	pop {r4, pc}

	thumb_func_start sub_0808F3DC
sub_0808F3DC: @ 0x0808F3DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0808F438
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xa]
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	beq _0808F41A
	cmp r0, #7
	bne _0808F42E
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	bl sub_0806FAD8
	b _0808F494
_0808F41A:
	ldr r0, [r4, #0x54]
	adds r0, #0x3f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	ldr r0, [r4, #0x54]
	adds r0, #0x3f
	movs r1, #0x7e
	strb r1, [r0]
_0808F42E:
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	bl ResolveEntityOnTop
	b _0808F494
_0808F438:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _0808F456
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bne _0808F452
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r1, [r1]
	adds r0, #0x3f
	strb r1, [r0]
_0808F452:
	bl DeleteThisEntity
_0808F456:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0808F486
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808F486
	ldr r0, [r4, #0x54]
	movs r1, #0x49
	movs r2, #8
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0808F486
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x50]
	str r0, [r1, #0x54]
_0808F486:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
_0808F494:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808F498
sub_0808F498: @ 0x0808F498
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0808F4EC
	adds r0, r5, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0808F4C2
	ldr r0, _0808F4E4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0808F4BE
	movs r0, #0xef
	bl PlaySFX
_0808F4BE:
	bl DeleteThisEntity
_0808F4C2:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0808F4D4
	bl DeleteThisEntity
_0808F4D4:
	ldr r0, _0808F4E8 @ =gLinkState
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	beq _0808F550
	bl DeleteThisEntity
	b _0808F550
	.align 2, 0
_0808F4E4: .4byte gUnk_030010A0
_0808F4E8: .4byte gLinkState
_0808F4EC:
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x40
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xb]
	movs r6, #0x2b
	cmp r0, #0
	beq _0808F4FE
	movs r6, #0x2c
_0808F4FE:
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #0x48]
	ldrb r1, [r0, #6]
	ldrh r0, [r5, #0x2e]
	subs r0, r0, r1
	strh r0, [r5, #0x2e]
	bl Random
	ldr r4, [r5, #0x50]
	ldr r1, [r4, #0x48]
	ldrb r1, [r1, #6]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r5, #0x2e]
	adds r1, r1, r0
	strh r1, [r5, #0x2e]
	ldr r0, [r4, #0x48]
	ldrb r1, [r0, #7]
	ldrh r0, [r5, #0x32]
	subs r0, r0, r1
	strh r0, [r5, #0x32]
	bl Random
	ldr r1, [r5, #0x50]
	ldr r1, [r1, #0x48]
	ldrb r1, [r1, #7]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r5, #0x32]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #4
	bl InitializeAnimation
_0808F550:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0808F554
sub_0808F554: @ 0x0808F554
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPositionAndSpriteOffset
	adds r1, r5, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #0x18
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r1, r0, #0
	adds r1, #0x62
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0808F588
	adds r2, r5, #0
	adds r2, #0x62
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
_0808F588:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0808F5AC
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r1]
	cmp r0, #0
	beq _0808F5A4
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0808F5A4
	bl DeleteThisEntity
_0808F5A4:
	adds r0, r5, #0
	bl GetNextFrame
	b _0808F5E8
_0808F5AC:
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r4, [r5, #0x50]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #3
	bl InitializeAnimation
_0808F5E8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808F5EC
sub_0808F5EC: @ 0x0808F5EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	movs r1, #0x49
	movs r2, #5
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0808F608
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
_0808F608:
	ldr r0, [r4, #0x54]
	movs r1, #0x49
	movs r2, #6
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0808F620
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
_0808F620:
	ldr r0, [r4, #0x54]
	movs r1, #0x49
	movs r2, #7
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0808F638
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
_0808F638:
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x74]
	pop {r4, pc}
