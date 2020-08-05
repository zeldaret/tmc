	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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
	ldr r0, _0808F4E4 @ =gScreenTransition
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
_0808F4E4: .4byte gScreenTransition
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
