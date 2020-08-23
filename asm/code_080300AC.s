	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080300E8
sub_080300E8: @ 0x080300E8
	push {lr}
	ldr r1, _08030110 @ =gScreenTransition
	adds r3, r1, #0
	adds r3, #0xae
	ldrh r0, [r3]
	cmp r0, #0xff
	beq _0803010C
	lsls r0, r0, #2
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r2, _08030114 @ =gPlayerEntity
	ldrh r1, [r0]
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #2]
	adds r0, #0xc
	strh r0, [r2, #0x32]
	movs r0, #0xff
	strh r0, [r3]
_0803010C:
	pop {pc}
	.align 2, 0
_08030110: .4byte gScreenTransition
_08030114: .4byte gPlayerEntity

	thumb_func_start sub_08030118
sub_08030118: @ 0x08030118
	push {lr}
	adds r2, r0, #0
	ldr r0, _0803013C @ =gScreenTransition
	adds r0, #0xac
	ldrh r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08030140
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x67
	bl SetLocalFlagByOffset
	b _0803014C
	.align 2, 0
_0803013C: .4byte gScreenTransition
_08030140:
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x67
	bl ClearLocalFlagByOffset
_0803014C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08030150
sub_08030150: @ 0x08030150
	push {r4, r5, lr}
	mov ip, r0
	ldr r2, _08030194 @ =gScreenTransition
	adds r5, r2, #0
	adds r5, #0xac
	mov r3, ip
	adds r3, #0x80
	ldrb r4, [r3]
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r5]
	bics r1, r0
	mov r0, ip
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r4
	orrs r1, r0
	strh r1, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #0x6c
	adds r0, r0, r2
	mov r4, ip
	ldrh r1, [r4, #0x2e]
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r4, #0x32]
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08030194: .4byte gScreenTransition
