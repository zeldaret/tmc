	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08059BEC
	movs r6, #0
	movs r0, #0x3f
	mov sb, r0
	movs r2, #0xc4
	lsls r2, r2, #1
	mov r8, r2
_08059B38:
	movs r5, #0
	lsls r1, r6, #4
	mov r2, r8
	lsrs r0, r2, #4
	mov r2, sb
	ands r0, r2
	lsls r3, r0, #6
	movs r7, #0x28
	ldr r0, _08059BD8 @ =0x000004AB
	adds r4, r1, r0
_08059B4C:
	lsrs r1, r7, #4
	mov r2, sb
	ands r1, r2
	orrs r1, r3
	adds r0, r4, #0
	movs r2, #1
	str r3, [sp]
	bl sub_0807B9B8
	adds r7, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059B4C
	movs r0, #0x10
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls _08059B38
	movs r6, #0
	movs r3, #0x3f
_08059B78:
	movs r5, #0
	lsls r1, r6, #4
	adds r6, #1
	mov r8, r6
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	movs r6, #0x28
	movs r0, #0x88
	lsls r0, r0, #3
	adds r4, r1, r0
_08059B94:
	lsrs r1, r6, #4
	ands r1, r3
	orrs r1, r7
	adds r0, r4, #0
	movs r2, #2
	str r3, [sp]
	bl sub_0807B9B8
	adds r6, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059B94
	mov r6, r8
	cmp r6, #2
	bls _08059B78
	ldr r1, _08059BDC @ =0x000005C2
	movs r0, #0xd6
	movs r2, #2
	bl sub_0807B9B8
	ldr r1, _08059BE0 @ =0x000005C3
	movs r0, #0xd7
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059BE4 @ =gUnk_086E8460
	ldr r1, _08059BE8 @ =0x06001800
	movs r2, #0x80
	lsls r2, r2, #4
	bl LoadResourceAsync
	b _08059C5E
	.align 2, 0
_08059BD8: .4byte 0x000004AB
_08059BDC: .4byte 0x000005C2
_08059BE0: .4byte 0x000005C3
_08059BE4: .4byte gUnk_086E8460
_08059BE8: .4byte 0x06001800
_08059BEC:
	movs r0, #0x19
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08059C5E
	movs r6, #0
	movs r3, #0x3f
_08059BFA:
	movs r5, #0
	lsls r1, r6, #4
	adds r6, #1
	mov r8, r6
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	lsrs r0, r0, #4
	ands r0, r3
	lsls r7, r0, #6
	movs r6, #0x28
	ldr r0, _08059C68 @ =0x000004A6
	adds r4, r1, r0
_08059C14:
	lsrs r1, r6, #4
	ands r1, r3
	orrs r1, r7
	adds r0, r4, #0
	movs r2, #1
	str r3, [sp]
	bl sub_0807B9B8
	adds r6, #0x10
	adds r4, #1
	adds r5, #1
	ldr r3, [sp]
	cmp r5, #3
	bls _08059C14
	mov r6, r8
	cmp r6, #4
	bls _08059BFA
	ldr r0, _08059C6C @ =0x00000444
	ldr r1, _08059C70 @ =0x00000602
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C74 @ =0x00000445
	ldr r1, _08059C78 @ =0x00000605
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C7C @ =0x00000454
	ldr r1, _08059C80 @ =0x00000642
	movs r2, #2
	bl sub_0807B9B8
	ldr r0, _08059C84 @ =0x00000455
	ldr r1, _08059C88 @ =0x00000645
	movs r2, #2
	bl sub_0807B9B8
_08059C5E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08059C68: .4byte 0x000004A6
_08059C6C: .4byte 0x00000444
_08059C70: .4byte 0x00000602
_08059C74: .4byte 0x00000445
_08059C78: .4byte 0x00000605
_08059C7C: .4byte 0x00000454
_08059C80: .4byte 0x00000642
_08059C84: .4byte 0x00000455
_08059C88: .4byte 0x00000645
	.syntax divided
