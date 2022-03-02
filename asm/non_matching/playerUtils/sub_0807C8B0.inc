	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r4, r1, #0
	mov ip, r2
	mov r0, ip
	muls r0, r4, r0
	lsls r0, r0, #1
	add r0, r8
	subs r7, r0, #2
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #7
	add r0, r8
	lsls r3, r4, #1
	subs r1, r3, #2
	adds r0, r0, r1
	movs r5, #0
	cmp r5, ip
	bhs _0807C906
	mov sb, r3
_0807C8DE:
	movs r2, #0
	adds r6, r0, #0
	subs r6, #0x80
	cmp r2, r4
	bhs _0807C8FA
	adds r1, r7, #0
	adds r3, r0, #0
_0807C8EC:
	ldrh r0, [r1]
	strh r0, [r3]
	subs r1, #2
	subs r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0807C8EC
_0807C8FA:
	adds r0, r6, #0
	mov r1, sb
	subs r7, r7, r1
	adds r5, #1
	cmp r5, ip
	blo _0807C8DE
_0807C906:
	movs r0, #0x40
	subs r6, r0, r4
	movs r5, #0
	lsls r0, r4, #1
	mov r2, ip
	lsls r7, r2, #7
	mov r2, r8
	adds r1, r2, r0
_0807C916:
	lsls r0, r5, #7
	adds r0, r1, r0
	movs r2, #0
	adds r3, r5, #1
	cmp r2, r6
	bhs _0807C92E
	movs r4, #0
_0807C924:
	strh r4, [r0]
	adds r0, #2
	adds r2, #1
	cmp r2, r6
	blo _0807C924
_0807C92E:
	adds r5, r3, #0
	cmp r5, #0x3f
	bls _0807C916
	movs r0, #0x40
	mov r1, ip
	subs r6, r0, r1
	mov r2, r8
	adds r0, r2, r7
	movs r5, #0
	cmp r5, r6
	bhs _0807C956
	adds r4, r0, #0
_0807C946:
	adds r0, r4, #0
	movs r1, #0x80
	bl MemClear
	adds r4, #0x80
	adds r5, #1
	cmp r5, r6
	blo _0807C946
_0807C956:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
