	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0x38
	ldrsh r5, [r4, r0]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	mov r8, r1
	adds r7, r4, #0
	adds r7, #0x34
	ldrb r0, [r7]
	ldr r6, _0805CC6C @ =0x00000322
	cmp r0, #1
	bne _0805CC5C
	subs r6, #1
_0805CC5C:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0805CCF4
	cmp r0, #2
	bgt _0805CC70
	cmp r0, #1
	beq _0805CC94
	b _0805CC76
	.align 2, 0
_0805CC6C: .4byte 0x00000322
_0805CC70:
	cmp r0, #3
	bne _0805CC76
	b _0805CDE4
_0805CC76:
	adds r4, #0x34
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	ldr r0, _0805CC90 @ =0x00000365
	ldrb r2, [r4]
	mov r1, r8
	bl sub_0807B7D8
	b _0805CF68
	.align 2, 0
_0805CC90: .4byte 0x00000365
_0805CC94:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r0, _0805CCEC @ =0x0000036F
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CCF0 @ =0x00000371
	mov r1, r8
	adds r1, #0x41
	b _0805CDC2
	.align 2, 0
_0805CCEC: .4byte 0x0000036F
_0805CCF0: .4byte 0x00000371
_0805CCF4:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r0, _0805CDCC @ =0x00000372
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD0 @ =0x0000036F
	mov r1, r8
	adds r1, #2
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdd
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD4 @ =0x00000376
	mov r1, r8
	adds r1, #0x41
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDD8 @ =0x00000375
	mov r1, r8
	adds r1, #0x42
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x80
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDDC @ =0x00000373
	mov r1, r8
	adds r1, #0x81
	ldrb r2, [r7]
	bl sub_0807B7D8
	ldr r0, _0805CDE0 @ =0x00000371
	mov r1, r8
	adds r1, #0x82
_0805CDC2:
	ldrb r2, [r7]
	bl sub_0807B7D8
	b _0805CF68
	.align 2, 0
_0805CDCC: .4byte 0x00000372
_0805CDD0: .4byte 0x0000036F
_0805CDD4: .4byte 0x00000376
_0805CDD8: .4byte 0x00000375
_0805CDDC: .4byte 0x00000373
_0805CDE0: .4byte 0x00000371
_0805CDE4:
	ldrb r2, [r7]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0807B7D8
	adds r1, r5, #1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #3
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x43
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc0
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc1
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc2
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r1, r5, #0
	adds r1, #0xc3
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	ldrh r0, [r4, #0x3c]
	ldrb r2, [r7]
	mov r1, r8
	bl sub_0807B7D8
	ldr r4, _0805CF70 @ =0x00000372
	mov r1, r8
	adds r1, #1
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #2
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r0, _0805CF74 @ =0x0000036F
	mov r1, r8
	adds r1, #3
	ldrb r2, [r7]
	bl sub_0807B7D8
	movs r6, #0xdd
	lsls r6, r6, #2
	mov r1, r8
	adds r1, #0x40
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	adds r4, #4
	mov r1, r8
	adds r1, #0x41
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x42
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r5, _0805CF78 @ =0x00000375
	mov r1, r8
	adds r1, #0x43
	ldrb r2, [r7]
	adds r0, r5, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x80
	ldrb r2, [r7]
	adds r0, r6, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x81
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x82
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0x83
	ldrb r2, [r7]
	adds r0, r5, #0
	bl sub_0807B7D8
	movs r0, #0xdc
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xc0
	ldrb r2, [r7]
	bl sub_0807B7D8
	subs r4, #3
	mov r1, r8
	adds r1, #0xc1
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	mov r1, r8
	adds r1, #0xc2
	ldrb r2, [r7]
	adds r0, r4, #0
	bl sub_0807B7D8
	ldr r0, _0805CF7C @ =0x00000371
	mov r1, r8
	adds r1, #0xc3
	ldrb r2, [r7]
	bl sub_0807B7D8
_0805CF68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805CF70: .4byte 0x00000372
_0805CF74: .4byte 0x0000036F
_0805CF78: .4byte 0x00000375
_0805CF7C: .4byte 0x00000371
	.syntax divided
