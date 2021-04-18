
    .syntax unified

	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	adds r3, r7, #0
	lsls r0, r6, #6
	adds r0, #0x40
	adds r2, r3, r0
	mov r0, r8
	strh r0, [r3]
	adds r3, #2
	movs r1, #0x80
	lsls r1, r1, #4
	mov sb, r1
	mov r0, r8
	mov r5, sb
	orrs r0, r5
	strh r0, [r2]
	adds r2, #2
	cmp r4, #0
	ble _08056E4C
	mov r0, r8
	adds r0, #1
	strh r0, [r3]
	adds r3, #2
	adds r1, r0, #0
	orrs r1, r5
	strh r1, [r2]
	adds r2, #2
	subs r4, #2
	adds r1, r4, #0
	subs r4, #1
	mov ip, r0
	cmp r1, #0
	ble _08056E30
	mov r5, r8
	adds r5, #2
	adds r1, r5, #0
	mov r0, sb
	orrs r1, r0
_08056E20:
	strh r5, [r3]
	adds r3, #2
	strh r1, [r2]
	adds r2, #2
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bgt _08056E20
_08056E30:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	mov r1, ip
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	movs r5, #0xc0
	lsls r5, r5, #4
	adds r0, r5, #0
	mov r1, ip
	orrs r1, r0
	strh r1, [r2]
	adds r2, #2
_08056E4C:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r0, #0
	mov r0, r8
	orrs r0, r5
	strh r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #4
	adds r1, r0, #0
	mov r0, r8
	orrs r0, r1
	strh r0, [r2]
	adds r7, #0x40
	adds r3, #0x40
	cmp r6, #0
	ble _08056EB6
	mov r0, r8
	adds r0, #3
	strh r0, [r7]
	adds r1, r0, #0
	orrs r1, r5
	strh r1, [r3]
	adds r7, #0x40
	adds r3, #0x40
	subs r6, #2
	adds r1, r6, #0
	subs r6, #1
	adds r2, r0, #0
	cmp r1, #0
	ble _08056EA0
	mov r4, r8
	adds r4, #4
	adds r1, r4, #0
	orrs r1, r5
_08056E90:
	strh r4, [r7]
	strh r1, [r3]
	adds r7, #0x40
	adds r3, #0x40
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt _08056E90
_08056EA0:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r7]
	movs r5, #0xc0
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r2, r0
	strh r2, [r3]
_08056EB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

    .syntax divided
