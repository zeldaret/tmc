	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object43
Object43: @ 0x0808DED0
	push {lr}
	ldr r2, _0808DEE4 @ =gUnk_081217BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808DEE4: .4byte gUnk_081217BC

	thumb_func_start sub_0808DEE8
sub_0808DEE8: @ 0x0808DEE8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r3, _0808DF74 @ =gPlayerEntity
	ldrb r1, [r3, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r5, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1b]
	ldrb r0, [r3, #0x14]
	lsrs r0, r0, #1
	strb r0, [r5, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	movs r3, #6
	movs r0, #6
	strb r0, [r5, #0xf]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x3c
	strh r0, [r1]
	ldrb r1, [r5, #0x1a]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	adds r0, #0x72
	strh r4, [r0]
	subs r0, #6
	strh r4, [r0]
	ldrb r0, [r5, #0x11]
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #7
	bl InitializeAnimation
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0808DF78
	movs r0, #0x28
	strb r0, [r5, #0xe]
	b _0808DFAA
	.align 2, 0
_0808DF74: .4byte gPlayerEntity
_0808DF78:
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r0, _0808DF9C @ =gPlayerState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808DFA0
	movs r0, #0x28
	b _0808DFA2
	.align 2, 0
_0808DF9C: .4byte gPlayerState
_0808DFA0:
	movs r0, #0x50
_0808DFA2:
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_0808DFAC
_0808DFAA:
	pop {r4, r5, pc}

	thumb_func_start sub_0808DFAC
sub_0808DFAC: @ 0x0808DFAC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0808E00E
	ldr r1, _0808DFF0 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808DFCC
	ldrb r1, [r1, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808DFD0
_0808DFCC:
	bl DeleteThisEntity
_0808DFD0:
	ldr r0, _0808DFF0 @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0x21
	ldrb r0, [r2]
	cmp r0, #0x4f
	bls _0808DFF8
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	ldrb r6, [r2]
	ldr r7, _0808DFF4 @ =gUnk_081217D8
	b _0808E038
	.align 2, 0
_0808DFF0: .4byte gPlayerState
_0808DFF4: .4byte gUnk_081217D8
_0808DFF8:
	cmp r0, #0
	beq _0808E008
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0808E1BA
_0808E008:
	bl DeleteThisEntity
	b _0808E038
_0808E00E:
	ldr r5, _0808E02C @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _0808E01A
	bl DeleteThisEntity
_0808E01A:
	ldrb r1, [r5, #0x1b]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E034
	ldrb r6, [r5, #0x1b]
	ldr r7, _0808E030 @ =gUnk_081217D0
	b _0808E038
	.align 2, 0
_0808E02C: .4byte gPlayerState
_0808E030: .4byte gUnk_081217D0
_0808E034:
	bl DeleteThisEntity
_0808E038:
	cmp r6, #0
	bne _0808E03E
	b _0808E1B6
_0808E03E:
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808E084
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #3
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808E068
	ldr r0, _0808E080 @ =gPlayerState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0808E068
	movs r2, #7
_0808E068:
	ldrb r0, [r4, #0xe]
	ands r0, r2
	adds r5, r4, #0
	adds r5, #0x6c
	adds r6, r4, #0
	adds r6, #0x38
	cmp r0, #0
	bne _0808E0E4
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _0808E0E4
	.align 2, 0
_0808E080: .4byte gPlayerState
_0808E084:
	adds r5, r4, #0
	adds r5, #0x72
	ldrh r0, [r5]
	cmp r0, #0
	beq _0808E0BC
	ldr r0, _0808E0B8 @ =gScreenTransition
	ldr r1, [r0]
	movs r0, #0x1f
	ands r1, r0
	subs r5, #6
	adds r6, r4, #0
	adds r6, #0x38
	cmp r1, #0
	bne _0808E0E4
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _0808E0E4
	ldrb r1, [r6]
	adds r0, #0x38
	strb r1, [r0]
	b _0808E0E4
	.align 2, 0
_0808E0B8: .4byte gScreenTransition
_0808E0BC:
	ldr r0, _0808E140 @ =0x00000115
	bl EnqueueSFX
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #0
	bl CreateFx
	adds r6, r4, #0
	adds r6, #0x38
	cmp r0, #0
	beq _0808E0DA
	ldrb r1, [r6]
	adds r0, #0x38
	strb r1, [r0]
_0808E0DA:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	adds r5, r4, #0
	adds r5, #0x6c
_0808E0E4:
	ldr r2, _0808E144 @ =gPlayerEntity
	ldrb r1, [r2, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrh r0, [r2, #0x36]
	strh r0, [r4, #0x36]
	adds r2, #0x38
	ldrb r0, [r2]
	strb r0, [r6]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _0808E148
	cmp r0, #1
	ble _0808E136
	cmp r0, #2
	beq _0808E150
	cmp r0, #3
	beq _0808E15A
_0808E136:
	ldrh r0, [r4, #0x32]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	b _0808E162
	.align 2, 0
_0808E140: .4byte 0x00000115
_0808E144: .4byte gPlayerEntity
_0808E148:
	ldrh r0, [r5]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	b _0808E160
_0808E150:
	ldrh r0, [r5]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	b _0808E162
_0808E15A:
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r5]
	subs r0, r0, r1
_0808E160:
	strh r0, [r4, #0x2e]
_0808E162:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808E17A
	movs r0, #6
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
_0808E17A:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808E1BA
	ldr r0, _0808E1AC @ =gPlayerState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808E1BA
	ldrb r0, [r4, #0x10]
	movs r1, #0xdf
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #1
	bne _0808E1B0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0808E1BA
	.align 2, 0
_0808E1AC: .4byte gPlayerState
_0808E1B0:
	bl DeleteThisEntity
	b _0808E1BA
_0808E1B6:
	bl DeleteThisEntity
_0808E1BA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0808E1BC
sub_0808E1BC: @ 0x0808E1BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08079BD8
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0808E204 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r0]
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xaf
	strh r0, [r4, #0x12]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_0808E204: .4byte gPlayerEntity

	thumb_func_start sub_0808E208
sub_0808E208: @ 0x0808E208
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08079BD8
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, _0808E240 @ =gPlayerState
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0808E248
	ldr r0, _0808E244 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0808E24C
	ldrb r2, [r4, #0x1a]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	movs r0, #4
	eors r1, r0
	subs r0, #0x14
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	b _0808E24C
	.align 2, 0
_0808E240: .4byte gPlayerState
_0808E244: .4byte gScreenTransition
_0808E248:
	bl DeleteThisEntity
_0808E24C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E260
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0808E260:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808E264
sub_0808E264: @ 0x0808E264
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808E27C
	bl DeleteThisEntity
_0808E27C:
	pop {r4, pc}
	.align 2, 0
