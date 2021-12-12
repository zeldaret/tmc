	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object98
Object98: @ 0x0809E348
	push {lr}
	ldr r2, _0809E35C @ =gUnk_0812418C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E35C: .4byte gUnk_0812418C

	thumb_func_start sub_0809E360
sub_0809E360: @ 0x0809E360
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	bls _0809E372
	movs r0, #8
	strb r0, [r4, #0xe]
_0809E372:
	ldrb r2, [r4, #0xe]
	movs r0, #0x48
	subs r0, r0, r2
	ldr r1, _0809E3E0 @ =gEntCount
	ldrb r1, [r1]
	cmp r0, r1
	ble _0809E3D8
	movs r5, #0
	adds r7, r4, #0
	adds r7, #0x7e
	movs r0, #0x76
	adds r0, r0, r4
	mov r8, r0
	cmp r5, r2
	bhs _0809E3A6
	movs r6, #0xe
_0809E392:
	movs r0, #0x17
	bl CreateProjectile
	strb r6, [r0, #0xe]
	str r4, [r0, #0x50]
	adds r6, #0xc
	adds r5, #1
	ldrb r2, [r4, #0xe]
	cmp r5, r2
	blo _0809E392
_0809E3A6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r7]
	lsls r1, r0, #8
	mov r2, r8
	strh r1, [r2]
	lsls r0, r0, #6
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl SetDefaultPriority
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809E3D8
	bl GetCurrentRoomProperty
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	adds r0, r4, #0
	bl sub_080A2CC0
_0809E3D8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809E3E0: .4byte gEntCount

	thumb_func_start sub_0809E3E4
sub_0809E3E4: @ 0x0809E3E4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x76
	ldrb r0, [r4, #0xb]
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	lsrs r1, r1, #2
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809E428
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809E40E
	adds r0, r4, #0
	bl sub_0806F69C
_0809E40E:
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809E428
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0809E428:
	pop {r4, pc}
	.align 2, 0
