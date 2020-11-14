	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MidiKeyToFreq
MidiKeyToFreq: @ 0x080AFE9C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080AFEB0
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080AFEB0:
	ldr r3, _080AFEF8 @ =gUnk_089FC754
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _080AFEFC @ =gUnk_089FC808
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AFEF8: .4byte gUnk_089FC754
_080AFEFC: .4byte gUnk_089FC808

	thumb_func_start nullsub_543
nullsub_543: @ 0x080AFF00
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x080AFF04
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _080AFF1C @ =0x68736D53
	cmp r3, r0
	bne _080AFF18
	ldr r0, [r2, #4]
	ldr r1, _080AFF20 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080AFF18:
	pop {r0}
	bx r0
	.align 2, 0
_080AFF1C: .4byte 0x68736D53
_080AFF20: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x080AFF24
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080AFF44 @ =0x68736D53
	cmp r3, r0
	bne _080AFF3E
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080AFF3E:
	pop {r0}
	bx r0
	.align 2, 0
_080AFF44: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x080AFF48
	push {r4, r5, r6, lr}
	ldr r0, _080AFF9C @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080AFFA0 @ =gUnk_0300404C
	ldr r2, _080AFFA4 @ =0x040000E0
	bl CpuSet
	ldr r0, _080AFFA8 @ =gUnk_030043D0
	bl SoundInit
	ldr r0, _080AFFAC @ =gUnk_03004DE0
	bl MPlayExtender
	ldr r0, _080AFFB0 @ =0x0095F800
	bl m4aSoundMode
	ldr r0, _080AFFB4 @ =0x00000020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080AFF96
	ldr r5, _080AFFB8 @ =gUnk_08A11C3C
	adds r6, r0, #0
_080AFF7A:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _080AFFBC @ =gUnk_030055E0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080AFF7A
_080AFF96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFF9C: .4byte SoundMainRAM
_080AFFA0: .4byte gUnk_0300404C
_080AFFA4: .4byte 0x040000E0
_080AFFA8: .4byte gUnk_030043D0
_080AFFAC: .4byte gUnk_03004DE0
_080AFFB0: .4byte 0x0095F800
_080AFFB4: .4byte 0x00000020
_080AFFB8: .4byte gUnk_08A11C3C
_080AFFBC: .4byte gUnk_030055E0

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x080AFFC0
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x080AFFCC
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _080AFFF0 @ =gUnk_08A11C3C
	ldr r1, _080AFFF4 @ =gUnk_08A11DBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_080AFFF0: .4byte gUnk_08A11C3C
_080AFFF4: .4byte gUnk_08A11DBC

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x080AFFF8
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _080B0024 @ =gUnk_08A11C3C
	ldr r1, _080B0028 @ =gUnk_08A11DBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080B002C
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080B0040
	.align 2, 0
_080B0024: .4byte gUnk_08A11C3C
_080B0028: .4byte gUnk_08A11DBC
_080B002C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080B0038
	cmp r2, #0
	bge _080B0040
_080B0038:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
_080B0040:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x080B0044
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _080B0070 @ =gUnk_08A11C3C
	ldr r1, _080B0074 @ =gUnk_08A11DBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080B0078
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080B0094
	.align 2, 0
_080B0070: .4byte gUnk_08A11C3C
_080B0074: .4byte gUnk_08A11DBC
_080B0078:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080B008A
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _080B0094
_080B008A:
	cmp r2, #0
	bge _080B0094
	adds r0, r1, #0
	bl MPlayContinue
_080B0094:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x080B0098
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _080B00C4 @ =gUnk_08A11C3C
	ldr r1, _080B00C8 @ =gUnk_08A11DBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080B00BE
	adds r0, r2, #0
	bl MPlayStop
_080B00BE:
	pop {r0}
	bx r0
	.align 2, 0
_080B00C4: .4byte gUnk_08A11C3C
_080B00C8: .4byte gUnk_08A11DBC

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x080B00CC
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _080B00F8 @ =gUnk_08A11C3C
	ldr r1, _080B00FC @ =gUnk_08A11DBC
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r2, [r0, #4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080B00F2
	adds r0, r2, #0
	bl MPlayContinue
_080B00F2:
	pop {r0}
	bx r0
	.align 2, 0
_080B00F8: .4byte gUnk_08A11C3C
_080B00FC: .4byte gUnk_08A11DBC

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x080B0100
	push {r4, r5, lr}
	ldr r0, _080B0124 @ =0x00000020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080B011E
	ldr r5, _080B0128 @ =gUnk_08A11C3C
	adds r4, r0, #0
_080B0110:
	ldr r0, [r5]
	bl MPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080B0110
_080B011E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0124: .4byte 0x00000020
_080B0128: .4byte gUnk_08A11C3C

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x080B012C
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x080B0138
	push {r4, r5, lr}
	ldr r0, _080B015C @ =0x00000020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080B0156
	ldr r5, _080B0160 @ =gUnk_08A11C3C
	adds r4, r0, #0
_080B0148:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080B0148
_080B0156:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B015C: .4byte 0x00000020
_080B0160: .4byte gUnk_08A11C3C

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x080B0164
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x080B0174
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B0190 @ =0x68736D53
	cmp r3, r0
	bne _080B018C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080B0194 @ =0x00000101
	strh r0, [r2, #0x28]
_080B018C:
	pop {r0}
	bx r0
	.align 2, 0
_080B0190: .4byte 0x68736D53
_080B0194: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x080B0198
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B01BC @ =0x68736D53
	cmp r3, r0
	bne _080B01B8
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080B01C0 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080B01B8:
	pop {r0}
	bx r0
	.align 2, 0
_080B01BC: .4byte 0x68736D53
_080B01C0: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x080B01C4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _080B0228 @ =0x68736D53
	cmp r1, r0
	bne _080B021E
	adds r0, r1, #1
	str r0, [r7, #0x34]
	ldrb r5, [r7, #8]
	ldr r4, [r7, #0x2c]
	cmp r5, #0
	ble _080B021A
	movs r2, #0x80
_080B01E0:
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0212
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0212
	adds r0, r4, #0
	str r2, [sp]
	bl Clear64byte
	ldr r2, [sp]
	strb r2, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080B0212:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B01E0
_080B021A:
	ldr r0, _080B0228 @ =0x68736D53
	str r0, [r7, #0x34]
_080B021E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0228: .4byte 0x68736D53

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x080B022C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080B02F4 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080B02F8 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080B02FC @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080B0300 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080B0304 @ =0x68736D53
	cmp r6, r0
	bne _080B02EC
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080B0308 @ =gUnk_03004D50
	ldr r0, _080B030C @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _080B0310 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _080B0314 @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _080B0318 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _080B031C @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _080B0320 @ =SampleFreqSet
	str r0, [r1, #0x78]
	ldr r0, _080B0324 @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080B0328 @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080B032C @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080B0330 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _080B0334 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _080B0338 @ =MidiKeyToCgbFreq
	str r0, [r4, #0x30]
	ldr r0, _080B033C @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080B0340 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080B02EC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B02F4: .4byte 0x04000084
_080B02F8: .4byte 0x04000080
_080B02FC: .4byte 0x04000063
_080B0300: .4byte 0x03007FF0
_080B0304: .4byte 0x68736D53
_080B0308: .4byte gUnk_03004D50
_080B030C: .4byte ply_memacc
_080B0310: .4byte ply_lfos
_080B0314: .4byte ply_mod
_080B0318: .4byte ply_xcmd
_080B031C: .4byte ply_endtie
_080B0320: .4byte SampleFreqSet
_080B0324: .4byte TrackStop
_080B0328: .4byte FadeOutBody
_080B032C: .4byte TrkVolPitSet
_080B0330: .4byte CgbSound
_080B0334: .4byte CgbOscOff
_080B0338: .4byte MidiKeyToCgbFreq
_080B033C: .4byte 0x00000000
_080B0340: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x080B0344
	svc #0x2a
	bx lr

	thumb_func_start ClearChain
ClearChain: @ 0x080B0348
	push {lr}
	ldr r1, _080B0358 @ =gUnk_03004DD8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080B0358: .4byte gUnk_03004DD8

	thumb_func_start Clear64byte
Clear64byte: @ 0x080B035C
	push {lr}
	ldr r1, _080B036C @ =gUnk_03004DDC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080B036C: .4byte gUnk_03004DDC

	thumb_func_start SoundInit
SoundInit: @ 0x080B0370
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r2, _080B0408 @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B038C
	ldr r0, _080B040C @ =0x84400004
	str r0, [r2]
_080B038C:
	ldr r1, _080B0410 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080B0414 @ =0x00000B0E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080B0418 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080B041C @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080B0420 @ =0x040000A0
	str r0, [r1]
	ldr r0, _080B0424 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080B0428 @ =0x05000260
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080B042C @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _080B0430 @ =nullsub_544
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080B0434 @ =gUnk_03004D50
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _080B0438 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0408: .4byte 0x040000C4
_080B040C: .4byte 0x84400004
_080B0410: .4byte 0x040000C6
_080B0414: .4byte 0x00000B0E
_080B0418: .4byte 0x04000089
_080B041C: .4byte 0x040000BC
_080B0420: .4byte 0x040000A0
_080B0424: .4byte 0x03007FF0
_080B0428: .4byte 0x05000260
_080B042C: .4byte ply_note
_080B0430: .4byte nullsub_544
_080B0434: .4byte gUnk_03004D50
_080B0438: .4byte 0x68736D53

	thumb_func_start SampleFreqSet
SampleFreqSet: @ 0x080B043C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl m4aSoundVSyncOff
	ldr r0, _080B0494 @ =0x03007FF0
	ldr r5, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r4
	lsrs r4, r0, #0x10
	strb r4, [r5, #8]
	ldr r1, _080B0498 @ =gUnk_089FC838
	subs r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	str r4, [r5, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r4, #0
	bl __divsi3
	strb r0, [r5, #0xb]
	ldr r0, _080B049C @ =0x00091D1B
	muls r0, r4, r0
	ldr r1, _080B04A0 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _080B04A4 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r5, #0x18]
	bl m4aSoundVSyncOn
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0494: .4byte 0x03007FF0
_080B0498: .4byte gUnk_089FC838
_080B049C: .4byte 0x00091D1B
_080B04A0: .4byte 0x00001388
_080B04A4: .4byte 0x00002710

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x080B04A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080B0530 @ =0x03007FF0
	ldr r4, [r0]
	ldr r1, [r4]
	ldr r0, _080B0534 @ =0x68736D53
	cmp r1, r0
	bne _080B052A
	adds r0, r1, #1
	str r0, [r4]
	movs r3, #0xff
	ands r3, r5
	cmp r3, #0
	beq _080B04CA
	movs r0, #0x7f
	ands r3, r0
	strb r3, [r4, #5]
_080B04CA:
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r3, r5
	cmp r3, #0
	beq _080B04EA
	lsrs r0, r3, #8
	strb r0, [r4, #6]
	movs r3, #0xc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
_080B04E0:
	strb r1, [r0]
	subs r3, #1
	adds r0, #0x40
	cmp r3, #0
	bne _080B04E0
_080B04EA:
	movs r3, #0xf0
	lsls r3, r3, #8
	ands r3, r5
	cmp r3, #0
	beq _080B04F8
	lsrs r0, r3, #0xc
	strb r0, [r4, #7]
_080B04F8:
	movs r3, #0xb0
	lsls r3, r3, #0x10
	ands r3, r5
	cmp r3, #0
	beq _080B0516
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r3
	lsrs r3, r0, #0xe
	ldr r2, _080B0538 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_080B0516:
	movs r3, #0xf0
	lsls r3, r3, #0xc
	ands r3, r5
	cmp r3, #0
	beq _080B0526
	adds r0, r3, #0
	bl SampleFreqSet
_080B0526:
	ldr r0, _080B0534 @ =0x68736D53
	str r0, [r4]
_080B052A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0530: .4byte 0x03007FF0
_080B0534: .4byte 0x68736D53
_080B0538: .4byte 0x04000089

	thumb_func_start SoundClear
SoundClear: @ 0x080B053C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B0588 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080B058C @ =0x68736D53
	cmp r1, r0
	bne _080B0582
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080B0556:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080B0556
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080B057E
	movs r5, #1
	movs r7, #0
_080B056A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080B056A
_080B057E:
	ldr r0, _080B058C @ =0x68736D53
	str r0, [r6]
_080B0582:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0588: .4byte 0x03007FF0
_080B058C: .4byte 0x68736D53

	thumb_func_start m4aSoundVSyncOff
m4aSoundVSyncOff: @ 0x080B0590
	push {lr}
	sub sp, #4
	ldr r0, _080B05E4 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080B05E8 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080B05DC
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _080B05EC @ =0x04000102
	movs r0, #0
	strh r0, [r1]
	ldr r3, _080B05F0 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B05C0
	ldr r0, _080B05F4 @ =0x84400004
	str r0, [r3]
_080B05C0:
	ldr r1, _080B05F8 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080B05FC @ =0x0500018C
	mov r0, sp
	bl CpuSet
_080B05DC:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B05E4: .4byte 0x03007FF0
_080B05E8: .4byte 0x978C92AD
_080B05EC: .4byte 0x04000102
_080B05F0: .4byte 0x040000C4
_080B05F4: .4byte 0x84400004
_080B05F8: .4byte 0x040000C6
_080B05FC: .4byte 0x0500018C

	thumb_func_start m4aSoundVSyncOn
m4aSoundVSyncOn: @ 0x080B0600
	push {r4, lr}
	ldr r0, _080B0658 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080B065C @ =0x68736D53
	cmp r3, r0
	beq _080B0650
	ldr r1, _080B0660 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
	ldr r3, _080B0664 @ =0x04000006
	ldrb r0, [r3]
	ldr r1, [r2, #0x10]
	cmp r0, #0x9f
	bne _080B0636
	adds r2, r3, #0
_080B0630:
	ldrb r0, [r2]
	cmp r0, #0x9f
	beq _080B0630
_080B0636:
	ldr r2, _080B0664 @ =0x04000006
_080B0638:
	ldrb r0, [r2]
	cmp r0, #0x9f
	bne _080B0638
	ldr r4, _080B0668 @ =0x04000100
	ldr r0, _080B066C @ =0x00044940
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	ldr r1, _080B0670 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
_080B0650:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B0658: .4byte 0x03007FF0
_080B065C: .4byte 0x68736D53
_080B0660: .4byte 0x040000C6
_080B0664: .4byte 0x04000006
_080B0668: .4byte 0x04000100
_080B066C: .4byte 0x00044940
_080B0670: .4byte 0x04000102

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x080B0674
	push {lr}
	ldr r0, _080B06C4 @ =0x03007FF0
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _080B06C8 @ =0x978C92AD
	adds r0, r0, r1
	cmp r0, #1
	bhi _080B06BE
	ldrb r0, [r2, #4]
	subs r0, #1
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B06BE
	ldrb r0, [r2, #0xb]
	ldrb r1, [r2, #4]
	strb r0, [r2, #4]
	ldr r2, _080B06CC @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B06AC
	ldr r0, _080B06D0 @ =0x84400004
	str r0, [r2]
_080B06AC:
	ldr r0, _080B06D4 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	movs r2, #0xb6
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
_080B06BE:
	pop {r0}
	bx r0
	.align 2, 0
_080B06C4: .4byte 0x03007FF0
_080B06C8: .4byte 0x978C92AD
_080B06CC: .4byte 0x040000C4
_080B06D0: .4byte 0x84400004
_080B06D4: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x080B06D8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080B073C
	cmp r4, #0x10
	bls _080B06EC
	movs r4, #0x10
_080B06EC:
	ldr r0, _080B0744 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080B0748 @ =0x68736D53
	cmp r1, r0
	bne _080B073C
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080B0720
	movs r1, #0
_080B0712:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080B0712
_080B0720:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080B0730
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080B0730:
	str r7, [r5, #0x24]
	ldr r0, _080B074C @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _080B0748 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080B073C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0744: .4byte 0x03007FF0
_080B0748: .4byte 0x68736D53
_080B074C: .4byte MPlayMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x080B0750
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080B0830 @ =0x68736D53
	cmp r1, r0
	bne _080B0824
	adds r0, r1, #1
	str r0, [r5, #0x34]
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080B0796
	ldr r0, [r5]
	cmp r0, #0
	beq _080B0780
	ldr r0, [r5, #0x2c]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B078C
_080B0780:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080B0796
	cmp r1, #0
	blt _080B0796
_080B078C:
	ldrb r0, [r7, #2]
	ldrb r1, [r5, #9]
	adds r2, r0, #0
	cmp r1, r2
	bhi _080B0820
_080B0796:
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r0, [r7]
	cmp r6, r0
	bge _080B07F0
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080B0810
	mov r8, r6
_080B07C4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r0, r8
	str r0, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080B07F0
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _080B07C4
_080B07F0:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080B0810
	movs r0, #0
	mov r8, r0
_080B07FA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r5, #8]
	cmp r6, r0
	blt _080B07FA
_080B0810:
	ldrb r1, [r7, #3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B0820
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_080B0820:
	ldr r0, _080B0830 @ =0x68736D53
	str r0, [r5, #0x34]
_080B0824:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B0830: .4byte 0x68736D53

	thumb_func_start MPlayStop
MPlayStop: @ 0x080B0834
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080B0870 @ =0x68736D53
	cmp r1, r0
	bne _080B086A
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080B0866
_080B0856:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080B0856
_080B0866:
	ldr r0, _080B0870 @ =0x68736D53
	str r0, [r6, #0x34]
_080B086A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B0870: .4byte 0x68736D53

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x080B0874
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080B0936
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080B08B4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080B0936
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B08B8
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080B090A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080B090A
	.align 2, 0
_080B08B4: .4byte 0x0000FFFF
_080B08B8:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B090A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080B08EA
_080B08CE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	ldrh r0, [r6, #0x28]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080B08E2
	strb r1, [r4]
_080B08E2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B08CE
_080B08EA:
	ldrh r1, [r6, #0x28]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B08FE
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080B0902
_080B08FE:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080B0902:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080B0936
_080B090A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080B0936
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080B0918:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B092E
	ldrh r0, [r6, #0x28]
	lsrs r0, r0, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080B092E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B0918
_080B0936:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x080B093C
	push {r4, lr}
	adds r2, r1, #0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B099E
	ldrb r0, [r2, #0x12]
	ldrb r1, [r2, #0x13]
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080B0962
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080B0962:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080B0978
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080B0978:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B0984
	adds r1, r0, #0
	b _080B098A
_080B0984:
	cmp r1, #0x7f
	ble _080B098A
	movs r1, #0x7f
_080B098A:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_080B099E:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080B09E2
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	ldrb r0, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r1, r0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080B09DC
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080B09DC:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080B09E2:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MidiKeyToCgbFreq
MidiKeyToCgbFreq: @ 0x080B09F0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080B0A28
	cmp r5, #0x14
	bhi _080B0A0C
	movs r5, #0
	b _080B0A1A
_080B0A0C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080B0A1A
	movs r5, #0x3b
_080B0A1A:
	ldr r0, _080B0A24 @ =gUnk_089FC8EC
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080B0A8A
	.align 2, 0
_080B0A24: .4byte gUnk_089FC8EC
_080B0A28:
	cmp r5, #0x23
	bhi _080B0A34
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080B0A46
_080B0A34:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080B0A46
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080B0A46:
	ldr r3, _080B0A90 @ =gUnk_089FC850
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080B0A94 @ =gUnk_089FC8D4
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080B0A8A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B0A90: .4byte gUnk_089FC850
_080B0A94: .4byte gUnk_089FC8D4

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x080B0A98
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080B0AC4
	cmp r0, #2
	bgt _080B0AAE
	cmp r0, #1
	beq _080B0AB4
	b _080B0AD8
_080B0AAE:
	cmp r1, #3
	beq _080B0ACC
	b _080B0AD8
_080B0AB4:
	ldr r1, _080B0AC0 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _080B0AE0
	.align 2, 0
_080B0AC0: .4byte 0x04000063
_080B0AC4:
	ldr r1, _080B0AC8 @ =0x04000069
	b _080B0ADA
	.align 2, 0
_080B0AC8: .4byte 0x04000069
_080B0ACC:
	ldr r1, _080B0AD4 @ =0x04000070
	movs r0, #0
	b _080B0AE2
	.align 2, 0
_080B0AD4: .4byte 0x04000070
_080B0AD8:
	ldr r1, _080B0AE8 @ =0x04000079
_080B0ADA:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_080B0AE0:
	movs r0, #0x80
_080B0AE2:
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080B0AE8: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x080B0AEC
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r3, r0, #0x18
	lsrs r4, r3, #0x18
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r4, r1
	blo _080B0B0C
	lsrs r0, r3, #0x19
	cmp r0, r1
	blo _080B0B18
	movs r0, #0xf
	strb r0, [r2, #0x1b]
	b _080B0B26
_080B0B0C:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080B0B18
	movs r0, #0xf0
	strb r0, [r2, #0x1b]
	b _080B0B26
_080B0B18:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	b _080B0B36
_080B0B26:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	lsrs r0, r0, #4
	strb r0, [r2, #0xa]
	cmp r0, #0xf
	bls _080B0B38
	movs r0, #0xf
_080B0B36:
	strb r0, [r2, #0xa]
_080B0B38:
	ldrb r1, [r2, #0xa]
	ldrb r0, [r2, #6]
	muls r0, r1, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r2, #0x19]
	ldrb r1, [r2, #0x1b]
	ldrb r0, [r2, #0x1c]
	ands r0, r1
	strb r0, [r2, #0x1b]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CgbSound
CgbSound: @ 0x080B0B54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080B0B74 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080B0B78
	subs r0, #1
	ldr r1, [sp, #8]
	strb r0, [r1, #0xa]
	b _080B0B7E
	.align 2, 0
_080B0B74: .4byte 0x03007FF0
_080B0B78:
	movs r0, #0xe
	ldr r3, [sp, #8]
	strb r0, [r3, #0xa]
_080B0B7E:
	movs r6, #1
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x1c]
	mov r1, sp
	str r1, [sp, #0x1c]
_080B0B88:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080B0B9E
	b _080B0FBA
_080B0B9E:
	cmp r6, #2
	beq _080B0BD4
	cmp r6, #2
	bgt _080B0BAC
	cmp r6, #1
	beq _080B0BB2
	b _080B0C1C
_080B0BAC:
	cmp r6, #3
	beq _080B0BF8
	b _080B0C1C
_080B0BB2:
	ldr r3, _080B0BC8 @ =0x04000060
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _080B0BCC @ =0x04000063
	str r0, [sp, #0x10]
	ldr r1, _080B0BD0 @ =0x04000064
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #0
	b _080B0C30
	.align 2, 0
_080B0BC8: .4byte 0x04000060
_080B0BCC: .4byte 0x04000063
_080B0BD0: .4byte 0x04000064
_080B0BD4:
	ldr r3, _080B0BEC @ =0x04000061
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _080B0BF0 @ =0x04000069
	str r0, [sp, #0x10]
	ldr r1, _080B0BF4 @ =0x0400006C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #1
	b _080B0C30
	.align 2, 0
_080B0BEC: .4byte 0x04000061
_080B0BF0: .4byte 0x04000069
_080B0BF4: .4byte 0x0400006C
_080B0BF8:
	ldr r3, _080B0C10 @ =0x04000070
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _080B0C14 @ =0x04000073
	str r0, [sp, #0x10]
	ldr r1, _080B0C18 @ =0x04000074
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #2
	b _080B0C30
	.align 2, 0
_080B0C10: .4byte 0x04000070
_080B0C14: .4byte 0x04000073
_080B0C18: .4byte 0x04000074
_080B0C1C:
	ldr r3, _080B0C84 @ =0x04000071
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _080B0C88 @ =0x04000079
	str r0, [sp, #0x10]
	ldr r1, _080B0C8C @ =0x0400007C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #3
_080B0C30:
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	mov r8, r0
	ldrb r2, [r4]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080B0D2A
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	beq _080B0C64
	b _080B0D60
_080B0C64:
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x20]
	bl CgbModVol
	ldr r3, [sp, #0x20]
	cmp r6, #2
	beq _080B0C9C
	cmp r6, #2
	bgt _080B0C90
	cmp r6, #1
	beq _080B0C96
	b _080B0CF0
	.align 2, 0
_080B0C84: .4byte 0x04000071
_080B0C88: .4byte 0x04000079
_080B0C8C: .4byte 0x0400007C
_080B0C90:
	cmp r6, #3
	beq _080B0CA8
	b _080B0CF0
_080B0C96:
	ldrb r0, [r4, #0x1f]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
_080B0C9C:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r0, r1
	strb r0, [r3]
	b _080B0CFC
_080B0CA8:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080B0CD0
	ldr r0, [sp, #0xc]
	strb r7, [r0]
	ldr r1, _080B0CE4 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080B0CD0:
	ldr r1, [sp, #0xc]
	strb r5, [r1]
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B0CE8
	movs r0, #0xc0
	b _080B0D0A
	.align 2, 0
_080B0CE4: .4byte 0x04000090
_080B0CE8:
	movs r3, #0x80
	rsbs r3, r3, #0
	strb r3, [r4, #0x1a]
	b _080B0D0C
_080B0CF0:
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080B0CFC:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B0D0A
	movs r0, #0x40
_080B0D0A:
	strb r0, [r4, #0x1a]
_080B0D0C:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080B0D26
	b _080B0E7A
_080B0D26:
	strb r2, [r4, #9]
	b _080B0EA8
_080B0D2A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080B0D44
	ldr r0, _080B0D70 @ =0x04000084
	ldrb r1, [r0]
	ldr r3, [sp, #0x1c]
	ldrb r0, [r3]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080B0D74
_080B0D44:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	ble _080B0D60
	b _080B0EBA
_080B0D60:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _080B0FB6
	.align 2, 0
_080B0D70: .4byte 0x04000084
_080B0D74:
	movs r0, #0x40
	ands r0, r2
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	beq _080B0DB4
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080B0DB4
	movs r0, #0xfc
	ands r0, r2
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B0DE6
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B0EA8
	ldrb r3, [r4, #7]
	mov r8, r3
	b _080B0EA8
_080B0DB4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080B0EA8
	cmp r6, #3
	bne _080B0DC6
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080B0DC6:
	adds r0, r4, #0
	bl CgbModVol
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080B0E18
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B0E14
_080B0DE6:
	ldrb r1, [r4, #0xa]
	ldrb r0, [r4, #0xc]
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0D60
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B0EBA
	movs r3, #8
	mov r8, r3
	b _080B0EBA
_080B0E14:
	ldrb r0, [r4, #7]
	b _080B0EA6
_080B0E18:
	cmp r1, #1
	bne _080B0E24
_080B0E1C:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080B0EA6
_080B0E24:
	cmp r1, #2
	bne _080B0E6A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	cmp r0, r1
	bgt _080B0E66
_080B0E3E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080B0E4E
	ldrb r1, [r4]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r4]
	b _080B0DE6
_080B0E4E:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B0E1C
	movs r3, #8
	mov r8, r3
	b _080B0E1C
_080B0E66:
	ldrb r0, [r4, #5]
	b _080B0EA6
_080B0E6A:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r3, [r4, #0xa]
	cmp r0, r3
	blo _080B0EA4
_080B0E7A:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B0E3E
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080B0EA8
	ldrb r0, [r4, #5]
	mov r8, r0
	b _080B0EA8
_080B0EA4:
	ldrb r0, [r4, #4]
_080B0EA6:
	strb r0, [r4, #0xb]
_080B0EA8:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _080B0EBA
	subs r1, #1
	str r1, [sp, #4]
	b _080B0DB4
_080B0EBA:
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0F34
	cmp r6, #3
	bgt _080B0EFA
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B0EFA
	ldr r0, _080B0EE4 @ =0x04000089
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0x3f
	bgt _080B0EEC
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080B0EE8 @ =0x000007FC
	b _080B0EF6
	.align 2, 0
_080B0EE4: .4byte 0x04000089
_080B0EE8: .4byte 0x000007FC
_080B0EEC:
	cmp r1, #0x7f
	bgt _080B0EFA
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080B0F04 @ =0x000007FE
_080B0EF6:
	ands r0, r1
	str r0, [r4, #0x20]
_080B0EFA:
	cmp r6, #4
	beq _080B0F08
	ldr r0, [r4, #0x20]
	b _080B0F14
	.align 2, 0
_080B0F04: .4byte 0x000007FE
_080B0F08:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
_080B0F14:
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldrb r0, [r4, #0x1a]
	movs r1, #0xc0
	ands r1, r0
	ldr r0, [r4, #0x20]
	movs r2, #0xfc
	lsls r2, r2, #6
	ands r0, r2
	lsrs r0, r0, #8
	adds r1, r1, r0
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	ands r1, r0
	ldr r3, [sp, #0x18]
	strb r1, [r3]
_080B0F34:
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0FB6
	ldr r2, _080B0F7C @ =0x04000081
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r2]
	bics r0, r1
	ldrb r1, [r4, #0x1b]
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #3
	bne _080B0F84
	ldr r1, _080B0F80 @ =gUnk_089FC928
	ldrb r0, [r4, #9]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0FB6
	ldr r3, [sp, #0xc]
	strb r2, [r3]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _080B0FB6
	.align 2, 0
_080B0F7C: .4byte 0x04000081
_080B0F80: .4byte gUnk_089FC928
_080B0F84:
	movs r0, #0xf
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r4, #9]
	lsls r0, r0, #4
	add r0, r8
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r0, [r4, #0x1a]
	movs r2, #0x80
	orrs r0, r2
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	cmp r6, #1
	bne _080B0FB6
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080B0FB6
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	strb r0, [r3]
_080B0FB6:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080B0FBA:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080B0FC4
	b _080B0B88
_080B0FC4:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start m4aMPlayTempoControl
m4aMPlayTempoControl: @ 0x080B0FD4
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B0FF4 @ =0x68736D53
	cmp r3, r0
	bne _080B0FF0
	strh r1, [r2, #0x1e]
	ldrh r1, [r2, #0x1c]
	ldrh r0, [r2, #0x1e]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080B0FF0:
	pop {r0}
	bx r0
	.align 2, 0
_080B0FF4: .4byte 0x68736D53

	thumb_func_start m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x080B0FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080B105C @ =0x68736D53
	cmp r3, r0
	bne _080B1050
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B104C
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080B1028:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080B1042
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080B1042
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080B1042:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B1028
_080B104C:
	ldr r0, _080B105C @ =0x68736D53
	str r0, [r4, #0x34]
_080B1050:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B105C: .4byte 0x68736D53

	thumb_func_start m4aMPlayPitchControl
m4aMPlayPitchControl: @ 0x080B1060
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080B10D0 @ =0x68736D53
	cmp r3, r0
	bne _080B10C2
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B10BE
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080B1098:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080B10B4
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080B10B4
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_080B10B4:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B1098
_080B10BE:
	ldr r0, _080B10D0 @ =0x68736D53
	str r0, [r4, #0x34]
_080B10C2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B10D0: .4byte 0x68736D53

	thumb_func_start m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x080B10D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080B1138 @ =0x68736D53
	cmp r3, r0
	bne _080B112C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B1128
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080B1104:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080B111E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080B111E
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080B111E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B1104
_080B1128:
	ldr r0, _080B1138 @ =0x68736D53
	str r0, [r4, #0x34]
_080B112C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1138: .4byte 0x68736D53

	thumb_func_start ClearModM
ClearModM: @ 0x080B113C
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strb r0, [r2, #0x1a]
	strb r0, [r2, #0x16]
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080B1154
	ldrb r0, [r2]
	movs r1, #0xc
	b _080B1158
_080B1154:
	ldrb r0, [r2]
	movs r1, #3
_080B1158:
	orrs r0, r1
	strb r0, [r2]
	pop {r0}
	bx r0

	thumb_func_start m4aMPlayModDepthSet
m4aMPlayModDepthSet: @ 0x080B1160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080B11D0 @ =0x68736D53
	cmp r1, r0
	bne _080B11C0
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080B11BC
	mov sb, r8
_080B1190:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080B11B2
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B11B2
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r0, sb
	cmp r0, #0
	bne _080B11B2
	adds r0, r4, #0
	bl ClearModM
_080B11B2:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080B1190
_080B11BC:
	ldr r0, _080B11D0 @ =0x68736D53
	str r0, [r6, #0x34]
_080B11C0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B11D0: .4byte 0x68736D53

	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x080B11D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080B1244 @ =0x68736D53
	cmp r1, r0
	bne _080B1234
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080B1230
	mov sb, r8
_080B1204:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080B1226
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B1226
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r0, sb
	cmp r0, #0
	bne _080B1226
	adds r0, r4, #0
	bl ClearModM
_080B1226:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080B1204
_080B1230:
	ldr r0, _080B1244 @ =0x68736D53
	str r0, [r6, #0x34]
_080B1234:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1244: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x080B1248
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #0x40]
	ldrb r5, [r0]
	adds r1, r0, #1
	str r1, [r6, #0x40]
	ldrb r2, [r0, #1]
	ldr r0, [r4, #0x18]
	adds r2, r0, r2
	adds r0, r1, #1
	str r0, [r6, #0x40]
	ldrb r3, [r1, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080B126C
	b _080B139A
_080B126C:
	lsls r0, r5, #2
	ldr r1, _080B1278 @ =_080B127C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B1278: .4byte _080B127C
_080B127C: @ jump table
	.4byte _080B12C4 @ case 0
	.4byte _080B12C8 @ case 1
	.4byte _080B12D0 @ case 2
	.4byte _080B12D8 @ case 3
	.4byte _080B12E2 @ case 4
	.4byte _080B12F0 @ case 5
	.4byte _080B12FE @ case 6
	.4byte _080B1306 @ case 7
	.4byte _080B130E @ case 8
	.4byte _080B1316 @ case 9
	.4byte _080B131E @ case 10
	.4byte _080B1326 @ case 11
	.4byte _080B132E @ case 12
	.4byte _080B133C @ case 13
	.4byte _080B134A @ case 14
	.4byte _080B1358 @ case 15
	.4byte _080B1366 @ case 16
	.4byte _080B1374 @ case 17
_080B12C4:
	strb r3, [r2]
	b _080B139A
_080B12C8:
	ldrb r0, [r2]
	adds r0, r3, r0
	strb r0, [r2]
	b _080B139A
_080B12D0:
	ldrb r0, [r2]
	subs r0, r0, r3
	strb r0, [r2]
	b _080B139A
_080B12D8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	b _080B139A
_080B12E2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	b _080B139A
_080B12F0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	b _080B139A
_080B12FE:
	ldrb r0, [r2]
	cmp r0, r3
	beq _080B1380
	b _080B1394
_080B1306:
	ldrb r0, [r2]
	cmp r0, r3
	bne _080B1380
	b _080B1394
_080B130E:
	ldrb r0, [r2]
	cmp r0, r3
	bhi _080B1380
	b _080B1394
_080B1316:
	ldrb r0, [r2]
	cmp r0, r3
	bhs _080B1380
	b _080B1394
_080B131E:
	ldrb r0, [r2]
	cmp r0, r3
	bls _080B1380
	b _080B1394
_080B1326:
	ldrb r0, [r2]
	cmp r0, r3
	blo _080B1380
	b _080B1394
_080B132E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080B1380
	b _080B1394
_080B133C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080B1380
	b _080B1394
_080B134A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _080B1380
	b _080B1394
_080B1358:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080B1380
	b _080B1394
_080B1366:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bls _080B1380
	b _080B1394
_080B1374:
	ldr r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _080B1394
_080B1380:
	ldr r0, _080B1390 @ =gUnk_03004D54
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _080B139A
	.align 2, 0
_080B1390: .4byte gUnk_03004D54
_080B1394:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080B139A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x080B13A0
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080B13BC @ =gUnk_089FC96C
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080B13BC: .4byte gUnk_089FC96C

	thumb_func_start ply_xxx
ply_xxx: @ 0x080B13C0
	push {lr}
	ldr r2, _080B13D0 @ =gUnk_03004D50
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080B13D0: .4byte gUnk_03004D50

	thumb_func_start ply_xwave
ply_xwave: @ 0x080B13D4
	push {r4, lr}
	ldr r3, [r1, #0x40]
	ldrb r2, [r3]
	ldr r0, _080B140C @ =0xFFFFFF00
	ands r4, r0
	orrs r4, r2
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	ldr r2, _080B1410 @ =0xFFFF00FF
	ands r4, r2
	orrs r4, r0
	ldrb r0, [r3, #2]
	lsls r0, r0, #0x10
	ldr r2, _080B1414 @ =0xFF00FFFF
	ands r4, r2
	orrs r4, r0
	ldrb r0, [r3, #3]
	lsls r0, r0, #0x18
	ldr r2, _080B1418 @ =0x00FFFFFF
	ands r4, r2
	orrs r4, r0
	str r4, [r1, #0x28]
	adds r3, #4
	str r3, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B140C: .4byte 0xFFFFFF00
_080B1410: .4byte 0xFFFF00FF
_080B1414: .4byte 0xFF00FFFF
_080B1418: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x080B141C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x080B1430
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x080B1444
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x080B1458
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x080B146C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x080B1480
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x080B148C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x080B1498
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x080B14AC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_544
nullsub_544: @ 0x080B14C0
	bx lr
	.align 2, 0
	
