	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08127280:: @ 08127280
	.incbin "baserom.gba", 0x127280, 0x0000018

gUnk_08127298:: @ 08127298
	.incbin "baserom.gba", 0x127298, 0x0000018

gUnk_081272B0:: @ 081272B0
	.incbin "baserom.gba", 0x1272B0, 0x0000018

gUnk_081272C8:: @ 081272C8
	.incbin "baserom.gba", 0x1272C8, 0x0000018

gUnk_081272E0:: @ 081272E0
	.4byte gUnk_08127280
	.4byte gUnk_08127298
	.4byte gUnk_081272B0
	.4byte gUnk_081272C8

gUnk_081272F0:: @ 081272F0
	.incbin "baserom.gba", 0x1272F0, 0x0000354

gUnk_08127644:: @ 08127644
	.incbin "baserom.gba", 0x127644, 0x0000354

gUnk_08127998:: @ 08127998
	.incbin "baserom.gba", 0x127998, 0x0000354

gUnk_08127CEC:: @ 08127CEC
	.incbin "baserom.gba", 0x127CEC, 0x0000014

gUnk_08127D00:: @ 08127D00
	.4byte sub_080A3608
	.4byte sub_080A36C0
	.4byte sub_080A3994
	.4byte sub_080A3980

gUnk_08127D10:: @ 08127D10
	.4byte sub_080A36DC
	.4byte sub_080A36F8
	.4byte sub_080A3768
	.4byte sub_080A3864
	.4byte sub_080A3888
	.4byte sub_080A38B4
	.4byte sub_080A38D0
	.4byte sub_080A3930

gUnk_08127D30:: @ 08127D30
	.incbin "baserom.gba", 0x127D30, 0x0000264

gUnk_08127F94:: @ 08127F94
	.incbin "baserom.gba", 0x127F94, 0x0000090

gUnk_08128024:: @ 08128024
	.incbin "baserom.gba", 0x128024, 0x00000A0

gUnk_081280C4:: @ 081280C4
	.4byte sub_080A3BD0
	.4byte sub_080A3C6C
	.4byte sub_080A3DB8
	.4byte sub_080A3E00
	.4byte sub_080A3F10
	.4byte sub_080A3F4C

gUnk_081280DC:: @ 081280DC
	.incbin "baserom.gba", 0x1280DC, 0x0000012

gUnk_081280EE:: @ 081280EE
	.incbin "baserom.gba", 0x1280EE, 0x0000006

gUnk_081280F4:: @ 081280F4
	.4byte sub_080A3E20
	.4byte sub_080A3E48
	.4byte sub_080A3EDC

gUnk_08128100:: @ 08128100
	.4byte sub_080A3F68
	.4byte sub_080A3FCC
	.4byte sub_080A3FF4
	.4byte sub_080A4038

gUnk_08128110:: @ 08128110
	.incbin "baserom.gba", 0x128110, 0x0000010

gUnk_08128120:: @ 08128120
	.incbin "baserom.gba", 0x128120, 0x000001C

gUnk_0812813C:: @ 0812813C
	.incbin "baserom.gba", 0x12813C, 0x0000010

gUnk_0812814C:: @ 0812814C
	.4byte sub_080A46DC
	.4byte sub_080A46EC
	.4byte sub_080A4720
	.4byte sub_080A47D0

gUnk_0812815C:: @ 0812815C
	.4byte sub_080A4830
	.4byte sub_080A4864
	.4byte sub_080A4934
	.4byte sub_080A4940

gUnk_0812816C:: @ 0812816C
	.incbin "baserom.gba", 0x12816C, 0x0000018

gUnk_08128184:: @ 08128184
	.incbin "baserom.gba", 0x128184, 0x000000C

gUnk_08128190:: @ 08128190
	.incbin "baserom.gba", 0x128190, 0x0000018

gUnk_081281A8:: @ 081281A8 TODO figurineData?
	.4byte gUnk_085B5EC0
	.4byte gUnk_0883FB00
	.4byte 0x00000580
	.4byte 00000000
	.4byte gUnk_085B5EC0
	.4byte gUnk_0883FB00
	.4byte 0x00000580
	.4byte 00000000
	.4byte gUnk_085B5FA0
	.4byte gUnk_08840080
	.4byte 0x000005e0
	.4byte 00000000
	.4byte gUnk_085B6080
	.4byte gUnk_08840660
	.4byte 0x00000480
	.4byte 00000000
	.4byte gUnk_085B6160
	.4byte gUnk_08840AE0
	.4byte 0x000004c0
	.4byte 00000000
	.4byte gUnk_085B6240
	.4byte gUnk_08840FA0
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085B6320
	.4byte gUnk_088414A0
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085B6400
	.4byte gUnk_08841820
	.4byte 0x000002c0
	.4byte 00000000
	.4byte gUnk_085B64E0
	.4byte gUnk_08841AE0
	.4byte 0x000004e0
	.4byte 00000000
	.4byte gUnk_085B65C0
	.4byte gUnk_08841FC0
	.4byte 0x00000320
	.4byte 00000000
	.4byte gUnk_085B66A0
	.4byte gUnk_088422E0
	.4byte 0x00000da0
	.4byte 00000000
	.4byte gUnk_085B6780
	.4byte gUnk_08843080
	.4byte 0x00000e60
	.4byte 00000000
	.4byte gUnk_085B6860
	.4byte gUnk_08843EE0
	.4byte 0x00000ee0
	.4byte 00000000
	.4byte gUnk_085B6940
	.4byte gUnk_08844DC0
	.4byte 0x00000de0
	.4byte 00000000
	.4byte gUnk_085B6A20
	.4byte gUnk_08845BA0
	.4byte 0x00001a00
	.4byte 00000000
	.4byte gUnk_085B6B00
	.4byte gUnk_088475A0
	.4byte 0x000019c0
	.4byte 00000000
	.4byte gUnk_085B6BE0
	.4byte gUnk_08848F60
	.4byte 0x000010c0
	.4byte 00000000
	.4byte gUnk_085B6CC0
	.4byte gUnk_0884A020
	.4byte 0x000003e0
	.4byte 00000000
	.4byte gUnk_085B6DA0
	.4byte gUnk_0884A400
	.4byte 0x000003a0
	.4byte 00000000
	.4byte gUnk_085B6E80
	.4byte gUnk_0884A7A0
	.4byte 0x00000360
	.4byte 00000000
	.4byte gUnk_085B6F60
	.4byte gUnk_0884AB00
	.4byte 0x00000b80
	.4byte 00000000
	.4byte gUnk_085B7040
	.4byte gUnk_0884B680
	.4byte 0x00000b00
	.4byte 00000000
	.4byte gUnk_085B7120
	.4byte gUnk_0884C180
	.4byte 0x00000ae0
	.4byte 00000000
	.4byte gUnk_085B7200
	.4byte gUnk_0884CC60
	.4byte 0x00000480
	.4byte 00000000
	.4byte gUnk_085B72E0
	.4byte gUnk_0884D0E0
	.4byte 0x00000320
	.4byte 00000000
	.4byte gUnk_085B73C0
	.4byte gUnk_0884D400
	.4byte 0x00000360
	.4byte 00000000
	.4byte gUnk_085B74A0
	.4byte gUnk_0884D760
	.4byte 0x000003a0
	.4byte 00000000
	.4byte gUnk_085B7580
	.4byte gUnk_0884DB00
	.4byte 0x00000400
	.4byte 00000000
	.4byte gUnk_085B7660
	.4byte gUnk_0884DF00
	.4byte 0x000007e0
	.4byte 00000000
	.4byte gUnk_085B7740
	.4byte gUnk_0884E6E0
	.4byte 0x00002a00
	.4byte 00000000
	.4byte gUnk_085B7820
	.4byte gUnk_088510E0
	.4byte 0x00002a00
	.4byte 00000000
	.4byte gUnk_085B7900
	.4byte gUnk_08853AE0
	.4byte 0x00002a00
	.4byte 00000000
	.4byte gUnk_085B79E0
	.4byte gUnk_088564E0
	.4byte 0x000003c0
	.4byte 00000000
	.4byte gUnk_085B7AC0
	.4byte gUnk_088568A0
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085B7BA0
	.4byte gUnk_08856C20
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085B7C80
	.4byte gUnk_08856FA0
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085B7D60
	.4byte gUnk_08857320
	.4byte 0x00000560
	.4byte 00000000
	.4byte gUnk_085B7E40
	.4byte gUnk_08857880
	.4byte 0x00000480
	.4byte 00000000
	.4byte gUnk_085B7F20
	.4byte gUnk_08857D00
	.4byte 0x00000480
	.4byte 00000000
	.4byte gUnk_085B8000
	.4byte gUnk_08858180
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085B80E0
	.4byte gUnk_08858680
	.4byte 0x000014c0
	.4byte 00000000
	.4byte gUnk_085B81C0
	.4byte gUnk_08859B40
	.4byte 0x00000660
	.4byte 00000000
	.4byte gUnk_085B82A0
	.4byte gUnk_0885A1A0
	.4byte 0x00001080
	.4byte 00000000
	.4byte gUnk_085B8380
	.4byte gUnk_0885B220
	.4byte 0x00000800
	.4byte 00000000
	.4byte gUnk_085B8460
	.4byte gUnk_0885BA20
	.4byte 0x00000800
	.4byte 00000000
	.4byte gUnk_085B8540
	.4byte gUnk_0885C220
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085B8620
	.4byte gUnk_0885C720
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085B8700
	.4byte gUnk_0885CC20
	.4byte 0x00003080
	.4byte 00000000
	.4byte gUnk_085B87E0
	.4byte gUnk_0885FCA0
	.4byte 0x000029e0
	.4byte 00000000
	.4byte gUnk_085B88C0
	.4byte gUnk_08862680
	.4byte 0x00003a00
	.4byte 00000000
	.4byte gUnk_085B89E0
	.4byte gUnk_08866080
	.4byte 0x000029c0
	.4byte 00000000
	.4byte gUnk_085B8AC0
	.4byte gUnk_08868A40
	.4byte 0x000034e0
	.4byte 00000000
	.4byte gUnk_085B8BA0
	.4byte gUnk_0886BF20
	.4byte 0x00003900
	.4byte 00000000
	.4byte gUnk_085B8C80
	.4byte gUnk_0886F820
	.4byte 0x000030e0
	.4byte 00000000
	.4byte gUnk_085B8D60
	.4byte gUnk_08872900
	.4byte 0x00002c80
	.4byte 00000000
	.4byte gUnk_085B8E40
	.4byte gUnk_08875580
	.4byte 0x00003500
	.4byte 00000000
	.4byte gUnk_085B8F20
	.4byte gUnk_08878A80
	.4byte 0x00002780
	.4byte 00000000
	.4byte gUnk_085B9000
	.4byte gUnk_0887B200
	.4byte 0x00002ea0
	.4byte 00000000
	.4byte gUnk_085B90E0
	.4byte gUnk_0887E0A0
	.4byte 0x00003320
	.4byte 00000000
	.4byte gUnk_085B91C0
	.4byte gUnk_088813C0
	.4byte 0x00002ae0
	.4byte 00000000
	.4byte gUnk_085B92A0
	.4byte gUnk_08883EA0
	.4byte 0x00001f00
	.4byte 00000000
	.4byte gUnk_085B9380
	.4byte gUnk_08885DA0
	.4byte 0x00004000
	.4byte 00000000
	.4byte gUnk_085B9460
	.4byte gUnk_08889DA0
	.4byte 0x00003f80
	.4byte 00000000
	.4byte gUnk_085B9540
	.4byte gUnk_0888DD20
	.4byte 0x00001c40
	.4byte 00000000
	.4byte gUnk_085B9620
	.4byte gUnk_0888F960
	.4byte 0x00001660
	.4byte 00000000
	.4byte gUnk_085B9700
	.4byte gUnk_08890FC0
	.4byte 0x00001c80
	.4byte 00000000
	.4byte gUnk_085B97E0
	.4byte gUnk_08892C40
	.4byte 0x00002300
	.4byte 00000000
	.4byte gUnk_085B98C0
	.4byte gUnk_08894F40
	.4byte 0x00002480
	.4byte 00000000
	.4byte gUnk_085B99A0
	.4byte gUnk_088973C0
	.4byte 0x00000440
	.4byte 00000000
	.4byte gUnk_085B9A80
	.4byte gUnk_08897800
	.4byte 0x000008c0
	.4byte 00000000
	.4byte gUnk_085B9B60
	.4byte gUnk_088980C0
	.4byte 0x00000e00
	.4byte 00000000
	.4byte gUnk_085B9C40
	.4byte gUnk_08898EC0
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085B9D20
	.4byte gUnk_08899240
	.4byte 0x00000920
	.4byte 00000000
	.4byte gUnk_085B9E00
	.4byte gUnk_08899B60
	.4byte 0x000002e0
	.4byte 00000000
	.4byte gUnk_085B9EE0
	.4byte gUnk_08899E40
	.4byte 0x000007a0
	.4byte 00000000
	.4byte gUnk_085B9FC0
	.4byte gUnk_0889A5E0
	.4byte 0x00000300
	.4byte 00000000
	.4byte gUnk_085BA0A0
	.4byte gUnk_0889A8E0
	.4byte 0x00000f00
	.4byte 00000000
	.4byte gUnk_085BA180
	.4byte gUnk_0889B7E0
	.4byte 0x00000360
	.4byte 00000000
	.4byte gUnk_085BA260
	.4byte gUnk_0889BB40
	.4byte 0x00000780
	.4byte 00000000
	.4byte gUnk_085BA340
	.4byte gUnk_0889C2C0
	.4byte 0x00000400
	.4byte 00000000
	.4byte gUnk_085BA420
	.4byte gUnk_0889C6C0
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085BA500
	.4byte gUnk_0889CA40
	.4byte 0x00000a00
	.4byte 00000000
	.4byte gUnk_085BA5E0
	.4byte gUnk_0889D440
	.4byte 0x00000a00
	.4byte 00000000
	.4byte gUnk_085BA6C0
	.4byte gUnk_0889DE40
	.4byte 0x00000300
	.4byte 00000000
	.4byte gUnk_085BA7A0
	.4byte gUnk_0889E140
	.4byte 0x000004c0
	.4byte 00000000
	.4byte gUnk_085BA880
	.4byte gUnk_0889E600
	.4byte 0x000007c0
	.4byte 00000000
	.4byte gUnk_085BA960
	.4byte gUnk_0889EDC0
	.4byte 0x00000b20
	.4byte 00000000
	.4byte gUnk_085BAA40
	.4byte gUnk_0889F8E0
	.4byte 0x000007e0
	.4byte 00000000
	.4byte gUnk_085BAB20
	.4byte gUnk_088A00C0
	.4byte 0x00000360
	.4byte 00000000
	.4byte gUnk_085BAC00
	.4byte gUnk_088A0420
	.4byte 0x000008c0
	.4byte 00000000
	.4byte gUnk_085BACE0
	.4byte gUnk_088A0CE0
	.4byte 0x000007c0
	.4byte 00000000
	.4byte gUnk_085BADC0
	.4byte gUnk_088A14A0
	.4byte 0x00000dc0
	.4byte 00000000
	.4byte gUnk_085BAEA0
	.4byte gUnk_088A2260
	.4byte 0x00000300
	.4byte 00000000
	.4byte gUnk_085BAF80
	.4byte gUnk_088A2560
	.4byte 0x000002e0
	.4byte 00000000
	.4byte gUnk_085BB060
	.4byte gUnk_088A2840
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085BB140
	.4byte gUnk_088A2D40
	.4byte 0x000007c0
	.4byte 00000000
	.4byte gUnk_085BB220
	.4byte gUnk_088A3500
	.4byte 0x00000300
	.4byte 00000000
	.4byte gUnk_085BB300
	.4byte gUnk_088A3800
	.4byte 0x000007a0
	.4byte 00000000
	.4byte gUnk_085BB3E0
	.4byte gUnk_088A3FA0
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085BB4C0
	.4byte gUnk_088A44A0
	.4byte 0x000003c0
	.4byte 00000000
	.4byte gUnk_085BB5A0
	.4byte gUnk_088A4860
	.4byte 0x000009a0
	.4byte 00000000
	.4byte gUnk_085BB680
	.4byte gUnk_088A5200
	.4byte 0x00000dc0
	.4byte 00000000
	.4byte gUnk_085BB760
	.4byte gUnk_088A5FC0
	.4byte 0x000003a0
	.4byte 00000000
	.4byte gUnk_085BB840
	.4byte gUnk_088A6360
	.4byte 0x00000980
	.4byte 00000000
	.4byte gUnk_085BB920
	.4byte gUnk_088A6CE0
	.4byte 0x000007c0
	.4byte 00000000
	.4byte gUnk_085BBA00
	.4byte gUnk_088A74A0
	.4byte 0x00000820
	.4byte 00000000
	.4byte gUnk_085BBAE0
	.4byte gUnk_088A7CC0
	.4byte 0x00000340
	.4byte 00000000
	.4byte gUnk_085BBBC0
	.4byte gUnk_088A8000
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085BBCA0
	.4byte gUnk_088A8500
	.4byte 0x00000500
	.4byte 00000000
	.4byte gUnk_085BBD80
	.4byte gUnk_088A8A00
	.4byte 0x000007c0
	.4byte 00000000
	.4byte gUnk_085BBE60
	.4byte gUnk_088A91C0
	.4byte 0x00000660
	.4byte 00000000
	.4byte gUnk_085BBF40
	.4byte gUnk_088A9820
	.4byte 0x000003c0
	.4byte 00000000
	.4byte gUnk_085BC020
	.4byte gUnk_088A9BE0
	.4byte 0x00000460
	.4byte 00000000
	.4byte gUnk_085BC100
	.4byte gUnk_088AA040
	.4byte 0x00000380
	.4byte 00000000
	.4byte gUnk_085BC1E0
	.4byte gUnk_088AA3C0
	.4byte 0x00000820
	.4byte 00000000
	.4byte gUnk_085BC2C0
	.4byte gUnk_088AABE0
	.4byte 0x000006a0
	.4byte 00000000
	.4byte gUnk_085BC3A0
	.4byte gUnk_088AB280
	.4byte 0x00000980
	.4byte 00000000
	.4byte gUnk_085BC480
	.4byte gUnk_088ABC00
	.4byte 0x000005e0
	.4byte 00000000
	.4byte gUnk_085BC560
	.4byte gUnk_088AC1E0
	.4byte 0x000008a0
	.4byte 00000000
	.4byte gUnk_085BC640
	.4byte gUnk_088ACA80
	.4byte 0x000008c0
	.4byte 00000000
	.4byte gUnk_085BC720
	.4byte gUnk_088AD340
	.4byte 0x000005a0
	.4byte 00000000
	.4byte gUnk_085BC800
	.4byte gUnk_088AD8E0
	.4byte 0x00000620
	.4byte 00000000
	.4byte gUnk_085BC8E0
	.4byte gUnk_088ADF00
	.4byte 0x00000f00
	.4byte 00000000
	.4byte gUnk_085BC9C0
	.4byte gUnk_088AEE00
	.4byte 0x00000640
	.4byte 00000000
	.4byte gUnk_085BCAA0
	.4byte gUnk_088AF440
	.4byte 0x00002580
	.4byte 00000000
	.4byte gUnk_085BCB80
	.4byte gUnk_088B19C0
	.4byte 0x000017a0
	.4byte 00000000
	.4byte gUnk_085BCC60
	.4byte gUnk_088B3160
	.4byte 0x000019a0
	.4byte 00000000
	.4byte gUnk_085BCD40
	.4byte gUnk_088B4B00
	.4byte 0x00001300
	.4byte 00000000
	.4byte gUnk_085BCE20
	.4byte gUnk_088B5E00
	.4byte 0x00001ea0
	.4byte 00000000
	.4byte gUnk_085BCF00
	.4byte gUnk_088B7CA0
	.4byte 0x00001640
	.4byte 00000000
	.4byte gUnk_085BCFE0
	.4byte gUnk_088B92E0
	.4byte 0x000017c0
	.4byte 00000000
	.4byte gUnk_085BD0C0
	.4byte gUnk_088BAAA0
	.4byte 0x00000e00
	.4byte 00000000
	.4byte gUnk_085BD1A0
	.4byte gUnk_088BB8A0
	.4byte 0x00000580
	.4byte 00000000
	.4byte gUnk_085BD280
	.4byte gUnk_088BBE20
	.4byte 0x00000c40
	.4byte 00000000
	.4byte gUnk_085BD360
	.4byte gUnk_088BCA60
	.4byte 0x00001100
	.4byte 00000000
	.4byte gUnk_085BD440
	.4byte gUnk_088BDB60
	.4byte 0x00002580
	.4byte 00000000
	.4byte gUnk_085BD520
	.4byte gUnk_088C00E0
	.4byte 0x000018e0
	.4byte 00000000

gUnk_08128A38:: @ 08128A38
	.incbin "baserom.gba", 0x128A38, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128A40, 0x0000004
	.4byte sub_080A5218
	.incbin "baserom.gba", 0x128A48, 0x0000004
	.4byte sub_080A5574
	.incbin "baserom.gba", 0x128A50, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128A58, 0x0000004
	.4byte sub_080A6270
	.incbin "baserom.gba", 0x128A60, 0x0000004
	.4byte sub_080A5BF0
	.incbin "baserom.gba", 0x128A68, 0x0000004
	.4byte sub_080A6608
	.incbin "baserom.gba", 0x128A70, 0x0000004
	.4byte sub_080A6008
	.incbin "baserom.gba", 0x128A78, 0x0000004
	.4byte sub_080A60E0
	.incbin "baserom.gba", 0x128A80, 0x0000004
	.4byte sub_080A5AD8
	.incbin "baserom.gba", 0x128A88, 0x0000004
	.4byte sub_080A5990
	.incbin "baserom.gba", 0x128A90, 0x0000004
	.4byte sub_080A5990
	.incbin "baserom.gba", 0x128A98, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AA0, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AA8, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AB0, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AB8, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AC0, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AC8, 0x0000004
	.4byte sub_080A4F28
	.incbin "baserom.gba", 0x128AD0, 0x0000004
	.4byte sub_080A4F28

gUnk_08128AD8:: @ 08128AD8
	.incbin "baserom.gba", 0x128AD8, 0x0000058

gUnk_08128B30:: @ 08128B30
	.4byte sub_080A4F28
	.4byte sub_080A4FA0
	.4byte sub_080A4FB8
	.4byte sub_080A50B8
	.4byte sub_080A50E8
	.4byte sub_080A5108

gUnk_08128B48:: @ 08128B48
	.4byte sub_080A5238
	.4byte sub_080A529C

gUnk_08128B50:: @ 08128B50
	.incbin "baserom.gba", 0x128B50, 0x0000014

gUnk_08128B64:: @ 08128B64
	.incbin "baserom.gba", 0x128B64, 0x0000090

gUnk_08128BF4:: @ 08128BF4
	.incbin "baserom.gba", 0x128BF4, 0x0000004

gUnk_08128BF8:: @ 08128BF8
	.4byte sub_080A5594
	.4byte sub_080A56A0

gUnk_08128C00:: @ 08128C00
	.incbin "baserom.gba", 0x128C00, 0x0000004

gUnk_08128C04:: @ 08128C04
	.incbin "baserom.gba", 0x128C04, 0x0000010

gUnk_08128C14:: @ 08128C14
	.incbin "baserom.gba", 0x128C14, 0x0000080

gUnk_08128C94:: @ 08128C94
	.incbin "baserom.gba", 0x128C94, 0x0000080

gUnk_08128D14:: @ 08128D14
	.4byte sub_080A59AC
	.4byte sub_080A59C8
	.4byte sub_080A5A54
	.4byte sub_080A5A90

gUnk_08128D24:: @ 08128D24
	.4byte sub_080A5AF4
	.4byte sub_080A5B34
	.4byte sub_080A5BB8

gUnk_08128D30:: @ 08128D30
	.4byte sub_080A5C44
	.4byte sub_080A5C9C

gUnk_08128D38:: @ 08128D38
	.incbin "baserom.gba", 0x128D38, 0x0000004

gUnk_08128D3C:: @ 08128D3C
	.incbin "baserom.gba", 0x128D3C, 0x0000007

gUnk_08128D43:: @ 08128D43
	.incbin "baserom.gba", 0x128D43, 0x000000E

gUnk_08128D51:: @ 08128D51
	.incbin "baserom.gba", 0x128D51, 0x0000007

gUnk_08128D58:: @ 08128D58
	.4byte sub_080A6024
	.4byte sub_080A6044

gUnk_08128D60:: @ 08128D60
	.incbin "baserom.gba", 0x128D60, 0x0000010

gUnk_08128D70:: @ 08128D70
	.incbin "baserom.gba", 0x128D70, 0x0000040

gUnk_08128DB0:: @ 08128DB0
	.4byte sub_080A6108
	.4byte sub_080A612C

gUnk_08128DB8:: @ 08128DB8
	.incbin "baserom.gba", 0x128DB8, 0x0000004

gUnk_08128DBC:: @ 08128DBC
	.incbin "baserom.gba", 0x128DBC, 0x0000010

gUnk_08128DCC:: @ 08128DCC
	.4byte sub_080A6290
	.4byte sub_080A62E0

gUnk_08128DD4:: @ 08128DD4
	.incbin "baserom.gba", 0x128DD4, 0x0000004

gUnk_08128DD8:: @ 08128DD8
	.incbin "baserom.gba", 0x128DD8, 0x0000010

gUnk_08128DE8:: @ 08128DE8
	.incbin "baserom.gba", 0x128DE8, 0x0000088

gUnk_08128E70:: @ 08128E70
	.4byte sub_080A6534
	.4byte sub_080A65AC

gUnk_08128E78:: @ 08128E78
	.4byte sub_080A6650
	.4byte sub_080A667C

gUnk_08128E80:: @ 08128E80
	.incbin "baserom.gba", 0x128E80, 0x0000004

gUnk_08128E84:: @ 08128E84
	.incbin "baserom.gba", 0x128E84, 0x0000010

gUnk_08128E94:: @ 08128E94
	.incbin "baserom.gba", 0x128E94, 0x0000088

gUnk_08128F1C:: @ 08128F1C
	.4byte sub_080A6B04
	.4byte sub_080A6C1C

gUnk_08128F24:: @ 08128F24
	.4byte sub_080A6CA8
	.4byte sub_080A6CD8
	.4byte sub_080A6DD0
	.4byte sub_080A6DF8
	.4byte sub_080A6E44

gUnk_08128F38:: @ 08128F38
	.incbin "baserom.gba", 0x128F38, 0x0000014

gUnk_08128F4C:: @ 08128F4C
	.incbin "baserom.gba", 0x128F4C, 0x000000C

gUnk_08128F58:: @ 08128F58
	.incbin "baserom.gba", 0x128F58, 0x0000050

gUnk_08128FA8:: @ 08128FA8
	.incbin "baserom.gba", 0x128FA8, 0x0000018

gUnk_08128FC0:: @ 08128FC0
	.incbin "baserom.gba", 0x128FC0, 0x0000018

gUnk_08128FD8:: @ 08128FD8
	.incbin "baserom.gba", 0x128FD8, 0x0000018

gUnk_08128FF0:: @ 08128FF0
	.incbin "baserom.gba", 0x128FF0, 0x0000014

gUnk_08129004:: @ 08129004
	.incbin "baserom.gba", 0x129004, 0x0000018

gUnk_0812901C:: @ 0812901C
	.4byte sub_080A7250
	.4byte sub_080A7328
	.4byte sub_080A7528
	.4byte sub_080A73A8
	.4byte sub_080A74C8

gUnk_08129030:: @ 08129030
	.4byte sub_080A71DC
	.4byte sub_080A4EA0
	.4byte sub_080A71DC
	.4byte sub_080A64FC
	.4byte DrawKinstoneMenu
	.4byte sub_08051E68
	.4byte sub_0804AB54
	.4byte sub_080A45A4
	.4byte sub_08054870
	.4byte sub_080A6C74
	.4byte sub_080A6AB8
