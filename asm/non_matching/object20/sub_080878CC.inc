	.syntax unified
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
	bl sub_080B1AE0
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
	.syntax divided
