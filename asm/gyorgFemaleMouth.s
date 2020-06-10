	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08048F8C
sub_08048F8C: @ 0x08048F8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08048F9C
	bl sub_0805E780
_08048F9C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08048FD4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
_08048FD4:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #5
	lsls r6, r0, #0x18
	lsrs r5, r6, #0x18
	ldrb r0, [r4, #0x14]
	cmp r5, r0
	beq _08049018
	strb r5, [r4, #0x14]
	ldr r3, _08049010 @ =gUnk_080D28CC
	lsls r1, r5, #1
	adds r1, r1, r3
	ldr r2, _08049014 @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	adds r1, r5, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r2, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	lsrs r1, r6, #0x19
	adds r0, r4, #0
	bl UpdateSprite
	b _0804901E
	.align 2, 0
_08049010: .4byte gUnk_080D28CC
_08049014: .4byte gRoomControls
_08049018:
	adds r0, r4, #0
	bl sub_08004274
_0804901E:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08049038
	ldr r0, _08049034 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	b _08049042
	.align 2, 0
_08049034: .4byte gLinkEntity
_08049038:
	ldr r0, _08049054 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
_08049042:
	cmp r1, r0
	bge _08049048
	adds r5, #1
_08049048:
	ldr r0, _08049058 @ =gUnk_080D28AC
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x48]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08049054: .4byte gLinkEntity
_08049058: .4byte gUnk_080D28AC
