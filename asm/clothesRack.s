	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806DD78
sub_0806DD78: @ 0x0806DD78
	push {lr}
	ldr r2, _0806DD8C @ =gUnk_0811423C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806DD8C: .4byte gUnk_0811423C

	thumb_func_start sub_0806DD90
sub_0806DD90: @ 0x0806DD90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #1
	strb r0, [r7, #0xc]
	movs r0, #0x3b
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x3c
	bl GetProgressFlag
	cmp r0, #0
	beq _0806DDB8
	movs r4, #2
_0806DDB8:
	movs r0, #0x3d
	bl GetProgressFlag
	cmp r0, #0
	beq _0806DDC4
	movs r4, #3
_0806DDC4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl UpdateSprite
	movs r0, #0x2e
	ldrsh r5, [r7, r0]
	movs r1, #0x32
	ldrsh r4, [r7, r1]
	ldr r2, _0806DEC0 @ =0x00004072
	mov sl, r2
	ldr r0, _0806DEC4 @ =gRoomControls
	mov r8, r0
	ldrh r1, [r0, #6]
	adds r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	ldrh r0, [r0, #8]
	adds r0, #0x10
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r7, #0x38
	mov sb, r7
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
	mov r2, r8
	ldrh r1, [r2, #6]
	adds r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
	mov r2, r8
	ldrh r1, [r2, #6]
	adds r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	subs r0, #0x10
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
	mov r2, r8
	ldrh r1, [r2, #6]
	subs r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	adds r0, #0x10
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
	mov r2, r8
	ldrh r1, [r2, #6]
	subs r1, #0x18
	subs r1, r5, r1
	lsrs r1, r1, #4
	ands r1, r6
	ldrh r0, [r2, #8]
	subs r0, r4, r0
	lsrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
	mov r1, r8
	ldrh r0, [r1, #6]
	subs r0, #0x18
	subs r5, r5, r0
	lsrs r5, r5, #4
	ands r5, r6
	ldrh r0, [r1, #8]
	subs r0, #0x10
	subs r4, r4, r0
	lsrs r4, r4, #4
	ands r4, r6
	lsls r4, r4, #6
	orrs r5, r4
	mov r0, sb
	ldrb r2, [r0]
	mov r0, sl
	adds r1, r5, #0
	bl SetTile
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806DEC0: .4byte 0x00004072
_0806DEC4: .4byte gRoomControls

	thumb_func_start sub_0806DEC8
sub_0806DEC8: @ 0x0806DEC8
	push {lr}
	bl sub_08004274
	pop {pc}
