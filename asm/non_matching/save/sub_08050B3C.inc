    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	ldr r1, _08050C18 @ =gSave
	adds r0, r1, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	lsrs r2, r0, #1
	cmp r2, #0
	bne _08050B5A
	movs r2, #1
_08050B5A:
	adds r0, r1, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r3, r0, #1
	cmp r3, #0
	beq RETURN
	cmp r2, r3
	ble _08050B6C
	adds r2, r3, #0
_08050B6C:
	movs r0, #3
	ands r0, r2
	str r0, [sp, #4]
	adds r0, r2, #0
	asrs r5, r0, #2
	mov ip, r5
	cmp r5, #0xa
	ble _08050B80
	movs r2, #0xa
	mov ip, r2
_08050B80:
	adds r6, r5, #0
	subs r6, #0xa
	mov sb, r6
	cmp r6, #0
	bge _08050B8E
	movs r7, #0
	mov sb, r7
_08050B8E:
	adds r0, r3, #0
	asrs r3, r0, #2
	adds r0, r3, #0
	cmp r3, #0xa
	ble _08050B9A
	movs r3, #0xa
_08050B9A:
	adds r4, r0, #0
	subs r4, #0xa
	ldr r2, [sp]
	ldr r0, _08050C1C @ =0x0000F24C
	mov sl, r0
	strh r0, [r2]
	ldr r1, _08050C20 @ =0x040000D4
	movs r7, #0xa
	mov r8, r7
	mov r0, r8
	mov r7, ip        @ var5
	subs r0, r0, r7   @ 10 - var5
	lsls r0, r0, #1
	ldr r7, _08050C24 @ =gUnk_080FC914
	mov ip, r7
	add r0, ip
	str r0, [r1]
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	cmp r4, #0
	ble _08050BEE
	adds r2, #0x40
	mov r3, sl
	strh r3, [r2]
	mov r7, r8
	mov r3, sb
	subs r0, r7, r3
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r2, #2
	str r0, [r1, #4]
	movs r7, #0x80
	lsls r7, r7, #0x18
	orrs r4, r7
	str r4, [r1, #8]
	ldr r0, [r1, #8]
_08050BEE:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq RETURN
	ldr r2, [sp]
	cmp r5, #9
	ble _08050BFE
	adds r5, r6, #0
	adds r2, #0x40
_08050BFE:
	lsls r0, r5, #1
	adds r0, r0, r2
	ldr r2, [sp, #4]
	ldr r3, _08050C28 @ =0xFFFFF24D
	adds r1, r2, r3
	strh r1, [r0, #2]
RETURN:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08050C18: .4byte gSave
_08050C1C: .4byte 0x0000F24C
_08050C20: .4byte 0x040000D4
_08050C24: .4byte gUnk_080FC914
_08050C28: .4byte 0xFFFFF24D
    .syntax divided
