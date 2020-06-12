	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08088804
sub_08088804: @ 0x08088804
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08088828
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088828
	ldrb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x72
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl UpdateSprite
_08088828:
	ldr r0, _0808883C @ =gUnk_08120BE0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0808883C: .4byte gUnk_08120BE0

	thumb_func_start sub_08088840
sub_08088840: @ 0x08088840
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _08088868 @ =gUnk_080FD1D4
	str r1, [r0, #0x48]
	ldrb r1, [r0, #0x14]
	adds r0, #0x72
	strb r1, [r0]
	bx lr
	.align 2, 0
_08088868: .4byte gUnk_080FD1D4

	thumb_func_start sub_0808886C
sub_0808886C: @ 0x0808886C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08088938
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080889A8
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r1, [r5, #0xa]
	adds r0, r1, #2
	cmp r0, r4
	bgt _080888B8
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xf]
	movs r0, #4
	strb r0, [r5, #0x14]
	strh r1, [r5, #0x36]
	adds r0, r5, #0
	movs r1, #4
	bl UpdateSprite
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	ldr r0, _080888B4 @ =0x0000016B
	bl sub_08004488
	b _080888F2
	.align 2, 0
_080888B4: .4byte 0x0000016B
_080888B8:
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	bls _080888E4
	adds r0, r1, #1
	cmp r0, r4
	bne _080888D2
	movs r0, #4
	strb r0, [r5, #0xf]
	adds r1, r4, #1
	adds r0, r5, #0
	bl UpdateSprite
	b _080888DA
_080888D2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl UpdateSprite
_080888DA:
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
	b _080888F0
_080888E4:
	cmp r4, r0
	bhs _080888F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl UpdateSprite
_080888F0:
	strb r4, [r5, #0x14]
_080888F2:
	pop {r4, r5, pc}

	thumb_func_start sub_080888F4
sub_080888F4: @ 0x080888F4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	beq _08088934
	adds r0, r5, #0
	bl sub_08088938
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080889A8
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r0, [r5, #0xa]
	adds r0, #2
	cmp r0, r4
	ble _08088934
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl ClearFlag
	adds r0, r5, #0
	adds r1, r4, #0
	bl UpdateSprite
_08088934:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08088938
sub_08088938: @ 0x08088938
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldrh r1, [r0, #0x2e]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	ldrh r1, [r0, #0x32]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r4, #0
	ldr r1, _080889A0 @ =gRoomVars
	ldr r2, _080889A4 @ =gUnk_08120BEC
	mov r8, r2
	adds r3, r1, #0
	adds r3, #0xac
	adds r6, r0, #0
	adds r6, #0x72
_08088962:
	ldr r2, [r3]
	cmp r2, #0
	beq _08088990
	ldrh r0, [r2, #0x2e]
	mov r1, ip
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _08088990
	ldrh r0, [r2, #0x32]
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _08088990
	ldrb r0, [r6]
	add r0, r8
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x63
	strb r1, [r0]
	adds r5, #1
_08088990:
	adds r3, #4
	adds r4, #1
	cmp r4, #7
	bls _08088962
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080889A0: .4byte gRoomVars
_080889A4: .4byte gUnk_08120BEC

	thumb_func_start sub_080889A8
sub_080889A8: @ 0x080889A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_08017850
	cmp r0, #0
	beq _080889CA
	ldr r1, _08088A40 @ =gLinkEntity
	ldr r2, _08088A44 @ =gUnk_08120BEC
	adds r0, r4, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x63
	strb r0, [r1]
	movs r5, #1
_080889CA:
	ldr r0, _08088A48 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08088A3A
	ldr r6, _08088A4C @ =gUnk_03004040
	ldr r1, [r6]
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080889FA
	ldr r1, [r6]
	ldr r2, _08088A44 @ =gUnk_08120BEC
	adds r0, r4, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x63
	strb r0, [r1]
	adds r5, #1
_080889FA:
	ldr r1, [r6, #4]
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _08088A1A
	ldr r1, [r6, #4]
	ldr r2, _08088A44 @ =gUnk_08120BEC
	adds r0, r4, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x63
	strb r0, [r1]
	adds r5, #1
_08088A1A:
	ldr r1, [r6, #8]
	adds r0, r4, #0
	bl sub_080177A0
	cmp r0, #0
	beq _08088A3A
	ldr r1, [r6, #8]
	ldr r2, _08088A44 @ =gUnk_08120BEC
	adds r0, r4, #0
	adds r0, #0x72
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x63
	strb r0, [r1]
	adds r5, #1
_08088A3A:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08088A40: .4byte gLinkEntity
_08088A44: .4byte gUnk_08120BEC
_08088A48: .4byte gLinkState
_08088A4C: .4byte gUnk_03004040
