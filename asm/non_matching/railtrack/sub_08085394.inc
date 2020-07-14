	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _08085430 @ =gUnk_081205E0
	ldrb r2, [r7, #0x14]
	lsrs r2, r2, #1
	lsls r2, r2, #1
	adds r0, r2, r0
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08085434 @ =gUnk_080B4488
	adds r2, r2, r0
	ldr r0, [r7, #0x70]
	mov sb, r0
	movs r1, #0x2e
	ldrsh r4, [r7, r1]
	ldr r1, _08085438 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r3, #0x3f
	ands r4, r3
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r8, r2
	lsls r5, r2, #1
	mov r1, sb
	subs r0, r1, r5
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x74
	strh r1, [r0]
	subs r1, r4, r2
	adds r6, r7, #0
	adds r6, #0x38
	ldrb r2, [r6]
	mov r0, sl
	bl SetTile
	mov r1, sb
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrb r2, [r6]
	mov r0, sl
	adds r1, r4, #0
	bl SetTile
	add r5, sb
	ldrh r1, [r5]
	adds r0, r7, #0
	adds r0, #0x78
	strh r1, [r0]
	add r4, r8
	ldrb r2, [r6]
	mov r0, sl
	adds r1, r4, #0
	bl SetTile
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08085430: .4byte gUnk_081205E0
_08085434: .4byte gUnk_080B4488
_08085438: .4byte gRoomControls
    .syntax divided