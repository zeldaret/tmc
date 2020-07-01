	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object3A
Object3A: @ 0x0808C69C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0808C6BC
	ldr r0, _0808C6B8 @ =gUnk_08121638
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _0808C6CC
	.align 2, 0
_0808C6B8: .4byte gUnk_08121638
_0808C6BC:
	ldr r0, _0808C6D0 @ =gUnk_08121640
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_0808C6CC:
	pop {pc}
	.align 2, 0
_0808C6D0: .4byte gUnk_08121640

	thumb_func_start sub_0808C6D4
sub_0808C6D4: @ 0x0808C6D4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xb]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0808C744 @ =gUnk_081215E8
	adds r4, r0, r1
	ldrh r0, [r4, #4]
	adds r1, r5, #0
	adds r1, #0x86
	strh r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	strb r0, [r1]
	ldrh r1, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x84
	strb r1, [r0]
	ldrh r0, [r4, #0xa]
	adds r1, r5, #0
	adds r1, #0x83
	strb r0, [r1]
	ldrh r0, [r4, #0xc]
	subs r1, #1
	strb r0, [r1]
	ldrh r0, [r4, #0xe]
	subs r1, #1
	strb r0, [r1]
	ldr r0, _0808C748 @ =gScreen
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldrh r1, [r4, #0x10]
	orrs r0, r1
	ldrh r1, [r4, #0x12]
	bl sub_0801E1B8
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_0808C74C
	ldrh r2, [r4]
	movs r0, #0x3a
	movs r1, #1
	bl CreateObject
	cmp r0, #0
	beq _0808C742
	ldrh r1, [r4, #2]
	adds r0, #0x6a
	strh r1, [r0]
_0808C742:
	pop {r4, r5, pc}
	.align 2, 0
_0808C744: .4byte gUnk_081215E8
_0808C748: .4byte gScreen

	thumb_func_start sub_0808C74C
sub_0808C74C: @ 0x0808C74C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x50]
	cmp r3, #0
	beq _0808C76C
	ldr r2, _0808C768 @ =gRoomControls
	ldrh r0, [r3, #0x2e]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r3, #0x32]
	ldrh r1, [r2, #0xc]
	subs r0, r0, r1
	b _0808C772
	.align 2, 0
_0808C768: .4byte gRoomControls
_0808C76C:
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x50
_0808C772:
	strh r0, [r4, #0x32]
	adds r5, r4, #0
	adds r5, #0x86
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0808C79C
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	movs r2, #0
	movs r3, #0
	bl sub_0801E49C
	ldr r1, _0808C83C @ =gUnk_02036BB8
	movs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0808C840
_0808C79C:
	movs r6, #0
	ldrsh r0, [r5, r6]
	movs r2, #0xfa
	lsls r2, r2, #1
	cmp r0, r2
	ble _0808C7C2
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	movs r3, #0
	bl sub_0801E49C
	ldr r1, _0808C83C @ =gUnk_02036BB8
	movs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0808C840
_0808C7C2:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r6, [r5]
	adds r0, r0, r6
	strh r0, [r5]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0808C7E8
	movs r0, #0x10
	strb r0, [r1]
_0808C7E8:
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r2, #0x10
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0808C7F6
	strb r2, [r1]
_0808C7F6:
	adds r3, r4, #0
	adds r3, #0x83
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	ldrb r6, [r3]
	adds r0, r0, r6
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0808C81E
	movs r0, #0x10
	strb r0, [r1]
_0808C81E:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r2
	bge _0808C828
	strb r2, [r1]
_0808C828:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldrb r3, [r3]
	bl sub_0801E49C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808C83C: .4byte gUnk_02036BB8

	thumb_func_start sub_0808C840
sub_0808C840: @ 0x0808C840
	push {lr}
	ldr r0, _0808C854 @ =gScreen
	adds r0, #0x66
	movs r1, #0
	strh r1, [r0]
	bl sub_0801E104
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0
_0808C854: .4byte gScreen

	thumb_func_start sub_0808C858
sub_0808C858: @ 0x0808C858
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xb]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C878
	ldr r1, _0808C870 @ =gScreen
	adds r3, r1, #0
	adds r3, #0x66
	ldr r0, _0808C874 @ =0x00003FBF
	b _0808C880
	.align 2, 0
_0808C870: .4byte gScreen
_0808C874: .4byte 0x00003FBF
_0808C878:
	ldr r1, _0808C898 @ =gScreen
	adds r3, r1, #0
	adds r3, #0x66
	ldr r0, _0808C89C @ =0x00003FFF
_0808C880:
	strh r0, [r3]
	adds r3, r1, #0
	ldrb r1, [r2, #0xb]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C8A0
	adds r1, r3, #0
	adds r1, #0x6a
	movs r0, #0
	b _0808C8A6
	.align 2, 0
_0808C898: .4byte gScreen
_0808C89C: .4byte 0x00003FFF
_0808C8A0:
	adds r1, r3, #0
	adds r1, #0x6a
	movs r0, #0x10
_0808C8A6:
	strh r0, [r1]
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x68
	adds r0, #0xff
	strh r0, [r1]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808C8B8
sub_0808C8B8: @ 0x0808C8B8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x68
	adds r1, r3, #0
	adds r1, #0x6a
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808C8D6
	movs r0, #0
	strh r0, [r2]
_0808C8D6:
	ldrb r1, [r3, #0xb]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C8F8
	ldr r0, _0808C8F4 @ =gScreen
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x10
	subs r2, r2, r1
	adds r0, #0x6a
	strh r2, [r0]
	b _0808C904
	.align 2, 0
_0808C8F4: .4byte gScreen
_0808C8F8:
	ldr r1, _0808C918 @ =gScreen
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #0x6a
	strh r0, [r1]
_0808C904:
	adds r0, r3, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808C914
	bl DeleteThisEntity
_0808C914:
	pop {pc}
	.align 2, 0
_0808C918: .4byte gScreen
