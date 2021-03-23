	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start InitSound
InitSound: @ 0xInitSound
	push {lr}
	bl sub_080A3210
	bl m4aSoundInit
	pop {pc}

	thumb_func_start sub_080A3210
sub_080A3210: @ 0x080A3210
	push {r4, lr}
	ldr r4, _080A3230 @ =gUnk_02021EE0
	adds r0, r4, #0
	movs r1, #0x18
	bl MemClear
	bl sub_080A35C8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r0, [r4, #4]
	bl m4aMPlayAllStop
	pop {r4, pc}
	.align 2, 0
_080A3230: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3234
sub_080A3234: @ 0x080A3234
	push {lr}
	ldr r1, _080A3244 @ =gUnk_02021EE0
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x14]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A3244: .4byte gUnk_02021EE0

	thumb_func_start sub_080A3248
sub_080A3248: @ 0x080A3248
	push {lr}
	ldr r1, _080A3258 @ =gUnk_02021EE0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x14]
	bl sub_080A353C
	pop {pc}
	.align 2, 0
_080A3258: .4byte gUnk_02021EE0

	thumb_func_start sub_080A325C
sub_080A325C: @ 0x080A325C
	ldr r1, _080A3264 @ =gUnk_02021EE0
	strh r0, [r1, #0x12]
	bx lr
	.align 2, 0
_080A3264: .4byte gUnk_02021EE0
