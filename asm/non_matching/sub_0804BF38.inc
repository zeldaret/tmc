	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, [r1, #4]
	lsls r0, r0, #4
	ldr r1, _0804C000 @ =gUnk_080D8E50
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r4, #6]
	lsrs r2, r2, #4
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #1
	bl sub_0807BB68
	ldrh r0, [r4, #8]
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bhs _0804BFE8
	ldr r7, _0804C004 @ =gRoomControls
	movs r1, #0
	mov sl, r1
	movs r6, #0
	movs r3, #1
	mov sb, r3
_0804BF7A:
	movs r0, #0xf
	movs r1, #0xf
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0804BFA6
	ldrh r0, [r7, #6]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	adds r0, r0, r6
	strh r0, [r2, #0x2e]
	ldrh r1, [r7, #8]
	ldrh r3, [r4, #6]
	adds r1, r1, r3
	adds r0, r5, #0
	mov r3, sb
	ands r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r2, #0x32]
_0804BFA6:
	movs r0, #0xf
	movs r1, #0x54
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0804BFE0
	ldrh r0, [r7, #6]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	adds r0, r0, r6
	strh r0, [r2, #0x2e]
	ldrh r1, [r7, #8]
	ldrh r3, [r4, #6]
	adds r1, r1, r3
	ldr r0, _0804C008 @ =0x0000FFF4
	adds r1, r1, r0
	adds r0, r5, #0
	mov r3, sb
	ands r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	mov r0, sl
	strb r0, [r2, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
_0804BFE0:
	adds r6, #0x10
	adds r5, #1
	cmp r5, r8
	blo _0804BF7A
_0804BFE8:
	ldrh r0, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	bl sub_08080964
	ldrh r0, [r4, #0xe]
	bl PlaySFX
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804C000: .4byte gUnk_080D8E50
_0804C004: .4byte gRoomControls
_0804C008: .4byte 0x0000FFF4
    .syntax divided
