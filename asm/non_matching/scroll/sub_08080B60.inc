	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08080B90 @ =0x00005004
	adds r4, r0, r1
	ldr r2, _08080B94 @ =gUnk_080B37A0
	mov r8, r2
	movs r3, #0
	ldr r1, _08080B98 @ =0x00003FFF
	mov ip, r1
	ldr r7, _08080B9C @ =gUnk_080B7910
	ldr r2, _08080BA0 @ =0x0000B004
	adds r1, r0, r2
	adds r2, r0, #4
	ldr r6, _08080BA4 @ =0xFFFFC000
	ldr r5, _08080BA8 @ =0x00000FFF
_08080B80:
	ldrh r0, [r2]
	cmp r0, ip
	bhi _08080BAC
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	add r0, r8
	b _08080BB0
	.align 2, 0
_08080B90: .4byte 0x00005004
_08080B94: .4byte gUnk_080B37A0
_08080B98: .4byte 0x00003FFF
_08080B9C: .4byte gUnk_080B7910
_08080BA0: .4byte 0x0000B004
_08080BA4: .4byte 0xFFFFC000
_08080BA8: .4byte 0x00000FFF
_08080BAC:
	adds r0, r0, r6
	adds r0, r0, r7
_08080BB0:
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r2, #2
	adds r3, #1
	cmp r3, r5
	bls _08080B80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
