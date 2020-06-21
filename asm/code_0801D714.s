	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start LoadPalettesByPaletteGroupIndex
LoadPalettesByPaletteGroupIndex: @ 0x0801D714
	push {r4, lr}
	ldr r1, _0801D748 @ =gUnk_080FF850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
_0801D71E:
	ldrb r3, [r4, #2]
	ldrb r0, [r4, #3]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	bne _0801D72C
	movs r2, #0x10
_0801D72C:
	ldrh r0, [r4]
	lsls r0, r0, #5
	ldr r1, _0801D74C @ =gUnk_085A2E80
	adds r0, r0, r1
	adds r1, r3, #0
	bl sub_0801D754
	ldrb r1, [r4, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D750
	adds r4, #4
	b _0801D71E
	.align 2, 0
_0801D748: .4byte gUnk_080FF850
_0801D74C: .4byte gUnk_085A2E80
_0801D750:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801D754
sub_0801D754: @ 0x0801D754
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r5, r2, #5
	movs r3, #1
	lsls r3, r1
	subs r2, #1
	ldr r4, _0801D790 @ =gUnk_0200B644
	ldr r7, _0801D794 @ =gUnk_020176A0
	cmp r2, #0
	ble _0801D772
_0801D768:
	lsls r0, r3, #1
	orrs r3, r0
	subs r2, #1
	cmp r2, #0
	bgt _0801D768
_0801D772:
	ldr r0, [r4]
	orrs r0, r3
	str r0, [r4]
	lsls r0, r1, #5
	adds r0, r0, r7
	ldr r2, _0801D798 @ =0x040000D4
	str r6, [r2]
	str r0, [r2, #4]
	lsrs r0, r5, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D790: .4byte gUnk_0200B644
_0801D794: .4byte gUnk_020176A0
_0801D798: .4byte 0x040000D4