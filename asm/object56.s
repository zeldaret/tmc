	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08091E60
sub_08091E60: @ 0x08091E60
	push {lr}
	ldr r2, _08091E74 @ =gUnk_08122598
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08091E74: .4byte gUnk_08122598

	thumb_func_start sub_08091E78
sub_08091E78: @ 0x08091E78
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08091E96
	movs r0, #0x2d
	strb r0, [r4, #0xe]
_08091E96:
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl InitializeAnimation
	ldr r1, _08091EBC @ =gUnk_08122590
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_08091EBC: .4byte gUnk_08122590

	thumb_func_start sub_08091EC0
sub_08091EC0: @ 0x08091EC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08091ED6
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x32]
	ldrh r0, [r1, #0x36]
	strh r0, [r4, #0x36]
_08091ED6:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	beq _08091EEC
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08091EEC
	bl DeleteThisEntity
_08091EEC:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
