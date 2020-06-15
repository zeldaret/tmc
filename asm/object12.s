	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object12
Object12: @ 0x08084FC0
	push {lr}
	ldr r2, _08084FD4 @ =gUnk_081205BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084FD4: .4byte gUnk_081205BC

	thumb_func_start sub_08084FD8
sub_08084FD8: @ 0x08084FD8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0808500C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08084FF4
	bl DeleteThisEntity
_08084FF4:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080850FC
	b _0808501C
_0808500C:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	movs r0, #0x18
	strb r0, [r4, #0x15]
_0808501C:
	movs r0, #0
	strb r0, [r4, #0x1e]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_115
nullsub_115: @ 0x08085024
	bx lr
	.align 2, 0

	thumb_func_start sub_08085028
sub_08085028: @ 0x08085028
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850A6
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080850A8 @ =gScreen
	mov ip, r0
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r1, #0x60
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xf
	strh r0, [r1]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	ldr r3, _080850AC @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	subs r0, r0, r1
	adds r1, r0, #0
	subs r1, #0x18
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #8
	adds r0, #0x18
	ands r0, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r1, r0, #0
	subs r1, #0x18
	ands r1, r2
	lsls r1, r1, #8
	adds r0, #0x18
	ands r0, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x5c
	strh r1, [r0]
_080850A6:
	pop {r4, pc}
	.align 2, 0
_080850A8: .4byte gScreen
_080850AC: .4byte gRoomControls

	thumb_func_start sub_080850B0
sub_080850B0: @ 0x080850B0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850C8
	movs r0, #4
	strb r0, [r1, #0xc]
	movs r0, #0x60
	strb r0, [r1, #0xe]
_080850C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080850CC
sub_080850CC: @ 0x080850CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080850F0
	ldr r2, _080850F4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080850F8 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	bl DeleteEntity
_080850F0:
	pop {r4, pc}
	.align 2, 0
_080850F4: .4byte gScreen
_080850F8: .4byte 0x0000DFFF

	thumb_func_start sub_080850FC
sub_080850FC: @ 0x080850FC
	push {r4, r5, r6, lr}
	movs r1, #0x2e
	ldrsh r4, [r0, r1]
	ldr r2, _0808518C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r4, r4, r1
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r4, r1
	adds r0, #0x38
	ldrb r6, [r0]
	ldr r5, _08085190 @ =0x0000403D
	adds r1, r4, #0
	subs r1, #0x41
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	adds r1, r4, #0
	subs r1, #0x40
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	adds r1, r4, #0
	subs r1, #0x3f
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	subs r1, r4, #1
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl SetTile
	adds r1, r4, #1
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	adds r1, r4, #0
	adds r1, #0x3f
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r2, r6, #0
	bl SetTile
	adds r4, #0x41
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808518C: .4byte gRoomControls
_08085190: .4byte 0x0000403D
