	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108668:: @ 08108668
	.4byte sub_0805B048
	.4byte sub_0805B168

gUnk_08108670:: @ 08108670
	.incbin "baserom.gba", 0x108670, 0x000000C

gUnk_0810867C:: @ 0810867C
	.incbin "baserom.gba", 0x10867C, 0x000000C

gUnk_08108688:: @ 08108688
	.incbin "baserom.gba", 0x108688, 0x000000C

gUnk_08108694:: @ 08108694
	.incbin "baserom.gba", 0x108694, 0x000000C

gUnk_081086A0:: @ 081086A0
	.incbin "baserom.gba", 0x1086A0, 0x0000009

gUnk_081086A9:: @ 081086A9
	.incbin "baserom.gba", 0x1086A9, 0x0000003

gUnk_081086AC:: @ 081086AC
	.incbin "baserom.gba", 0x1086AC, 0x000000C

gUnk_081086B8:: @ 081086B8
	.incbin "baserom.gba", 0x1086B8, 0x000000C

gUnk_081086C4:: @ 081086C4
	.incbin "baserom.gba", 0x1086C4, 0x000000C

gUnk_081086D0:: @ 081086D0
	.incbin "baserom.gba", 0x1086D0, 0x0000001

gUnk_081086D1:: @ 081086D1
	.incbin "baserom.gba", 0x1086D1, 0x000000B

gUnk_081086DC:: @ 081086DC
	.incbin "baserom.gba", 0x1086DC, 0x0000008

gUnk_081086E4:: @ 081086E4
	.incbin "baserom.gba", 0x1086E4, 0x0000008

gUnk_081086EC:: @ 081086EC
	.incbin "baserom.gba", 0x1086EC, 0x0000008

gUnk_081086F4:: @ 081086F4
	.incbin "baserom.gba", 0x1086F4, 0x0000008

gUnk_081086FC:: @ 081086FC
	.incbin "baserom.gba", 0x1086FC, 0x0000008

gUnk_08108704:: @ 08108704
	.incbin "baserom.gba", 0x108704, 0x0000003

gUnk_08108707:: @ 08108707
	.incbin "baserom.gba", 0x108707, 0x0000005

gUnk_0810870C:: @ 0810870C
	.incbin "baserom.gba", 0x10870C, 0x0000008

gUnk_08108714:: @ 08108714
	.incbin "baserom.gba", 0x108714, 0x0000008

gUnk_0810871C:: @ 0810871C
	.incbin "baserom.gba", 0x10871C, 0x0000008

gUnk_08108724:: @ 08108724
	.incbin "baserom.gba", 0x108724, 0x0000008

gUnk_0810872C:: @ 0810872C
	.incbin "baserom.gba", 0x10872C, 0x0000008

gUnk_08108734:: @ 08108734
	.incbin "baserom.gba", 0x108734, 0x0000008

gUnk_0810873C:: @ 0810873C
	.incbin "baserom.gba", 0x10873C, 0x0000008

gUnk_08108744:: @ 08108744
	.incbin "baserom.gba", 0x108744, 0x0000006

gUnk_0810874A:: @ 0810874A
	.incbin "baserom.gba", 0x10874A, 0x0000002

gUnk_0810874C:: @ 0810874C
	.incbin "baserom.gba", 0x10874C, 0x0000008

gUnk_08108754:: @ 08108754
	.incbin "baserom.gba", 0x108754, 0x0000008

gUnk_0810875C:: @ 0810875C
	.incbin "baserom.gba", 0x10875C, 0x0000002

gUnk_0810875E:: @ 0810875E
	.incbin "baserom.gba", 0x10875E, 0x0000006

gUnk_08108764:: @ 08108764
	.incbin "baserom.gba", 0x108764, 0x0000020
	.4byte gUnk_08108670
	.incbin "baserom.gba", 0x108788, 0x0000010
	.4byte gUnk_08108688
	.incbin "baserom.gba", 0x10879C, 0x0000014
	.4byte gUnk_0810875C
	.incbin "baserom.gba", 0x1087B4, 0x000000C
	.4byte gUnk_08108694
	.incbin "baserom.gba", 0x1087C4, 0x0000010
	.4byte gUnk_081086A0
	.incbin "baserom.gba", 0x1087D8, 0x0000010
	.4byte gUnk_081086AC
	.incbin "baserom.gba", 0x1087EC, 0x0000027

gUnk_08108813:: @ 08108813
	.incbin "baserom.gba", 0x108813, 0x0000001
	.4byte gUnk_081086DC
	.incbin "baserom.gba", 0x108818, 0x0000010
	.4byte gUnk_081086E4
	.incbin "baserom.gba", 0x10882C, 0x0000010
	.4byte gUnk_081086EC
	.incbin "baserom.gba", 0x108840, 0x0000004

gUnk_08108844:: @ 08108844
	.incbin "baserom.gba", 0x108844, 0x000000C
	.4byte gUnk_081086F4
	.incbin "baserom.gba", 0x108854, 0x0000010

gUnk_08108864:: @ 08108864
	.incbin "baserom.gba", 0x108864, 0x0000010
	.4byte gUnk_0810867C
	.incbin "baserom.gba", 0x108878, 0x00001B8
	.4byte gUnk_081086FC
	.incbin "baserom.gba", 0x108A34, 0x0000010
	.4byte gUnk_08108704
	.incbin "baserom.gba", 0x108A48, 0x0000024
	.4byte gUnk_0810870C
	.incbin "baserom.gba", 0x108A70, 0x0000010
	.4byte gUnk_08108714
	.incbin "baserom.gba", 0x108A84, 0x0000010
	.4byte gUnk_0810871C
	.incbin "baserom.gba", 0x108A98, 0x0000003

gUnk_08108A9B:: @ 08108A9B
	.incbin "baserom.gba", 0x108A9B, 0x0000021
	.4byte gUnk_08108724
	.incbin "baserom.gba", 0x108AC0, 0x0000010
	.4byte gUnk_0810872C
	.incbin "baserom.gba", 0x108AD4, 0x0000024
	.4byte gUnk_08108734
	.incbin "baserom.gba", 0x108AFC, 0x0000024
	.4byte gUnk_0810873C
	.incbin "baserom.gba", 0x108B24, 0x0000010
	.4byte gUnk_08108744
	.incbin "baserom.gba", 0x108B38, 0x0000010
	.4byte gUnk_0810874C
	.incbin "baserom.gba", 0x108B4C, 0x0000010
	.4byte gUnk_08108754
	.incbin "baserom.gba", 0x108B60, 0x0000020
	.4byte gUnk_081086B8
	.incbin "baserom.gba", 0x108B84, 0x0000010
	.4byte gUnk_081086C4
	.incbin "baserom.gba", 0x108B98, 0x0000010
	.4byte gUnk_081086D0
	.incbin "baserom.gba", 0x108BAC, 0x0000066

gUnk_08108C12:: @ 08108C12
	.incbin "baserom.gba", 0x108C12, 0x0000016
