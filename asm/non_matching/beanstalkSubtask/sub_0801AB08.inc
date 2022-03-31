	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	ldr r0, _0801AB4C @ =gMapBottom
	movs r1, #2
	cmp r8, r0
	bne _0801AB22
	movs r1, #1
_0801AB22:
	lsls r2, r1, #0xc
	ldr r7, _0801AB50 @ =0x00003004
	add r7, r8
	mov r6, r8
	adds r6, #4
	movs r0, #0
	ldr r1, _0801AB54 @ =0x00003FFF
	mov sb, r1
_0801AB32:
	movs r3, #0
	mov sl, r3
	adds r0, #1
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
_0801AB40:
	ldrh r0, [r6]
	cmp r0, sb
	bhi _0801AB58
	lsls r0, r0, #2
	b _0801AB64
	.align 2, 0
_0801AB4C: .4byte gMapBottom
_0801AB50: .4byte 0x00003004
_0801AB54: .4byte 0x00003FFF
_0801AB58:
	ldrh r1, [r7]
	adds r0, r2, #0
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AB64:
	lsls r0, r0, #1
	ldr r1, _0801AB8C @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #2]
	cmp r0, sb
	bhi _0801AB90
	lsls r0, r0, #2
	b _0801AB9C
	.align 2, 0
_0801AB8C: .4byte 0x00007004
_0801AB90:
	adds r0, r2, #1
	ldrh r1, [r7, #2]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AB9C:
	lsls r0, r0, #1
	ldr r1, _0801ABC4 @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #4]
	cmp r0, sb
	bhi _0801ABC8
	lsls r0, r0, #2
	b _0801ABD4
	.align 2, 0
_0801ABC4: .4byte 0x00007004
_0801ABC8:
	adds r0, r2, #2
	ldrh r1, [r7, #4]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801ABD4:
	lsls r0, r0, #1
	ldr r1, _0801ABFC @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #6]
	cmp r0, sb
	bhi _0801AC00
	lsls r0, r0, #2
	b _0801AC0C
	.align 2, 0
_0801ABFC: .4byte 0x00007004
_0801AC00:
	adds r0, r2, #3
	ldrh r1, [r7, #6]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AC0C:
	lsls r0, r0, #1
	ldr r1, _0801AC64 @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	adds r6, #8
	adds r7, #8
	adds r0, r2, #4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0801AC44
	b _0801AB40
_0801AC44:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bhi _0801AC56
	b _0801AB32
_0801AC56:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801AC64: .4byte 0x00007004
	.syntax divided
