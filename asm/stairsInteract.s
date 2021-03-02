	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080731D8
sub_080731D8: @ 0x080731D8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r2, #0
	strb r0, [r4, #0x10]
	movs r1, #0
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x14]
	ldrh r1, [r4, #0x2e]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r7, #8
	orrs r0, r7
	strh r0, [r4, #0x2e]
	strh r2, [r4, #0x2c]
	ldr r6, _08073214 @ =gPlayerState
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073218
	movs r0, #1
	strb r0, [r4, #0xd]
	b _0807329A
	.align 2, 0
_08073214: .4byte gPlayerState
_08073218:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x54]
	adds r0, r6, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #7
	bne _08073270
	ldrh r1, [r4, #0x32]
	adds r0, r5, #0
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x2e]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r4, #0x2e]
	strb r7, [r4, #0x15]
	movs r0, #2
	strb r0, [r4, #0x14]
	ldr r0, _0807326C @ =0x00000187
	bl SoundReq
	b _08073294
	.align 2, 0
_0807326C: .4byte 0x00000187
_08073270:
	ldrh r1, [r4, #0x32]
	adds r0, r5, #0
	ands r0, r1
	adds r0, #2
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x2e]
	adds r0, r5, #0
	ands r0, r1
	adds r0, #0xf
	strh r0, [r4, #0x2e]
	movs r0, #0x18
	strb r0, [r4, #0x15]
	movs r0, #6
	strb r0, [r4, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #1
	bl SoundReq
_08073294:
	adds r0, r4, #0
	bl sub_08066DE4
_0807329A:
	ldr r2, _080732AC @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080732B4
	ldr r0, _080732B0 @ =0x00000404
	b _080732B8
	.align 2, 0
_080732AC: .4byte gPlayerState
_080732B0: .4byte 0x00000404
_080732B4:
	movs r0, #0x82
	lsls r0, r0, #1
_080732B8:
	strh r0, [r2, #8]
	ldr r1, _080732CC @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x30]
	bl sub_0807A108
	bl ResetPlayer
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080732CC: .4byte gRoomControls
