	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, lr}
	ldr r3, _0806074C @ =gUnk_0810A918
	adds r2, r0, #0
	adds r2, #0x68
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	adds r3, r0, #0
	adds r3, #0x69
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	movs r3, #0
	ldrsb r3, [r2, r3]
	lsls r3, r3, #2
	ldr r2, _08060750 @ =gUnk_0810A66C
	adds r3, r3, r2
	ldr r4, _08060754 @ =gRoomControls
	movs r5, #0
	ldrsh r2, [r3, r5]
	ldrh r5, [r4, #6]
	adds r2, r2, r5
	movs r5, #2
	ldrsh r3, [r3, r5]
	ldrh r4, [r4, #8]
	adds r3, r3, r4
	bl sub_0807DEDC
	ldr r2, _08060758 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0806074C: .4byte gUnk_0810A918
_08060750: .4byte gUnk_0810A66C
_08060754: .4byte gRoomControls
_08060758: .4byte gUnk_02033280
    .syntax divided