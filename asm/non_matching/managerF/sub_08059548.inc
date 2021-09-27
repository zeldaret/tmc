	.syntax unified
.ifdef USA
	push {lr}
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _08059568 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x16
	bne _0805955C
	bl DeleteThisEntity
_0805955C:
	ldr r2, _0805956C @ =gInput
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	pop {pc}
	.align 2, 0
_08059568: .4byte gPlayerEntity
_0805956C: .4byte gInput
.else
.ifdef DEMO @ TODO deduplicate
	push {lr}
	movs r1, #6
	bl sub_0805E3A0
	ldr r0, _08059568 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x16
	bne _0805955C
	bl DeleteThisEntity
_0805955C:
	ldr r2, _0805956C @ =gInput
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	pop {pc}
	.align 2, 0
_08059568: .4byte gPlayerEntity
_0805956C: .4byte gInput
.endif
.endif
	.syntax divided
