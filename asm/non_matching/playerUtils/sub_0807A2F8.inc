	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807A364 @ =gRoomControls
	mov r8, r0
	ldrb r0, [r0, #4]
	cmp r0, #8
	bne _0807A312
	b _0807A4F2
_0807A312:
	bl sub_08079778
	orrs r0, r4
	cmp r0, #0
	bne _0807A31E
	b _0807A4F2
_0807A31E:
	ldr r7, _0807A368 @ =gPlayerEntity
	ldrb r1, [r7, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807A36C
	movs r1, #0x2e
	ldrsh r2, [r7, r1]
	mov r6, r8
	ldrh r0, [r6, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #5]
	adds r0, r1, r5
	ldrh r4, [r6, #8]
	subs r0, r0, r4
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r2
	lsls r7, r0, #1
	subs r1, r1, r5
	subs r1, r1, r4
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r2, r1
	lsls r6, r2, #1
	b _0807A3A2
	.align 2, 0
_0807A364: .4byte gRoomControls
_0807A368: .4byte gPlayerEntity
_0807A36C:
	movs r1, #0x2e
	ldrsh r3, [r7, r1]
	ldr r0, [r7, #0x48]
	ldrb r6, [r0, #2]
	adds r1, r3, r6
	mov r2, r8
	ldrh r5, [r2, #6]
	subs r1, r1, r5
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	mov r7, r8
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	lsls r7, r1, #1
	subs r3, r3, r6
	subs r3, r3, r5
	asrs r3, r3, #4
	ands r3, r4
	orrs r3, r0
	lsls r6, r3, #1
_0807A3A2:
	movs r0, #0
	mov sb, r0
	ldr r1, _0807A3F4 @ =gPlayerEntity
	mov sl, r1
_0807A3AA:
	movs r2, #0
	mov r8, r2
	mov r0, sl
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
	lsrs r4, r7, #1
	adds r0, r4, #0
	movs r1, #1
	bl GetCollisionDataAtMetaTilePos
	cmp r0, #0
	beq _0807A3FC
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r1, sl
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetVvvAtMetaTilePos
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sl
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r2, _0807A3F8 @ =gUnk_0811C1D8
	adds r1, r1, r2
	ldr r1, [r1]
	bl FindValueForKey
	cmp r0, #0
	beq _0807A468
	b _0807A400
	.align 2, 0
_0807A3F4: .4byte gPlayerEntity
_0807A3F8: .4byte gUnk_0811C1D8
_0807A3FC:
	movs r0, #1
	mov r8, r0
_0807A400:
	ldr r5, _0807A444 @ =gPlayerEntity
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
	lsrs r4, r6, #1
	adds r0, r4, #0
	movs r1, #1
	bl GetCollisionDataAtMetaTilePos
	cmp r0, #0
	beq _0807A44C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetVvvAtMetaTilePos
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r2, _0807A448 @ =gUnk_0811C1D8
	adds r1, r1, r2
	ldr r1, [r1]
	bl FindValueForKey
	cmp r0, #0
	beq _0807A468
	b _0807A450
	.align 2, 0
_0807A444: .4byte gPlayerEntity
_0807A448: .4byte gUnk_0811C1D8
_0807A44C:
	movs r0, #1
	add r8, r0
_0807A450:
	mov r1, r8
	cmp r1, #2
	bne _0807A45E
	mov r2, sb
	cmp r2, #0
	bne _0807A46E
	b _0807A4F2
_0807A45E:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #1
	bls _0807A3AA
_0807A468:
	mov r2, sb
	cmp r2, #0
	beq _0807A4F2
_0807A46E:
	bl AreaIsDungeon
	cmp r0, #0
	beq _0807A4B0
	ldr r4, _0807A4AC @ =gPlayerEntity
	adds r0, r4, #0
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
	lsrs r0, r7, #1
	movs r1, #2
	bl GetCollisionDataAtMetaTilePos
	cmp r0, #0
	bne _0807A4F2
	adds r0, r4, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
	lsrs r0, r6, #1
	movs r1, #2
_0807A4A0:
	bl GetCollisionDataAtMetaTilePos
	cmp r0, #0
	beq _0807A4EC
	b _0807A4F2
	.align 2, 0
_0807A4AC: .4byte gPlayerEntity
_0807A4B0:
	mov r0, sb
	cmp r0, #2
	bne _0807A4C2
	ldr r0, _0807A4E8 @ =gPlayerEntity
	mov r1, sp
	adds r2, r7, #0
	bl sub_08004202
	adds r7, r0, #0
_0807A4C2:
	lsrs r0, r7, #1
	movs r1, #1
	bl GetCollisionDataAtMetaTilePos
	cmp r0, #0
	bne _0807A4F2
	mov r1, sb
	cmp r1, #2
	bne _0807A4E0
	ldr r0, _0807A4E8 @ =gPlayerEntity
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004202
	adds r6, r0, #0
_0807A4E0:
	lsrs r0, r6, #1
	movs r1, #1
	b _0807A4A0
	.align 2, 0
_0807A4E8: .4byte gPlayerEntity
_0807A4EC:
	mov r0, sb
	adds r0, #1
	b _0807A4F4
_0807A4F2:
	movs r0, #0
_0807A4F4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.syntax divided
