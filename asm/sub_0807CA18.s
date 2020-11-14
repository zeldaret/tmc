	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0807CA18
sub_0807CA18: @ 0x0807CA18
	push {lr}
	ldr r0, _0807CA7C @ =gUnk_02002A40
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
	bl _DmaCopy
_0807CA78:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0807CA7C: .4byte gUnk_02002A40
_0807CA80: .4byte gUnk_0811E470
