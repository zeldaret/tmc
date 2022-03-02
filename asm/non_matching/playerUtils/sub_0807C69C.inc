	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	mov r0, r8
	muls r0, r6, r0
	add r0, sb
	subs r2, r0, #1
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #6
	add r0, sb
	subs r1, r6, #1
	adds r4, r0, r1
	movs r5, #0
	cmp r5, r8
	bhs _0807C6EA
_0807C6C4:
	movs r3, #0
	adds r7, r4, #0
	subs r7, #0x40
	subs r0, r2, r6
	mov ip, r0
	cmp r3, r6
	bhs _0807C6E0
_0807C6D2:
	subs r0, r4, r3
	subs r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, r6
	blo _0807C6D2
_0807C6E0:
	adds r4, r7, #0
	mov r2, ip
	adds r5, #1
	cmp r5, r8
	blo _0807C6C4
_0807C6EA:
	movs r0, #0x40
	subs r7, r0, r6
	movs r5, #0
	mov r1, r8
	lsls r2, r1, #6
	mov r0, sb
	adds r1, r0, r6
_0807C6F8:
	lsls r0, r5, #6
	adds r4, r1, r0
	movs r3, #0
	adds r6, r5, #1
	cmp r3, r7
	bhs _0807C710
	movs r5, #0
_0807C706:
	adds r0, r4, r3
	strb r5, [r0]
	adds r3, #1
	cmp r3, r7
	blo _0807C706
_0807C710:
	adds r5, r6, #0
	cmp r5, #0x3f
	bls _0807C6F8
	movs r0, #0x40
	mov r1, r8
	subs r7, r0, r1
	mov r0, sb
	adds r4, r0, r2
	movs r5, #0
	cmp r5, r7
	bhs _0807C736
_0807C726:
	adds r0, r4, #0
	movs r1, #0x40
	bl MemClear
	adds r4, #0x40
	adds r5, #1
	cmp r5, r7
	blo _0807C726
_0807C736:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
