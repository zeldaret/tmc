	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

.ifdef DEMO
thumb_func_start sub_0807CA18
sub_0807CA18:
	push {r4, r5, r6, lr}
	ldr r4, _0807CA38 @ =0x02002A40
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0807C9BA
	movs r2, #0x00
	strb r2, [r4, #0x00]
	movs r3, #0x01
	strb r3, [r4, #0x01]
	strb r3, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xAA
	movs r0, #0x18
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	subs r1, #0x23
	movs r0, #0x22
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x15
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8A
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x05
	strb r3, [r0, #0x00]
	adds r1, #0x03
	movs r0, #0x90
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x38
	strh r0, [r1, #0x00]
_0807C9BA:
	adds r5, r4, #0x0
	adds r5, #0x80
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0807C9CE
	ldr r0, _0807CA3C @ =0x0811DFF4
	adds r1, r5, #0x0
	movs r2, #0x05
	bl MemCopy
_0807C9CE:
	ldr r1, _0807CA40 @ =0x0811EF10
	movs r6, #0x80
	lsls r6, r6, #0x12
	ldrb r0, [r6, #0x04]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r2, _0807CA44 @ =0x000004B4
	adds r1, r4, #0x0
	bl MemCopy
	ldrb r0, [r6, #0x07]
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _0807CA04
	movs r0, #0x97
	strb r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x81
	movs r0, #0x7F
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0xDD
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x83
	strb r2, [r0, #0x00]
_0807CA04:
	movs r0, #0xA0
	bl ModHealth
	ldr r0, _0807CA48 @ =0xFFFFD8F1
	bl ModRupees
	ldr r0, _0807CA4C @ =0x02000010
	ldrb r1, [r0, #0x07]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	ldr r1, _0807CA50 @ =0x0811DFF9
	adds r0, r0, r1
	movs r1, #0x95
	lsls r1, r1, #0x03
	adds r2, r4, r1
	ldrb r1, [r6, #0x04]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	adds r0, r0, r1
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6, pc}
_0807CA38: .4byte gSave
_0807CA3C: .4byte gUnk_0811E470
_0807CA40: .4byte demoPointers
_0807CA44: .4byte 0x000004B4
_0807CA48: .4byte 0xFFFFD8F1
_0807CA4C: .4byte gUnk_02000010
_0807CA50: .4byte demoUnknown1
.else
	thumb_func_start sub_0807CA18
sub_0807CA18: @ 0x0807CA18
	push {lr}
	ldr r0, _0807CA7C @ =gSave
	mov ip, r0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807CA66
	movs r2, #0
	mov r0, ip
	strb r2, [r0]
	movs r3, #1
	strb r3, [r0, #1]
	strb r3, [r0, #8]
	mov r1, ip
	adds r1, #0xaa
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	subs r1, #0x23
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x15
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x8a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #5
	strb r3, [r0]
	adds r1, #3
	movs r0, #0x90
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x38
	strh r0, [r1]
_0807CA66:
	mov r1, ip
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807CA78
	ldr r0, _0807CA80 @ =gUnk_0811E470
	movs r2, #5
	bl MemCopy
_0807CA78:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0807CA7C: .4byte gSave
_0807CA80: .4byte gUnk_0811E470
.endif
