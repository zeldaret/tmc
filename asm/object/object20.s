	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object20
Object20: @ 0x0808780C
	push {lr}
	ldr r2, _08087820 @ =gUnk_08120A28
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08087820: .4byte gUnk_08120A28

	thumb_func_start sub_08087824
sub_08087824: @ 0x08087824
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08087836
	adds r0, r4, #0
	bl ResolveCollisionLayer
_08087836:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #0x13
	strb r0, [r1]
	adds r1, #9
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #6
	movs r0, #0xa9
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, _08087884 @ =gUnk_08120A54
	ldr r0, [r0]
	str r0, [r4, #0x48]
	subs r1, #5
	movs r0, #0x8b
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080878CC
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0801766C
	movs r0, #0xfd
	bl EnqueueSFX
	pop {r4, pc}
	.align 2, 0
_08087884: .4byte gUnk_08120A54

	thumb_func_start sub_08087888
sub_08087888: @ 0x08087888
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080878A4
	bl DeleteThisEntity
	b _080878C8
_080878A4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _080878C0
	ldr r0, _080878BC @ =gUnk_08120A54
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x48]
	b _080878C8
	.align 2, 0
_080878BC: .4byte gUnk_08120A54
_080878C0:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080878C8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080878CC
sub_080878CC: @ 0x080878CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0x32
	ldrsh r2, [r7, r0]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r1, r8
	lsls r1, r1, #0x18
	str r1, [sp, #8]
_080878F8:
	movs r2, #0x10
	rsbs r2, r2, #0
	mov sb, r2
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	adds r0, #0x10
	str r0, [sp, #0xc]
	mov r6, sl
_0808790A:
	ldr r2, _0808795C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r0, r6, r0
	lsrs r4, r0, #4
	movs r0, #0x3f
	ands r4, r0
	ldr r5, [sp, #4]
	add r5, sb
	ldrh r0, [r2, #8]
	subs r0, r5, r0
	lsrs r0, r0, #4
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	adds r0, r4, #0
	ldr r2, [sp, #8]
	lsrs r1, r2, #0x18
	bl sub_080002C8
	cmp r0, #0x2e
	bne _08087970
	adds r0, r4, #0
	mov r1, r8
	bl GetTileType
	adds r1, r0, #0
	movs r0, #0xda
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08087960
	subs r0, #1
	cmp r1, r0
	blo _08087960
	adds r0, r7, #0
	movs r1, #3
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08008796
	b _0808797C
	.align 2, 0
_0808795C: .4byte gRoomControls
_08087960:
	ldr r0, _0808796C @ =0x00004022
	adds r1, r4, #0
	mov r2, r8
	bl SetTile
	b _0808797C
	.align 2, 0
_0808796C: .4byte 0x00004022
_08087970:
	adds r0, r7, #0
	movs r1, #3
	mov r2, sl
	adds r3, r5, #0
	bl sub_08008796
_0808797C:
	movs r0, #0x10
	add sb, r0
	mov r1, sb
	cmp r1, #0x10
	ble _0808790A
	ldr r0, [sp, #0xc]
	cmp r0, #0x10
	ble _080878F8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
