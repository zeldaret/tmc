	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object3D
Object3D: @ 0x0808CEF0
	push {lr}
	ldr r2, _0808CF04 @ =gUnk_081216BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808CF04: .4byte gUnk_081216BC

	thumb_func_start sub_0808CF08
sub_0808CF08: @ 0x0808CF08
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _0808CF50 @ =gArea
	ldr r3, _0808CF54 @ =gRoomControls
	ldrh r0, [r2, #0x12]
	ldrh r1, [r3, #0xa]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #0x14]
	ldrh r1, [r3, #0xc]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	adds r5, r4, #0
	adds r5, #0x68
	movs r0, #0x80
	strh r0, [r5]
	ldrb r1, [r4, #0x11]
	subs r0, #0x90
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldr r0, _0808CF58 @ =0x00001F17
	movs r1, #0
	bl sub_0801E1B8
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	bl sub_0801E1EC
	pop {r4, r5, pc}
	.align 2, 0
_0808CF50: .4byte gArea
_0808CF54: .4byte gRoomControls
_0808CF58: .4byte 0x00001F17

	thumb_func_start sub_0808CF5C
sub_0808CF5C: @ 0x0808CF5C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x68
	ldrh r0, [r2]
	subs r0, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x14
	bls _0808CF82
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r2]
	bl sub_0801E1EC
	b _0808D01E
_0808CF82:
	ldr r0, _0808D020 @ =gScreen
	adds r0, #0x62
	movs r1, #0x10
	strh r1, [r0]
	bl sub_0808D030
	movs r0, #0
	bl sub_0801CFA8
	bl sub_080ADD30
	ldr r0, _0808D024 @ =gUnk_02024490
	movs r6, #1
	strb r6, [r0]
	ldrb r0, [r5, #0xa]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, _0808D028 @ =gUnk_081216C8
	adds r4, r4, r0
	ldrh r1, [r4]
	adds r0, r5, #0
	bl LoadFixedGFX
	ldrh r1, [r4, #2]
	adds r0, r5, #0
	bl sub_0801D040
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0808CFC6
	strb r0, [r5, #0x1e]
_0808CFC6:
	movs r2, #2
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #6
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r2, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	ands r1, r0
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	movs r0, #0xff
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	ldr r0, _0808D02C @ =gArea
	strh r6, [r0, #0x10]
	movs r0, #5
	movs r1, #8
	bl DoFade
_0808D01E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808D020: .4byte gScreen
_0808D024: .4byte gUnk_02024490
_0808D028: .4byte gUnk_081216C8
_0808D02C: .4byte gArea

	thumb_func_start sub_0808D030
sub_0808D030: @ 0x0808D030
	push {r4, r5, lr}
	ldr r4, _0808D058 @ =gUnk_03000020
	movs r5, #0x80
	adds r0, r4, #0
	subs r0, #0x20
	ldr r1, _0808D05C @ =0x00000B74
	bl MemClear
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r1, #0
_0808D046:
	strh r0, [r4]
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne _0808D046
	ldr r1, _0808D060 @ =gUnk_03000000
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_0808D058: .4byte gUnk_03000020
_0808D05C: .4byte 0x00000B74
_0808D060: .4byte gUnk_03000000

	thumb_func_start sub_0808D064
sub_0808D064: @ 0x0808D064
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0808D0B4
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r3, [r0]
	adds r1, r3, #0
	adds r2, r0, #0
	cmp r1, #0
	beq _0808D08C
	subs r0, r3, #2
	strh r0, [r2]
	b _0808D08E
_0808D08C:
	strh r1, [r2]
_0808D08E:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	ldrh r2, [r2]
	bl sub_0801E1EC
	ldrb r0, [r4, #0xf]
	cmp r0, #0x80
	bls _0808D0A6
	subs r0, #8
	strb r0, [r4, #0xf]
_0808D0A6:
	ldrb r2, [r4, #0xf]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0808D0C2
_0808D0B4:
	ldr r1, _0808D0C4 @ =gArea
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	strh r2, [r1, #0x10]
	bl DeleteThisEntity
_0808D0C2:
	pop {r4, pc}
	.align 2, 0
_0808D0C4: .4byte gArea
