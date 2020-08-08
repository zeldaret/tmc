	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object5A
Object5A: @ 0x0809271C
	push {lr}
	ldr r2, _08092730 @ =gUnk_08122780
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08092730: .4byte gUnk_08122780

	thumb_func_start sub_08092734
sub_08092734: @ 0x08092734
	push {lr}
	ldr r2, _08092748 @ =gUnk_08122788
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08092748: .4byte gUnk_08122788

	thumb_func_start sub_0809274C
sub_0809274C: @ 0x0809274C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrh r0, [r4, #0x36]
	subs r0, #8
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0809277C
	cmp r0, #2
	bne _080927A2
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0809277C:
	ldr r0, _080927A4 @ =0x00004051
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _080927A8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	movs r6, #0x32
	ldrsh r2, [r4, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #1
	bl SetTile
_080927A2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080927A4: .4byte 0x00004051
_080927A8: .4byte gRoomControls

	thumb_func_start sub_080927AC
sub_080927AC: @ 0x080927AC
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r1, #0xc]
	ldrb r0, [r1, #0xb]
	strb r0, [r1, #0x1e]
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _080927C4
	cmp r0, #2
	beq _080927CA
	b _080927D0
_080927C4:
	adds r1, #0x63
	movs r0, #2
	b _080927CE
_080927CA:
	adds r1, #0x63
	movs r0, #0xfe
_080927CE:
	strb r0, [r1]
_080927D0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080927D4
sub_080927D4: @ 0x080927D4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08092848 @ =0x00004051
	mov r8, r0
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r6, _0809284C @ =gRoomControls
	ldrh r0, [r6, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r5, #0x3f
	ands r1, r5
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r2, [r6, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r5
	lsls r0, r0, #6
	orrs r1, r0
	subs r1, #1
	mov r0, r8
	movs r2, #1
	bl SetTile
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldrh r0, [r6, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r5
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r2, [r6, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r5
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	movs r2, #1
	bl SetTile
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_08092848: .4byte 0x00004051
_0809284C: .4byte gRoomControls

	thumb_func_start sub_08092850
sub_08092850: @ 0x08092850
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08092888
	ldr r3, _08092878 @ =gPlayerEntity
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt _0809286E
	adds r0, #0x18
	cmp r1, r0
	ble _0809287C
_0809286E:
	ldrb r0, [r2, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	b _08092884
	.align 2, 0
_08092878: .4byte gPlayerEntity
_0809287C:
	ldrb r0, [r2, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x80
_08092884:
	orrs r1, r0
	strb r1, [r2, #0x19]
_08092888:
	pop {r4, pc}
	.align 2, 0
