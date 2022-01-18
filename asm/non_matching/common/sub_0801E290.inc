    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r6, r2, #0
	ldr r0, _0801E2BC @ =gUnk_03003DE4
	ldrb r0, [r0]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #9
	lsls r0, r1, #1
	ldr r3, _0801E2C0 @ =gUnk_02017AA0
	adds r0, r0, r3
	adds r2, r2, r0
	adds r4, r2, #0
	adds r5, r1, #0
	mov sb, r5
	ldr r0, _0801E2C4 @ =gUnk_02018EE0
	mov r8, r0
	b _0801E30A
	.align 2, 0
_0801E2BC: .4byte gUnk_03003DE4
_0801E2C0: .4byte gUnk_02017AA0
_0801E2C4: .4byte gUnk_02018EE0
_0801E2C8:
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r7, #2
	add r8, r7
	mov r3, ip
	subs r1, r3, r0
	adds r3, r3, r0
	cmp r1, #0
	bge _0801E2DE
	movs r1, #0
_0801E2DE:
	cmp r3, #0xef
	ble _0801E2E4
	movs r3, #0xf0
_0801E2E4:
	mov r7, sb
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2F2
	strb r3, [r4]
	strb r1, [r4, #1]
_0801E2F2:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0801E2FE
	strb r3, [r2]
	strb r1, [r2, #1]
_0801E2FE:
	subs r4, #2
	adds r2, #2
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	adds r5, #1
_0801E30A:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bne _0801E2C8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided
