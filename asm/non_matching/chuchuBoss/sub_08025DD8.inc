	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0xa]
	cmp r1, #8
	bne _08025DF2
	movs r0, #4
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x54]
	ldr r0, [r0, #0x48]
	str r0, [r5, #0x48]
	b _0802605E
_08025DF2:
	ldr r6, _08025E48 @ =gUnk_080CC1B8
	movs r4, #3
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #1]
	movs r1, #0x29
	adds r1, r1, r5
	mov ip, r1
	movs r1, #7
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x76
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r1, #4
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5, #0x19]
	orrs r0, r4
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0xa]
	ands r3, r0
	cmp r3, #1
	bne _08025E4C
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _08025E58
	.align 2, 0
_08025E48: .4byte gUnk_080CC1B8
_08025E4C:
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimation
_08025E58:
	ldrb r0, [r5, #0xa]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	beq _08025E86
	cmp r6, #0
	bge _08025E68
	b _08026050
_08025E68:
	cmp r6, #3
	ble _08025E6E
	b _08026050
_08025E6E:
	ldr r4, [r5, #0x48]
	adds r0, r5, #0
	bl AllocMutableHitbox
	adds r1, r0, #0
	cmp r1, #0
	beq _08025E7E
	b _08026020
_08025E7E:
	ldr r0, [r5, #0x68]
	adds r0, #0x45
	strb r1, [r0]
	b _0802605E
_08025E86:
	strb r0, [r5, #0xb]
	movs r0, #0x10
	bl zMalloc
	adds r4, r5, #0
	adds r4, #0x84
	str r0, [r4]
	cmp r0, #0
	beq _08025EA2
	adds r0, r5, #0
	bl AllocMutableHitbox
	cmp r0, #0
	bne _08025EAA
_08025EA2:
	adds r0, r5, #0
	bl GenericDeath
	b _0802605E
_08025EAA:
	ldr r0, [r4]
	str r0, [r5, #0x64]
	ldr r2, [r5, #0x48]
	ldr r1, _0802601C @ =gUnk_080FD238
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #3]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #4]
	strb r0, [r2, #4]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #5]
	strb r0, [r2, #5]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #6]
	strb r0, [r2, #6]
	ldr r2, [r5, #0x48]
	ldrb r0, [r1, #7]
	strb r0, [r2, #7]
	strb r6, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	movs r7, #1
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r4]
	strb r6, [r0, #6]
	ldr r0, [r4]
	strb r6, [r0, #5]
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1, #1]
	ldr r0, [r4]
	strb r6, [r0, #3]
	ldr r0, [r4]
	strb r6, [r0, #4]
	ldr r1, [r4]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0xe]
	ldrb r0, [r5, #0xa]
	movs r1, #3
	orrs r1, r0
	movs r0, #0x13
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r5, #0x68]
	cmp r2, #0
	beq _08025F46
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x68]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x68]
	ldrh r0, [r5, #0x32]
	subs r0, #0xe
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x68]
	movs r0, #0xe
	strb r0, [r1, #0xe]
	ldr r0, [r5, #0x68]
	str r5, [r0, #0x50]
	ldr r0, [r5, #0x68]
	str r5, [r0, #0x68]
_08025F46:
	ldrb r0, [r5, #0xa]
	movs r1, #2
	orrs r1, r0
	movs r0, #0x13
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r5, #0x50]
	cmp r2, #0
	beq _08025F8C
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x50]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x68]
	ldrh r0, [r0, #0x32]
	subs r0, #0x12
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x50]
	movs r0, #0x12
	strb r0, [r1, #0xe]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x68]
	str r0, [r1, #0x50]
	ldr r1, [r5, #0x68]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x50]
	str r5, [r0, #0x68]
_08025F8C:
	ldrb r0, [r5, #0xa]
	adds r1, r7, #0
	orrs r1, r0
	movs r0, #0x13
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r5, #0x54]
	cmp r2, #0
	beq _08025FD6
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r5, #0x54]
	ldrh r0, [r5, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	ldrh r0, [r0, #0x32]
	subs r0, #0xe
	strh r0, [r1, #0x32]
	ldr r1, [r5, #0x54]
	movs r0, #0xe
	strb r0, [r1, #0xe]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x54]
	str r5, [r0, #0x54]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	ldr r0, [r5, #0x54]
	str r5, [r0, #0x68]
_08025FD6:
	movs r0, #0x13
	movs r1, #8
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _08025FE6
	str r5, [r1, #0x54]
_08025FE6:
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _08025FFC
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
_08025FFC:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08026050
	adds r0, r5, #0
	movs r1, #0x49
	movs r2, #3
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _08026050
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	b _08026050
	.align 2, 0
_0802601C: .4byte gUnk_080FD238
_08026020:
	ldr r1, [r5, #0x48]
	ldrb r0, [r4]
	strb r0, [r1]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #1]
	strb r0, [r1, #1]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #4]
	strb r0, [r1, #4]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #5]
	strb r0, [r1, #5]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #6]
	strb r0, [r1, #6]
	ldr r1, [r5, #0x48]
	ldrb r0, [r4, #7]
	strb r0, [r1, #7]
_08026050:
	ldrb r1, [r5, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08026060
_0802605E:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
