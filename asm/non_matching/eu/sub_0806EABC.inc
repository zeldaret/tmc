.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08050384
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _0806E520 @ =gUnk_020227E8
	ldr r2, _0806E524 @ =0x00202020
	bl sub_08057044
	ldr r0, _0806E528 @ =0x00003302
	ldr r1, _0806E52C @ =gUnk_081146B8
	bl sub_0805F46C
	ldr r1, _0806E530 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	pop {r4, pc}
	.align 2, 0
_0806E520: .4byte gUnk_020227E8
_0806E524: .4byte 0x00202020
_0806E528: .4byte 0x00003302
_0806E52C: .4byte gUnk_081146B8
_0806E530: .4byte gScreen
.syntax divided
