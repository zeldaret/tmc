    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r4, _08075230 @ =gPlayerScriptExecutionContext
	adds r0, r4, #0
	movs r1, #0x24
	bl MemClear
	str r6, [r4]
	ldr r0, _08075234 @ =gPlayerEntity
	adds r0, #0x84
	str r4, [r0]
	ldr r2, _08075238 @ =gPlayerState
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	movs r4, #1
	strb r4, [r0]
	adds r3, r2, #0
	adds r3, #0x39
	strb r1, [r3]
	adds r0, #2
	strb r5, [r0]
	ldr r0, [r2, #0x30]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	cmp r7, #0
	bne _08075240
	strb r7, [r3]
	ldr r6, _0807523C @ =script_BedInLinksRoom
	b _08075244
	.align 2, 0
_08075230: .4byte gPlayerScriptExecutionContext
_08075234: .4byte gPlayerEntity
_08075238: .4byte gPlayerState
_0807523C: .4byte script_BedInLinksRoom
_08075240:
	strb r4, [r3]
	ldr r6, _08075290 @ =script_BedAtSimons
_08075244:
	ldr r0, _08075294 @ =gPlayerState
	adds r0, #0x39
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _08075252
	movs r1, #2
_08075252:
	movs r0, #0x5b
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08075270
	ldr r0, _08075298 @ =gPlayerEntity
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	adds r1, r6, #0
	bl StartCutscene
_08075270:
	ldr r4, _08075298 @ =gPlayerEntity
	movs r1, #0xe
	rsbs r1, r1, #0
	movs r2, #0x1c
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl CreateSpeechBubbleSleep
	str r0, [r4, #0x6c]
	cmp r0, #0
	beq _0807528C
	movs r1, #3
	bl SetDefaultPriority
_0807528C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075290: .4byte script_BedAtSimons
_08075294: .4byte gPlayerState
_08075298: .4byte gPlayerEntity
    .syntax divided
