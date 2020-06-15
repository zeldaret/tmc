	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start LadderUp
LadderUp: @ 0x0808DB54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	beq _0808DBE8
	cmp r0, #1
	bgt _0808DB6C
	cmp r0, #0
	beq _0808DB72
	b _0808DC46
_0808DB6C:
	cmp r0, #2
	beq _0808DC2C
	b _0808DC46
_0808DB72:
	ldrb r0, [r7, #0xe]
	movs r1, #3
	cmp r0, #0
	beq _0808DB7C
	movs r1, #1
_0808DB7C:
	strb r1, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0xa
	bl InitializeAnimation
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	bne _0808DB9A
	ldr r0, _0808DBDC @ =0x0000FF80
	strh r0, [r7, #0x36]
_0808DB9A:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _0808DBA2
	b _0808DD72
_0808DBA2:
	ldrh r1, [r7, #0x32]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	adds r0, #0xc
	strh r0, [r7, #0x32]
	ldr r0, _0808DBE0 @ =0x00004023
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	ldr r3, _0808DBE4 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r5, #0x32
	ldrsh r2, [r7, r5]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r7, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	b _0808DD72
	.align 2, 0
_0808DBDC: .4byte 0x0000FF80
_0808DBE0: .4byte 0x00004023
_0808DBE4: .4byte gRoomControls
_0808DBE8:
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r7, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _0808DBF8
	b _0808DD72
_0808DBF8:
	adds r0, r7, #0
	movs r1, #0x46
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0808DC0E
	ldrh r0, [r1, #0x32]
	adds r0, #8
	strh r0, [r1, #0x32]
_0808DC0E:
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	ldr r0, _0808DC28 @ =0x0000010B
	bl PlaySFX
	movs r0, #2
	strb r0, [r7, #0xc]
	movs r0, #0x3c
	strb r0, [r7, #0xe]
	b _0808DD72
	.align 2, 0
_0808DC28: .4byte 0x0000010B
_0808DC2C:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808DC3A
	b _0808DD72
_0808DC3A:
	movs r0, #3
	strb r0, [r7, #0xc]
	movs r0, #0x73
	bl PlaySFX
	b _0808DD72
_0808DC46:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _0808DC4E
	b _0808DD72
_0808DC4E:
	ldr r0, _0808DCC8 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _0808DCDC
	ldr r0, _0808DCCC @ =gLinkState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x1e
	bne _0808DC66
	b _0808DD72
_0808DC66:
	adds r0, r7, #0
	bl GetTileTypeByEntity
	ldr r1, _0808DCD0 @ =0x00004017
	cmp r0, r1
	beq _0808DC74
	b _0808DD72
_0808DC74:
	ldr r0, _0808DCD4 @ =0x00004023
	movs r5, #0x2e
	ldrsh r1, [r7, r5]
	ldr r4, _0808DCD8 @ =gRoomControls
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r5, #0x3f
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	ldrh r3, [r4, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	adds r6, r7, #0
	adds r6, #0x38
	ldrb r2, [r6]
	bl SetTile
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r5
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	ldrh r2, [r4, #8]
	adds r2, #0x10
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r6]
	bl sub_0807BA8C
	b _0808DD72
	.align 2, 0
_0808DCC8: .4byte gLinkEntity
_0808DCCC: .4byte gLinkState
_0808DCD0: .4byte 0x00004017
_0808DCD4: .4byte 0x00004023
_0808DCD8: .4byte gRoomControls
_0808DCDC:
	adds r0, r7, #0
	bl GetTileTypeByEntity
	ldr r3, _0808DD44 @ =0x00004017
	mov r8, r3
	cmp r0, r8
	beq _0808DD72
	movs r5, #0x2e
	ldrsh r1, [r7, r5]
	ldr r5, _0808DD48 @ =gRoomControls
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r6, #0x3f
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	ldrh r2, [r5, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r7, #0
	adds r4, #0x38
	ldrb r2, [r4]
	mov r0, r8
	bl SetTile
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0808DD4C
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	ldrh r2, [r5, #8]
	adds r2, #0x10
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	ldrb r2, [r4]
	mov r0, r8
	bl SetTile
	b _0808DD72
	.align 2, 0
_0808DD44: .4byte 0x00004017
_0808DD48: .4byte gRoomControls
_0808DD4C:
	ldr r0, _0808DD78 @ =0x00004014
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	ldrh r3, [r5, #8]
	adds r3, #0x10
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r4]
	bl SetTile
_0808DD72:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808DD78: .4byte 0x00004014
