	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r7, _0807C4E8 @ =gMapDataBottom
	ldr r6, _0807C4EC @ =gMapDataTop
	ldr r0, _0807C4F0 @ =gRoomControls
	ldrh r1, [r0, #0x1e]
	lsrs r3, r1, #4
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r4, #0
	movs r1, #0
	cmp r1, r0
	bhs _0807C4DC
	movs r0, #0x40
	subs r0, r0, r3
	lsls r0, r0, #1
	mov sb, r0
_0807C48C:
	movs r5, #0
	adds r1, #1
	mov sl, r1
	cmp r5, r3
	bhs _0807C4CA
	ldr r0, _0807C4F4 @ =0x00003FFF
	mov r8, r0
_0807C49A:
	ldrh r0, [r7]
	cmp r0, r8
	bls _0807C4AC
	adds r1, r4, #0
	movs r2, #1
	str r3, [sp, #4]
	bl SetTile
	ldr r3, [sp, #4]
_0807C4AC:
	ldrh r0, [r6]
	cmp r0, r8
	bls _0807C4BE
	adds r1, r4, #0
	movs r2, #2
	str r3, [sp, #4]
	bl SetTile
	ldr r3, [sp, #4]
_0807C4BE:
	adds r7, #2
	adds r6, #2
	adds r4, #1
	adds r5, #1
	cmp r5, r3
	blo _0807C49A
_0807C4CA:
	add r7, sb
	add r6, sb
	adds r0, r4, #0
	adds r0, #0x40
	subs r4, r0, r3
	mov r1, sl
	ldr r0, [sp]
	cmp r1, r0
	blo _0807C48C
_0807C4DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C4E8: .4byte gMapDataBottom
_0807C4EC: .4byte gMapDataTop
_0807C4F0: .4byte gRoomControls
_0807C4F4: .4byte 0x00003FFF
	.syntax divided
