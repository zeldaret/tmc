	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080872F8
sub_080872F8: @ 0x080872F8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	ldrh r1, [r4, #0x2e]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bhi _0808732A
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bls _0808735C
_0808732A:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	movs r5, #0
	ldrsh r2, [r2, r5]
	adds r3, r4, #0
	adds r3, #0x6a
	movs r5, #0
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	bl Random
	ldr r2, _08087378 @ =gUnk_081207AC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0808735C:
	ldr r1, _0808737C @ =gSineTable
	ldrb r0, [r4, #0xe]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #6
	subs r0, #8
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_08087378: .4byte gUnk_081207AC
_0808737C: .4byte gSineTable

	thumb_func_start GreatFairy_InitializeAnimation
GreatFairy_InitializeAnimation: @ 0x08087380
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	movs r1, #0xb
	bl __modsi3
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	pop {r4, pc}

	thumb_func_start GreatFairy_CreateForm
GreatFairy_CreateForm: @ 0x080873AC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r0, #0xa]
	movs r4, #0xb
	movs r1, #0xb
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	movs r0, #0x1b
	adds r2, r6, #0
	bl CreateObject
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080873D0
sub_080873D0: @ 0x080873D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080873DE
	subs r0, #1
	b _080873F6
_080873DE:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl GreatFairy_CreateForm
	adds r1, r0, #0
	cmp r1, #0
	beq _080873F8
	adds r0, r4, #0
	bl CopyPosition
	movs r0, #0x30
_080873F6:
	strb r0, [r4, #0xe]
_080873F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080873FC
sub_080873FC: @ 0x080873FC
	push {lr}
	movs r0, #0xf7
	bl PlaySFX
	ldr r1, _0808740C @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x30]
	b _08087414
	.align 2, 0
_0808740C: .4byte gRoomControls
_08087410:
	bl DeleteEntity
_08087414:
	movs r0, #6
	movs r1, #0x1b
	movs r2, #6
	bl sub_0805EB00
	cmp r0, #0
	bne _08087410
	pop {pc}

	thumb_func_start sub_08087424
sub_08087424: @ 0x08087424
	push {r4, r5, lr}
	adds r5, r1, #0
	bl sub_080791D0
	movs r0, #0x64
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0808744E
	ldr r0, _0808745C @ =gPlayerEntity
	str r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0808744E:
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _08087460
	cmp r1, #1
	beq _0808746C
	b _08087474
	.align 2, 0
_0808745C: .4byte gPlayerEntity
_08087460:
	ldr r0, _08087468 @ =gUnk_02002A40
	adds r0, #0xad
	b _08087472
	.align 2, 0
_08087468: .4byte gUnk_02002A40
_0808746C:
	ldr r0, _08087478 @ =gUnk_02002A40
	adds r0, #0xac
	movs r1, #0
_08087472:
	strb r1, [r0]
_08087474:
	pop {r4, r5, pc}
	.align 2, 0
_08087478: .4byte gUnk_02002A40

	thumb_func_start sub_0808747C
sub_0808747C: @ 0x0808747C
	push {r4, lr}
	sub sp, #4
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0xf
	movs r2, #6
	movs r3, #0xb
	bl sub_0805EB2C
	cmp r0, #0
	beq _08087498
	movs r0, #1
_08087498:
	str r0, [r4, #0x14]
	add sp, #4
	pop {r4, pc}
	.align 2, 0