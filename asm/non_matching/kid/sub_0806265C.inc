    .syntax unified
    .text

sub_0806265C: @ 0x0806265C
	push {lr}
	adds r2, r0, #0
	ldr r3, _08062674 @ =gSave
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _08062678
	movs r0, #0
	adds r1, r2, #0
	bl TextboxNoOverlap
	b _08062690
	.align 2, 0
_08062674: .4byte gSave
_08062678:
	ldrb r0, [r2, #0xa]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08062694 @ =gUnk_0810BE10
	adds r1, r1, r0
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r0, r2, #0
	bl ShowNPCDialogue
_08062690:
	pop {pc}
	.align 2, 0
_08062694: .4byte gUnk_0810BE10

    .syntax divided
