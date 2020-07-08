	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CellOverwriteSet
CellOverwriteSet: @ 0x0801BEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r7, _0801BFF0 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0801BF62
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _0801BFF4 @ =gUnk_080B7B6C
	ldrb r1, [r7, #0x14]
	movs r2, #0xe
	ands r2, r1
	adds r1, r2, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r4, _0801BFF8 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r7, r6]
	adds r2, #1
	adds r2, r2, r5
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, r8
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	mov r1, r8
	adds r1, #0x6c
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
_0801BF62:
	ldr r2, _0801BFFC @ =gLinkState
	mov sb, r2
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r6, _0801C000 @ =gUnk_03000FF0
	ldrh r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C074
	ldrh r1, [r6, #2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0801BFDA
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	ldr r5, _0801BFF4 @ =gUnk_080B7B6C
	mov sb, r5
	ldrb r1, [r7, #0x14]
	movs r2, #0xe
	ands r2, r1
	adds r1, r2, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r4, _0801BFF8 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r7, r5]
	adds r2, #1
	add r2, sb
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, r8
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	mov r1, r8
	adds r1, #0x6c
	strh r0, [r1]
_0801BFDA:
	ldrh r3, [r6]
	mov r0, sl
	ands r0, r3
	adds r4, r3, #0
	cmp r0, #0
	beq _0801C004
	adds r1, r7, #0
	adds r1, #0x3d
	movs r0, #2
	strb r0, [r1]
	b _0801C0D4
	.align 2, 0
_0801BFF0: .4byte gLinkEntity
_0801BFF4: .4byte gUnk_080B7B6C
_0801BFF8: .4byte gRoomControls
_0801BFFC: .4byte gLinkState
_0801C000: .4byte gUnk_03000FF0
_0801C004:
	ldrh r2, [r6, #2]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C01A
	mov r1, r8
	adds r1, #0x6c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_0801C01A:
	movs r5, #0x20
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C02E
	mov r1, r8
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801C02E:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _0801C06E
	mov r1, r8
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801C0D4
	movs r0, #0x1e
	strb r0, [r1, #0xf]
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0801C05A
	adds r1, #0x6c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_0801C05A:
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _0801C0D4
	mov r1, r8
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0801C0D4
_0801C06E:
	mov r2, r8
	strb r0, [r2, #0xf]
	b _0801C0D4
_0801C074:
	mov r0, r8
	adds r0, #0x6c
	ldrh r0, [r0]
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldr r4, _0801C1C8 @ =gUnk_080B7B6C
	mov sl, r4
	ldrb r2, [r7, #0x14]
	movs r3, #0xe
	ands r3, r2
	adds r2, r3, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r5, _0801C1CC @ =gRoomControls
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r7, r6]
	adds r3, #1
	add r3, sl
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r2, r8
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sb
	strb r0, [r1, #0x1a]
	bl DeleteThisEntity
_0801C0D4:
	ldr r0, _0801C1D0 @ =gUnk_03000FF0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C1BE
	movs r2, #0x6c
	add r2, r8
	mov sb, r2
	ldrh r0, [r2]
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldr r6, _0801C1C8 @ =gUnk_080B7B6C
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldr r5, _0801C1CC @ =gRoomControls
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #1
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #0x38
	add r8, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	movs r2, #2
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #3
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	movs r2, #4
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #5
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	movs r2, #6
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #7
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r4, r8
	ldrb r2, [r4]
	bl sub_0807B7D8
_0801C1BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C1C8: .4byte gUnk_080B7B6C
_0801C1CC: .4byte gRoomControls
_0801C1D0: .4byte gUnk_03000FF0
