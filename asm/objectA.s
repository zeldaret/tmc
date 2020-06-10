	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08083A94
sub_08083A94: @ 0x08083A94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08083B24
	movs r0, #1
	mov r8, r0
	mov r2, r8
	strb r2, [r6, #0xc]
	ldr r0, _08083B10 @ =gUnk_080FD170
	str r0, [r6, #0x48]
	adds r7, r6, #0
	adds r7, #0x38
	ldrb r0, [r7]
	movs r1, #0x34
	cmp r0, #1
	bne _08083ABC
	movs r1, #0x26
_08083ABC:
	adds r4, r6, #0
	adds r4, #0x70
	strh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _08083B1C
	ldrh r0, [r4]
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldr r5, _08083B14 @ =gRoomControls
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r7]
	bl sub_0807B314
	ldrh r1, [r5]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08083B08
	ldr r1, _08083B18 @ =gUnk_02000070
	movs r0, #0
	strb r0, [r1]
_08083B08:
	bl sub_0805E780
	b _08083B7E
	.align 2, 0
_08083B10: .4byte gUnk_080FD170
_08083B14: .4byte gRoomControls
_08083B18: .4byte gUnk_02000070
_08083B1C:
	adds r0, r6, #0
	bl sub_080787CC
	b _08083B7E
_08083B24:
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08083B7E
	adds r0, r6, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r5, #0x2e
	ldrsh r1, [r6, r5]
	ldr r3, _08083B84 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r5, #0x32
	ldrsh r2, [r6, r5]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B314
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CCC8
	adds r0, r6, #0
	bl sub_080A29BC
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526F8
	bl sub_0805E780
_08083B7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08083B84: .4byte gRoomControls
