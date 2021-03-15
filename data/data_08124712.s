	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 1
	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/animations/object/objectA2.inc"

	.include "data/const/object/cloud.inc"

	.include "data/const/object/minishLight.inc"

	.include "data/const/object/objectA6.inc"
	.include "data/animations/object/objectA6.inc"

 	.include "data/const/object/objectA8.inc"

	.include "data/const/object/objectA9.inc"
 
	.include "data/const/object/waterfallOpening.inc"

	.include "data/const/object/objectAB.inc"
	.include "data/animations/object/objectAB.inc"

	.include "data/const/object/fourElements.inc"

	.include "data/const/object/objectAD.inc"

	.include "data/const/object/objectAF.inc"
	.include "data/animations/object/objectAF.inc"

	.include "data/const/object/metalDoor.inc"

	.include "data/const/object/jailBars.inc"
	.include "data/animations/object/jailBars.inc"

	.include "data/animations/object/objectB2.inc"

	.include "data/const/object/objectB3.inc"
	.include "data/animations/object/objectB3.inc"

	.include "data/const/object/objectB4.inc"
	.include "data/animations/object/objectB4.inc"

	.include "data/const/object/well.inc"

	.include "data/const/object/windTribeTeleporter.inc"

	.include "data/const/object/objectB9.inc"

	.include "data/const/object/objectBA.inc"
	.include "data/animations/object/objectBA.inc"

	.include "data/const/object/windcrest.inc"

	.include "data/const/object/objectBD.inc"

	.include "data/const/object/pinwheel.inc"
	.include "data/animations/object/pinwheel.inc"

	.include "data/const/object/objectC1.inc"


gUnk_08125104:: @ 08125104
	.incbin "baserom.gba", 0x125104, 0x000000E

gUnk_08125112:: @ 08125112
	.incbin "baserom.gba", 0x125112, 0x0000006

gUnk_08125118:: @ 08125118
	.incbin "baserom.gba", 0x125118, 0x00002C0

gUnk_081253D8:: @ 081253D8
	.incbin "baserom.gba", 0x1253D8, 0x0000020

gUnk_081253F8:: @ 081253F8
	.incbin "baserom.gba", 0x1253F8, 0x0000028

gUnk_08125420:: @ 08125420
	.incbin "baserom.gba", 0x125420, 0x0000018

gUnk_08125438:: @ 08125438
	.incbin "baserom.gba", 0x125438, 0x0000060

gUnk_08125498:: @ 08125498
	.incbin "baserom.gba", 0x125498, 0x0000050

gUnk_081254E8:: @ 081254E8
	.incbin "baserom.gba", 0x1254E8, 0x0000058

gUnk_08125540:: @ 08125540
	.incbin "baserom.gba", 0x125540, 0x0000118

gUnk_08125658:: @ 08125658
	.incbin "baserom.gba", 0x125658, 0x0000010

gUnk_08125668:: @ 08125668
	.incbin "baserom.gba", 0x125668, 0x0000030

gUnk_08125698:: @ 08125698
	.incbin "baserom.gba", 0x125698, 0x0000010

gUnk_081256A8:: @ 081256A8
	.incbin "baserom.gba", 0x1256A8, 0x0000028

gUnk_081256D0:: @ 081256D0
	.incbin "baserom.gba", 0x1256D0, 0x0000230

gUnk_08125900:: @ 08125900
	.incbin "baserom.gba", 0x125900, 0x0000018

gUnk_08125918:: @ 08125918
	.incbin "baserom.gba", 0x125918, 0x0000010

gUnk_08125928:: @ 08125928
	.incbin "baserom.gba", 0x125928, 0x0000018

gUnk_08125940:: @ 08125940
	.incbin "baserom.gba", 0x125940, 0x0000020

gUnk_08125960:: @ 08125960
	.incbin "baserom.gba", 0x125960, 0x0000048

gUnk_081259A8:: @ 081259A8
	.incbin "baserom.gba", 0x1259A8, 0x000006D

gUnk_08125A15:: @ 08125A15
	.incbin "baserom.gba", 0x125A15, 0x00000EB

gUnk_08125B00:: @ 08125B00
	.incbin "baserom.gba", 0x125B00, 0x0000020

gUnk_08125B20:: @ 08125B20
	.incbin "baserom.gba", 0x125B20, 0x0000030

gUnk_08125B50:: @ 08125B50
	.incbin "baserom.gba", 0x125B50, 0x0000020

gUnk_08125B70:: @ 08125B70
	.incbin "baserom.gba", 0x125B70, 0x00000A8

gUnk_08125C18:: @ 08125C18
	.incbin "baserom.gba", 0x125C18, 0x0000030

gUnk_08125C48:: @ 08125C48
	.incbin "baserom.gba", 0x125C48, 0x0000048

gUnk_08125C90:: @ 08125C90
	.incbin "baserom.gba", 0x125C90, 0x0000048

gUnk_08125CD8:: @ 08125CD8
	.incbin "baserom.gba", 0x125CD8, 0x0000090

gUnk_08125D68:: @ 08125D68
	.incbin "baserom.gba", 0x125D68, 0x0000048

gUnk_08125DB0:: @ 08125DB0
	.incbin "baserom.gba", 0x125DB0, 0x0000108

gUnk_08125EB8:: @ 08125EB8
	.incbin "baserom.gba", 0x125EB8, 0x0000018

gUnk_08125ED0:: @ 08125ED0
	.incbin "baserom.gba", 0x125ED0, 0x0000020

gUnk_08125EF0:: @ 08125EF0
	.incbin "baserom.gba", 0x125EF0, 0x0000020

gUnk_08125F10:: @ 08125F10
	.incbin "baserom.gba", 0x125F10, 0x0000010

gUnk_08125F20:: @ 08125F20
	.incbin "baserom.gba", 0x125F20, 0x0000018

gUnk_08125F38:: @ 08125F38
	.incbin "baserom.gba", 0x125F38, 0x0000010

gUnk_08125F48:: @ 08125F48
	.incbin "baserom.gba", 0x125F48, 0x0000030

gUnk_08125F78:: @ 08125F78
	.incbin "baserom.gba", 0x125F78, 0x0000018

gUnk_08125F90:: @ 08125F90
	.incbin "baserom.gba", 0x125F90, 0x0000010

gUnk_08125FA0:: @ 08125FA0
	.incbin "baserom.gba", 0x125FA0, 0x0000020

gUnk_08125FC0:: @ 08125FC0
	.incbin "baserom.gba", 0x125FC0, 0x0000028

gUnk_08125FE8:: @ 08125FE8
	.incbin "baserom.gba", 0x125FE8, 0x0000050

gUnk_08126038:: @ 08126038
	.incbin "baserom.gba", 0x126038, 0x0000018

gUnk_08126050:: @ 08126050
	.incbin "baserom.gba", 0x126050, 0x0000018

gUnk_08126068:: @ 08126068
	.incbin "baserom.gba", 0x126068, 0x0000040

gUnk_081260A8:: @ 081260A8
	.incbin "baserom.gba", 0x1260A8, 0x0000010

gUnk_081260B8:: @ 081260B8
	.incbin "baserom.gba", 0x1260B8, 0x0000058

gUnk_08126110:: @ 08126110
	.incbin "baserom.gba", 0x126110, 0x0000040

gUnk_08126150:: @ 08126150
	.incbin "baserom.gba", 0x126150, 0x0000030

gUnk_08126180:: @ 08126180
	.incbin "baserom.gba", 0x126180, 0x0000030

gUnk_081261B0:: @ 081261B0
	.incbin "baserom.gba", 0x1261B0, 0x0000018

gUnk_081261C8:: @ 081261C8
	.incbin "baserom.gba", 0x1261C8, 0x0000020

gUnk_081261E8:: @ 081261E8
	.incbin "baserom.gba", 0x1261E8, 0x0000010

gUnk_081261F8:: @ 081261F8
	.incbin "baserom.gba", 0x1261F8, 0x000001B

gUnk_08126213:: @ 08126213
	.incbin "baserom.gba", 0x126213, 0x0000065

gUnk_08126278:: @ 08126278
	.incbin "baserom.gba", 0x126278, 0x0000020

gUnk_08126298:: @ 08126298
	.incbin "baserom.gba", 0x126298, 0x0000020

gUnk_081262B8:: @ 081262B8
	.incbin "baserom.gba", 0x1262B8, 0x0000018

gUnk_081262D0:: @ 081262D0
	.incbin "baserom.gba", 0x1262D0, 0x0000018

gUnk_081262E8:: @ 081262E8
	.incbin "baserom.gba", 0x1262E8, 0x0000048

gUnk_08126330:: @ 08126330
	.incbin "baserom.gba", 0x126330, 0x0000020

gUnk_08126350:: @ 08126350
	.incbin "baserom.gba", 0x126350, 0x0000010

gUnk_08126360:: @ 08126360
	.incbin "baserom.gba", 0x126360, 0x0000020

gUnk_08126380:: @ 08126380
	.incbin "baserom.gba", 0x126380, 0x0000028

gUnk_081263A8:: @ 081263A8
	.incbin "baserom.gba", 0x1263A8, 0x0000010

gUnk_081263B8:: @ 081263B8
	.incbin "baserom.gba", 0x1263B8, 0x0000010

gUnk_081263C8:: @ 081263C8
	.incbin "baserom.gba", 0x1263C8, 0x0000010

gUnk_081263D8:: @ 081263D8
	.incbin "baserom.gba", 0x1263D8, 0x0000010

gUnk_081263E8:: @ 081263E8
	.incbin "baserom.gba", 0x1263E8, 0x0000138

gUnk_08126520:: @ 08126520
	.incbin "baserom.gba", 0x126520, 0x000009C

gUnk_081265BC:: @ 081265BC
	.incbin "baserom.gba", 0x1265BC, 0x0000073

gUnk_0812662F:: @ 0812662F
	.incbin "baserom.gba", 0x12662F, 0x0000169

gUnk_08126798:: @ 08126798
	.incbin "baserom.gba", 0x126798, 0x0000610

gUnk_08126DA8:: @ 08126DA8
	.incbin "baserom.gba", 0x126DA8, 0x00000C0

gUnk_08126E68:: @ 08126E68
	.incbin "baserom.gba", 0x126E68, 0x0000030

gUnk_08126E98:: @ 08126E98
	.incbin "baserom.gba", 0x126E98, 0x0000030

gUnk_08126EC8:: @ 08126EC8
	.incbin "baserom.gba", 0x126EC8, 0x0000010

gUnk_08126ED8:: @ 08126ED8
	.incbin "baserom.gba", 0x126ED8, 0x000000C

gUnk_08126EE4:: @ 08126EE4
	.incbin "baserom.gba", 0x126EE4, 0x0000008

gUnk_08126EEC:: @ 08126EEC
	.incbin "baserom.gba", 0x126EEC, 0x0000008

gUnk_08126EF4:: @ 08126EF4
	.incbin "baserom.gba", 0x126EF4, 0x0000004

gUnk_08126EF8:: @ 08126EF8
	.incbin "baserom.gba", 0x126EF8, 0x0000005

gUnk_08126EFD:: @ 08126EFD
	.incbin "baserom.gba", 0x126EFD, 0x0000005

gUnk_08126F02:: @ 08126F02
	.incbin "baserom.gba", 0x126F02, 0x0000011

gUnk_08126F13:: @ 08126F13
	.incbin "baserom.gba", 0x126F13, 0x0000015

gUnk_08126F28:: @ 08126F28
	.incbin "baserom.gba", 0x126F28, 0x0000015

gUnk_08126F3D:: @ 08126F3D
	.incbin "baserom.gba", 0x126F3D, 0x0000011

gUnk_08126F4E:: @ 08126F4E
	.incbin "baserom.gba", 0x126F4E, 0x0000011

gUnk_08126F5F:: @ 08126F5F
	.incbin "baserom.gba", 0x126F5F, 0x0000011

gUnk_08126F70:: @ 08126F70
	.incbin "baserom.gba", 0x126F70, 0x0000011

gUnk_08126F81:: @ 08126F81
	.incbin "baserom.gba", 0x126F81, 0x0000009

gUnk_08126F8A:: @ 08126F8A
	.incbin "baserom.gba", 0x126F8A, 0x000000C

gUnk_08126F96:: @ 08126F96
	.incbin "baserom.gba", 0x126F96, 0x000000D

gUnk_08126FA3:: @ 08126FA3
	.incbin "baserom.gba", 0x126FA3, 0x0000010

gUnk_08126FB3:: @ 08126FB3
	.incbin "baserom.gba", 0x126FB3, 0x0000010

gUnk_08126FC3:: @ 08126FC3
	.incbin "baserom.gba", 0x126FC3, 0x0000021

gUnk_08126FE4:: @ 08126FE4
	.incbin "baserom.gba", 0x126FE4, 0x0000014

gUnk_08126FF8:: @ 08126FF8
	.incbin "baserom.gba", 0x126FF8, 0x0000021

gUnk_08127019:: @ 08127019
	.incbin "baserom.gba", 0x127019, 0x0000018

gUnk_08127031:: @ 08127031
	.incbin "baserom.gba", 0x127031, 0x0000015

gUnk_08127046:: @ 08127046
	.incbin "baserom.gba", 0x127046, 0x0000015

gUnk_0812705B:: @ 0812705B
	.incbin "baserom.gba", 0x12705B, 0x000005C

gUnk_081270B7:: @ 081270B7
	.incbin "baserom.gba", 0x1270B7, 0x0000029

gUnk_081270E0:: @ 081270E0
	.incbin "baserom.gba", 0x1270E0, 0x0000011

gUnk_081270F1:: @ 081270F1
	.incbin "baserom.gba", 0x1270F1, 0x0000005

gUnk_081270F6:: @ 081270F6
	.incbin "baserom.gba", 0x1270F6, 0x0000011

gUnk_08127107:: @ 08127107
	.incbin "baserom.gba", 0x127107, 0x0000011

gUnk_08127118:: @ 08127118
	.incbin "baserom.gba", 0x127118, 0x0000011

gUnk_08127129:: @ 08127129
	.incbin "baserom.gba", 0x127129, 0x0000011

gUnk_0812713A:: @ 0812713A
	.incbin "baserom.gba", 0x12713A, 0x0000009

gUnk_08127143:: @ 08127143
	.incbin "baserom.gba", 0x127143, 0x0000009

gUnk_0812714C:: @ 0812714C
	.incbin "baserom.gba", 0x12714C, 0x0000080

gUnk_081271CC:: @ 081271CC
	.incbin "baserom.gba", 0x1271CC, 0x0000008

gUnk_081271D4:: @ 081271D4
	.incbin "baserom.gba", 0x1271D4, 0x0000008

gUnk_081271DC:: @ 081271DC
	.incbin "baserom.gba", 0x1271DC, 0x0000044

gUnk_08127220:: @ 08127220
	.incbin "baserom.gba", 0x127220, 0x0000020

gUnk_08127240:: @ 08127240
	.incbin "baserom.gba", 0x127240, 0x0000010

gUnk_08127250:: @ 08127250
	.incbin "baserom.gba", 0x127250, 0x0000008

gUnk_08127258:: @ 08127258
	.incbin "baserom.gba", 0x127258, 0x0000008

gUnk_08127260:: @ 08127260
	.incbin "baserom.gba", 0x127260, 0x0000008

gUnk_08127268:: @ 08127268
	.incbin "baserom.gba", 0x127268, 0x0000008

gUnk_08127270:: @ 08127270
	.incbin "baserom.gba", 0x127270, 0x0000008

gUnk_08127278:: @ 08127278
	.incbin "baserom.gba", 0x127278, 0x0000008

gUnk_08127280:: @ 08127280
	.incbin "baserom.gba", 0x127280, 0x0000018

gUnk_08127298:: @ 08127298
	.incbin "baserom.gba", 0x127298, 0x0000018

gUnk_081272B0:: @ 081272B0
	.incbin "baserom.gba", 0x1272B0, 0x0000018

gUnk_081272C8:: @ 081272C8
	.incbin "baserom.gba", 0x1272C8, 0x0000018

gUnk_081272E0:: @ 081272E0
	.incbin "baserom.gba", 0x1272E0, 0x0000010

gUnk_081272F0:: @ 081272F0
	.incbin "baserom.gba", 0x1272F0, 0x0000354

gUnk_08127644:: @ 08127644
	.incbin "baserom.gba", 0x127644, 0x0000354

gUnk_08127998:: @ 08127998
	.incbin "baserom.gba", 0x127998, 0x0000354

gUnk_08127CEC:: @ 08127CEC
	.incbin "baserom.gba", 0x127CEC, 0x0000014

gUnk_08127D00:: @ 08127D00
	.incbin "baserom.gba", 0x127D00, 0x0000010

gUnk_08127D10:: @ 08127D10
	.incbin "baserom.gba", 0x127D10, 0x0000020

gUnk_08127D30:: @ 08127D30
	.incbin "baserom.gba", 0x127D30, 0x0000264

gUnk_08127F94:: @ 08127F94
	.incbin "baserom.gba", 0x127F94, 0x0000090

gUnk_08128024:: @ 08128024
	.incbin "baserom.gba", 0x128024, 0x00000A0

gUnk_081280C4:: @ 081280C4
	.incbin "baserom.gba", 0x1280C4, 0x0000018

gUnk_081280DC:: @ 081280DC
	.incbin "baserom.gba", 0x1280DC, 0x0000012

gUnk_081280EE:: @ 081280EE
	.incbin "baserom.gba", 0x1280EE, 0x0000006

gUnk_081280F4:: @ 081280F4
	.incbin "baserom.gba", 0x1280F4, 0x000000C

gUnk_08128100:: @ 08128100
	.incbin "baserom.gba", 0x128100, 0x0000010

gUnk_08128110:: @ 08128110
	.incbin "baserom.gba", 0x128110, 0x0000010

gUnk_08128120:: @ 08128120
	.incbin "baserom.gba", 0x128120, 0x000001C

gUnk_0812813C:: @ 0812813C
	.incbin "baserom.gba", 0x12813C, 0x0000010

gUnk_0812814C:: @ 0812814C
	.incbin "baserom.gba", 0x12814C, 0x0000010

gUnk_0812815C:: @ 0812815C
	.incbin "baserom.gba", 0x12815C, 0x0000010

gUnk_0812816C:: @ 0812816C
	.incbin "baserom.gba", 0x12816C, 0x0000018

gUnk_08128184:: @ 08128184
	.incbin "baserom.gba", 0x128184, 0x000000C

gUnk_08128190:: @ 08128190
	.incbin "baserom.gba", 0x128190, 0x0000018

gUnk_081281A8:: @ 081281A8
	.incbin "baserom.gba", 0x1281A8, 0x0000890

gUnk_08128A38:: @ 08128A38
	.incbin "baserom.gba", 0x128A38, 0x00000A0

gUnk_08128AD8:: @ 08128AD8
	.incbin "baserom.gba", 0x128AD8, 0x0000058

gUnk_08128B30:: @ 08128B30
	.incbin "baserom.gba", 0x128B30, 0x0000018

gUnk_08128B48:: @ 08128B48
	.incbin "baserom.gba", 0x128B48, 0x0000008

gUnk_08128B50:: @ 08128B50
	.incbin "baserom.gba", 0x128B50, 0x0000014

gUnk_08128B64:: @ 08128B64
	.incbin "baserom.gba", 0x128B64, 0x0000090

gUnk_08128BF4:: @ 08128BF4
	.incbin "baserom.gba", 0x128BF4, 0x0000004

gUnk_08128BF8:: @ 08128BF8
	.incbin "baserom.gba", 0x128BF8, 0x0000008

gUnk_08128C00:: @ 08128C00
	.incbin "baserom.gba", 0x128C00, 0x0000004

gUnk_08128C04:: @ 08128C04
	.incbin "baserom.gba", 0x128C04, 0x0000010

gUnk_08128C14:: @ 08128C14
	.incbin "baserom.gba", 0x128C14, 0x0000080

gUnk_08128C94:: @ 08128C94
	.incbin "baserom.gba", 0x128C94, 0x0000080

gUnk_08128D14:: @ 08128D14
	.incbin "baserom.gba", 0x128D14, 0x0000010

gUnk_08128D24:: @ 08128D24
	.incbin "baserom.gba", 0x128D24, 0x000000C

gUnk_08128D30:: @ 08128D30
	.incbin "baserom.gba", 0x128D30, 0x0000008

gUnk_08128D38:: @ 08128D38
	.incbin "baserom.gba", 0x128D38, 0x0000004

gUnk_08128D3C:: @ 08128D3C
	.incbin "baserom.gba", 0x128D3C, 0x0000007

gUnk_08128D43:: @ 08128D43
	.incbin "baserom.gba", 0x128D43, 0x000000E

gUnk_08128D51:: @ 08128D51
	.incbin "baserom.gba", 0x128D51, 0x0000007

gUnk_08128D58:: @ 08128D58
	.incbin "baserom.gba", 0x128D58, 0x0000008

gUnk_08128D60:: @ 08128D60
	.incbin "baserom.gba", 0x128D60, 0x0000010

gUnk_08128D70:: @ 08128D70
	.incbin "baserom.gba", 0x128D70, 0x0000040

gUnk_08128DB0:: @ 08128DB0
	.incbin "baserom.gba", 0x128DB0, 0x0000008

gUnk_08128DB8:: @ 08128DB8
	.incbin "baserom.gba", 0x128DB8, 0x0000004

gUnk_08128DBC:: @ 08128DBC
	.incbin "baserom.gba", 0x128DBC, 0x0000010

gUnk_08128DCC:: @ 08128DCC
	.incbin "baserom.gba", 0x128DCC, 0x0000008

gUnk_08128DD4:: @ 08128DD4
	.incbin "baserom.gba", 0x128DD4, 0x0000004

gUnk_08128DD8:: @ 08128DD8
	.incbin "baserom.gba", 0x128DD8, 0x0000010

gUnk_08128DE8:: @ 08128DE8
	.incbin "baserom.gba", 0x128DE8, 0x0000088

gUnk_08128E70:: @ 08128E70
	.incbin "baserom.gba", 0x128E70, 0x0000008

gUnk_08128E78:: @ 08128E78
	.incbin "baserom.gba", 0x128E78, 0x0000008

gUnk_08128E80:: @ 08128E80
	.incbin "baserom.gba", 0x128E80, 0x0000004

gUnk_08128E84:: @ 08128E84
	.incbin "baserom.gba", 0x128E84, 0x0000010

gUnk_08128E94:: @ 08128E94
	.incbin "baserom.gba", 0x128E94, 0x0000088

gUnk_08128F1C:: @ 08128F1C
	.incbin "baserom.gba", 0x128F1C, 0x0000008

gUnk_08128F24:: @ 08128F24
	.incbin "baserom.gba", 0x128F24, 0x0000014

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
	
	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/const/playerItem/playerItemSword.inc"

gUnk_08129068:: @ 08129068
	.incbin "baserom.gba", 0x129068, 0x0000004

gUnk_0812906C:: @ 0812906C
	.incbin "baserom.gba", 0x12906C, 0x0000006

gUnk_08129072:: @ 08129072
	.incbin "baserom.gba", 0x129072, 0x000001C

gUnk_0812908E:: @ 0812908E
	.incbin "baserom.gba", 0x12908E, 0x0000008

gUnk_08129096:: @ 08129096
	.incbin "baserom.gba", 0x129096, 0x000024C

gUnk_081292E2:: @ 081292E2
	.incbin "baserom.gba", 0x1292E2, 0x000003E

gUnk_08129320:: @ 08129320
	.incbin "baserom.gba", 0x129320, 0x0000098

gUnk_081293B8:: @ 081293B8
	.incbin "baserom.gba", 0x1293B8, 0x0000014

gUnk_081293CC:: @ 081293CC
	.incbin "baserom.gba", 0x1293CC, 0x0000014

gUnk_081293E0:: @ 081293E0
	.incbin "baserom.gba", 0x1293E0, 0x0000010

gUnk_081293F0:: @ 081293F0
	.incbin "baserom.gba", 0x1293F0, 0x0000010

gUnk_08129400:: @ 08129400
	.incbin "baserom.gba", 0x129400, 0x0000010

gUnk_08129410:: @ 08129410
	.incbin "baserom.gba", 0x129410, 0x0000010

gUnk_08129420:: @ 08129420
	.incbin "baserom.gba", 0x129420, 0x0000010

gUnk_08129430:: @ 08129430
	.incbin "baserom.gba", 0x129430, 0x0000008

gUnk_08129438:: @ 08129438
	.incbin "baserom.gba", 0x129438, 0x0000008

gUnk_08129440:: @ 08129440
	.incbin "baserom.gba", 0x129440, 0x0000008

gUnk_08129448:: @ 08129448
	.incbin "baserom.gba", 0x129448, 0x0000008

gUnk_08129450:: @ 08129450
	.incbin "baserom.gba", 0x129450, 0x0000008

gUnk_08129458:: @ 08129458
	.incbin "baserom.gba", 0x129458, 0x0000008

gUnk_08129460:: @ 08129460
	.incbin "baserom.gba", 0x129460, 0x0000018

gUnk_08129478:: @ 08129478
	.incbin "baserom.gba", 0x129478, 0x0000008

gUnk_08129480:: @ 08129480
	.incbin "baserom.gba", 0x129480, 0x0000008

gUnk_08129488:: @ 08129488
	.incbin "baserom.gba", 0x129488, 0x0000008

gUnk_08129490:: @ 08129490
	.incbin "baserom.gba", 0x129490, 0x0000008

gUnk_08129498:: @ 08129498
	.incbin "baserom.gba", 0x129498, 0x0000008

gUnk_081294A0:: @ 081294A0
	.incbin "baserom.gba", 0x1294A0, 0x0000008

gUnk_081294A8:: @ 081294A8
	.incbin "baserom.gba", 0x1294A8, 0x0000018

gUnk_081294C0:: @ 081294C0
	.incbin "baserom.gba", 0x1294C0, 0x0000008

gUnk_081294C8:: @ 081294C8
	.incbin "baserom.gba", 0x1294C8, 0x0000008

gUnk_081294D0:: @ 081294D0
	.incbin "baserom.gba", 0x1294D0, 0x0000008

gUnk_081294D8:: @ 081294D8
	.incbin "baserom.gba", 0x1294D8, 0x0000008

gUnk_081294E0:: @ 081294E0
	.incbin "baserom.gba", 0x1294E0, 0x0000008

gUnk_081294E8:: @ 081294E8
	.incbin "baserom.gba", 0x1294E8, 0x0000008

gUnk_081294F0:: @ 081294F0
	.incbin "baserom.gba", 0x1294F0, 0x0000018

gUnk_08129508:: @ 08129508
	.incbin "baserom.gba", 0x129508, 0x0000008

gUnk_08129510:: @ 08129510
	.incbin "baserom.gba", 0x129510, 0x0000008

gUnk_08129518:: @ 08129518
	.incbin "baserom.gba", 0x129518, 0x0000008

gUnk_08129520:: @ 08129520
	.incbin "baserom.gba", 0x129520, 0x0000008

gUnk_08129528:: @ 08129528
	.incbin "baserom.gba", 0x129528, 0x0000008

gUnk_08129530:: @ 08129530
	.incbin "baserom.gba", 0x129530, 0x0000008

gUnk_08129538:: @ 08129538
	.incbin "baserom.gba", 0x129538, 0x0000018

gUnk_08129550:: @ 08129550
	.incbin "baserom.gba", 0x129550, 0x0000008

gUnk_08129558:: @ 08129558
	.incbin "baserom.gba", 0x129558, 0x0000008

gUnk_08129560:: @ 08129560
	.incbin "baserom.gba", 0x129560, 0x0000008

gUnk_08129568:: @ 08129568
	.incbin "baserom.gba", 0x129568, 0x0000008

gUnk_08129570:: @ 08129570
	.incbin "baserom.gba", 0x129570, 0x0000008

gUnk_08129578:: @ 08129578
	.incbin "baserom.gba", 0x129578, 0x0000008

gUnk_08129580:: @ 08129580
	.incbin "baserom.gba", 0x129580, 0x0000008

gUnk_08129588:: @ 08129588
	.incbin "baserom.gba", 0x129588, 0x0000008

gUnk_08129590:: @ 08129590
	.incbin "baserom.gba", 0x129590, 0x0000008

gUnk_08129598:: @ 08129598
	.incbin "baserom.gba", 0x129598, 0x0000008

gUnk_081295A0:: @ 081295A0
	.incbin "baserom.gba", 0x1295A0, 0x0000008

gUnk_081295A8:: @ 081295A8
	.incbin "baserom.gba", 0x1295A8, 0x0000008

gUnk_081295B0:: @ 081295B0
	.incbin "baserom.gba", 0x1295B0, 0x0000008

gUnk_081295B8:: @ 081295B8
	.incbin "baserom.gba", 0x1295B8, 0x0000008

gUnk_081295C0:: @ 081295C0
	.incbin "baserom.gba", 0x1295C0, 0x0000008

gUnk_081295C8:: @ 081295C8
	.incbin "baserom.gba", 0x1295C8, 0x0000008

gUnk_081295D0:: @ 081295D0
	.incbin "baserom.gba", 0x1295D0, 0x0000014

gUnk_081295E4:: @ 081295E4
	.incbin "baserom.gba", 0x1295E4, 0x0000010

gUnk_081295F4:: @ 081295F4
	.incbin "baserom.gba", 0x1295F4, 0x0000010

gUnk_08129604:: @ 08129604
	.incbin "baserom.gba", 0x129604, 0x0000008

gUnk_0812960C:: @ 0812960C
	.incbin "baserom.gba", 0x12960C, 0x0000014

gUnk_08129620:: @ 08129620
	.incbin "baserom.gba", 0x129620, 0x0000014

gUnk_08129634:: @ 08129634
	.incbin "baserom.gba", 0x129634, 0x0000014

gUnk_08129648:: @ 08129648
	.incbin "baserom.gba", 0x129648, 0x0000008

gUnk_08129650:: @ 08129650
	.incbin "baserom.gba", 0x129650, 0x0000014

gUnk_08129664:: @ 08129664
	.incbin "baserom.gba", 0x129664, 0x0000008

gUnk_0812966C:: @ 0812966C
	.incbin "baserom.gba", 0x12966C, 0x0000084

gUnk_081296F0:: @ 081296F0
	.incbin "baserom.gba", 0x1296F0, 0x0000014

gUnk_08129704:: @ 08129704
	.incbin "baserom.gba", 0x129704, 0x0000014

gUnk_08129718:: @ 08129718
	.incbin "baserom.gba", 0x129718, 0x0000014

gUnk_0812972C:: @ 0812972C
	.incbin "baserom.gba", 0x12972C, 0x0000008

gUnk_08129734:: @ 08129734
	.incbin "baserom.gba", 0x129734, 0x000000C

gUnk_08129740:: @ 08129740
	.incbin "baserom.gba", 0x129740, 0x0000014

gUnk_08129754:: @ 08129754
	.incbin "baserom.gba", 0x129754, 0x0000010

gUnk_08129764:: @ 08129764
	.incbin "baserom.gba", 0x129764, 0x000000C

gUnk_08129770:: @ 08129770
	.incbin "baserom.gba", 0x129770, 0x0000005

gUnk_08129775:: @ 08129775
	.incbin "baserom.gba", 0x129775, 0x000001B

gUnk_08129790:: @ 08129790
	.incbin "baserom.gba", 0x129790, 0x000000C

gUnk_0812979C:: @ 0812979C
	.incbin "baserom.gba", 0x12979C, 0x0000010

gUnk_081297AC:: @ 081297AC
	.incbin "baserom.gba", 0x1297AC, 0x0000009

gUnk_081297B5:: @ 081297B5
	.incbin "baserom.gba", 0x1297B5, 0x0000009

gUnk_081297BE:: @ 081297BE
	.incbin "baserom.gba", 0x1297BE, 0x0000009

gUnk_081297C7:: @ 081297C7
	.incbin "baserom.gba", 0x1297C7, 0x0000009

gUnk_081297D0:: @ 081297D0
	.incbin "baserom.gba", 0x1297D0, 0x0000005

gUnk_081297D5:: @ 081297D5
	.incbin "baserom.gba", 0x1297D5, 0x0000005

gUnk_081297DA:: @ 081297DA
	.incbin "baserom.gba", 0x1297DA, 0x0000005

gUnk_081297DF:: @ 081297DF
	.incbin "baserom.gba", 0x1297DF, 0x0000005

gUnk_081297E4:: @ 081297E4
	.incbin "baserom.gba", 0x1297E4, 0x0000005

gUnk_081297E9:: @ 081297E9
	.incbin "baserom.gba", 0x1297E9, 0x0000005

gUnk_081297EE:: @ 081297EE
	.incbin "baserom.gba", 0x1297EE, 0x0000005

gUnk_081297F3:: @ 081297F3
	.incbin "baserom.gba", 0x1297F3, 0x0000005

gUnk_081297F8:: @ 081297F8
	.incbin "baserom.gba", 0x1297F8, 0x0000034

gUnk_0812982C:: @ 0812982C
	.incbin "baserom.gba", 0x12982C, 0x0000010

gUnk_0812983C:: @ 0812983C
	.incbin "baserom.gba", 0x12983C, 0x0000009

gUnk_08129845:: @ 08129845
	.incbin "baserom.gba", 0x129845, 0x0000009

gUnk_0812984E:: @ 0812984E
	.incbin "baserom.gba", 0x12984E, 0x0000009

gUnk_08129857:: @ 08129857
	.incbin "baserom.gba", 0x129857, 0x0000009

gUnk_08129860:: @ 08129860
	.incbin "baserom.gba", 0x129860, 0x000000D

gUnk_0812986D:: @ 0812986D
	.incbin "baserom.gba", 0x12986D, 0x000000D

gUnk_0812987A:: @ 0812987A
	.incbin "baserom.gba", 0x12987A, 0x000000D

gUnk_08129887:: @ 08129887
	.incbin "baserom.gba", 0x129887, 0x000000D

gUnk_08129894:: @ 08129894
	.incbin "baserom.gba", 0x129894, 0x0000024

gUnk_081298B8:: @ 081298B8
	.incbin "baserom.gba", 0x1298B8, 0x0000010

gUnk_081298C8:: @ 081298C8
	.incbin "baserom.gba", 0x1298C8, 0x0000009

gUnk_081298D1:: @ 081298D1
	.incbin "baserom.gba", 0x1298D1, 0x0000009

gUnk_081298DA:: @ 081298DA
	.incbin "baserom.gba", 0x1298DA, 0x0000009

gUnk_081298E3:: @ 081298E3
	.incbin "baserom.gba", 0x1298E3, 0x0000009

gUnk_081298EC:: @ 081298EC
	.incbin "baserom.gba", 0x1298EC, 0x0000011

gUnk_081298FD:: @ 081298FD
	.incbin "baserom.gba", 0x1298FD, 0x0000011

gUnk_0812990E:: @ 0812990E
	.incbin "baserom.gba", 0x12990E, 0x0000011

gUnk_0812991F:: @ 0812991F
	.incbin "baserom.gba", 0x12991F, 0x0000011

gUnk_08129930:: @ 08129930
	.incbin "baserom.gba", 0x129930, 0x0000024

gUnk_08129954:: @ 08129954
	.incbin "baserom.gba", 0x129954, 0x0000014

gUnk_08129968:: @ 08129968
	.incbin "baserom.gba", 0x129968, 0x0000010

gUnk_08129978:: @ 08129978
	.incbin "baserom.gba", 0x129978, 0x0000008

gUnk_08129980:: @ 08129980
	.incbin "baserom.gba", 0x129980, 0x0000008

gUnk_08129988:: @ 08129988
	.incbin "baserom.gba", 0x129988, 0x0000010

gUnk_08129998:: @ 08129998
	.incbin "baserom.gba", 0x129998, 0x0000010

gUnk_081299A8:: @ 081299A8
	.incbin "baserom.gba", 0x1299A8, 0x0000008

gUnk_081299B0:: @ 081299B0
	.incbin "baserom.gba", 0x1299B0, 0x0000008

gUnk_081299B8:: @ 081299B8
	.incbin "baserom.gba", 0x1299B8, 0x0000008

gUnk_081299C0:: @ 081299C0
	.incbin "baserom.gba", 0x1299C0, 0x0000008

gUnk_081299C8:: @ 081299C8
	.incbin "baserom.gba", 0x1299C8, 0x0000008

gUnk_081299D0:: @ 081299D0
	.incbin "baserom.gba", 0x1299D0, 0x0000014

gUnk_081299E4:: @ 081299E4
	.incbin "baserom.gba", 0x1299E4, 0x0000014

gUnk_081299F8:: @ 081299F8
	.incbin "baserom.gba", 0x1299F8, 0x0000020

gUnk_08129A18:: @ 08129A18
	.incbin "baserom.gba", 0x129A18, 0x0000008

gUnk_08129A20:: @ 08129A20
	.incbin "baserom.gba", 0x129A20, 0x0000008

gUnk_08129A28:: @ 08129A28
	.incbin "baserom.gba", 0x129A28, 0x0000005

gUnk_08129A2D:: @ 08129A2D
	.incbin "baserom.gba", 0x129A2D, 0x0000005

gUnk_08129A32:: @ 08129A32
	.incbin "baserom.gba", 0x129A32, 0x0000011

gUnk_08129A43:: @ 08129A43
	.incbin "baserom.gba", 0x129A43, 0x0000011

gUnk_08129A54:: @ 08129A54
	.incbin "baserom.gba", 0x129A54, 0x0000010

gUnk_08129A64:: @ 08129A64
	.incbin "baserom.gba", 0x129A64, 0x000000C

gUnk_08129A70:: @ 08129A70
	.incbin "baserom.gba", 0x129A70, 0x0000019

gUnk_08129A89:: @ 08129A89
	.incbin "baserom.gba", 0x129A89, 0x0000027

gUnk_08129AB0:: @ 08129AB0
	.incbin "baserom.gba", 0x129AB0, 0x000000C

gUnk_08129ABC:: @ 08129ABC
	.incbin "baserom.gba", 0x129ABC, 0x0000014

gUnk_08129AD0:: @ 08129AD0
	.incbin "baserom.gba", 0x129AD0, 0x000000C

gUnk_08129ADC:: @ 08129ADC
	.incbin "baserom.gba", 0x129ADC, 0x0000004

gUnk_08129AE0:: @ 08129AE0
	.incbin "baserom.gba", 0x129AE0, 0x0000018

gUnk_08129AF8:: @ 08129AF8
	.incbin "baserom.gba", 0x129AF8, 0x0000010

gUnk_08129B08:: @ 08129B08
	.incbin "baserom.gba", 0x129B08, 0x0000018

gUnk_08129B20:: @ 08129B20
	.incbin "baserom.gba", 0x129B20, 0x0000030

gUnk_08129B50:: @ 08129B50
	.incbin "baserom.gba", 0x129B50, 0x0000008

gUnk_08129B58:: @ 08129B58
	.incbin "baserom.gba", 0x129B58, 0x0000018

gUnk_08129B70:: @ 08129B70
	.incbin "baserom.gba", 0x129B70, 0x0000008

gUnk_08129B78:: @ 08129B78
	.incbin "baserom.gba", 0x129B78, 0x000000C

gUnk_08129B84:: @ 08129B84
	.incbin "baserom.gba", 0x129B84, 0x0000011

gUnk_08129B95:: @ 08129B95
	.incbin "baserom.gba", 0x129B95, 0x0000011

gUnk_08129BA6:: @ 08129BA6
	.incbin "baserom.gba", 0x129BA6, 0x0000011

gUnk_08129BB7:: @ 08129BB7
	.incbin "baserom.gba", 0x129BB7, 0x0000011

gUnk_08129BC8:: @ 08129BC8
	.incbin "baserom.gba", 0x129BC8, 0x0000024

gUnk_08129BEC:: @ 08129BEC
	.incbin "baserom.gba", 0x129BEC, 0x0000014

gUnk_08129C00:: @ 08129C00
	.incbin "baserom.gba", 0x129C00, 0x0000008

gUnk_08129C08:: @ 08129C08
	.incbin "baserom.gba", 0x129C08, 0x000006C

gUnk_08129C74:: @ 08129C74
	.incbin "baserom.gba", 0x129C74, 0x0000008

gUnk_08129C7C:: @ 08129C7C
	.incbin "baserom.gba", 0x129C7C, 0x0000014

gUnk_08129C90:: @ 08129C90
	.incbin "baserom.gba", 0x129C90, 0x0000014

gUnk_08129CA4:: @ 08129CA4
	.incbin "baserom.gba", 0x129CA4, 0x0000008

gUnk_08129CAC:: @ 08129CAC
	.incbin "baserom.gba", 0x129CAC, 0x0000008

gUnk_08129CB4:: @ 08129CB4
	.incbin "baserom.gba", 0x129CB4, 0x0000008

gUnk_08129CBC:: @ 08129CBC
	.incbin "baserom.gba", 0x129CBC, 0x0000008

gUnk_08129CC4:: @ 08129CC4
	.incbin "baserom.gba", 0x129CC4, 0x0000008

gUnk_08129CCC:: @ 08129CCC
	.incbin "baserom.gba", 0x129CCC, 0x0000008

gUnk_08129CD4:: @ 08129CD4
	.incbin "baserom.gba", 0x129CD4, 0x0000008

gUnk_08129CDC:: @ 08129CDC
	.incbin "baserom.gba", 0x129CDC, 0x0000008

gUnk_08129CE4:: @ 08129CE4
	.incbin "baserom.gba", 0x129CE4, 0x0000008

gUnk_08129CEC:: @ 08129CEC
	.incbin "baserom.gba", 0x129CEC, 0x0000008

gUnk_08129CF4:: @ 08129CF4
	.incbin "baserom.gba", 0x129CF4, 0x0000020

gUnk_08129D14:: @ 08129D14
	.incbin "baserom.gba", 0x129D14, 0x0000008

gUnk_08129D1C:: @ 08129D1C
	.incbin "baserom.gba", 0x129D1C, 0x0000005

gUnk_08129D21:: @ 08129D21
	.incbin "baserom.gba", 0x129D21, 0x0000005

gUnk_08129D26:: @ 08129D26
	.incbin "baserom.gba", 0x129D26, 0x0000005

gUnk_08129D2B:: @ 08129D2B
	.incbin "baserom.gba", 0x129D2B, 0x0000005

gUnk_08129D30:: @ 08129D30
	.incbin "baserom.gba", 0x129D30, 0x0000005

gUnk_08129D35:: @ 08129D35
	.incbin "baserom.gba", 0x129D35, 0x0000005

gUnk_08129D3A:: @ 08129D3A
	.incbin "baserom.gba", 0x129D3A, 0x0000005

gUnk_08129D3F:: @ 08129D3F
	.incbin "baserom.gba", 0x129D3F, 0x0000005

gUnk_08129D44:: @ 08129D44
	.incbin "baserom.gba", 0x129D44, 0x0000011

gUnk_08129D55:: @ 08129D55
	.incbin "baserom.gba", 0x129D55, 0x0000011

gUnk_08129D66:: @ 08129D66
	.incbin "baserom.gba", 0x129D66, 0x0000011

gUnk_08129D77:: @ 08129D77
	.incbin "baserom.gba", 0x129D77, 0x0000011

gUnk_08129D88:: @ 08129D88
	.incbin "baserom.gba", 0x129D88, 0x0000011

gUnk_08129D99:: @ 08129D99
	.incbin "baserom.gba", 0x129D99, 0x0000011

gUnk_08129DAA:: @ 08129DAA
	.incbin "baserom.gba", 0x129DAA, 0x0000011

gUnk_08129DBB:: @ 08129DBB
	.incbin "baserom.gba", 0x129DBB, 0x0000011

gUnk_08129DCC:: @ 08129DCC
	.incbin "baserom.gba", 0x129DCC, 0x000000C

gUnk_08129DD8:: @ 08129DD8
	.incbin "baserom.gba", 0x129DD8, 0x000000C

gUnk_08129DE4:: @ 08129DE4
	.incbin "baserom.gba", 0x129DE4, 0x000000C

gUnk_08129DF0:: @ 08129DF0
	.incbin "baserom.gba", 0x129DF0, 0x000000C

gUnk_08129DFC:: @ 08129DFC
	.incbin "baserom.gba", 0x129DFC, 0x000000C

gUnk_08129E08:: @ 08129E08
	.incbin "baserom.gba", 0x129E08, 0x000000C

gUnk_08129E14:: @ 08129E14
	.incbin "baserom.gba", 0x129E14, 0x000000C

gUnk_08129E20:: @ 08129E20
	.incbin "baserom.gba", 0x129E20, 0x000000C

gUnk_08129E2C:: @ 08129E2C
	.incbin "baserom.gba", 0x129E2C, 0x0000021

gUnk_08129E4D:: @ 08129E4D
	.incbin "baserom.gba", 0x129E4D, 0x0000021

gUnk_08129E6E:: @ 08129E6E
	.incbin "baserom.gba", 0x129E6E, 0x0000021

gUnk_08129E8F:: @ 08129E8F
	.incbin "baserom.gba", 0x129E8F, 0x0000021

gUnk_08129EB0:: @ 08129EB0
	.incbin "baserom.gba", 0x129EB0, 0x0000021

gUnk_08129ED1:: @ 08129ED1
	.incbin "baserom.gba", 0x129ED1, 0x0000021

gUnk_08129EF2:: @ 08129EF2
	.incbin "baserom.gba", 0x129EF2, 0x0000021

gUnk_08129F13:: @ 08129F13
	.incbin "baserom.gba", 0x129F13, 0x0000021

gUnk_08129F34:: @ 08129F34
	.incbin "baserom.gba", 0x129F34, 0x0000084

gUnk_08129FB8:: @ 08129FB8
	.incbin "baserom.gba", 0x129FB8, 0x0000018

gUnk_08129FD0:: @ 08129FD0
	.incbin "baserom.gba", 0x129FD0, 0x0000014

gUnk_08129FE4:: @ 08129FE4
	.incbin "baserom.gba", 0x129FE4, 0x0000014

gUnk_08129FF8:: @ 08129FF8
	.incbin "baserom.gba", 0x129FF8, 0x000000C

gUnk_0812A004:: @ 0812A004
	.incbin "baserom.gba", 0x12A004, 0x0000010

gUnk_0812A014:: @ 0812A014
	.incbin "baserom.gba", 0x12A014, 0x0000018

gUnk_0812A02C:: @ 0812A02C
	.incbin "baserom.gba", 0x12A02C, 0x0000010

gUnk_0812A03C:: @ 0812A03C
	.incbin "baserom.gba", 0x12A03C, 0x0000010

gUnk_0812A04C:: @ 0812A04C
	.incbin "baserom.gba", 0x12A04C, 0x0000010

gUnk_0812A05C:: @ 0812A05C
	.incbin "baserom.gba", 0x12A05C, 0x0000008

gUnk_0812A064:: @ 0812A064
	.incbin "baserom.gba", 0x12A064, 0x0000008

gUnk_0812A06C:: @ 0812A06C
	.incbin "baserom.gba", 0x12A06C, 0x0000008

gUnk_0812A074:: @ 0812A074
	.incbin "baserom.gba", 0x12A074, 0x0000010

gUnk_0812A084:: @ 0812A084
	.incbin "baserom.gba", 0x12A084, 0x0000008

gUnk_0812A08C:: @ 0812A08C
	.incbin "baserom.gba", 0x12A08C, 0x0000004

gUnk_0812A090:: @ 0812A090
	.incbin "baserom.gba", 0x12A090, 0x0000004

gUnk_0812A094:: @ 0812A094
	.incbin "baserom.gba", 0x12A094, 0x0000004

gUnk_0812A098:: @ 0812A098
	.incbin "baserom.gba", 0x12A098, 0x0000004

gUnk_0812A09C:: @ 0812A09C
	.incbin "baserom.gba", 0x12A09C, 0x000000C

gUnk_0812A0A8:: @ 0812A0A8
	.incbin "baserom.gba", 0x12A0A8, 0x000000C

gUnk_0812A0B4:: @ 0812A0B4
	.incbin "baserom.gba", 0x12A0B4, 0x000000C

gUnk_0812A0C0:: @ 0812A0C0
	.incbin "baserom.gba", 0x12A0C0, 0x000000C

gUnk_0812A0CC:: @ 0812A0CC
	.incbin "baserom.gba", 0x12A0CC, 0x0000048

gUnk_0812A114:: @ 0812A114
	.incbin "baserom.gba", 0x12A114, 0x0000048

gUnk_0812A15C:: @ 0812A15C
	.incbin "baserom.gba", 0x12A15C, 0x0000048

gUnk_0812A1A4:: @ 0812A1A4
	.incbin "baserom.gba", 0x12A1A4, 0x0000048

gUnk_0812A1EC:: @ 0812A1EC
	.incbin "baserom.gba", 0x12A1EC, 0x0000024

gUnk_0812A210:: @ 0812A210
	.incbin "baserom.gba", 0x12A210, 0x0000024

gUnk_0812A234:: @ 0812A234
	.incbin "baserom.gba", 0x12A234, 0x0000024

gUnk_0812A258:: @ 0812A258
	.incbin "baserom.gba", 0x12A258, 0x0000024

gUnk_0812A27C:: @ 0812A27C
	.incbin "baserom.gba", 0x12A27C, 0x000003C

gUnk_0812A2B8:: @ 0812A2B8
	.incbin "baserom.gba", 0x12A2B8, 0x000003C

gUnk_0812A2F4:: @ 0812A2F4
	.incbin "baserom.gba", 0x12A2F4, 0x000003C

gUnk_0812A330:: @ 0812A330
	.incbin "baserom.gba", 0x12A330, 0x000003C

gUnk_0812A36C:: @ 0812A36C
	.incbin "baserom.gba", 0x12A36C, 0x0000054

gUnk_0812A3C0:: @ 0812A3C0
	.incbin "baserom.gba", 0x12A3C0, 0x0000014

gUnk_0812A3D4:: @ 0812A3D4
	.incbin "baserom.gba", 0x12A3D4, 0x000000C

gUnk_0812A3E0:: @ 0812A3E0
	.incbin "baserom.gba", 0x12A3E0, 0x0000014

gUnk_0812A3F4:: @ 0812A3F4
	.incbin "baserom.gba", 0x12A3F4, 0x0000008

gUnk_0812A3FC:: @ 0812A3FC
	.incbin "baserom.gba", 0x12A3FC, 0x0000014

gUnk_0812A410:: @ 0812A410
	.incbin "baserom.gba", 0x12A410, 0x0000008

gUnk_0812A418:: @ 0812A418
	.incbin "baserom.gba", 0x12A418, 0x0000018

gUnk_0812A430:: @ 0812A430
	.incbin "baserom.gba", 0x12A430, 0x0000010

gUnk_0812A440:: @ 0812A440
	.incbin "baserom.gba", 0x12A440, 0x000000C

gUnk_0812A44C:: @ 0812A44C
	.incbin "baserom.gba", 0x12A44C, 0x0000021

gUnk_0812A46D:: @ 0812A46D
	.incbin "baserom.gba", 0x12A46D, 0x000001B

gUnk_0812A488:: @ 0812A488
	.incbin "baserom.gba", 0x12A488, 0x000000C

gUnk_0812A494:: @ 0812A494
	.incbin "baserom.gba", 0x12A494, 0x0000014

gUnk_0812A4A8:: @ 0812A4A8
	.incbin "baserom.gba", 0x12A4A8, 0x0000020

gUnk_0812A4C8:: @ 0812A4C8
	.incbin "baserom.gba", 0x12A4C8, 0x0000014

gUnk_0812A4DC:: @ 0812A4DC
	.incbin "baserom.gba", 0x12A4DC, 0x0000010

gUnk_0812A4EC:: @ 0812A4EC
	.incbin "baserom.gba", 0x12A4EC, 0x00000A0

gUnk_0812A58C:: @ 0812A58C
	.incbin "baserom.gba", 0x12A58C, 0x0000014

gUnk_0812A5A0:: @ 0812A5A0
	.incbin "baserom.gba", 0x12A5A0, 0x000000C

gUnk_0812A5AC:: @ 0812A5AC
	.incbin "baserom.gba", 0x12A5AC, 0x000000D

gUnk_0812A5B9:: @ 0812A5B9
	.incbin "baserom.gba", 0x12A5B9, 0x000000D

gUnk_0812A5C6:: @ 0812A5C6
	.incbin "baserom.gba", 0x12A5C6, 0x000000E

gUnk_0812A5D4:: @ 0812A5D4
	.incbin "baserom.gba", 0x12A5D4, 0x0000014

gUnk_0812A5E8:: @ 0812A5E8
	.incbin "baserom.gba", 0x12A5E8, 0x000000C

gUnk_0812A5F4:: @ 0812A5F4
	.incbin "baserom.gba", 0x12A5F4, 0x0000020

gUnk_0812A614:: @ 0812A614
	.incbin "baserom.gba", 0x12A614, 0x0000008

gUnk_0812A61C:: @ 0812A61C
	.incbin "baserom.gba", 0x12A61C, 0x0000008

gUnk_0812A624:: @ 0812A624
	.incbin "baserom.gba", 0x12A624, 0x0000008

gUnk_0812A62C:: @ 0812A62C
	.incbin "baserom.gba", 0x12A62C, 0x0000008

gUnk_0812A634:: @ 0812A634
	.incbin "baserom.gba", 0x12A634, 0x0000008

gUnk_0812A63C:: @ 0812A63C
	.incbin "baserom.gba", 0x12A63C, 0x0000020

gUnk_0812A65C:: @ 0812A65C
	.incbin "baserom.gba", 0x12A65C, 0x0000009

gUnk_0812A665:: @ 0812A665
	.incbin "baserom.gba", 0x12A665, 0x0000009

gUnk_0812A66E:: @ 0812A66E
	.incbin "baserom.gba", 0x12A66E, 0x0000009

gUnk_0812A677:: @ 0812A677
	.incbin "baserom.gba", 0x12A677, 0x0000009

gUnk_0812A680:: @ 0812A680
	.incbin "baserom.gba", 0x12A680, 0x0000009

gUnk_0812A689:: @ 0812A689
	.incbin "baserom.gba", 0x12A689, 0x000000B

gUnk_0812A694:: @ 0812A694
	.incbin "baserom.gba", 0x12A694, 0x0000020

gUnk_0812A6B4:: @ 0812A6B4
	.incbin "baserom.gba", 0x12A6B4, 0x0000008

gUnk_0812A6BC:: @ 0812A6BC
	.incbin "baserom.gba", 0x12A6BC, 0x0000008

gUnk_0812A6C4:: @ 0812A6C4
	.incbin "baserom.gba", 0x12A6C4, 0x0000008

gUnk_0812A6CC:: @ 0812A6CC
	.incbin "baserom.gba", 0x12A6CC, 0x0000008

gUnk_0812A6D4:: @ 0812A6D4
	.incbin "baserom.gba", 0x12A6D4, 0x000000E

gUnk_0812A6E2:: @ 0812A6E2
	.incbin "baserom.gba", 0x12A6E2, 0x000000D

gUnk_0812A6EF:: @ 0812A6EF
	.incbin "baserom.gba", 0x12A6EF, 0x000000D

gUnk_0812A6FC:: @ 0812A6FC
	.incbin "baserom.gba", 0x12A6FC, 0x000000D

gUnk_0812A709:: @ 0812A709
	.incbin "baserom.gba", 0x12A709, 0x000000D

gUnk_0812A716:: @ 0812A716
	.incbin "baserom.gba", 0x12A716, 0x000000D

gUnk_0812A723:: @ 0812A723
	.incbin "baserom.gba", 0x12A723, 0x000000D

gUnk_0812A730:: @ 0812A730
	.incbin "baserom.gba", 0x12A730, 0x000000D

gUnk_0812A73D:: @ 0812A73D
	.incbin "baserom.gba", 0x12A73D, 0x000000D

gUnk_0812A74A:: @ 0812A74A
	.incbin "baserom.gba", 0x12A74A, 0x000000D

gUnk_0812A757:: @ 0812A757
	.incbin "baserom.gba", 0x12A757, 0x000000D

gUnk_0812A764:: @ 0812A764
	.incbin "baserom.gba", 0x12A764, 0x000000D

gUnk_0812A771:: @ 0812A771
	.incbin "baserom.gba", 0x12A771, 0x000000D

gUnk_0812A77E:: @ 0812A77E
	.incbin "baserom.gba", 0x12A77E, 0x000000D

gUnk_0812A78B:: @ 0812A78B
	.incbin "baserom.gba", 0x12A78B, 0x000000D

gUnk_0812A798:: @ 0812A798
	.incbin "baserom.gba", 0x12A798, 0x000003C

gUnk_0812A7D4:: @ 0812A7D4
	.incbin "baserom.gba", 0x12A7D4, 0x0000018

gUnk_0812A7EC:: @ 0812A7EC
	.incbin "baserom.gba", 0x12A7EC, 0x000000C

gUnk_0812A7F8:: @ 0812A7F8
	.incbin "baserom.gba", 0x12A7F8, 0x0000008

gUnk_0812A800:: @ 0812A800
	.incbin "baserom.gba", 0x12A800, 0x0000008

gUnk_0812A808:: @ 0812A808
	.incbin "baserom.gba", 0x12A808, 0x000000C

gUnk_0812A814:: @ 0812A814
	.incbin "baserom.gba", 0x12A814, 0x0000011

gUnk_0812A825:: @ 0812A825
	.incbin "baserom.gba", 0x12A825, 0x000001B

gUnk_0812A840:: @ 0812A840
	.incbin "baserom.gba", 0x12A840, 0x000000C

gUnk_0812A84C:: @ 0812A84C
	.incbin "baserom.gba", 0x12A84C, 0x0000014

gUnk_0812A860:: @ 0812A860
	.incbin "baserom.gba", 0x12A860, 0x0000011

gUnk_0812A871:: @ 0812A871
	.incbin "baserom.gba", 0x12A871, 0x0000059

gUnk_0812A8CA:: @ 0812A8CA
	.incbin "baserom.gba", 0x12A8CA, 0x0000061

gUnk_0812A92B:: @ 0812A92B
	.incbin "baserom.gba", 0x12A92B, 0x0000015

gUnk_0812A940:: @ 0812A940
	.incbin "baserom.gba", 0x12A940, 0x0000014

gUnk_0812A954:: @ 0812A954
	.incbin "baserom.gba", 0x12A954, 0x0000014

gUnk_0812A968:: @ 0812A968
	.incbin "baserom.gba", 0x12A968, 0x0000014

gUnk_0812A97C:: @ 0812A97C
	.incbin "baserom.gba", 0x12A97C, 0x0000006

gUnk_0812A982:: @ 0812A982
	.incbin "baserom.gba", 0x12A982, 0x0000008

gUnk_0812A98A:: @ 0812A98A
	.incbin "baserom.gba", 0x12A98A, 0x000000A

gUnk_0812A994:: @ 0812A994
	.incbin "baserom.gba", 0x12A994, 0x0000014

gUnk_0812A9A8:: @ 0812A9A8
	.incbin "baserom.gba", 0x12A9A8, 0x000000C

gUnk_0812A9B4:: @ 0812A9B4
	.incbin "baserom.gba", 0x12A9B4, 0x0000004

gUnk_0812A9B8:: @ 0812A9B8
	.incbin "baserom.gba", 0x12A9B8, 0x0000002

gUnk_0812A9BA:: @ 0812A9BA
	.incbin "baserom.gba", 0x12A9BA, 0x0000006

gUnk_0812A9C0:: @ 0812A9C0
	.incbin "baserom.gba", 0x12A9C0, 0x0000018

gUnk_0812A9D8:: @ 0812A9D8
	.incbin "baserom.gba", 0x12A9D8, 0x0000014

gUnk_0812A9EC:: @ 0812A9EC
	.incbin "baserom.gba", 0x12A9EC, 0x0000010

gUnk_0812A9FC:: @ 0812A9FC
	.incbin "baserom.gba", 0x12A9FC, 0x0000035

gUnk_0812AA31:: @ 0812AA31
	.incbin "baserom.gba", 0x12AA31, 0x000001F

gUnk_0812AA50:: @ 0812AA50
	.incbin "baserom.gba", 0x12AA50, 0x000000C

gUnk_0812AA5C:: @ 0812AA5C
	.incbin "baserom.gba", 0x12AA5C, 0x0000018

gUnk_0812AA74:: @ 0812AA74
	.incbin "baserom.gba", 0x12AA74, 0x000000C

gUnk_0812AA80:: @ 0812AA80
	.incbin "baserom.gba", 0x12AA80, 0x0000008

gUnk_0812AA88:: @ 0812AA88
	.incbin "baserom.gba", 0x12AA88, 0x0000009

gUnk_0812AA91:: @ 0812AA91
	.incbin "baserom.gba", 0x12AA91, 0x0000009

gUnk_0812AA9A:: @ 0812AA9A
	.incbin "baserom.gba", 0x12AA9A, 0x0000012

gUnk_0812AAAC:: @ 0812AAAC
	.incbin "baserom.gba", 0x12AAAC, 0x0000010

gUnk_0812AABC:: @ 0812AABC
	.incbin "baserom.gba", 0x12AABC, 0x0000004

gUnk_0812AAC0:: @ 0812AAC0
	.incbin "baserom.gba", 0x12AAC0, 0x0000008

gUnk_0812AAC8:: @ 0812AAC8
	.incbin "baserom.gba", 0x12AAC8, 0x0000008

gUnk_0812AAD0:: @ 0812AAD0
	.incbin "baserom.gba", 0x12AAD0, 0x0000008

gUnk_0812AAD8:: @ 0812AAD8
	.incbin "baserom.gba", 0x12AAD8, 0x0000010

gUnk_0812AAE8:: @ 0812AAE8
	.incbin "baserom.gba", 0x12AAE8, 0x000019C

gUnk_0812AC84:: @ 0812AC84
	.incbin "baserom.gba", 0x12AC84, 0x0000004

gUnk_0812AC88:: @ 0812AC88
	.incbin "baserom.gba", 0x12AC88, 0x000000C

gUnk_0812AC94:: @ 0812AC94
	.incbin "baserom.gba", 0x12AC94, 0x0000010

gUnk_0812ACA4:: @ 0812ACA4
	.incbin "baserom.gba", 0x12ACA4, 0x000000C

gUnk_0812ACB0:: @ 0812ACB0
	.incbin "baserom.gba", 0x12ACB0, 0x0000010

gUnk_0812ACC0:: @ 0812ACC0
	.incbin "baserom.gba", 0x12ACC0, 0x000000C

gUnk_0812ACCC:: @ 0812ACCC
	.incbin "baserom.gba", 0x12ACCC, 0x000000C

gUnk_0812ACD8:: @ 0812ACD8
	.incbin "baserom.gba", 0x12ACD8, 0x000000C

gUnk_0812ACE4:: @ 0812ACE4
	.incbin "baserom.gba", 0x12ACE4, 0x000000C

gUnk_0812ACF0:: @ 0812ACF0
	.incbin "baserom.gba", 0x12ACF0, 0x0000010

gUnk_0812AD00:: @ 0812AD00
	.incbin "baserom.gba", 0x12AD00, 0x000000C

gUnk_0812AD0C:: @ 0812AD0C
	.incbin "baserom.gba", 0x12AD0C, 0x0000014

gUnk_0812AD20:: @ 0812AD20
	.incbin "baserom.gba", 0x12AD20, 0x0000010

gUnk_0812AD30:: @ 0812AD30
	.incbin "baserom.gba", 0x12AD30, 0x0000010

gUnk_0812AD40:: @ 0812AD40
	.incbin "baserom.gba", 0x12AD40, 0x0000014

gUnk_0812AD54:: @ 0812AD54
	.incbin "baserom.gba", 0x12AD54, 0x0000010

gUnk_0812AD64:: @ 0812AD64
	.incbin "baserom.gba", 0x12AD64, 0x000000C

gUnk_0812AD70:: @ 0812AD70
	.incbin "baserom.gba", 0x12AD70, 0x000000C

gUnk_0812AD7C:: @ 0812AD7C
	.incbin "baserom.gba", 0x12AD7C, 0x0000010

gUnk_0812AD8C:: @ 0812AD8C
	.incbin "baserom.gba", 0x12AD8C, 0x000000C

gUnk_0812AD98:: @ 0812AD98
	.incbin "baserom.gba", 0x12AD98, 0x0000008

gUnk_0812ADA0:: @ 0812ADA0
	.incbin "baserom.gba", 0x12ADA0, 0x0000010

gUnk_0812ADB0:: @ 0812ADB0
	.incbin "baserom.gba", 0x12ADB0, 0x000000C

gUnk_0812ADBC:: @ 0812ADBC
	.incbin "baserom.gba", 0x12ADBC, 0x0000010

gUnk_0812ADCC:: @ 0812ADCC
	.incbin "baserom.gba", 0x12ADCC, 0x0000010

gUnk_0812ADDC:: @ 0812ADDC
	.incbin "baserom.gba", 0x12ADDC, 0x0000010

gUnk_0812ADEC:: @ 0812ADEC
	.incbin "baserom.gba", 0x12ADEC, 0x0000010

gUnk_0812ADFC:: @ 0812ADFC
	.incbin "baserom.gba", 0x12ADFC, 0x0000010

gUnk_0812AE0C:: @ 0812AE0C
	.incbin "baserom.gba", 0x12AE0C, 0x0000008

gUnk_0812AE14:: @ 0812AE14
	.incbin "baserom.gba", 0x12AE14, 0x0000010

gUnk_0812AE24:: @ 0812AE24
	.incbin "baserom.gba", 0x12AE24, 0x0000014

gUnk_0812AE38:: @ 0812AE38
	.incbin "baserom.gba", 0x12AE38, 0x0000010

gUnk_0812AE48:: @ 0812AE48
	.incbin "baserom.gba", 0x12AE48, 0x0000014

gUnk_0812AE5C:: @ 0812AE5C
	.incbin "baserom.gba", 0x12AE5C, 0x0000002

gUnk_0812AE5E:: @ 0812AE5E
	.incbin "baserom.gba", 0x12AE5E, 0x000000E

gUnk_0812AE6C:: @ 0812AE6C
	.incbin "baserom.gba", 0x12AE6C, 0x0000010

gUnk_0812AE7C:: @ 0812AE7C
	.incbin "baserom.gba", 0x12AE7C, 0x0000010

gUnk_0812AE8C:: @ 0812AE8C
	.incbin "baserom.gba", 0x12AE8C, 0x0000014

gUnk_0812AEA0:: @ 0812AEA0
	.incbin "baserom.gba", 0x12AEA0, 0x0000014

gUnk_0812AEB4:: @ 0812AEB4
	.incbin "baserom.gba", 0x12AEB4, 0x0000014

gUnk_0812AEC8:: @ 0812AEC8
	.incbin "baserom.gba", 0x12AEC8, 0x0000014

gUnk_0812AEDC:: @ 0812AEDC
	.incbin "baserom.gba", 0x12AEDC, 0x0000008

gUnk_0812AEE4:: @ 0812AEE4
	.incbin "baserom.gba", 0x12AEE4, 0x0000008

gUnk_0812AEEC:: @ 0812AEEC
	.incbin "baserom.gba", 0x12AEEC, 0x0000008

gUnk_0812AEF4:: @ 0812AEF4
	.incbin "baserom.gba", 0x12AEF4, 0x0000010

gUnk_0812AF04:: @ 0812AF04
	.incbin "baserom.gba", 0x12AF04, 0x000000C

gUnk_0812AF10:: @ 0812AF10
	.incbin "baserom.gba", 0x12AF10, 0x000000C

gUnk_0812AF1C:: @ 0812AF1C
	.incbin "baserom.gba", 0x12AF1C, 0x000000C

gUnk_0812AF28:: @ 0812AF28
	.incbin "baserom.gba", 0x12AF28, 0x000000C

gUnk_0812AF34:: @ 0812AF34
	.incbin "baserom.gba", 0x12AF34, 0x000000C

gUnk_0812AF40:: @ 0812AF40
	.incbin "baserom.gba", 0x12AF40, 0x000000C

gUnk_0812AF4C:: @ 0812AF4C
	.incbin "baserom.gba", 0x12AF4C, 0x000000C

gUnk_0812AF58:: @ 0812AF58
	.incbin "baserom.gba", 0x12AF58, 0x000000C

gUnk_0812AF64:: @ 0812AF64
	.incbin "baserom.gba", 0x12AF64, 0x000000C

gUnk_0812AF70:: @ 0812AF70
	.incbin "baserom.gba", 0x12AF70, 0x0000014

gUnk_0812AF84:: @ 0812AF84
	.incbin "baserom.gba", 0x12AF84, 0x0000010

gUnk_0812AF94:: @ 0812AF94
	.incbin "baserom.gba", 0x12AF94, 0x0000010

gUnk_0812AFA4:: @ 0812AFA4
	.incbin "baserom.gba", 0x12AFA4, 0x0000014

gUnk_0812AFB8:: @ 0812AFB8
	.incbin "baserom.gba", 0x12AFB8, 0x0000014

gUnk_0812AFCC:: @ 0812AFCC
	.incbin "baserom.gba", 0x12AFCC, 0x0000014

gUnk_0812AFE0:: @ 0812AFE0
	.incbin "baserom.gba", 0x12AFE0, 0x0000014

gUnk_0812AFF4:: @ 0812AFF4
	.incbin "baserom.gba", 0x12AFF4, 0x0000010

gUnk_0812B004:: @ 0812B004
	.incbin "baserom.gba", 0x12B004, 0x000000C

gUnk_0812B010:: @ 0812B010
	.incbin "baserom.gba", 0x12B010, 0x0000008

gUnk_0812B018:: @ 0812B018
	.incbin "baserom.gba", 0x12B018, 0x0000010

gUnk_0812B028:: @ 0812B028
	.incbin "baserom.gba", 0x12B028, 0x000000C

gUnk_0812B034:: @ 0812B034
	.incbin "baserom.gba", 0x12B034, 0x0000010

gUnk_0812B044:: @ 0812B044
	.incbin "baserom.gba", 0x12B044, 0x000000C

gUnk_0812B050:: @ 0812B050
	.incbin "baserom.gba", 0x12B050, 0x000000C

gUnk_0812B05C:: @ 0812B05C
	.incbin "baserom.gba", 0x12B05C, 0x0000010

gUnk_0812B06C:: @ 0812B06C
	.incbin "baserom.gba", 0x12B06C, 0x0000010

gUnk_0812B07C:: @ 0812B07C
	.incbin "baserom.gba", 0x12B07C, 0x0000010

gUnk_0812B08C:: @ 0812B08C
	.incbin "baserom.gba", 0x12B08C, 0x000000C

gUnk_0812B098:: @ 0812B098
	.incbin "baserom.gba", 0x12B098, 0x0000008

gUnk_0812B0A0:: @ 0812B0A0
	.incbin "baserom.gba", 0x12B0A0, 0x000000C

gUnk_0812B0AC:: @ 0812B0AC
	.incbin "baserom.gba", 0x12B0AC, 0x0000010

gUnk_0812B0BC:: @ 0812B0BC
	.incbin "baserom.gba", 0x12B0BC, 0x0000010

gUnk_0812B0CC:: @ 0812B0CC
	.incbin "baserom.gba", 0x12B0CC, 0x0000010

gUnk_0812B0DC:: @ 0812B0DC
	.incbin "baserom.gba", 0x12B0DC, 0x0000010

gUnk_0812B0EC:: @ 0812B0EC
	.incbin "baserom.gba", 0x12B0EC, 0x0000010

gUnk_0812B0FC:: @ 0812B0FC
	.incbin "baserom.gba", 0x12B0FC, 0x0000008

gUnk_0812B104:: @ 0812B104
	.incbin "baserom.gba", 0x12B104, 0x000000C

gUnk_0812B110:: @ 0812B110
	.incbin "baserom.gba", 0x12B110, 0x000000C

gUnk_0812B11C:: @ 0812B11C
	.incbin "baserom.gba", 0x12B11C, 0x0000008

gUnk_0812B124:: @ 0812B124
	.incbin "baserom.gba", 0x12B124, 0x0000014

gUnk_0812B138:: @ 0812B138
	.incbin "baserom.gba", 0x12B138, 0x000000C

gUnk_0812B144:: @ 0812B144
	.incbin "baserom.gba", 0x12B144, 0x000000C

gUnk_0812B150:: @ 0812B150
	.incbin "baserom.gba", 0x12B150, 0x000000C

gUnk_0812B15C:: @ 0812B15C
	.incbin "baserom.gba", 0x12B15C, 0x000000C

gUnk_0812B168:: @ 0812B168
	.incbin "baserom.gba", 0x12B168, 0x000000C

gUnk_0812B174:: @ 0812B174
	.incbin "baserom.gba", 0x12B174, 0x000000C

gUnk_0812B180:: @ 0812B180
	.incbin "baserom.gba", 0x12B180, 0x000000C

gUnk_0812B18C:: @ 0812B18C
	.incbin "baserom.gba", 0x12B18C, 0x000000C

gUnk_0812B198:: @ 0812B198
	.incbin "baserom.gba", 0x12B198, 0x000000C

gUnk_0812B1A4:: @ 0812B1A4
	.incbin "baserom.gba", 0x12B1A4, 0x000000C

gUnk_0812B1B0:: @ 0812B1B0
	.incbin "baserom.gba", 0x12B1B0, 0x000000C

gUnk_0812B1BC:: @ 0812B1BC
	.incbin "baserom.gba", 0x12B1BC, 0x000000C

gUnk_0812B1C8:: @ 0812B1C8
	.incbin "baserom.gba", 0x12B1C8, 0x000000C

gUnk_0812B1D4:: @ 0812B1D4
	.incbin "baserom.gba", 0x12B1D4, 0x000000C

gUnk_0812B1E0:: @ 0812B1E0
	.incbin "baserom.gba", 0x12B1E0, 0x000000C

gUnk_0812B1EC:: @ 0812B1EC
	.incbin "baserom.gba", 0x12B1EC, 0x000000C

gUnk_0812B1F8:: @ 0812B1F8
	.incbin "baserom.gba", 0x12B1F8, 0x000000C

gUnk_0812B204:: @ 0812B204
	.incbin "baserom.gba", 0x12B204, 0x0000400

gUnk_0812B604:: @ 0812B604
	.incbin "baserom.gba", 0x12B604, 0x0000008

gUnk_0812B60C:: @ 0812B60C
	.incbin "baserom.gba", 0x12B60C, 0x0000008

gUnk_0812B614:: @ 0812B614
	.incbin "baserom.gba", 0x12B614, 0x0000008

gUnk_0812B61C:: @ 0812B61C
	.incbin "baserom.gba", 0x12B61C, 0x0000008

gUnk_0812B624:: @ 0812B624
	.incbin "baserom.gba", 0x12B624, 0x0000014

gUnk_0812B638:: @ 0812B638
	.incbin "baserom.gba", 0x12B638, 0x0000014

gUnk_0812B64C:: @ 0812B64C
	.incbin "baserom.gba", 0x12B64C, 0x0000010

gUnk_0812B65C:: @ 0812B65C
	.incbin "baserom.gba", 0x12B65C, 0x0000010

gUnk_0812B66C:: @ 0812B66C
	.incbin "baserom.gba", 0x12B66C, 0x0000010

gUnk_0812B67C:: @ 0812B67C
	.incbin "baserom.gba", 0x12B67C, 0x0000010

gUnk_0812B68C:: @ 0812B68C
	.incbin "baserom.gba", 0x12B68C, 0x0000014

gUnk_0812B6A0:: @ 0812B6A0
	.incbin "baserom.gba", 0x12B6A0, 0x0000014

gUnk_0812B6B4:: @ 0812B6B4
	.incbin "baserom.gba", 0x12B6B4, 0x0000014

gUnk_0812B6C8:: @ 0812B6C8
	.incbin "baserom.gba", 0x12B6C8, 0x0000014

gUnk_0812B6DC:: @ 0812B6DC
	.incbin "baserom.gba", 0x12B6DC, 0x0000014

gUnk_0812B6F0:: @ 0812B6F0
	.incbin "baserom.gba", 0x12B6F0, 0x0000010

gUnk_0812B700:: @ 0812B700
	.incbin "baserom.gba", 0x12B700, 0x0000014

gUnk_0812B714:: @ 0812B714
	.incbin "baserom.gba", 0x12B714, 0x0000010

gUnk_0812B724:: @ 0812B724
	.incbin "baserom.gba", 0x12B724, 0x0000010

gUnk_0812B734:: @ 0812B734
	.incbin "baserom.gba", 0x12B734, 0x0000010

gUnk_0812B744:: @ 0812B744
	.incbin "baserom.gba", 0x12B744, 0x0000010

gUnk_0812B754:: @ 0812B754
	.incbin "baserom.gba", 0x12B754, 0x0000010

gUnk_0812B764:: @ 0812B764
	.incbin "baserom.gba", 0x12B764, 0x0000010

gUnk_0812B774:: @ 0812B774
	.incbin "baserom.gba", 0x12B774, 0x0000010

gUnk_0812B784:: @ 0812B784
	.incbin "baserom.gba", 0x12B784, 0x0000010

gUnk_0812B794:: @ 0812B794
	.incbin "baserom.gba", 0x12B794, 0x0000010

gUnk_0812B7A4:: @ 0812B7A4
	.incbin "baserom.gba", 0x12B7A4, 0x0000010

gUnk_0812B7B4:: @ 0812B7B4
	.incbin "baserom.gba", 0x12B7B4, 0x0000010

gUnk_0812B7C4:: @ 0812B7C4
	.incbin "baserom.gba", 0x12B7C4, 0x0000010

gUnk_0812B7D4:: @ 0812B7D4
	.incbin "baserom.gba", 0x12B7D4, 0x0000010

gUnk_0812B7E4:: @ 0812B7E4
	.incbin "baserom.gba", 0x12B7E4, 0x0000010

gUnk_0812B7F4:: @ 0812B7F4
	.incbin "baserom.gba", 0x12B7F4, 0x0000010

gUnk_0812B804:: @ 0812B804
	.incbin "baserom.gba", 0x12B804, 0x0000010

gUnk_0812B814:: @ 0812B814
	.incbin "baserom.gba", 0x12B814, 0x000000C

gUnk_0812B820:: @ 0812B820
	.incbin "baserom.gba", 0x12B820, 0x0000010

gUnk_0812B830:: @ 0812B830
	.incbin "baserom.gba", 0x12B830, 0x0000010

gUnk_0812B840:: @ 0812B840
	.incbin "baserom.gba", 0x12B840, 0x0000010

gUnk_0812B850:: @ 0812B850
	.incbin "baserom.gba", 0x12B850, 0x0000010

gUnk_0812B860:: @ 0812B860
	.incbin "baserom.gba", 0x12B860, 0x0000010

gUnk_0812B870:: @ 0812B870
	.incbin "baserom.gba", 0x12B870, 0x0000010

gUnk_0812B880:: @ 0812B880
	.incbin "baserom.gba", 0x12B880, 0x0000010

gUnk_0812B890:: @ 0812B890
	.incbin "baserom.gba", 0x12B890, 0x0000010

gUnk_0812B8A0:: @ 0812B8A0
	.incbin "baserom.gba", 0x12B8A0, 0x0000010

gUnk_0812B8B0:: @ 0812B8B0
	.incbin "baserom.gba", 0x12B8B0, 0x000000C

gUnk_0812B8BC:: @ 0812B8BC
	.incbin "baserom.gba", 0x12B8BC, 0x0000010

gUnk_0812B8CC:: @ 0812B8CC
	.incbin "baserom.gba", 0x12B8CC, 0x0000010

gUnk_0812B8DC:: @ 0812B8DC
	.incbin "baserom.gba", 0x12B8DC, 0x0000010

gUnk_0812B8EC:: @ 0812B8EC
	.incbin "baserom.gba", 0x12B8EC, 0x0000010

gUnk_0812B8FC:: @ 0812B8FC
	.incbin "baserom.gba", 0x12B8FC, 0x0000010

gUnk_0812B90C:: @ 0812B90C
	.incbin "baserom.gba", 0x12B90C, 0x0000010

gUnk_0812B91C:: @ 0812B91C
	.incbin "baserom.gba", 0x12B91C, 0x000000C

gUnk_0812B928:: @ 0812B928
	.incbin "baserom.gba", 0x12B928, 0x000000C

gUnk_0812B934:: @ 0812B934
	.incbin "baserom.gba", 0x12B934, 0x000000C

gUnk_0812B940:: @ 0812B940
	.incbin "baserom.gba", 0x12B940, 0x0000018

gUnk_0812B958:: @ 0812B958
	.incbin "baserom.gba", 0x12B958, 0x0000010

gUnk_0812B968:: @ 0812B968
	.incbin "baserom.gba", 0x12B968, 0x0000010

gUnk_0812B978:: @ 0812B978
	.incbin "baserom.gba", 0x12B978, 0x0000010

gUnk_0812B988:: @ 0812B988
	.incbin "baserom.gba", 0x12B988, 0x0000010

gUnk_0812B998:: @ 0812B998
	.incbin "baserom.gba", 0x12B998, 0x0000010

gUnk_0812B9A8:: @ 0812B9A8
	.incbin "baserom.gba", 0x12B9A8, 0x0000010

gUnk_0812B9B8:: @ 0812B9B8
	.incbin "baserom.gba", 0x12B9B8, 0x0000010

gUnk_0812B9C8:: @ 0812B9C8
	.incbin "baserom.gba", 0x12B9C8, 0x0000010

gUnk_0812B9D8:: @ 0812B9D8
	.incbin "baserom.gba", 0x12B9D8, 0x0000010

gUnk_0812B9E8:: @ 0812B9E8
	.incbin "baserom.gba", 0x12B9E8, 0x0000010

gUnk_0812B9F8:: @ 0812B9F8
	.incbin "baserom.gba", 0x12B9F8, 0x0000010

gUnk_0812BA08:: @ 0812BA08
	.incbin "baserom.gba", 0x12BA08, 0x0000010

gUnk_0812BA18:: @ 0812BA18
	.incbin "baserom.gba", 0x12BA18, 0x0000010

gUnk_0812BA28:: @ 0812BA28
	.incbin "baserom.gba", 0x12BA28, 0x0000010

gUnk_0812BA38:: @ 0812BA38
	.incbin "baserom.gba", 0x12BA38, 0x0000010

gUnk_0812BA48:: @ 0812BA48
	.incbin "baserom.gba", 0x12BA48, 0x0000010

gUnk_0812BA58:: @ 0812BA58
	.incbin "baserom.gba", 0x12BA58, 0x0000010

gUnk_0812BA68:: @ 0812BA68
	.incbin "baserom.gba", 0x12BA68, 0x0000010

gUnk_0812BA78:: @ 0812BA78
	.incbin "baserom.gba", 0x12BA78, 0x0000010

gUnk_0812BA88:: @ 0812BA88
	.incbin "baserom.gba", 0x12BA88, 0x0000003

gUnk_0812BA8B:: @ 0812BA8B
	.incbin "baserom.gba", 0x12BA8B, 0x0000009

gUnk_0812BA94:: @ 0812BA94
	.incbin "baserom.gba", 0x12BA94, 0x000000C

gUnk_0812BAA0:: @ 0812BAA0
	.incbin "baserom.gba", 0x12BAA0, 0x000000C

gUnk_0812BAAC:: @ 0812BAAC
	.incbin "baserom.gba", 0x12BAAC, 0x000000C

gUnk_0812BAB8:: @ 0812BAB8
	.incbin "baserom.gba", 0x12BAB8, 0x000000C

gUnk_0812BAC4:: @ 0812BAC4
	.incbin "baserom.gba", 0x12BAC4, 0x0000010

gUnk_0812BAD4:: @ 0812BAD4
	.incbin "baserom.gba", 0x12BAD4, 0x0000010

gUnk_0812BAE4:: @ 0812BAE4
	.incbin "baserom.gba", 0x12BAE4, 0x0000018

gUnk_0812BAFC:: @ 0812BAFC
	.incbin "baserom.gba", 0x12BAFC, 0x0000010

gUnk_0812BB0C:: @ 0812BB0C
	.incbin "baserom.gba", 0x12BB0C, 0x0000010

gUnk_0812BB1C:: @ 0812BB1C
	.incbin "baserom.gba", 0x12BB1C, 0x0000010

gUnk_0812BB2C:: @ 0812BB2C
	.incbin "baserom.gba", 0x12BB2C, 0x0000010

gUnk_0812BB3C:: @ 0812BB3C
	.incbin "baserom.gba", 0x12BB3C, 0x0000010

gUnk_0812BB4C:: @ 0812BB4C
	.incbin "baserom.gba", 0x12BB4C, 0x0000010

gUnk_0812BB5C:: @ 0812BB5C
	.incbin "baserom.gba", 0x12BB5C, 0x0000010

gUnk_0812BB6C:: @ 0812BB6C
	.incbin "baserom.gba", 0x12BB6C, 0x0000010

gUnk_0812BB7C:: @ 0812BB7C
	.incbin "baserom.gba", 0x12BB7C, 0x0000010

gUnk_0812BB8C:: @ 0812BB8C
	.incbin "baserom.gba", 0x12BB8C, 0x0000010

gUnk_0812BB9C:: @ 0812BB9C
	.incbin "baserom.gba", 0x12BB9C, 0x0000010

gUnk_0812BBAC:: @ 0812BBAC
	.incbin "baserom.gba", 0x12BBAC, 0x0000014

gUnk_0812BBC0:: @ 0812BBC0
	.incbin "baserom.gba", 0x12BBC0, 0x0000014

gUnk_0812BBD4:: @ 0812BBD4
	.incbin "baserom.gba", 0x12BBD4, 0x0000010

gUnk_0812BBE4:: @ 0812BBE4
	.incbin "baserom.gba", 0x12BBE4, 0x0000010

gUnk_0812BBF4:: @ 0812BBF4
	.incbin "baserom.gba", 0x12BBF4, 0x0000014

gUnk_0812BC08:: @ 0812BC08
	.incbin "baserom.gba", 0x12BC08, 0x0000010

gUnk_0812BC18:: @ 0812BC18
	.incbin "baserom.gba", 0x12BC18, 0x0000010

gUnk_0812BC28:: @ 0812BC28
	.incbin "baserom.gba", 0x12BC28, 0x000000A

gUnk_0812BC32:: @ 0812BC32
	.incbin "baserom.gba", 0x12BC32, 0x0000006

gUnk_0812BC38:: @ 0812BC38
	.incbin "baserom.gba", 0x12BC38, 0x0000010

gUnk_0812BC48:: @ 0812BC48
	.incbin "baserom.gba", 0x12BC48, 0x0000010

gUnk_0812BC58:: @ 0812BC58
	.incbin "baserom.gba", 0x12BC58, 0x0000010

gUnk_0812BC68:: @ 0812BC68
	.incbin "baserom.gba", 0x12BC68, 0x0000010

gUnk_0812BC78:: @ 0812BC78
	.incbin "baserom.gba", 0x12BC78, 0x0000010

gUnk_0812BC88:: @ 0812BC88
	.incbin "baserom.gba", 0x12BC88, 0x0000010

gUnk_0812BC98:: @ 0812BC98
	.incbin "baserom.gba", 0x12BC98, 0x0000010

gUnk_0812BCA8:: @ 0812BCA8
	.incbin "baserom.gba", 0x12BCA8, 0x0000010

gUnk_0812BCB8:: @ 0812BCB8
	.incbin "baserom.gba", 0x12BCB8, 0x0000010

gUnk_0812BCC8:: @ 0812BCC8
	.incbin "baserom.gba", 0x12BCC8, 0x0000010

gUnk_0812BCD8:: @ 0812BCD8
	.incbin "baserom.gba", 0x12BCD8, 0x0000010

gUnk_0812BCE8:: @ 0812BCE8
	.incbin "baserom.gba", 0x12BCE8, 0x0000010

gUnk_0812BCF8:: @ 0812BCF8
	.incbin "baserom.gba", 0x12BCF8, 0x0000014

gUnk_0812BD0C:: @ 0812BD0C
	.incbin "baserom.gba", 0x12BD0C, 0x0000014

gUnk_0812BD20:: @ 0812BD20
	.incbin "baserom.gba", 0x12BD20, 0x0000010

gUnk_0812BD30:: @ 0812BD30
	.incbin "baserom.gba", 0x12BD30, 0x0000014

gUnk_0812BD44:: @ 0812BD44
	.incbin "baserom.gba", 0x12BD44, 0x0000014

gUnk_0812BD58:: @ 0812BD58
	.incbin "baserom.gba", 0x12BD58, 0x0000014

gUnk_0812BD6C:: @ 0812BD6C
	.incbin "baserom.gba", 0x12BD6C, 0x0000014

gUnk_0812BD80:: @ 0812BD80
	.incbin "baserom.gba", 0x12BD80, 0x0000014

gUnk_0812BD94:: @ 0812BD94
	.incbin "baserom.gba", 0x12BD94, 0x0000014

gUnk_0812BDA8:: @ 0812BDA8
	.incbin "baserom.gba", 0x12BDA8, 0x0000014

gUnk_0812BDBC:: @ 0812BDBC
	.incbin "baserom.gba", 0x12BDBC, 0x0000014

gUnk_0812BDD0:: @ 0812BDD0
	.incbin "baserom.gba", 0x12BDD0, 0x0000014

gUnk_0812BDE4:: @ 0812BDE4
	.incbin "baserom.gba", 0x12BDE4, 0x0000010

gUnk_0812BDF4:: @ 0812BDF4
	.incbin "baserom.gba", 0x12BDF4, 0x0000010

gUnk_0812BE04:: @ 0812BE04
	.incbin "baserom.gba", 0x12BE04, 0x0000010

gUnk_0812BE14:: @ 0812BE14
	.incbin "baserom.gba", 0x12BE14, 0x0000010

gUnk_0812BE24:: @ 0812BE24
	.incbin "baserom.gba", 0x12BE24, 0x0000010

gUnk_0812BE34:: @ 0812BE34
	.incbin "baserom.gba", 0x12BE34, 0x0000010

gUnk_0812BE44:: @ 0812BE44
	.incbin "baserom.gba", 0x12BE44, 0x0000010

gUnk_0812BE54:: @ 0812BE54
	.incbin "baserom.gba", 0x12BE54, 0x0000014

gUnk_0812BE68:: @ 0812BE68
	.incbin "baserom.gba", 0x12BE68, 0x0000014

gUnk_0812BE7C:: @ 0812BE7C
	.incbin "baserom.gba", 0x12BE7C, 0x0000014

gUnk_0812BE90:: @ 0812BE90
	.incbin "baserom.gba", 0x12BE90, 0x0000014

gUnk_0812BEA4:: @ 0812BEA4
	.incbin "baserom.gba", 0x12BEA4, 0x0000014

gUnk_0812BEB8:: @ 0812BEB8
	.incbin "baserom.gba", 0x12BEB8, 0x0000014

gUnk_0812BECC:: @ 0812BECC
	.incbin "baserom.gba", 0x12BECC, 0x0000014

gUnk_0812BEE0:: @ 0812BEE0
	.incbin "baserom.gba", 0x12BEE0, 0x0000014

gUnk_0812BEF4:: @ 0812BEF4
	.incbin "baserom.gba", 0x12BEF4, 0x0000014

gUnk_0812BF08:: @ 0812BF08
	.incbin "baserom.gba", 0x12BF08, 0x0000014

gUnk_0812BF1C:: @ 0812BF1C
	.incbin "baserom.gba", 0x12BF1C, 0x0000014

gUnk_0812BF30:: @ 0812BF30
	.incbin "baserom.gba", 0x12BF30, 0x0000014

gUnk_0812BF44:: @ 0812BF44
	.incbin "baserom.gba", 0x12BF44, 0x0000010

gUnk_0812BF54:: @ 0812BF54
	.incbin "baserom.gba", 0x12BF54, 0x0000010

gUnk_0812BF64:: @ 0812BF64
	.incbin "baserom.gba", 0x12BF64, 0x0000010

gUnk_0812BF74:: @ 0812BF74
	.incbin "baserom.gba", 0x12BF74, 0x0000014

gUnk_0812BF88:: @ 0812BF88
	.incbin "baserom.gba", 0x12BF88, 0x0000014

gUnk_0812BF9C:: @ 0812BF9C
	.incbin "baserom.gba", 0x12BF9C, 0x0000014

gUnk_0812BFB0:: @ 0812BFB0
	.incbin "baserom.gba", 0x12BFB0, 0x0000014

gUnk_0812BFC4:: @ 0812BFC4
	.incbin "baserom.gba", 0x12BFC4, 0x0000014

gUnk_0812BFD8:: @ 0812BFD8
	.incbin "baserom.gba", 0x12BFD8, 0x0000014

gUnk_0812BFEC:: @ 0812BFEC
	.incbin "baserom.gba", 0x12BFEC, 0x0000014

gUnk_0812C000:: @ 0812C000
	.incbin "baserom.gba", 0x12C000, 0x0000014

gUnk_0812C014:: @ 0812C014
	.incbin "baserom.gba", 0x12C014, 0x0000014

gUnk_0812C028:: @ 0812C028
	.incbin "baserom.gba", 0x12C028, 0x0000014

gUnk_0812C03C:: @ 0812C03C
	.incbin "baserom.gba", 0x12C03C, 0x0000014

gUnk_0812C050:: @ 0812C050
	.incbin "baserom.gba", 0x12C050, 0x0000014

gUnk_0812C064:: @ 0812C064
	.incbin "baserom.gba", 0x12C064, 0x0000014

gUnk_0812C078:: @ 0812C078
	.incbin "baserom.gba", 0x12C078, 0x0000010

gUnk_0812C088:: @ 0812C088
	.incbin "baserom.gba", 0x12C088, 0x000000C

gUnk_0812C094:: @ 0812C094
	.incbin "baserom.gba", 0x12C094, 0x0000010

gUnk_0812C0A4:: @ 0812C0A4
	.incbin "baserom.gba", 0x12C0A4, 0x0000010

gUnk_0812C0B4:: @ 0812C0B4
	.incbin "baserom.gba", 0x12C0B4, 0x0000010

gUnk_0812C0C4:: @ 0812C0C4
	.incbin "baserom.gba", 0x12C0C4, 0x0000010

gUnk_0812C0D4:: @ 0812C0D4
	.incbin "baserom.gba", 0x12C0D4, 0x0000010

gUnk_0812C0E4:: @ 0812C0E4
	.incbin "baserom.gba", 0x12C0E4, 0x0000010

gUnk_0812C0F4:: @ 0812C0F4
	.incbin "baserom.gba", 0x12C0F4, 0x0000014

gUnk_0812C108:: @ 0812C108
	.incbin "baserom.gba", 0x12C108, 0x0000014

gUnk_0812C11C:: @ 0812C11C
	.incbin "baserom.gba", 0x12C11C, 0x0000014

gUnk_0812C130:: @ 0812C130
	.incbin "baserom.gba", 0x12C130, 0x000000C

gUnk_0812C13C:: @ 0812C13C
	.incbin "baserom.gba", 0x12C13C, 0x000000C

gUnk_0812C148:: @ 0812C148
	.incbin "baserom.gba", 0x12C148, 0x000000C

gUnk_0812C154:: @ 0812C154
	.incbin "baserom.gba", 0x12C154, 0x000000C

gUnk_0812C160:: @ 0812C160
	.incbin "baserom.gba", 0x12C160, 0x000000C

gUnk_0812C16C:: @ 0812C16C
	.incbin "baserom.gba", 0x12C16C, 0x0000010

gUnk_0812C17C:: @ 0812C17C
	.incbin "baserom.gba", 0x12C17C, 0x0000010

gUnk_0812C18C:: @ 0812C18C
	.incbin "baserom.gba", 0x12C18C, 0x000000C

gUnk_0812C198:: @ 0812C198
	.incbin "baserom.gba", 0x12C198, 0x0000010

gUnk_0812C1A8:: @ 0812C1A8
	.incbin "baserom.gba", 0x12C1A8, 0x0000010

gUnk_0812C1B8:: @ 0812C1B8
	.incbin "baserom.gba", 0x12C1B8, 0x0000010

gUnk_0812C1C8:: @ 0812C1C8
	.incbin "baserom.gba", 0x12C1C8, 0x0000010

gUnk_0812C1D8:: @ 0812C1D8
	.incbin "baserom.gba", 0x12C1D8, 0x0000010

gUnk_0812C1E8:: @ 0812C1E8
	.incbin "baserom.gba", 0x12C1E8, 0x000000C

gUnk_0812C1F4:: @ 0812C1F4
	.incbin "baserom.gba", 0x12C1F4, 0x000000C

gUnk_0812C200:: @ 0812C200
	.incbin "baserom.gba", 0x12C200, 0x000000C

gUnk_0812C20C:: @ 0812C20C
	.incbin "baserom.gba", 0x12C20C, 0x000000C

gUnk_0812C218:: @ 0812C218
	.incbin "baserom.gba", 0x12C218, 0x0000010

gUnk_0812C228:: @ 0812C228
	.incbin "baserom.gba", 0x12C228, 0x000000C

gUnk_0812C234:: @ 0812C234
	.incbin "baserom.gba", 0x12C234, 0x000000C

gUnk_0812C240:: @ 0812C240
	.incbin "baserom.gba", 0x12C240, 0x0000014

gUnk_0812C254:: @ 0812C254
	.incbin "baserom.gba", 0x12C254, 0x000000C

gUnk_0812C260:: @ 0812C260
	.incbin "baserom.gba", 0x12C260, 0x000000C

gUnk_0812C26C:: @ 0812C26C
	.incbin "baserom.gba", 0x12C26C, 0x0000010

gUnk_0812C27C:: @ 0812C27C
	.incbin "baserom.gba", 0x12C27C, 0x0000010

gUnk_0812C28C:: @ 0812C28C
	.incbin "baserom.gba", 0x12C28C, 0x000000C

gUnk_0812C298:: @ 0812C298
	.incbin "baserom.gba", 0x12C298, 0x0000004

gUnk_0812C29C:: @ 0812C29C
	.incbin "baserom.gba", 0x12C29C, 0x0000010

gUnk_0812C2AC:: @ 0812C2AC
	.incbin "baserom.gba", 0x12C2AC, 0x0000010

gUnk_0812C2BC:: @ 0812C2BC
	.incbin "baserom.gba", 0x12C2BC, 0x0000010

gUnk_0812C2CC:: @ 0812C2CC
	.incbin "baserom.gba", 0x12C2CC, 0x000000C

gUnk_0812C2D8:: @ 0812C2D8
	.incbin "baserom.gba", 0x12C2D8, 0x000000C

gUnk_0812C2E4:: @ 0812C2E4
	.incbin "baserom.gba", 0x12C2E4, 0x000000C

gUnk_0812C2F0:: @ 0812C2F0
	.incbin "baserom.gba", 0x12C2F0, 0x000000C

gUnk_0812C2FC:: @ 0812C2FC
	.incbin "baserom.gba", 0x12C2FC, 0x000000C

gUnk_0812C308:: @ 0812C308
	.incbin "baserom.gba", 0x12C308, 0x000000C

gUnk_0812C314:: @ 0812C314
	.incbin "baserom.gba", 0x12C314, 0x0000010

gUnk_0812C324:: @ 0812C324
	.incbin "baserom.gba", 0x12C324, 0x0000010

gUnk_0812C334:: @ 0812C334
	.incbin "baserom.gba", 0x12C334, 0x0000010

gUnk_0812C344:: @ 0812C344
	.incbin "baserom.gba", 0x12C344, 0x0000010

gUnk_0812C354:: @ 0812C354
	.incbin "baserom.gba", 0x12C354, 0x0000010

gUnk_0812C364:: @ 0812C364
	.incbin "baserom.gba", 0x12C364, 0x000000C

gUnk_0812C370:: @ 0812C370
	.incbin "baserom.gba", 0x12C370, 0x000000C

gUnk_0812C37C:: @ 0812C37C
	.incbin "baserom.gba", 0x12C37C, 0x000000C

gUnk_0812C388:: @ 0812C388
	.incbin "baserom.gba", 0x12C388, 0x000000C

gUnk_0812C394:: @ 0812C394
	.incbin "baserom.gba", 0x12C394, 0x000000C

gUnk_0812C3A0:: @ 0812C3A0
	.incbin "baserom.gba", 0x12C3A0, 0x000000C

gUnk_0812C3AC:: @ 0812C3AC
	.incbin "baserom.gba", 0x12C3AC, 0x0000010

gUnk_0812C3BC:: @ 0812C3BC
	.incbin "baserom.gba", 0x12C3BC, 0x0000010

gUnk_0812C3CC:: @ 0812C3CC
	.incbin "baserom.gba", 0x12C3CC, 0x0000010

gUnk_0812C3DC:: @ 0812C3DC
	.incbin "baserom.gba", 0x12C3DC, 0x0000010

gUnk_0812C3EC:: @ 0812C3EC
	.incbin "baserom.gba", 0x12C3EC, 0x0000010

gUnk_0812C3FC:: @ 0812C3FC
	.incbin "baserom.gba", 0x12C3FC, 0x0000014

gUnk_0812C410:: @ 0812C410
	.incbin "baserom.gba", 0x12C410, 0x0000010

gUnk_0812C420:: @ 0812C420
	.incbin "baserom.gba", 0x12C420, 0x0000014

gUnk_0812C434:: @ 0812C434
	.incbin "baserom.gba", 0x12C434, 0x0000010

gUnk_0812C444:: @ 0812C444
	.incbin "baserom.gba", 0x12C444, 0x0000010

gUnk_0812C454:: @ 0812C454
	.incbin "baserom.gba", 0x12C454, 0x0000010

gUnk_0812C464:: @ 0812C464
	.incbin "baserom.gba", 0x12C464, 0x0000010

gUnk_0812C474:: @ 0812C474
	.incbin "baserom.gba", 0x12C474, 0x0000010

gUnk_0812C484:: @ 0812C484
	.incbin "baserom.gba", 0x12C484, 0x0000010

gUnk_0812C494:: @ 0812C494
	.incbin "baserom.gba", 0x12C494, 0x0000010

gUnk_0812C4A4:: @ 0812C4A4
	.incbin "baserom.gba", 0x12C4A4, 0x0000010

gUnk_0812C4B4:: @ 0812C4B4
	.incbin "baserom.gba", 0x12C4B4, 0x0000014

gUnk_0812C4C8:: @ 0812C4C8
	.incbin "baserom.gba", 0x12C4C8, 0x0000014

gUnk_0812C4DC:: @ 0812C4DC
	.incbin "baserom.gba", 0x12C4DC, 0x0000010

gUnk_0812C4EC:: @ 0812C4EC
	.incbin "baserom.gba", 0x12C4EC, 0x0000010

gUnk_0812C4FC:: @ 0812C4FC
	.incbin "baserom.gba", 0x12C4FC, 0x0000010

gUnk_0812C50C:: @ 0812C50C
	.incbin "baserom.gba", 0x12C50C, 0x0000010

gUnk_0812C51C:: @ 0812C51C
	.incbin "baserom.gba", 0x12C51C, 0x0000010

gUnk_0812C52C:: @ 0812C52C
	.incbin "baserom.gba", 0x12C52C, 0x0000010

gUnk_0812C53C:: @ 0812C53C
	.incbin "baserom.gba", 0x12C53C, 0x0000010

gUnk_0812C54C:: @ 0812C54C
	.incbin "baserom.gba", 0x12C54C, 0x0000014

gUnk_0812C560:: @ 0812C560
	.incbin "baserom.gba", 0x12C560, 0x0000010

gUnk_0812C570:: @ 0812C570
	.incbin "baserom.gba", 0x12C570, 0x0000010

gUnk_0812C580:: @ 0812C580
	.incbin "baserom.gba", 0x12C580, 0x0000010

gUnk_0812C590:: @ 0812C590
	.incbin "baserom.gba", 0x12C590, 0x0000010

gUnk_0812C5A0:: @ 0812C5A0
	.incbin "baserom.gba", 0x12C5A0, 0x0000010

gUnk_0812C5B0:: @ 0812C5B0
	.incbin "baserom.gba", 0x12C5B0, 0x0000010

gUnk_0812C5C0:: @ 0812C5C0
	.incbin "baserom.gba", 0x12C5C0, 0x0000010

gUnk_0812C5D0:: @ 0812C5D0
	.incbin "baserom.gba", 0x12C5D0, 0x0000010

gUnk_0812C5E0:: @ 0812C5E0
	.incbin "baserom.gba", 0x12C5E0, 0x0000010

gUnk_0812C5F0:: @ 0812C5F0
	.incbin "baserom.gba", 0x12C5F0, 0x00000C8

gUnk_0812C6B8:: @ 0812C6B8
	.incbin "baserom.gba", 0x12C6B8, 0x000029C

gUnk_0812C954:: @ 0812C954
	.incbin "baserom.gba", 0x12C954, 0x0000008

gUnk_0812C95C:: @ 0812C95C
	.incbin "baserom.gba", 0x12C95C, 0x0000008

gUnk_0812C964:: @ 0812C964
	.incbin "baserom.gba", 0x12C964, 0x0000008

gUnk_0812C96C:: @ 0812C96C
	.incbin "baserom.gba", 0x12C96C, 0x0000008

gUnk_0812C974:: @ 0812C974
	.incbin "baserom.gba", 0x12C974, 0x0000008

gUnk_0812C97C:: @ 0812C97C
	.incbin "baserom.gba", 0x12C97C, 0x0000010

gUnk_0812C98C:: @ 0812C98C
	.incbin "baserom.gba", 0x12C98C, 0x0000010

gUnk_0812C99C:: @ 0812C99C
	.incbin "baserom.gba", 0x12C99C, 0x0000010

gUnk_0812C9AC:: @ 0812C9AC
	.incbin "baserom.gba", 0x12C9AC, 0x0000010

gUnk_0812C9BC:: @ 0812C9BC
	.incbin "baserom.gba", 0x12C9BC, 0x0000010

gUnk_0812C9CC:: @ 0812C9CC
	.incbin "baserom.gba", 0x12C9CC, 0x0000010

gUnk_0812C9DC:: @ 0812C9DC
	.incbin "baserom.gba", 0x12C9DC, 0x0000010

gUnk_0812C9EC:: @ 0812C9EC
	.incbin "baserom.gba", 0x12C9EC, 0x0000010

gUnk_0812C9FC:: @ 0812C9FC
	.incbin "baserom.gba", 0x12C9FC, 0x0000010

gUnk_0812CA0C:: @ 0812CA0C
	.incbin "baserom.gba", 0x12CA0C, 0x0000010

gUnk_0812CA1C:: @ 0812CA1C
	.incbin "baserom.gba", 0x12CA1C, 0x0000010

gUnk_0812CA2C:: @ 0812CA2C
	.incbin "baserom.gba", 0x12CA2C, 0x0000010

gUnk_0812CA3C:: @ 0812CA3C
	.incbin "baserom.gba", 0x12CA3C, 0x0000014

gUnk_0812CA50:: @ 0812CA50
	.incbin "baserom.gba", 0x12CA50, 0x0000014

gUnk_0812CA64:: @ 0812CA64
	.incbin "baserom.gba", 0x12CA64, 0x0000014

gUnk_0812CA78:: @ 0812CA78
	.incbin "baserom.gba", 0x12CA78, 0x0000014

gUnk_0812CA8C:: @ 0812CA8C
	.incbin "baserom.gba", 0x12CA8C, 0x0000014

gUnk_0812CAA0:: @ 0812CAA0
	.incbin "baserom.gba", 0x12CAA0, 0x0000014

gUnk_0812CAB4:: @ 0812CAB4
	.incbin "baserom.gba", 0x12CAB4, 0x0000014

gUnk_0812CAC8:: @ 0812CAC8
	.incbin "baserom.gba", 0x12CAC8, 0x0000014

gUnk_0812CADC:: @ 0812CADC
	.incbin "baserom.gba", 0x12CADC, 0x0000014

gUnk_0812CAF0:: @ 0812CAF0
	.incbin "baserom.gba", 0x12CAF0, 0x0000014

gUnk_0812CB04:: @ 0812CB04
	.incbin "baserom.gba", 0x12CB04, 0x0000018

gUnk_0812CB1C:: @ 0812CB1C
	.incbin "baserom.gba", 0x12CB1C, 0x0000014

gUnk_0812CB30:: @ 0812CB30
	.incbin "baserom.gba", 0x12CB30, 0x0000014

gUnk_0812CB44:: @ 0812CB44
	.incbin "baserom.gba", 0x12CB44, 0x0000014

gUnk_0812CB58:: @ 0812CB58
	.incbin "baserom.gba", 0x12CB58, 0x0000014

gUnk_0812CB6C:: @ 0812CB6C
	.incbin "baserom.gba", 0x12CB6C, 0x0000014

gUnk_0812CB80:: @ 0812CB80
	.incbin "baserom.gba", 0x12CB80, 0x0000010

gUnk_0812CB90:: @ 0812CB90
	.incbin "baserom.gba", 0x12CB90, 0x0000010

gUnk_0812CBA0:: @ 0812CBA0
	.incbin "baserom.gba", 0x12CBA0, 0x0000014

gUnk_0812CBB4:: @ 0812CBB4
	.incbin "baserom.gba", 0x12CBB4, 0x000000C

gUnk_0812CBC0:: @ 0812CBC0
	.incbin "baserom.gba", 0x12CBC0, 0x0000014

gUnk_0812CBD4:: @ 0812CBD4
	.incbin "baserom.gba", 0x12CBD4, 0x000000C

gUnk_0812CBE0:: @ 0812CBE0
	.incbin "baserom.gba", 0x12CBE0, 0x0000010

gUnk_0812CBF0:: @ 0812CBF0
	.incbin "baserom.gba", 0x12CBF0, 0x0000010

gUnk_0812CC00:: @ 0812CC00
	.incbin "baserom.gba", 0x12CC00, 0x0000010

gUnk_0812CC10:: @ 0812CC10
	.incbin "baserom.gba", 0x12CC10, 0x0000010

gUnk_0812CC20:: @ 0812CC20
	.incbin "baserom.gba", 0x12CC20, 0x0000010

gUnk_0812CC30:: @ 0812CC30
	.incbin "baserom.gba", 0x12CC30, 0x0000010

gUnk_0812CC40:: @ 0812CC40
	.incbin "baserom.gba", 0x12CC40, 0x0000014

gUnk_0812CC54:: @ 0812CC54
	.incbin "baserom.gba", 0x12CC54, 0x0000010

gUnk_0812CC64:: @ 0812CC64
	.incbin "baserom.gba", 0x12CC64, 0x0000010

gUnk_0812CC74:: @ 0812CC74
	.incbin "baserom.gba", 0x12CC74, 0x0000010

gUnk_0812CC84:: @ 0812CC84
	.incbin "baserom.gba", 0x12CC84, 0x0000010

gUnk_0812CC94:: @ 0812CC94
	.incbin "baserom.gba", 0x12CC94, 0x0000010

gUnk_0812CCA4:: @ 0812CCA4
	.incbin "baserom.gba", 0x12CCA4, 0x0000010

gUnk_0812CCB4:: @ 0812CCB4
	.incbin "baserom.gba", 0x12CCB4, 0x0000010

gUnk_0812CCC4:: @ 0812CCC4
	.incbin "baserom.gba", 0x12CCC4, 0x0000010

gUnk_0812CCD4:: @ 0812CCD4
	.incbin "baserom.gba", 0x12CCD4, 0x0000014

gUnk_0812CCE8:: @ 0812CCE8
	.incbin "baserom.gba", 0x12CCE8, 0x0000014

gUnk_0812CCFC:: @ 0812CCFC
	.incbin "baserom.gba", 0x12CCFC, 0x000000C

gUnk_0812CD08:: @ 0812CD08
	.incbin "baserom.gba", 0x12CD08, 0x000000C

gUnk_0812CD14:: @ 0812CD14
	.incbin "baserom.gba", 0x12CD14, 0x000000C

gUnk_0812CD20:: @ 0812CD20
	.incbin "baserom.gba", 0x12CD20, 0x000000C

gUnk_0812CD2C:: @ 0812CD2C
	.incbin "baserom.gba", 0x12CD2C, 0x000000C

gUnk_0812CD38:: @ 0812CD38
	.incbin "baserom.gba", 0x12CD38, 0x0000014

gUnk_0812CD4C:: @ 0812CD4C
	.incbin "baserom.gba", 0x12CD4C, 0x0000014

gUnk_0812CD60:: @ 0812CD60
	.incbin "baserom.gba", 0x12CD60, 0x0000010

gUnk_0812CD70:: @ 0812CD70
	.incbin "baserom.gba", 0x12CD70, 0x0000010

gUnk_0812CD80:: @ 0812CD80
	.incbin "baserom.gba", 0x12CD80, 0x0000014

gUnk_0812CD94:: @ 0812CD94
	.incbin "baserom.gba", 0x12CD94, 0x0000010

gUnk_0812CDA4:: @ 0812CDA4
	.incbin "baserom.gba", 0x12CDA4, 0x0000014

gUnk_0812CDB8:: @ 0812CDB8
	.incbin "baserom.gba", 0x12CDB8, 0x0000010

gUnk_0812CDC8:: @ 0812CDC8
	.incbin "baserom.gba", 0x12CDC8, 0x0000014

gUnk_0812CDDC:: @ 0812CDDC
	.incbin "baserom.gba", 0x12CDDC, 0x0000010

gUnk_0812CDEC:: @ 0812CDEC
	.incbin "baserom.gba", 0x12CDEC, 0x0000018

gUnk_0812CE04:: @ 0812CE04
	.incbin "baserom.gba", 0x12CE04, 0x0000018

gUnk_0812CE1C:: @ 0812CE1C
	.incbin "baserom.gba", 0x12CE1C, 0x0000010

gUnk_0812CE2C:: @ 0812CE2C
	.incbin "baserom.gba", 0x12CE2C, 0x0000010

gUnk_0812CE3C:: @ 0812CE3C
	.incbin "baserom.gba", 0x12CE3C, 0x0000010

gUnk_0812CE4C:: @ 0812CE4C
	.incbin "baserom.gba", 0x12CE4C, 0x0000010

gUnk_0812CE5C:: @ 0812CE5C
	.incbin "baserom.gba", 0x12CE5C, 0x0000010

gUnk_0812CE6C:: @ 0812CE6C
	.incbin "baserom.gba", 0x12CE6C, 0x0000010

gUnk_0812CE7C:: @ 0812CE7C
	.incbin "baserom.gba", 0x12CE7C, 0x0000010

gUnk_0812CE8C:: @ 0812CE8C
	.incbin "baserom.gba", 0x12CE8C, 0x0000010

gUnk_0812CE9C:: @ 0812CE9C
	.incbin "baserom.gba", 0x12CE9C, 0x0000010

gUnk_0812CEAC:: @ 0812CEAC
	.incbin "baserom.gba", 0x12CEAC, 0x0000010

gUnk_0812CEBC:: @ 0812CEBC
	.incbin "baserom.gba", 0x12CEBC, 0x0000010

gUnk_0812CECC:: @ 0812CECC
	.incbin "baserom.gba", 0x12CECC, 0x0000010

gUnk_0812CEDC:: @ 0812CEDC
	.incbin "baserom.gba", 0x12CEDC, 0x0000010

gUnk_0812CEEC:: @ 0812CEEC
	.incbin "baserom.gba", 0x12CEEC, 0x000000C

gUnk_0812CEF8:: @ 0812CEF8
	.incbin "baserom.gba", 0x12CEF8, 0x000000C

gUnk_0812CF04:: @ 0812CF04
	.incbin "baserom.gba", 0x12CF04, 0x000000C

gUnk_0812CF10:: @ 0812CF10
	.incbin "baserom.gba", 0x12CF10, 0x000000C

gUnk_0812CF1C:: @ 0812CF1C
	.incbin "baserom.gba", 0x12CF1C, 0x000000C

gUnk_0812CF28:: @ 0812CF28
	.incbin "baserom.gba", 0x12CF28, 0x000000C

gUnk_0812CF34:: @ 0812CF34
	.incbin "baserom.gba", 0x12CF34, 0x000000C

gUnk_0812CF40:: @ 0812CF40
	.incbin "baserom.gba", 0x12CF40, 0x000000C

gUnk_0812CF4C:: @ 0812CF4C
	.incbin "baserom.gba", 0x12CF4C, 0x0000018

gUnk_0812CF64:: @ 0812CF64
	.incbin "baserom.gba", 0x12CF64, 0x0000010

gUnk_0812CF74:: @ 0812CF74
	.incbin "baserom.gba", 0x12CF74, 0x0000018

gUnk_0812CF8C:: @ 0812CF8C
	.incbin "baserom.gba", 0x12CF8C, 0x0000014

gUnk_0812CFA0:: @ 0812CFA0
	.incbin "baserom.gba", 0x12CFA0, 0x0000018

gUnk_0812CFB8:: @ 0812CFB8
	.incbin "baserom.gba", 0x12CFB8, 0x0000010

gUnk_0812CFC8:: @ 0812CFC8
	.incbin "baserom.gba", 0x12CFC8, 0x0000014

gUnk_0812CFDC:: @ 0812CFDC
	.incbin "baserom.gba", 0x12CFDC, 0x0000014

gUnk_0812CFF0:: @ 0812CFF0
	.incbin "baserom.gba", 0x12CFF0, 0x0000010

gUnk_0812D000:: @ 0812D000
	.incbin "baserom.gba", 0x12D000, 0x0000014

gUnk_0812D014:: @ 0812D014
	.incbin "baserom.gba", 0x12D014, 0x0000010

gUnk_0812D024:: @ 0812D024
	.incbin "baserom.gba", 0x12D024, 0x0000010

gUnk_0812D034:: @ 0812D034
	.incbin "baserom.gba", 0x12D034, 0x0000010

gUnk_0812D044:: @ 0812D044
	.incbin "baserom.gba", 0x12D044, 0x0000014

gUnk_0812D058:: @ 0812D058
	.incbin "baserom.gba", 0x12D058, 0x0000018

gUnk_0812D070:: @ 0812D070
	.incbin "baserom.gba", 0x12D070, 0x0000014

gUnk_0812D084:: @ 0812D084
	.incbin "baserom.gba", 0x12D084, 0x0000014

gUnk_0812D098:: @ 0812D098
	.incbin "baserom.gba", 0x12D098, 0x0000010

gUnk_0812D0A8:: @ 0812D0A8
	.incbin "baserom.gba", 0x12D0A8, 0x0000014

gUnk_0812D0BC:: @ 0812D0BC
	.incbin "baserom.gba", 0x12D0BC, 0x0000010

gUnk_0812D0CC:: @ 0812D0CC
	.incbin "baserom.gba", 0x12D0CC, 0x0000014

gUnk_0812D0E0:: @ 0812D0E0
	.incbin "baserom.gba", 0x12D0E0, 0x0000010

gUnk_0812D0F0:: @ 0812D0F0
	.incbin "baserom.gba", 0x12D0F0, 0x0000010

gUnk_0812D100:: @ 0812D100
	.incbin "baserom.gba", 0x12D100, 0x000000C

gUnk_0812D10C:: @ 0812D10C
	.incbin "baserom.gba", 0x12D10C, 0x0000010

gUnk_0812D11C:: @ 0812D11C
	.incbin "baserom.gba", 0x12D11C, 0x0000010

gUnk_0812D12C:: @ 0812D12C
	.incbin "baserom.gba", 0x12D12C, 0x0000010

gUnk_0812D13C:: @ 0812D13C
	.incbin "baserom.gba", 0x12D13C, 0x000000C

gUnk_0812D148:: @ 0812D148
	.incbin "baserom.gba", 0x12D148, 0x000000C

gUnk_0812D154:: @ 0812D154
	.incbin "baserom.gba", 0x12D154, 0x0000010

gUnk_0812D164:: @ 0812D164
	.incbin "baserom.gba", 0x12D164, 0x0000010

gUnk_0812D174:: @ 0812D174
	.incbin "baserom.gba", 0x12D174, 0x0000010

gUnk_0812D184:: @ 0812D184
	.incbin "baserom.gba", 0x12D184, 0x0000010

gUnk_0812D194:: @ 0812D194
	.incbin "baserom.gba", 0x12D194, 0x0000010

gUnk_0812D1A4:: @ 0812D1A4
	.incbin "baserom.gba", 0x12D1A4, 0x0000010

gUnk_0812D1B4:: @ 0812D1B4
	.incbin "baserom.gba", 0x12D1B4, 0x0000010

gUnk_0812D1C4:: @ 0812D1C4
	.incbin "baserom.gba", 0x12D1C4, 0x0000010

gUnk_0812D1D4:: @ 0812D1D4
	.incbin "baserom.gba", 0x12D1D4, 0x0000010

gUnk_0812D1E4:: @ 0812D1E4
	.incbin "baserom.gba", 0x12D1E4, 0x0000010

gUnk_0812D1F4:: @ 0812D1F4
	.incbin "baserom.gba", 0x12D1F4, 0x0000010

gUnk_0812D204:: @ 0812D204
	.incbin "baserom.gba", 0x12D204, 0x0000010

gUnk_0812D214:: @ 0812D214
	.incbin "baserom.gba", 0x12D214, 0x0000010

gUnk_0812D224:: @ 0812D224
	.incbin "baserom.gba", 0x12D224, 0x0000010

gUnk_0812D234:: @ 0812D234
	.incbin "baserom.gba", 0x12D234, 0x0000010

gUnk_0812D244:: @ 0812D244
	.incbin "baserom.gba", 0x12D244, 0x0000010

gUnk_0812D254:: @ 0812D254
	.incbin "baserom.gba", 0x12D254, 0x0000010

gUnk_0812D264:: @ 0812D264
	.incbin "baserom.gba", 0x12D264, 0x0000010

gUnk_0812D274:: @ 0812D274
	.incbin "baserom.gba", 0x12D274, 0x0000010

gUnk_0812D284:: @ 0812D284
	.incbin "baserom.gba", 0x12D284, 0x000000C

gUnk_0812D290:: @ 0812D290
	.incbin "baserom.gba", 0x12D290, 0x000000C

gUnk_0812D29C:: @ 0812D29C
	.incbin "baserom.gba", 0x12D29C, 0x000000C

gUnk_0812D2A8:: @ 0812D2A8
	.incbin "baserom.gba", 0x12D2A8, 0x000000C

gUnk_0812D2B4:: @ 0812D2B4
	.incbin "baserom.gba", 0x12D2B4, 0x000000C

gUnk_0812D2C0:: @ 0812D2C0
	.incbin "baserom.gba", 0x12D2C0, 0x000000C

gUnk_0812D2CC:: @ 0812D2CC
	.incbin "baserom.gba", 0x12D2CC, 0x000000C

gUnk_0812D2D8:: @ 0812D2D8
	.incbin "baserom.gba", 0x12D2D8, 0x000000C

gUnk_0812D2E4:: @ 0812D2E4
	.incbin "baserom.gba", 0x12D2E4, 0x000000C

gUnk_0812D2F0:: @ 0812D2F0
	.incbin "baserom.gba", 0x12D2F0, 0x000000C

gUnk_0812D2FC:: @ 0812D2FC
	.incbin "baserom.gba", 0x12D2FC, 0x000000C

gUnk_0812D308:: @ 0812D308
	.incbin "baserom.gba", 0x12D308, 0x000000C

gUnk_0812D314:: @ 0812D314
	.incbin "baserom.gba", 0x12D314, 0x000000C

gUnk_0812D320:: @ 0812D320
	.incbin "baserom.gba", 0x12D320, 0x000000C

gUnk_0812D32C:: @ 0812D32C
	.incbin "baserom.gba", 0x12D32C, 0x000000C

gUnk_0812D338:: @ 0812D338
	.incbin "baserom.gba", 0x12D338, 0x000000C

gUnk_0812D344:: @ 0812D344
	.incbin "baserom.gba", 0x12D344, 0x000000C

gUnk_0812D350:: @ 0812D350
	.incbin "baserom.gba", 0x12D350, 0x000000C

gUnk_0812D35C:: @ 0812D35C
	.incbin "baserom.gba", 0x12D35C, 0x000000C

gUnk_0812D368:: @ 0812D368
	.incbin "baserom.gba", 0x12D368, 0x000000C

gUnk_0812D374:: @ 0812D374
	.incbin "baserom.gba", 0x12D374, 0x000000C

gUnk_0812D380:: @ 0812D380
	.incbin "baserom.gba", 0x12D380, 0x000000C

gUnk_0812D38C:: @ 0812D38C
	.incbin "baserom.gba", 0x12D38C, 0x000000C

gUnk_0812D398:: @ 0812D398
	.incbin "baserom.gba", 0x12D398, 0x000000C

gUnk_0812D3A4:: @ 0812D3A4
	.incbin "baserom.gba", 0x12D3A4, 0x000000C

gUnk_0812D3B0:: @ 0812D3B0
	.incbin "baserom.gba", 0x12D3B0, 0x000000C

gUnk_0812D3BC:: @ 0812D3BC
	.incbin "baserom.gba", 0x12D3BC, 0x000000C

gUnk_0812D3C8:: @ 0812D3C8
	.incbin "baserom.gba", 0x12D3C8, 0x0000014

gUnk_0812D3DC:: @ 0812D3DC
	.incbin "baserom.gba", 0x12D3DC, 0x0000014

gUnk_0812D3F0:: @ 0812D3F0
	.incbin "baserom.gba", 0x12D3F0, 0x0000018

gUnk_0812D408:: @ 0812D408
	.incbin "baserom.gba", 0x12D408, 0x0000014

gUnk_0812D41C:: @ 0812D41C
	.incbin "baserom.gba", 0x12D41C, 0x0000010

gUnk_0812D42C:: @ 0812D42C
	.incbin "baserom.gba", 0x12D42C, 0x0000010

gUnk_0812D43C:: @ 0812D43C
	.incbin "baserom.gba", 0x12D43C, 0x0000010

gUnk_0812D44C:: @ 0812D44C
	.incbin "baserom.gba", 0x12D44C, 0x0000010

gUnk_0812D45C:: @ 0812D45C
	.incbin "baserom.gba", 0x12D45C, 0x0000010

gUnk_0812D46C:: @ 0812D46C
	.incbin "baserom.gba", 0x12D46C, 0x0000010

gUnk_0812D47C:: @ 0812D47C
	.incbin "baserom.gba", 0x12D47C, 0x0000010

gUnk_0812D48C:: @ 0812D48C
	.incbin "baserom.gba", 0x12D48C, 0x0000010

gUnk_0812D49C:: @ 0812D49C
	.incbin "baserom.gba", 0x12D49C, 0x0000014

gUnk_0812D4B0:: @ 0812D4B0
	.incbin "baserom.gba", 0x12D4B0, 0x0000014

gUnk_0812D4C4:: @ 0812D4C4
	.incbin "baserom.gba", 0x12D4C4, 0x0000014

gUnk_0812D4D8:: @ 0812D4D8
	.incbin "baserom.gba", 0x12D4D8, 0x0000014

gUnk_0812D4EC:: @ 0812D4EC
	.incbin "baserom.gba", 0x12D4EC, 0x0000014

gUnk_0812D500:: @ 0812D500
	.incbin "baserom.gba", 0x12D500, 0x000000C

gUnk_0812D50C:: @ 0812D50C
	.incbin "baserom.gba", 0x12D50C, 0x000000C

gUnk_0812D518:: @ 0812D518
	.incbin "baserom.gba", 0x12D518, 0x000000C

gUnk_0812D524:: @ 0812D524
	.incbin "baserom.gba", 0x12D524, 0x000000C

gUnk_0812D530:: @ 0812D530
	.incbin "baserom.gba", 0x12D530, 0x0000010

gUnk_0812D540:: @ 0812D540
	.incbin "baserom.gba", 0x12D540, 0x0000010

gUnk_0812D550:: @ 0812D550
	.incbin "baserom.gba", 0x12D550, 0x0000010

gUnk_0812D560:: @ 0812D560
	.incbin "baserom.gba", 0x12D560, 0x0000010

gUnk_0812D570:: @ 0812D570
	.incbin "baserom.gba", 0x12D570, 0x0000010

gUnk_0812D580:: @ 0812D580
	.incbin "baserom.gba", 0x12D580, 0x0000010

gUnk_0812D590:: @ 0812D590
	.incbin "baserom.gba", 0x12D590, 0x0000010

gUnk_0812D5A0:: @ 0812D5A0
	.incbin "baserom.gba", 0x12D5A0, 0x0000010

gUnk_0812D5B0:: @ 0812D5B0
	.incbin "baserom.gba", 0x12D5B0, 0x0000010

gUnk_0812D5C0:: @ 0812D5C0
	.incbin "baserom.gba", 0x12D5C0, 0x0000010

gUnk_0812D5D0:: @ 0812D5D0
	.incbin "baserom.gba", 0x12D5D0, 0x0000010

gUnk_0812D5E0:: @ 0812D5E0
	.incbin "baserom.gba", 0x12D5E0, 0x0000010

gUnk_0812D5F0:: @ 0812D5F0
	.incbin "baserom.gba", 0x12D5F0, 0x0000010

gUnk_0812D600:: @ 0812D600
	.incbin "baserom.gba", 0x12D600, 0x0000010

gUnk_0812D610:: @ 0812D610
	.incbin "baserom.gba", 0x12D610, 0x0000010

gUnk_0812D620:: @ 0812D620
	.incbin "baserom.gba", 0x12D620, 0x0000010

gUnk_0812D630:: @ 0812D630
	.incbin "baserom.gba", 0x12D630, 0x0000010

gUnk_0812D640:: @ 0812D640
	.incbin "baserom.gba", 0x12D640, 0x0000018

gUnk_0812D658:: @ 0812D658
	.incbin "baserom.gba", 0x12D658, 0x0000018

gUnk_0812D670:: @ 0812D670
	.incbin "baserom.gba", 0x12D670, 0x0000018

gUnk_0812D688:: @ 0812D688
	.incbin "baserom.gba", 0x12D688, 0x0000340

gUnk_0812D9C8:: @ 0812D9C8
	.incbin "baserom.gba", 0x12D9C8, 0x0000008

gUnk_0812D9D0:: @ 0812D9D0
	.incbin "baserom.gba", 0x12D9D0, 0x0000018

gUnk_0812D9E8:: @ 0812D9E8
	.incbin "baserom.gba", 0x12D9E8, 0x000000C

gUnk_0812D9F4:: @ 0812D9F4
	.incbin "baserom.gba", 0x12D9F4, 0x0000010

gUnk_0812DA04:: @ 0812DA04
	.incbin "baserom.gba", 0x12DA04, 0x0000010

gUnk_0812DA14:: @ 0812DA14
	.incbin "baserom.gba", 0x12DA14, 0x0000014

gUnk_0812DA28:: @ 0812DA28
	.incbin "baserom.gba", 0x12DA28, 0x0000018

gUnk_0812DA40:: @ 0812DA40
	.incbin "baserom.gba", 0x12DA40, 0x0000014

gUnk_0812DA54:: @ 0812DA54
	.incbin "baserom.gba", 0x12DA54, 0x0000014

gUnk_0812DA68:: @ 0812DA68
	.incbin "baserom.gba", 0x12DA68, 0x0000018

gUnk_0812DA80:: @ 0812DA80
	.incbin "baserom.gba", 0x12DA80, 0x0000018

gUnk_0812DA98:: @ 0812DA98
	.incbin "baserom.gba", 0x12DA98, 0x000000C

gUnk_0812DAA4:: @ 0812DAA4
	.incbin "baserom.gba", 0x12DAA4, 0x000000C

gUnk_0812DAB0:: @ 0812DAB0
	.incbin "baserom.gba", 0x12DAB0, 0x0000010

gUnk_0812DAC0:: @ 0812DAC0
	.incbin "baserom.gba", 0x12DAC0, 0x0000014

gUnk_0812DAD4:: @ 0812DAD4
	.incbin "baserom.gba", 0x12DAD4, 0x0000010

gUnk_0812DAE4:: @ 0812DAE4
	.incbin "baserom.gba", 0x12DAE4, 0x0000010

gUnk_0812DAF4:: @ 0812DAF4
	.incbin "baserom.gba", 0x12DAF4, 0x0000010

gUnk_0812DB04:: @ 0812DB04
	.incbin "baserom.gba", 0x12DB04, 0x0000010

gUnk_0812DB14:: @ 0812DB14
	.incbin "baserom.gba", 0x12DB14, 0x0000010

gUnk_0812DB24:: @ 0812DB24
	.incbin "baserom.gba", 0x12DB24, 0x0000010

gUnk_0812DB34:: @ 0812DB34
	.incbin "baserom.gba", 0x12DB34, 0x0000010

gUnk_0812DB44:: @ 0812DB44
	.incbin "baserom.gba", 0x12DB44, 0x0000010

gUnk_0812DB54:: @ 0812DB54
	.incbin "baserom.gba", 0x12DB54, 0x0000010

gUnk_0812DB64:: @ 0812DB64
	.incbin "baserom.gba", 0x12DB64, 0x0000010

gUnk_0812DB74:: @ 0812DB74
	.incbin "baserom.gba", 0x12DB74, 0x0000010

gUnk_0812DB84:: @ 0812DB84
	.incbin "baserom.gba", 0x12DB84, 0x0000010

gUnk_0812DB94:: @ 0812DB94
	.incbin "baserom.gba", 0x12DB94, 0x0000014

gUnk_0812DBA8:: @ 0812DBA8
	.incbin "baserom.gba", 0x12DBA8, 0x0000010

gUnk_0812DBB8:: @ 0812DBB8
	.incbin "baserom.gba", 0x12DBB8, 0x0000010

gUnk_0812DBC8:: @ 0812DBC8
	.incbin "baserom.gba", 0x12DBC8, 0x0000010

gUnk_0812DBD8:: @ 0812DBD8
	.incbin "baserom.gba", 0x12DBD8, 0x0000010

gUnk_0812DBE8:: @ 0812DBE8
	.incbin "baserom.gba", 0x12DBE8, 0x0000010

gUnk_0812DBF8:: @ 0812DBF8
	.incbin "baserom.gba", 0x12DBF8, 0x0000010

gUnk_0812DC08:: @ 0812DC08
	.incbin "baserom.gba", 0x12DC08, 0x0000010

gUnk_0812DC18:: @ 0812DC18
	.incbin "baserom.gba", 0x12DC18, 0x000000C

gUnk_0812DC24:: @ 0812DC24
	.incbin "baserom.gba", 0x12DC24, 0x000000C

gUnk_0812DC30:: @ 0812DC30
	.incbin "baserom.gba", 0x12DC30, 0x000000C

gUnk_0812DC3C:: @ 0812DC3C
	.incbin "baserom.gba", 0x12DC3C, 0x000000C

gUnk_0812DC48:: @ 0812DC48
	.incbin "baserom.gba", 0x12DC48, 0x000000C

gUnk_0812DC54:: @ 0812DC54
	.incbin "baserom.gba", 0x12DC54, 0x000000C

gUnk_0812DC60:: @ 0812DC60
	.incbin "baserom.gba", 0x12DC60, 0x000000C

gUnk_0812DC6C:: @ 0812DC6C
	.incbin "baserom.gba", 0x12DC6C, 0x000000C

gUnk_0812DC78:: @ 0812DC78
	.incbin "baserom.gba", 0x12DC78, 0x000000C

gUnk_0812DC84:: @ 0812DC84
	.incbin "baserom.gba", 0x12DC84, 0x000000C

gUnk_0812DC90:: @ 0812DC90
	.incbin "baserom.gba", 0x12DC90, 0x000000C

gUnk_0812DC9C:: @ 0812DC9C
	.incbin "baserom.gba", 0x12DC9C, 0x000000C

gUnk_0812DCA8:: @ 0812DCA8
	.incbin "baserom.gba", 0x12DCA8, 0x000000C

gUnk_0812DCB4:: @ 0812DCB4
	.incbin "baserom.gba", 0x12DCB4, 0x000000C

gUnk_0812DCC0:: @ 0812DCC0
	.incbin "baserom.gba", 0x12DCC0, 0x000000C

gUnk_0812DCCC:: @ 0812DCCC
	.incbin "baserom.gba", 0x12DCCC, 0x000000C

gUnk_0812DCD8:: @ 0812DCD8
	.incbin "baserom.gba", 0x12DCD8, 0x0000014

gUnk_0812DCEC:: @ 0812DCEC
	.incbin "baserom.gba", 0x12DCEC, 0x0000014

gUnk_0812DD00:: @ 0812DD00
	.incbin "baserom.gba", 0x12DD00, 0x0000004

gUnk_0812DD04:: @ 0812DD04
	.incbin "baserom.gba", 0x12DD04, 0x0000008

gUnk_0812DD0C:: @ 0812DD0C
	.incbin "baserom.gba", 0x12DD0C, 0x000000C

gUnk_0812DD18:: @ 0812DD18
	.incbin "baserom.gba", 0x12DD18, 0x000000C

gUnk_0812DD24:: @ 0812DD24
	.incbin "baserom.gba", 0x12DD24, 0x000000C

gUnk_0812DD30:: @ 0812DD30
	.incbin "baserom.gba", 0x12DD30, 0x000000C

gUnk_0812DD3C:: @ 0812DD3C
	.incbin "baserom.gba", 0x12DD3C, 0x000000C

gUnk_0812DD48:: @ 0812DD48
	.incbin "baserom.gba", 0x12DD48, 0x000000C

gUnk_0812DD54:: @ 0812DD54
	.incbin "baserom.gba", 0x12DD54, 0x000000C

gUnk_0812DD60:: @ 0812DD60
	.incbin "baserom.gba", 0x12DD60, 0x000000C

gUnk_0812DD6C:: @ 0812DD6C
	.incbin "baserom.gba", 0x12DD6C, 0x000000C

gUnk_0812DD78:: @ 0812DD78
	.incbin "baserom.gba", 0x12DD78, 0x000000C

gUnk_0812DD84:: @ 0812DD84
	.incbin "baserom.gba", 0x12DD84, 0x000000C

gUnk_0812DD90:: @ 0812DD90
	.incbin "baserom.gba", 0x12DD90, 0x000000C

gUnk_0812DD9C:: @ 0812DD9C
	.incbin "baserom.gba", 0x12DD9C, 0x000000C

gUnk_0812DDA8:: @ 0812DDA8
	.incbin "baserom.gba", 0x12DDA8, 0x000000C

gUnk_0812DDB4:: @ 0812DDB4
	.incbin "baserom.gba", 0x12DDB4, 0x000000C

gUnk_0812DDC0:: @ 0812DDC0
	.incbin "baserom.gba", 0x12DDC0, 0x000000C

gUnk_0812DDCC:: @ 0812DDCC
	.incbin "baserom.gba", 0x12DDCC, 0x0000014

gUnk_0812DDE0:: @ 0812DDE0
	.incbin "baserom.gba", 0x12DDE0, 0x0000014

gUnk_0812DDF4:: @ 0812DDF4
	.incbin "baserom.gba", 0x12DDF4, 0x0000014

gUnk_0812DE08:: @ 0812DE08
	.incbin "baserom.gba", 0x12DE08, 0x0000014

gUnk_0812DE1C:: @ 0812DE1C
	.incbin "baserom.gba", 0x12DE1C, 0x0000014

gUnk_0812DE30:: @ 0812DE30
	.incbin "baserom.gba", 0x12DE30, 0x0000010

gUnk_0812DE40:: @ 0812DE40
	.incbin "baserom.gba", 0x12DE40, 0x0000014

gUnk_0812DE54:: @ 0812DE54
	.incbin "baserom.gba", 0x12DE54, 0x0000014

gUnk_0812DE68:: @ 0812DE68
	.incbin "baserom.gba", 0x12DE68, 0x0000014

gUnk_0812DE7C:: @ 0812DE7C
	.incbin "baserom.gba", 0x12DE7C, 0x0000010

gUnk_0812DE8C:: @ 0812DE8C
	.incbin "baserom.gba", 0x12DE8C, 0x0000018

gUnk_0812DEA4:: @ 0812DEA4
	.incbin "baserom.gba", 0x12DEA4, 0x000000C

gUnk_0812DEB0:: @ 0812DEB0
	.incbin "baserom.gba", 0x12DEB0, 0x000000C

gUnk_0812DEBC:: @ 0812DEBC
	.incbin "baserom.gba", 0x12DEBC, 0x000000C

gUnk_0812DEC8:: @ 0812DEC8
	.incbin "baserom.gba", 0x12DEC8, 0x000000C

gUnk_0812DED4:: @ 0812DED4
	.incbin "baserom.gba", 0x12DED4, 0x000000C

gUnk_0812DEE0:: @ 0812DEE0
	.incbin "baserom.gba", 0x12DEE0, 0x000000C

gUnk_0812DEEC:: @ 0812DEEC
	.incbin "baserom.gba", 0x12DEEC, 0x000000C

gUnk_0812DEF8:: @ 0812DEF8
	.incbin "baserom.gba", 0x12DEF8, 0x000000C

gUnk_0812DF04:: @ 0812DF04
	.incbin "baserom.gba", 0x12DF04, 0x000000C

gUnk_0812DF10:: @ 0812DF10
	.incbin "baserom.gba", 0x12DF10, 0x000000C

gUnk_0812DF1C:: @ 0812DF1C
	.incbin "baserom.gba", 0x12DF1C, 0x000000C

gUnk_0812DF28:: @ 0812DF28
	.incbin "baserom.gba", 0x12DF28, 0x000000C

gUnk_0812DF34:: @ 0812DF34
	.incbin "baserom.gba", 0x12DF34, 0x000000C

gUnk_0812DF40:: @ 0812DF40
	.incbin "baserom.gba", 0x12DF40, 0x000000C

gUnk_0812DF4C:: @ 0812DF4C
	.incbin "baserom.gba", 0x12DF4C, 0x000000C

gUnk_0812DF58:: @ 0812DF58
	.incbin "baserom.gba", 0x12DF58, 0x000000C

gUnk_0812DF64:: @ 0812DF64
	.incbin "baserom.gba", 0x12DF64, 0x000000C

gUnk_0812DF70:: @ 0812DF70
	.incbin "baserom.gba", 0x12DF70, 0x0000010

gUnk_0812DF80:: @ 0812DF80
	.incbin "baserom.gba", 0x12DF80, 0x0000010

gUnk_0812DF90:: @ 0812DF90
	.incbin "baserom.gba", 0x12DF90, 0x0000010

gUnk_0812DFA0:: @ 0812DFA0
	.incbin "baserom.gba", 0x12DFA0, 0x0000010

gUnk_0812DFB0:: @ 0812DFB0
	.incbin "baserom.gba", 0x12DFB0, 0x0000010

gUnk_0812DFC0:: @ 0812DFC0
	.incbin "baserom.gba", 0x12DFC0, 0x0000010

gUnk_0812DFD0:: @ 0812DFD0
	.incbin "baserom.gba", 0x12DFD0, 0x0000010

gUnk_0812DFE0:: @ 0812DFE0
	.incbin "baserom.gba", 0x12DFE0, 0x0000010

gUnk_0812DFF0:: @ 0812DFF0
	.incbin "baserom.gba", 0x12DFF0, 0x0000010

gUnk_0812E000:: @ 0812E000
	.incbin "baserom.gba", 0x12E000, 0x0000010

gUnk_0812E010:: @ 0812E010
	.incbin "baserom.gba", 0x12E010, 0x0000010

gUnk_0812E020:: @ 0812E020
	.incbin "baserom.gba", 0x12E020, 0x0000010

gUnk_0812E030:: @ 0812E030
	.incbin "baserom.gba", 0x12E030, 0x0000010

gUnk_0812E040:: @ 0812E040
	.incbin "baserom.gba", 0x12E040, 0x0000010

gUnk_0812E050:: @ 0812E050
	.incbin "baserom.gba", 0x12E050, 0x0000010

gUnk_0812E060:: @ 0812E060
	.incbin "baserom.gba", 0x12E060, 0x0000010

gUnk_0812E070:: @ 0812E070
	.incbin "baserom.gba", 0x12E070, 0x0000010

gUnk_0812E080:: @ 0812E080
	.incbin "baserom.gba", 0x12E080, 0x0000010

gUnk_0812E090:: @ 0812E090
	.incbin "baserom.gba", 0x12E090, 0x0000010

gUnk_0812E0A0:: @ 0812E0A0
	.incbin "baserom.gba", 0x12E0A0, 0x0000010

gUnk_0812E0B0:: @ 0812E0B0
	.incbin "baserom.gba", 0x12E0B0, 0x0000010

gUnk_0812E0C0:: @ 0812E0C0
	.incbin "baserom.gba", 0x12E0C0, 0x0000010

gUnk_0812E0D0:: @ 0812E0D0
	.incbin "baserom.gba", 0x12E0D0, 0x0000010

gUnk_0812E0E0:: @ 0812E0E0
	.incbin "baserom.gba", 0x12E0E0, 0x0000010

gUnk_0812E0F0:: @ 0812E0F0
	.incbin "baserom.gba", 0x12E0F0, 0x0000010

gUnk_0812E100:: @ 0812E100
	.incbin "baserom.gba", 0x12E100, 0x0000010

gUnk_0812E110:: @ 0812E110
	.incbin "baserom.gba", 0x12E110, 0x0000010

gUnk_0812E120:: @ 0812E120
	.incbin "baserom.gba", 0x12E120, 0x0000010

gUnk_0812E130:: @ 0812E130
	.incbin "baserom.gba", 0x12E130, 0x0000010

gUnk_0812E140:: @ 0812E140
	.incbin "baserom.gba", 0x12E140, 0x0000010

gUnk_0812E150:: @ 0812E150
	.incbin "baserom.gba", 0x12E150, 0x0000010

gUnk_0812E160:: @ 0812E160
	.incbin "baserom.gba", 0x12E160, 0x0000010

gUnk_0812E170:: @ 0812E170
	.incbin "baserom.gba", 0x12E170, 0x0000010

gUnk_0812E180:: @ 0812E180
	.incbin "baserom.gba", 0x12E180, 0x0000010

gUnk_0812E190:: @ 0812E190
	.incbin "baserom.gba", 0x12E190, 0x0000010

gUnk_0812E1A0:: @ 0812E1A0
	.incbin "baserom.gba", 0x12E1A0, 0x0000010

gUnk_0812E1B0:: @ 0812E1B0
	.incbin "baserom.gba", 0x12E1B0, 0x0000010

gUnk_0812E1C0:: @ 0812E1C0
	.incbin "baserom.gba", 0x12E1C0, 0x0000010

gUnk_0812E1D0:: @ 0812E1D0
	.incbin "baserom.gba", 0x12E1D0, 0x0000010

gUnk_0812E1E0:: @ 0812E1E0
	.incbin "baserom.gba", 0x12E1E0, 0x0000010

gUnk_0812E1F0:: @ 0812E1F0
	.incbin "baserom.gba", 0x12E1F0, 0x0000010

gUnk_0812E200:: @ 0812E200
	.incbin "baserom.gba", 0x12E200, 0x0000010

gUnk_0812E210:: @ 0812E210
	.incbin "baserom.gba", 0x12E210, 0x0000010

gUnk_0812E220:: @ 0812E220
	.incbin "baserom.gba", 0x12E220, 0x0000010

gUnk_0812E230:: @ 0812E230
	.incbin "baserom.gba", 0x12E230, 0x0000010

gUnk_0812E240:: @ 0812E240
	.incbin "baserom.gba", 0x12E240, 0x0000010

gUnk_0812E250:: @ 0812E250
	.incbin "baserom.gba", 0x12E250, 0x0000010

gUnk_0812E260:: @ 0812E260
	.incbin "baserom.gba", 0x12E260, 0x0000010

gUnk_0812E270:: @ 0812E270
	.incbin "baserom.gba", 0x12E270, 0x0000010

gUnk_0812E280:: @ 0812E280
	.incbin "baserom.gba", 0x12E280, 0x0000010

gUnk_0812E290:: @ 0812E290
	.incbin "baserom.gba", 0x12E290, 0x0000010

gUnk_0812E2A0:: @ 0812E2A0
	.incbin "baserom.gba", 0x12E2A0, 0x0000010

gUnk_0812E2B0:: @ 0812E2B0
	.incbin "baserom.gba", 0x12E2B0, 0x000000C

gUnk_0812E2BC:: @ 0812E2BC
	.incbin "baserom.gba", 0x12E2BC, 0x0000010

gUnk_0812E2CC:: @ 0812E2CC
	.incbin "baserom.gba", 0x12E2CC, 0x000000C

gUnk_0812E2D8:: @ 0812E2D8
	.incbin "baserom.gba", 0x12E2D8, 0x000000C

gUnk_0812E2E4:: @ 0812E2E4
	.incbin "baserom.gba", 0x12E2E4, 0x000000C

gUnk_0812E2F0:: @ 0812E2F0
	.incbin "baserom.gba", 0x12E2F0, 0x000000C

gUnk_0812E2FC:: @ 0812E2FC
	.incbin "baserom.gba", 0x12E2FC, 0x0000010

gUnk_0812E30C:: @ 0812E30C
	.incbin "baserom.gba", 0x12E30C, 0x0000010

gUnk_0812E31C:: @ 0812E31C
	.incbin "baserom.gba", 0x12E31C, 0x0000010

gUnk_0812E32C:: @ 0812E32C
	.incbin "baserom.gba", 0x12E32C, 0x0000010

gUnk_0812E33C:: @ 0812E33C
	.incbin "baserom.gba", 0x12E33C, 0x0000010

gUnk_0812E34C:: @ 0812E34C
	.incbin "baserom.gba", 0x12E34C, 0x0000010

gUnk_0812E35C:: @ 0812E35C
	.incbin "baserom.gba", 0x12E35C, 0x0000010

gUnk_0812E36C:: @ 0812E36C
	.incbin "baserom.gba", 0x12E36C, 0x0000010

gUnk_0812E37C:: @ 0812E37C
	.incbin "baserom.gba", 0x12E37C, 0x0000010

gUnk_0812E38C:: @ 0812E38C
	.incbin "baserom.gba", 0x12E38C, 0x0000010

gUnk_0812E39C:: @ 0812E39C
	.incbin "baserom.gba", 0x12E39C, 0x0000010

gUnk_0812E3AC:: @ 0812E3AC
	.incbin "baserom.gba", 0x12E3AC, 0x0000010

gUnk_0812E3BC:: @ 0812E3BC
	.incbin "baserom.gba", 0x12E3BC, 0x0000010

gUnk_0812E3CC:: @ 0812E3CC
	.incbin "baserom.gba", 0x12E3CC, 0x0000010

gUnk_0812E3DC:: @ 0812E3DC
	.incbin "baserom.gba", 0x12E3DC, 0x0000010

gUnk_0812E3EC:: @ 0812E3EC
	.incbin "baserom.gba", 0x12E3EC, 0x0000010

gUnk_0812E3FC:: @ 0812E3FC
	.incbin "baserom.gba", 0x12E3FC, 0x0000010

gUnk_0812E40C:: @ 0812E40C
	.incbin "baserom.gba", 0x12E40C, 0x0000010

gUnk_0812E41C:: @ 0812E41C
	.incbin "baserom.gba", 0x12E41C, 0x0000010

gUnk_0812E42C:: @ 0812E42C
	.incbin "baserom.gba", 0x12E42C, 0x0000010

gUnk_0812E43C:: @ 0812E43C
	.incbin "baserom.gba", 0x12E43C, 0x0000010

gUnk_0812E44C:: @ 0812E44C
	.incbin "baserom.gba", 0x12E44C, 0x0000010

gUnk_0812E45C:: @ 0812E45C
	.incbin "baserom.gba", 0x12E45C, 0x0000010

gUnk_0812E46C:: @ 0812E46C
	.incbin "baserom.gba", 0x12E46C, 0x0000014

gUnk_0812E480:: @ 0812E480
	.incbin "baserom.gba", 0x12E480, 0x0000014

gUnk_0812E494:: @ 0812E494
	.incbin "baserom.gba", 0x12E494, 0x0000014

gUnk_0812E4A8:: @ 0812E4A8
	.incbin "baserom.gba", 0x12E4A8, 0x0000014

gUnk_0812E4BC:: @ 0812E4BC
	.incbin "baserom.gba", 0x12E4BC, 0x0000014

gUnk_0812E4D0:: @ 0812E4D0
	.incbin "baserom.gba", 0x12E4D0, 0x0000014

gUnk_0812E4E4:: @ 0812E4E4
	.incbin "baserom.gba", 0x12E4E4, 0x0000014

gUnk_0812E4F8:: @ 0812E4F8
	.incbin "baserom.gba", 0x12E4F8, 0x0000014

gUnk_0812E50C:: @ 0812E50C
	.incbin "baserom.gba", 0x12E50C, 0x0000014

gUnk_0812E520:: @ 0812E520
	.incbin "baserom.gba", 0x12E520, 0x0000014

gUnk_0812E534:: @ 0812E534
	.incbin "baserom.gba", 0x12E534, 0x0000014

gUnk_0812E548:: @ 0812E548
	.incbin "baserom.gba", 0x12E548, 0x0000014

gUnk_0812E55C:: @ 0812E55C
	.incbin "baserom.gba", 0x12E55C, 0x0000014

gUnk_0812E570:: @ 0812E570
	.incbin "baserom.gba", 0x12E570, 0x0000014

gUnk_0812E584:: @ 0812E584
	.incbin "baserom.gba", 0x12E584, 0x0000014

gUnk_0812E598:: @ 0812E598
	.incbin "baserom.gba", 0x12E598, 0x0000014

gUnk_0812E5AC:: @ 0812E5AC
	.incbin "baserom.gba", 0x12E5AC, 0x0000014

gUnk_0812E5C0:: @ 0812E5C0
	.incbin "baserom.gba", 0x12E5C0, 0x0000014

gUnk_0812E5D4:: @ 0812E5D4
	.incbin "baserom.gba", 0x12E5D4, 0x0000014

gUnk_0812E5E8:: @ 0812E5E8
	.incbin "baserom.gba", 0x12E5E8, 0x0000014

gUnk_0812E5FC:: @ 0812E5FC
	.incbin "baserom.gba", 0x12E5FC, 0x0000248

gUnk_0812E844:: @ 0812E844
	.incbin "baserom.gba", 0x12E844, 0x0000008

gUnk_0812E84C:: @ 0812E84C
	.incbin "baserom.gba", 0x12E84C, 0x0000008

gUnk_0812E854:: @ 0812E854
	.incbin "baserom.gba", 0x12E854, 0x0000008

gUnk_0812E85C:: @ 0812E85C
	.incbin "baserom.gba", 0x12E85C, 0x0000008

gUnk_0812E864:: @ 0812E864
	.incbin "baserom.gba", 0x12E864, 0x0000008

gUnk_0812E86C:: @ 0812E86C
	.incbin "baserom.gba", 0x12E86C, 0x0000008

gUnk_0812E874:: @ 0812E874
	.incbin "baserom.gba", 0x12E874, 0x0000018

gUnk_0812E88C:: @ 0812E88C
	.incbin "baserom.gba", 0x12E88C, 0x0000018

gUnk_0812E8A4:: @ 0812E8A4
	.incbin "baserom.gba", 0x12E8A4, 0x0000018

gUnk_0812E8BC:: @ 0812E8BC
	.incbin "baserom.gba", 0x12E8BC, 0x0000010

gUnk_0812E8CC:: @ 0812E8CC
	.incbin "baserom.gba", 0x12E8CC, 0x0000010

gUnk_0812E8DC:: @ 0812E8DC
	.incbin "baserom.gba", 0x12E8DC, 0x0000018

gUnk_0812E8F4:: @ 0812E8F4
	.incbin "baserom.gba", 0x12E8F4, 0x0000009

gUnk_0812E8FD:: @ 0812E8FD
	.incbin "baserom.gba", 0x12E8FD, 0x0000007

gUnk_0812E904:: @ 0812E904
	.incbin "baserom.gba", 0x12E904, 0x0000010

gUnk_0812E914:: @ 0812E914
	.incbin "baserom.gba", 0x12E914, 0x0000018

gUnk_0812E92C:: @ 0812E92C
	.incbin "baserom.gba", 0x12E92C, 0x0000014

gUnk_0812E940:: @ 0812E940
	.incbin "baserom.gba", 0x12E940, 0x0000018

gUnk_0812E958:: @ 0812E958
	.incbin "baserom.gba", 0x12E958, 0x0000018

gUnk_0812E970:: @ 0812E970
	.incbin "baserom.gba", 0x12E970, 0x0000018

gUnk_0812E988:: @ 0812E988
	.incbin "baserom.gba", 0x12E988, 0x0000014

gUnk_0812E99C:: @ 0812E99C
	.incbin "baserom.gba", 0x12E99C, 0x0000014

gUnk_0812E9B0:: @ 0812E9B0
	.incbin "baserom.gba", 0x12E9B0, 0x0000014

gUnk_0812E9C4:: @ 0812E9C4
	.incbin "baserom.gba", 0x12E9C4, 0x0000014

gUnk_0812E9D8:: @ 0812E9D8
	.incbin "baserom.gba", 0x12E9D8, 0x0000018

gUnk_0812E9F0:: @ 0812E9F0
	.incbin "baserom.gba", 0x12E9F0, 0x0000018

gUnk_0812EA08:: @ 0812EA08
	.incbin "baserom.gba", 0x12EA08, 0x0000018

gUnk_0812EA20:: @ 0812EA20
	.incbin "baserom.gba", 0x12EA20, 0x0000018

gUnk_0812EA38:: @ 0812EA38
	.incbin "baserom.gba", 0x12EA38, 0x0000018

gUnk_0812EA50:: @ 0812EA50
	.incbin "baserom.gba", 0x12EA50, 0x0000018

gUnk_0812EA68:: @ 0812EA68
	.incbin "baserom.gba", 0x12EA68, 0x0000018

gUnk_0812EA80:: @ 0812EA80
	.incbin "baserom.gba", 0x12EA80, 0x0000018

gUnk_0812EA98:: @ 0812EA98
	.incbin "baserom.gba", 0x12EA98, 0x0000018

gUnk_0812EAB0:: @ 0812EAB0
	.incbin "baserom.gba", 0x12EAB0, 0x000001C

gUnk_0812EACC:: @ 0812EACC
	.incbin "baserom.gba", 0x12EACC, 0x000000C

gUnk_0812EAD8:: @ 0812EAD8
	.incbin "baserom.gba", 0x12EAD8, 0x0000010

gUnk_0812EAE8:: @ 0812EAE8
	.incbin "baserom.gba", 0x12EAE8, 0x000001C

gUnk_0812EB04:: @ 0812EB04
	.incbin "baserom.gba", 0x12EB04, 0x0000018

gUnk_0812EB1C:: @ 0812EB1C
	.incbin "baserom.gba", 0x12EB1C, 0x0000018

gUnk_0812EB34:: @ 0812EB34
	.incbin "baserom.gba", 0x12EB34, 0x000001C

gUnk_0812EB50:: @ 0812EB50
	.incbin "baserom.gba", 0x12EB50, 0x000001C

gUnk_0812EB6C:: @ 0812EB6C
	.incbin "baserom.gba", 0x12EB6C, 0x000001C

gUnk_0812EB88:: @ 0812EB88
	.incbin "baserom.gba", 0x12EB88, 0x000001C

gUnk_0812EBA4:: @ 0812EBA4
	.incbin "baserom.gba", 0x12EBA4, 0x000001C

gUnk_0812EBC0:: @ 0812EBC0
	.incbin "baserom.gba", 0x12EBC0, 0x0000018

gUnk_0812EBD8:: @ 0812EBD8
	.incbin "baserom.gba", 0x12EBD8, 0x0000018

gUnk_0812EBF0:: @ 0812EBF0
	.incbin "baserom.gba", 0x12EBF0, 0x0000018

gUnk_0812EC08:: @ 0812EC08
	.incbin "baserom.gba", 0x12EC08, 0x0000018

gUnk_0812EC20:: @ 0812EC20
	.incbin "baserom.gba", 0x12EC20, 0x0000014

gUnk_0812EC34:: @ 0812EC34
	.incbin "baserom.gba", 0x12EC34, 0x0000014

gUnk_0812EC48:: @ 0812EC48
	.incbin "baserom.gba", 0x12EC48, 0x0000018

gUnk_0812EC60:: @ 0812EC60
	.incbin "baserom.gba", 0x12EC60, 0x0000018

gUnk_0812EC78:: @ 0812EC78
	.incbin "baserom.gba", 0x12EC78, 0x0000018

gUnk_0812EC90:: @ 0812EC90
	.incbin "baserom.gba", 0x12EC90, 0x0000018

gUnk_0812ECA8:: @ 0812ECA8
	.incbin "baserom.gba", 0x12ECA8, 0x0000018

gUnk_0812ECC0:: @ 0812ECC0
	.incbin "baserom.gba", 0x12ECC0, 0x0000018

gUnk_0812ECD8:: @ 0812ECD8
	.incbin "baserom.gba", 0x12ECD8, 0x0000018

gUnk_0812ECF0:: @ 0812ECF0
	.incbin "baserom.gba", 0x12ECF0, 0x0000018

gUnk_0812ED08:: @ 0812ED08
	.incbin "baserom.gba", 0x12ED08, 0x0000018

gUnk_0812ED20:: @ 0812ED20
	.incbin "baserom.gba", 0x12ED20, 0x0000018

gUnk_0812ED38:: @ 0812ED38
	.incbin "baserom.gba", 0x12ED38, 0x0000018

gUnk_0812ED50:: @ 0812ED50
	.incbin "baserom.gba", 0x12ED50, 0x0000018

gUnk_0812ED68:: @ 0812ED68
	.incbin "baserom.gba", 0x12ED68, 0x0000018

gUnk_0812ED80:: @ 0812ED80
	.incbin "baserom.gba", 0x12ED80, 0x0000018

gUnk_0812ED98:: @ 0812ED98
	.incbin "baserom.gba", 0x12ED98, 0x0000018

gUnk_0812EDB0:: @ 0812EDB0
	.incbin "baserom.gba", 0x12EDB0, 0x0000018

gUnk_0812EDC8:: @ 0812EDC8
	.incbin "baserom.gba", 0x12EDC8, 0x0000018

gUnk_0812EDE0:: @ 0812EDE0
	.incbin "baserom.gba", 0x12EDE0, 0x0000018

gUnk_0812EDF8:: @ 0812EDF8
	.incbin "baserom.gba", 0x12EDF8, 0x0000018

gUnk_0812EE10:: @ 0812EE10
	.incbin "baserom.gba", 0x12EE10, 0x0000018

gUnk_0812EE28:: @ 0812EE28
	.incbin "baserom.gba", 0x12EE28, 0x0000018

gUnk_0812EE40:: @ 0812EE40
	.incbin "baserom.gba", 0x12EE40, 0x0000014

gUnk_0812EE54:: @ 0812EE54
	.incbin "baserom.gba", 0x12EE54, 0x0000014

gUnk_0812EE68:: @ 0812EE68
	.incbin "baserom.gba", 0x12EE68, 0x0000014

gUnk_0812EE7C:: @ 0812EE7C
	.incbin "baserom.gba", 0x12EE7C, 0x0000014

gUnk_0812EE90:: @ 0812EE90
	.incbin "baserom.gba", 0x12EE90, 0x0000014

gUnk_0812EEA4:: @ 0812EEA4
	.incbin "baserom.gba", 0x12EEA4, 0x0000014

gUnk_0812EEB8:: @ 0812EEB8
	.incbin "baserom.gba", 0x12EEB8, 0x0000014

gUnk_0812EECC:: @ 0812EECC
	.incbin "baserom.gba", 0x12EECC, 0x0000014

gUnk_0812EEE0:: @ 0812EEE0
	.incbin "baserom.gba", 0x12EEE0, 0x0000014

gUnk_0812EEF4:: @ 0812EEF4
	.incbin "baserom.gba", 0x12EEF4, 0x0000014

gUnk_0812EF08:: @ 0812EF08
	.incbin "baserom.gba", 0x12EF08, 0x0000014

gUnk_0812EF1C:: @ 0812EF1C
	.incbin "baserom.gba", 0x12EF1C, 0x0000003

gUnk_0812EF1F:: @ 0812EF1F
	.incbin "baserom.gba", 0x12EF1F, 0x0000011

gUnk_0812EF30:: @ 0812EF30
	.incbin "baserom.gba", 0x12EF30, 0x0000014

gUnk_0812EF44:: @ 0812EF44
	.incbin "baserom.gba", 0x12EF44, 0x0000018

gUnk_0812EF5C:: @ 0812EF5C
	.incbin "baserom.gba", 0x12EF5C, 0x0000018

gUnk_0812EF74:: @ 0812EF74
	.incbin "baserom.gba", 0x12EF74, 0x0000018

gUnk_0812EF8C:: @ 0812EF8C
	.incbin "baserom.gba", 0x12EF8C, 0x000001C

gUnk_0812EFA8:: @ 0812EFA8
	.incbin "baserom.gba", 0x12EFA8, 0x0000018

gUnk_0812EFC0:: @ 0812EFC0
	.incbin "baserom.gba", 0x12EFC0, 0x0000018

gUnk_0812EFD8:: @ 0812EFD8
	.incbin "baserom.gba", 0x12EFD8, 0x0000018

gUnk_0812EFF0:: @ 0812EFF0
	.incbin "baserom.gba", 0x12EFF0, 0x0000018

gUnk_0812F008:: @ 0812F008
	.incbin "baserom.gba", 0x12F008, 0x0000018

gUnk_0812F020:: @ 0812F020
	.incbin "baserom.gba", 0x12F020, 0x0000018

gUnk_0812F038:: @ 0812F038
	.incbin "baserom.gba", 0x12F038, 0x0000018

gUnk_0812F050:: @ 0812F050
	.incbin "baserom.gba", 0x12F050, 0x0000018

gUnk_0812F068:: @ 0812F068
	.incbin "baserom.gba", 0x12F068, 0x0000018

gUnk_0812F080:: @ 0812F080
	.incbin "baserom.gba", 0x12F080, 0x0000018

gUnk_0812F098:: @ 0812F098
	.incbin "baserom.gba", 0x12F098, 0x0000018

gUnk_0812F0B0:: @ 0812F0B0
	.incbin "baserom.gba", 0x12F0B0, 0x0000018

gUnk_0812F0C8:: @ 0812F0C8
	.incbin "baserom.gba", 0x12F0C8, 0x0000018

gUnk_0812F0E0:: @ 0812F0E0
	.incbin "baserom.gba", 0x12F0E0, 0x0000018

gUnk_0812F0F8:: @ 0812F0F8
	.incbin "baserom.gba", 0x12F0F8, 0x0000018

gUnk_0812F110:: @ 0812F110
	.incbin "baserom.gba", 0x12F110, 0x0000018

gUnk_0812F128:: @ 0812F128
	.incbin "baserom.gba", 0x12F128, 0x0000018

gUnk_0812F140:: @ 0812F140
	.incbin "baserom.gba", 0x12F140, 0x0000018

gUnk_0812F158:: @ 0812F158
	.incbin "baserom.gba", 0x12F158, 0x0000018

gUnk_0812F170:: @ 0812F170
	.incbin "baserom.gba", 0x12F170, 0x0000018

gUnk_0812F188:: @ 0812F188
	.incbin "baserom.gba", 0x12F188, 0x0000018

gUnk_0812F1A0:: @ 0812F1A0
	.incbin "baserom.gba", 0x12F1A0, 0x0000018

gUnk_0812F1B8:: @ 0812F1B8
	.incbin "baserom.gba", 0x12F1B8, 0x0000018

gUnk_0812F1D0:: @ 0812F1D0
	.incbin "baserom.gba", 0x12F1D0, 0x0000018

gUnk_0812F1E8:: @ 0812F1E8
	.incbin "baserom.gba", 0x12F1E8, 0x0000018

gUnk_0812F200:: @ 0812F200
	.incbin "baserom.gba", 0x12F200, 0x0000018

gUnk_0812F218:: @ 0812F218
	.incbin "baserom.gba", 0x12F218, 0x0000018

gUnk_0812F230:: @ 0812F230
	.incbin "baserom.gba", 0x12F230, 0x0000018

gUnk_0812F248:: @ 0812F248
	.incbin "baserom.gba", 0x12F248, 0x0000018

gUnk_0812F260:: @ 0812F260
	.incbin "baserom.gba", 0x12F260, 0x0000018

gUnk_0812F278:: @ 0812F278
	.incbin "baserom.gba", 0x12F278, 0x0000018

gUnk_0812F290:: @ 0812F290
	.incbin "baserom.gba", 0x12F290, 0x0000018

gUnk_0812F2A8:: @ 0812F2A8
	.incbin "baserom.gba", 0x12F2A8, 0x0000018

gUnk_0812F2C0:: @ 0812F2C0
	.incbin "baserom.gba", 0x12F2C0, 0x0000018

gUnk_0812F2D8:: @ 0812F2D8
	.incbin "baserom.gba", 0x12F2D8, 0x0000018

gUnk_0812F2F0:: @ 0812F2F0
	.incbin "baserom.gba", 0x12F2F0, 0x0000018

gUnk_0812F308:: @ 0812F308
	.incbin "baserom.gba", 0x12F308, 0x0000018

gUnk_0812F320:: @ 0812F320
	.incbin "baserom.gba", 0x12F320, 0x0000018

gUnk_0812F338:: @ 0812F338
	.incbin "baserom.gba", 0x12F338, 0x0000018

gUnk_0812F350:: @ 0812F350
	.incbin "baserom.gba", 0x12F350, 0x0000018

gUnk_0812F368:: @ 0812F368
	.incbin "baserom.gba", 0x12F368, 0x0000018

gUnk_0812F380:: @ 0812F380
	.incbin "baserom.gba", 0x12F380, 0x0000018

gUnk_0812F398:: @ 0812F398
	.incbin "baserom.gba", 0x12F398, 0x0000018

gUnk_0812F3B0:: @ 0812F3B0
	.incbin "baserom.gba", 0x12F3B0, 0x0000018

gUnk_0812F3C8:: @ 0812F3C8
	.incbin "baserom.gba", 0x12F3C8, 0x0000018

gUnk_0812F3E0:: @ 0812F3E0
	.incbin "baserom.gba", 0x12F3E0, 0x0000018

gUnk_0812F3F8:: @ 0812F3F8
	.incbin "baserom.gba", 0x12F3F8, 0x0000018

gUnk_0812F410:: @ 0812F410
	.incbin "baserom.gba", 0x12F410, 0x0000018

gUnk_0812F428:: @ 0812F428
	.incbin "baserom.gba", 0x12F428, 0x0000018

gUnk_0812F440:: @ 0812F440
	.incbin "baserom.gba", 0x12F440, 0x0000018

gUnk_0812F458:: @ 0812F458
	.incbin "baserom.gba", 0x12F458, 0x0000018

gUnk_0812F470:: @ 0812F470
	.incbin "baserom.gba", 0x12F470, 0x0000014

gUnk_0812F484:: @ 0812F484
	.incbin "baserom.gba", 0x12F484, 0x0000010

gUnk_0812F494:: @ 0812F494
	.incbin "baserom.gba", 0x12F494, 0x0000170

gUnk_0812F604:: @ 0812F604
	.incbin "baserom.gba", 0x12F604, 0x0000010

gUnk_0812F614:: @ 0812F614
	.incbin "baserom.gba", 0x12F614, 0x0000010

gUnk_0812F624:: @ 0812F624
	.incbin "baserom.gba", 0x12F624, 0x000000C

gUnk_0812F630:: @ 0812F630
	.incbin "baserom.gba", 0x12F630, 0x000000C

gUnk_0812F63C:: @ 0812F63C
	.incbin "baserom.gba", 0x12F63C, 0x000000C

gUnk_0812F648:: @ 0812F648
	.incbin "baserom.gba", 0x12F648, 0x000000C

gUnk_0812F654:: @ 0812F654
	.incbin "baserom.gba", 0x12F654, 0x0000010

gUnk_0812F664:: @ 0812F664
	.incbin "baserom.gba", 0x12F664, 0x000000C

gUnk_0812F670:: @ 0812F670
	.incbin "baserom.gba", 0x12F670, 0x0000010

gUnk_0812F680:: @ 0812F680
	.incbin "baserom.gba", 0x12F680, 0x000000C

gUnk_0812F68C:: @ 0812F68C
	.incbin "baserom.gba", 0x12F68C, 0x000000C

gUnk_0812F698:: @ 0812F698
	.incbin "baserom.gba", 0x12F698, 0x000000C

gUnk_0812F6A4:: @ 0812F6A4
	.incbin "baserom.gba", 0x12F6A4, 0x000000C

gUnk_0812F6B0:: @ 0812F6B0
	.incbin "baserom.gba", 0x12F6B0, 0x000000C

gUnk_0812F6BC:: @ 0812F6BC
	.incbin "baserom.gba", 0x12F6BC, 0x0000010

gUnk_0812F6CC:: @ 0812F6CC
	.incbin "baserom.gba", 0x12F6CC, 0x0000010

gUnk_0812F6DC:: @ 0812F6DC
	.incbin "baserom.gba", 0x12F6DC, 0x0000010

gUnk_0812F6EC:: @ 0812F6EC
	.incbin "baserom.gba", 0x12F6EC, 0x000000C

gUnk_0812F6F8:: @ 0812F6F8
	.incbin "baserom.gba", 0x12F6F8, 0x000000C

gUnk_0812F704:: @ 0812F704
	.incbin "baserom.gba", 0x12F704, 0x000000C

gUnk_0812F710:: @ 0812F710
	.incbin "baserom.gba", 0x12F710, 0x000000C

gUnk_0812F71C:: @ 0812F71C
	.incbin "baserom.gba", 0x12F71C, 0x000000C

gUnk_0812F728:: @ 0812F728
	.incbin "baserom.gba", 0x12F728, 0x000000C

gUnk_0812F734:: @ 0812F734
	.incbin "baserom.gba", 0x12F734, 0x000000C

gUnk_0812F740:: @ 0812F740
	.incbin "baserom.gba", 0x12F740, 0x000000C

gUnk_0812F74C:: @ 0812F74C
	.incbin "baserom.gba", 0x12F74C, 0x000000C

gUnk_0812F758:: @ 0812F758
	.incbin "baserom.gba", 0x12F758, 0x000000C

gUnk_0812F764:: @ 0812F764
	.incbin "baserom.gba", 0x12F764, 0x000000C

gUnk_0812F770:: @ 0812F770
	.incbin "baserom.gba", 0x12F770, 0x000000C

gUnk_0812F77C:: @ 0812F77C
	.incbin "baserom.gba", 0x12F77C, 0x000000C

gUnk_0812F788:: @ 0812F788
	.incbin "baserom.gba", 0x12F788, 0x000000C

gUnk_0812F794:: @ 0812F794
	.incbin "baserom.gba", 0x12F794, 0x0000010

gUnk_0812F7A4:: @ 0812F7A4
	.incbin "baserom.gba", 0x12F7A4, 0x000000C

gUnk_0812F7B0:: @ 0812F7B0
	.incbin "baserom.gba", 0x12F7B0, 0x000000C

gUnk_0812F7BC:: @ 0812F7BC
	.incbin "baserom.gba", 0x12F7BC, 0x000000C

gUnk_0812F7C8:: @ 0812F7C8
	.incbin "baserom.gba", 0x12F7C8, 0x0000010

gUnk_0812F7D8:: @ 0812F7D8
	.incbin "baserom.gba", 0x12F7D8, 0x000000C

gUnk_0812F7E4:: @ 0812F7E4
	.incbin "baserom.gba", 0x12F7E4, 0x000000C

gUnk_0812F7F0:: @ 0812F7F0
	.incbin "baserom.gba", 0x12F7F0, 0x000000C

gUnk_0812F7FC:: @ 0812F7FC
	.incbin "baserom.gba", 0x12F7FC, 0x000000C

gUnk_0812F808:: @ 0812F808
	.incbin "baserom.gba", 0x12F808, 0x0000010

gUnk_0812F818:: @ 0812F818
	.incbin "baserom.gba", 0x12F818, 0x000000C

gUnk_0812F824:: @ 0812F824
	.incbin "baserom.gba", 0x12F824, 0x0000010

gUnk_0812F834:: @ 0812F834
	.incbin "baserom.gba", 0x12F834, 0x000000C

gUnk_0812F840:: @ 0812F840
	.incbin "baserom.gba", 0x12F840, 0x000000C

gUnk_0812F84C:: @ 0812F84C
	.incbin "baserom.gba", 0x12F84C, 0x000000C

gUnk_0812F858:: @ 0812F858
	.incbin "baserom.gba", 0x12F858, 0x000000C

gUnk_0812F864:: @ 0812F864
	.incbin "baserom.gba", 0x12F864, 0x000000C

gUnk_0812F870:: @ 0812F870
	.incbin "baserom.gba", 0x12F870, 0x000000C

gUnk_0812F87C:: @ 0812F87C
	.incbin "baserom.gba", 0x12F87C, 0x0000010

gUnk_0812F88C:: @ 0812F88C
	.incbin "baserom.gba", 0x12F88C, 0x000000C

gUnk_0812F898:: @ 0812F898
	.incbin "baserom.gba", 0x12F898, 0x000000C

gUnk_0812F8A4:: @ 0812F8A4
	.incbin "baserom.gba", 0x12F8A4, 0x000000C

gUnk_0812F8B0:: @ 0812F8B0
	.incbin "baserom.gba", 0x12F8B0, 0x000000C

gUnk_0812F8BC:: @ 0812F8BC
	.incbin "baserom.gba", 0x12F8BC, 0x000000C

gUnk_0812F8C8:: @ 0812F8C8
	.incbin "baserom.gba", 0x12F8C8, 0x000000C

gUnk_0812F8D4:: @ 0812F8D4
	.incbin "baserom.gba", 0x12F8D4, 0x000000C

gUnk_0812F8E0:: @ 0812F8E0
	.incbin "baserom.gba", 0x12F8E0, 0x000000C

gUnk_0812F8EC:: @ 0812F8EC
	.incbin "baserom.gba", 0x12F8EC, 0x0000008

gUnk_0812F8F4:: @ 0812F8F4
	.incbin "baserom.gba", 0x12F8F4, 0x0000001

gUnk_0812F8F5:: @ 0812F8F5
	.incbin "baserom.gba", 0x12F8F5, 0x0000003

gUnk_0812F8F8:: @ 0812F8F8
	.incbin "baserom.gba", 0x12F8F8, 0x000000C

gUnk_0812F904:: @ 0812F904
	.incbin "baserom.gba", 0x12F904, 0x000000C

gUnk_0812F910:: @ 0812F910
	.incbin "baserom.gba", 0x12F910, 0x000000C

gUnk_0812F91C:: @ 0812F91C
	.incbin "baserom.gba", 0x12F91C, 0x000000C

gUnk_0812F928:: @ 0812F928
	.incbin "baserom.gba", 0x12F928, 0x000000C

gUnk_0812F934:: @ 0812F934
	.incbin "baserom.gba", 0x12F934, 0x000000C

gUnk_0812F940:: @ 0812F940
	.incbin "baserom.gba", 0x12F940, 0x000000C

gUnk_0812F94C:: @ 0812F94C
	.incbin "baserom.gba", 0x12F94C, 0x000000C

gUnk_0812F958:: @ 0812F958
	.incbin "baserom.gba", 0x12F958, 0x000000C

gUnk_0812F964:: @ 0812F964
	.incbin "baserom.gba", 0x12F964, 0x000000C

gUnk_0812F970:: @ 0812F970
	.incbin "baserom.gba", 0x12F970, 0x000000C

gUnk_0812F97C:: @ 0812F97C
	.incbin "baserom.gba", 0x12F97C, 0x000000C

gUnk_0812F988:: @ 0812F988
	.incbin "baserom.gba", 0x12F988, 0x000000C

gUnk_0812F994:: @ 0812F994
	.incbin "baserom.gba", 0x12F994, 0x000000C

gUnk_0812F9A0:: @ 0812F9A0
	.incbin "baserom.gba", 0x12F9A0, 0x000000C

gUnk_0812F9AC:: @ 0812F9AC
	.incbin "baserom.gba", 0x12F9AC, 0x000000C

gUnk_0812F9B8:: @ 0812F9B8
	.incbin "baserom.gba", 0x12F9B8, 0x000000C

gUnk_0812F9C4:: @ 0812F9C4
	.incbin "baserom.gba", 0x12F9C4, 0x000000C

gUnk_0812F9D0:: @ 0812F9D0
	.incbin "baserom.gba", 0x12F9D0, 0x000000C

gUnk_0812F9DC:: @ 0812F9DC
	.incbin "baserom.gba", 0x12F9DC, 0x000000C

gUnk_0812F9E8:: @ 0812F9E8
	.incbin "baserom.gba", 0x12F9E8, 0x000000C

gUnk_0812F9F4:: @ 0812F9F4
	.incbin "baserom.gba", 0x12F9F4, 0x000000C

gUnk_0812FA00:: @ 0812FA00
	.incbin "baserom.gba", 0x12FA00, 0x000000C

gUnk_0812FA0C:: @ 0812FA0C
	.incbin "baserom.gba", 0x12FA0C, 0x0000001

gUnk_0812FA0D:: @ 0812FA0D
	.incbin "baserom.gba", 0x12FA0D, 0x000000B

gUnk_0812FA18:: @ 0812FA18
	.incbin "baserom.gba", 0x12FA18, 0x000000C

gUnk_0812FA24:: @ 0812FA24
	.incbin "baserom.gba", 0x12FA24, 0x000000C

gUnk_0812FA30:: @ 0812FA30
	.incbin "baserom.gba", 0x12FA30, 0x00000CD

gUnk_0812FAFD:: @ 0812FAFD
	.incbin "baserom.gba", 0x12FAFD, 0x0000057

gUnk_0812FB54:: @ 0812FB54
	.incbin "baserom.gba", 0x12FB54, 0x0000010

gUnk_0812FB64:: @ 0812FB64
	.incbin "baserom.gba", 0x12FB64, 0x0000010

gUnk_0812FB74:: @ 0812FB74
	.incbin "baserom.gba", 0x12FB74, 0x000000C

gUnk_0812FB80:: @ 0812FB80
	.incbin "baserom.gba", 0x12FB80, 0x000000C

gUnk_0812FB8C:: @ 0812FB8C
	.incbin "baserom.gba", 0x12FB8C, 0x000000C

gUnk_0812FB98:: @ 0812FB98
	.incbin "baserom.gba", 0x12FB98, 0x000000C

gUnk_0812FBA4:: @ 0812FBA4
	.incbin "baserom.gba", 0x12FBA4, 0x000000C

gUnk_0812FBB0:: @ 0812FBB0
	.incbin "baserom.gba", 0x12FBB0, 0x000000C

gUnk_0812FBBC:: @ 0812FBBC
	.incbin "baserom.gba", 0x12FBBC, 0x000000C

gUnk_0812FBC8:: @ 0812FBC8
	.incbin "baserom.gba", 0x12FBC8, 0x000000C

gUnk_0812FBD4:: @ 0812FBD4
	.incbin "baserom.gba", 0x12FBD4, 0x0000010

gUnk_0812FBE4:: @ 0812FBE4
	.incbin "baserom.gba", 0x12FBE4, 0x000000C

gUnk_0812FBF0:: @ 0812FBF0
	.incbin "baserom.gba", 0x12FBF0, 0x000000C

gUnk_0812FBFC:: @ 0812FBFC
	.incbin "baserom.gba", 0x12FBFC, 0x000000C

gUnk_0812FC08:: @ 0812FC08
	.incbin "baserom.gba", 0x12FC08, 0x000000C

gUnk_0812FC14:: @ 0812FC14
	.incbin "baserom.gba", 0x12FC14, 0x000000C

gUnk_0812FC20:: @ 0812FC20
	.incbin "baserom.gba", 0x12FC20, 0x000000C

gUnk_0812FC2C:: @ 0812FC2C
	.incbin "baserom.gba", 0x12FC2C, 0x0000010

gUnk_0812FC3C:: @ 0812FC3C
	.incbin "baserom.gba", 0x12FC3C, 0x000000C

gUnk_0812FC48:: @ 0812FC48
	.incbin "baserom.gba", 0x12FC48, 0x000000C

gUnk_0812FC54:: @ 0812FC54
	.incbin "baserom.gba", 0x12FC54, 0x000000C

gUnk_0812FC60:: @ 0812FC60
	.incbin "baserom.gba", 0x12FC60, 0x000000C

gUnk_0812FC6C:: @ 0812FC6C
	.incbin "baserom.gba", 0x12FC6C, 0x000000C

gUnk_0812FC78:: @ 0812FC78
	.incbin "baserom.gba", 0x12FC78, 0x000000C

gUnk_0812FC84:: @ 0812FC84
	.incbin "baserom.gba", 0x12FC84, 0x000000C

gUnk_0812FC90:: @ 0812FC90
	.incbin "baserom.gba", 0x12FC90, 0x000000C

gUnk_0812FC9C:: @ 0812FC9C
	.incbin "baserom.gba", 0x12FC9C, 0x000000C

gUnk_0812FCA8:: @ 0812FCA8
	.incbin "baserom.gba", 0x12FCA8, 0x000000C

gUnk_0812FCB4:: @ 0812FCB4
	.incbin "baserom.gba", 0x12FCB4, 0x000000C

gUnk_0812FCC0:: @ 0812FCC0
	.incbin "baserom.gba", 0x12FCC0, 0x000000C

gUnk_0812FCCC:: @ 0812FCCC
	.incbin "baserom.gba", 0x12FCCC, 0x000000C

gUnk_0812FCD8:: @ 0812FCD8
	.incbin "baserom.gba", 0x12FCD8, 0x000000C

gUnk_0812FCE4:: @ 0812FCE4
	.incbin "baserom.gba", 0x12FCE4, 0x000000C

gUnk_0812FCF0:: @ 0812FCF0
	.incbin "baserom.gba", 0x12FCF0, 0x0000010

gUnk_0812FD00:: @ 0812FD00
	.incbin "baserom.gba", 0x12FD00, 0x000000C

gUnk_0812FD0C:: @ 0812FD0C
	.incbin "baserom.gba", 0x12FD0C, 0x0000010

gUnk_0812FD1C:: @ 0812FD1C
	.incbin "baserom.gba", 0x12FD1C, 0x000000C

gUnk_0812FD28:: @ 0812FD28
	.incbin "baserom.gba", 0x12FD28, 0x000000C

gUnk_0812FD34:: @ 0812FD34
	.incbin "baserom.gba", 0x12FD34, 0x0000010

gUnk_0812FD44:: @ 0812FD44
	.incbin "baserom.gba", 0x12FD44, 0x000000C

gUnk_0812FD50:: @ 0812FD50
	.incbin "baserom.gba", 0x12FD50, 0x000000C

gUnk_0812FD5C:: @ 0812FD5C
	.incbin "baserom.gba", 0x12FD5C, 0x0000010

gUnk_0812FD6C:: @ 0812FD6C
	.incbin "baserom.gba", 0x12FD6C, 0x000000C

gUnk_0812FD78:: @ 0812FD78
	.incbin "baserom.gba", 0x12FD78, 0x000000C

gUnk_0812FD84:: @ 0812FD84
	.incbin "baserom.gba", 0x12FD84, 0x000000C

gUnk_0812FD90:: @ 0812FD90
	.incbin "baserom.gba", 0x12FD90, 0x000000C

gUnk_0812FD9C:: @ 0812FD9C
	.incbin "baserom.gba", 0x12FD9C, 0x000000C

gUnk_0812FDA8:: @ 0812FDA8
	.incbin "baserom.gba", 0x12FDA8, 0x000000C

gUnk_0812FDB4:: @ 0812FDB4
	.incbin "baserom.gba", 0x12FDB4, 0x000000C

gUnk_0812FDC0:: @ 0812FDC0
	.incbin "baserom.gba", 0x12FDC0, 0x0000014

gUnk_0812FDD4:: @ 0812FDD4
	.incbin "baserom.gba", 0x12FDD4, 0x000000C

gUnk_0812FDE0:: @ 0812FDE0
	.incbin "baserom.gba", 0x12FDE0, 0x000000C

gUnk_0812FDEC:: @ 0812FDEC
	.incbin "baserom.gba", 0x12FDEC, 0x000000C

gUnk_0812FDF8:: @ 0812FDF8
	.incbin "baserom.gba", 0x12FDF8, 0x000000C

gUnk_0812FE04:: @ 0812FE04
	.incbin "baserom.gba", 0x12FE04, 0x000000C

gUnk_0812FE10:: @ 0812FE10
	.incbin "baserom.gba", 0x12FE10, 0x000000C

gUnk_0812FE1C:: @ 0812FE1C
	.incbin "baserom.gba", 0x12FE1C, 0x000000C

gUnk_0812FE28:: @ 0812FE28
	.incbin "baserom.gba", 0x12FE28, 0x000000C

gUnk_0812FE34:: @ 0812FE34
	.incbin "baserom.gba", 0x12FE34, 0x000000C

gUnk_0812FE40:: @ 0812FE40
	.incbin "baserom.gba", 0x12FE40, 0x000000C

gUnk_0812FE4C:: @ 0812FE4C
	.incbin "baserom.gba", 0x12FE4C, 0x000000C

gUnk_0812FE58:: @ 0812FE58
	.incbin "baserom.gba", 0x12FE58, 0x000000C

gUnk_0812FE64:: @ 0812FE64
	.incbin "baserom.gba", 0x12FE64, 0x000000C

gUnk_0812FE70:: @ 0812FE70
	.incbin "baserom.gba", 0x12FE70, 0x000000C

gUnk_0812FE7C:: @ 0812FE7C
	.incbin "baserom.gba", 0x12FE7C, 0x000000C

gUnk_0812FE88:: @ 0812FE88
	.incbin "baserom.gba", 0x12FE88, 0x000000C

gUnk_0812FE94:: @ 0812FE94
	.incbin "baserom.gba", 0x12FE94, 0x000000C

gUnk_0812FEA0:: @ 0812FEA0
	.incbin "baserom.gba", 0x12FEA0, 0x00000B6

gUnk_0812FF56:: @ 0812FF56
	.incbin "baserom.gba", 0x12FF56, 0x0000048

gUnk_0812FF9E:: @ 0812FF9E
	.incbin "baserom.gba", 0x12FF9E, 0x0000038

gUnk_0812FFD6:: @ 0812FFD6
	.incbin "baserom.gba", 0x12FFD6, 0x0000002

gUnk_0812FFD8:: @ 0812FFD8
	.incbin "baserom.gba", 0x12FFD8, 0x000000C

gUnk_0812FFE4:: @ 0812FFE4
	.incbin "baserom.gba", 0x12FFE4, 0x000000C

gUnk_0812FFF0:: @ 0812FFF0
	.incbin "baserom.gba", 0x12FFF0, 0x0000006

gUnk_0812FFF6:: @ 0812FFF6
	.incbin "baserom.gba", 0x12FFF6, 0x0000006

gUnk_0812FFFC:: @ 0812FFFC
	.incbin "baserom.gba", 0x12FFFC, 0x0000003

gUnk_0812FFFF:: @ 0812FFFF
	.incbin "baserom.gba", 0x12FFFF, 0x0000001

gUnk_08130000:: @ 08130000
	.incbin "baserom.gba", 0x130000, 0x0000002

gUnk_08130002:: @ 08130002
	.incbin "baserom.gba", 0x130002, 0x000000A

gUnk_0813000C:: @ 0813000C
	.incbin "baserom.gba", 0x13000C, 0x0000014

gUnk_08130020:: @ 08130020
	.incbin "baserom.gba", 0x130020, 0x000000C

gUnk_0813002C:: @ 0813002C
	.incbin "baserom.gba", 0x13002C, 0x000000C

gUnk_08130038:: @ 08130038
	.incbin "baserom.gba", 0x130038, 0x000000C

gUnk_08130044:: @ 08130044
	.incbin "baserom.gba", 0x130044, 0x0000009

gUnk_0813004D:: @ 0813004D
	.incbin "baserom.gba", 0x13004D, 0x0000003

gUnk_08130050:: @ 08130050
	.incbin "baserom.gba", 0x130050, 0x0000010

gUnk_08130060:: @ 08130060
	.incbin "baserom.gba", 0x130060, 0x000000C

gUnk_0813006C:: @ 0813006C
	.incbin "baserom.gba", 0x13006C, 0x000000C

gUnk_08130078:: @ 08130078
	.incbin "baserom.gba", 0x130078, 0x000000C

gUnk_08130084:: @ 08130084
	.incbin "baserom.gba", 0x130084, 0x0000005

gUnk_08130089:: @ 08130089
	.incbin "baserom.gba", 0x130089, 0x0000007

gUnk_08130090:: @ 08130090
	.incbin "baserom.gba", 0x130090, 0x000000C

gUnk_0813009C:: @ 0813009C
	.incbin "baserom.gba", 0x13009C, 0x000000C

gUnk_081300A8:: @ 081300A8
	.incbin "baserom.gba", 0x1300A8, 0x000000C

gUnk_081300B4:: @ 081300B4
	.incbin "baserom.gba", 0x1300B4, 0x000000C

gUnk_081300C0:: @ 081300C0
	.incbin "baserom.gba", 0x1300C0, 0x000000C

gUnk_081300CC:: @ 081300CC
	.incbin "baserom.gba", 0x1300CC, 0x000000C

gUnk_081300D8:: @ 081300D8
	.incbin "baserom.gba", 0x1300D8, 0x000000C

gUnk_081300E4:: @ 081300E4
	.incbin "baserom.gba", 0x1300E4, 0x0000010

gUnk_081300F4:: @ 081300F4
	.incbin "baserom.gba", 0x1300F4, 0x000000C

gUnk_08130100:: @ 08130100
	.incbin "baserom.gba", 0x130100, 0x0000014

gUnk_08130114:: @ 08130114
	.incbin "baserom.gba", 0x130114, 0x0000010

gUnk_08130124:: @ 08130124
	.incbin "baserom.gba", 0x130124, 0x000000C

gUnk_08130130:: @ 08130130
	.incbin "baserom.gba", 0x130130, 0x000000C

gUnk_0813013C:: @ 0813013C
	.incbin "baserom.gba", 0x13013C, 0x000000C

gUnk_08130148:: @ 08130148
	.incbin "baserom.gba", 0x130148, 0x000000C

gUnk_08130154:: @ 08130154
	.incbin "baserom.gba", 0x130154, 0x000000C

gUnk_08130160:: @ 08130160
	.incbin "baserom.gba", 0x130160, 0x000000C

gUnk_0813016C:: @ 0813016C
	.incbin "baserom.gba", 0x13016C, 0x000000C

gUnk_08130178:: @ 08130178
	.incbin "baserom.gba", 0x130178, 0x0000010

gUnk_08130188:: @ 08130188
	.incbin "baserom.gba", 0x130188, 0x000000C

gUnk_08130194:: @ 08130194
	.incbin "baserom.gba", 0x130194, 0x000000C

gUnk_081301A0:: @ 081301A0
	.incbin "baserom.gba", 0x1301A0, 0x0000010

gUnk_081301B0:: @ 081301B0
	.incbin "baserom.gba", 0x1301B0, 0x0000010

gUnk_081301C0:: @ 081301C0
	.incbin "baserom.gba", 0x1301C0, 0x0000010

gUnk_081301D0:: @ 081301D0
	.incbin "baserom.gba", 0x1301D0, 0x000000C

gUnk_081301DC:: @ 081301DC
	.incbin "baserom.gba", 0x1301DC, 0x000000C

gUnk_081301E8:: @ 081301E8
	.incbin "baserom.gba", 0x1301E8, 0x0000006

gUnk_081301EE:: @ 081301EE
	.incbin "baserom.gba", 0x1301EE, 0x0000006

gUnk_081301F4:: @ 081301F4
	.incbin "baserom.gba", 0x1301F4, 0x0000010

gUnk_08130204:: @ 08130204
	.incbin "baserom.gba", 0x130204, 0x0000002

gUnk_08130206:: @ 08130206
	.incbin "baserom.gba", 0x130206, 0x000000A

gUnk_08130210:: @ 08130210
	.incbin "baserom.gba", 0x130210, 0x000000C

gUnk_0813021C:: @ 0813021C
	.incbin "baserom.gba", 0x13021C, 0x000000C

gUnk_08130228:: @ 08130228
	.incbin "baserom.gba", 0x130228, 0x000000C

gUnk_08130234:: @ 08130234
	.incbin "baserom.gba", 0x130234, 0x000000C

gUnk_08130240:: @ 08130240
	.incbin "baserom.gba", 0x130240, 0x000000C

gUnk_0813024C:: @ 0813024C
	.incbin "baserom.gba", 0x13024C, 0x000000C

gUnk_08130258:: @ 08130258
	.incbin "baserom.gba", 0x130258, 0x000000C

gUnk_08130264:: @ 08130264
	.incbin "baserom.gba", 0x130264, 0x000000C

gUnk_08130270:: @ 08130270
	.incbin "baserom.gba", 0x130270, 0x000000C

gUnk_0813027C:: @ 0813027C
	.incbin "baserom.gba", 0x13027C, 0x000000C

gUnk_08130288:: @ 08130288
	.incbin "baserom.gba", 0x130288, 0x000000C

gUnk_08130294:: @ 08130294
	.incbin "baserom.gba", 0x130294, 0x000000C

gUnk_081302A0:: @ 081302A0
	.incbin "baserom.gba", 0x1302A0, 0x000000C

gUnk_081302AC:: @ 081302AC
	.incbin "baserom.gba", 0x1302AC, 0x000000C

gUnk_081302B8:: @ 081302B8
	.incbin "baserom.gba", 0x1302B8, 0x000000C

gUnk_081302C4:: @ 081302C4
	.incbin "baserom.gba", 0x1302C4, 0x000000C

gUnk_081302D0:: @ 081302D0
	.incbin "baserom.gba", 0x1302D0, 0x000000C

gUnk_081302DC:: @ 081302DC
	.incbin "baserom.gba", 0x1302DC, 0x000000C

gUnk_081302E8:: @ 081302E8
	.incbin "baserom.gba", 0x1302E8, 0x000000C

gUnk_081302F4:: @ 081302F4
	.incbin "baserom.gba", 0x1302F4, 0x000000C

gUnk_08130300:: @ 08130300
	.incbin "baserom.gba", 0x130300, 0x000000C

gUnk_0813030C:: @ 0813030C
	.incbin "baserom.gba", 0x13030C, 0x000000C

gUnk_08130318:: @ 08130318
	.incbin "baserom.gba", 0x130318, 0x000000C

gUnk_08130324:: @ 08130324
	.incbin "baserom.gba", 0x130324, 0x000000C

gUnk_08130330:: @ 08130330
	.incbin "baserom.gba", 0x130330, 0x000000C

gUnk_0813033C:: @ 0813033C
	.incbin "baserom.gba", 0x13033C, 0x000000C

gUnk_08130348:: @ 08130348
	.incbin "baserom.gba", 0x130348, 0x000000C

gUnk_08130354:: @ 08130354
	.incbin "baserom.gba", 0x130354, 0x000000C

gUnk_08130360:: @ 08130360
	.incbin "baserom.gba", 0x130360, 0x000000C

gUnk_0813036C:: @ 0813036C
	.incbin "baserom.gba", 0x13036C, 0x0000286

gUnk_081305F2:: @ 081305F2
	.incbin "baserom.gba", 0x1305F2, 0x000001A

gUnk_0813060C:: @ 0813060C
	.incbin "baserom.gba", 0x13060C, 0x0000010

gUnk_0813061C:: @ 0813061C
	.incbin "baserom.gba", 0x13061C, 0x0000010

gUnk_0813062C:: @ 0813062C
	.incbin "baserom.gba", 0x13062C, 0x000000C

gUnk_08130638:: @ 08130638
	.incbin "baserom.gba", 0x130638, 0x000000C

gUnk_08130644:: @ 08130644
	.incbin "baserom.gba", 0x130644, 0x000000C

gUnk_08130650:: @ 08130650
	.incbin "baserom.gba", 0x130650, 0x000000C

gUnk_0813065C:: @ 0813065C
	.incbin "baserom.gba", 0x13065C, 0x000000C

gUnk_08130668:: @ 08130668
	.incbin "baserom.gba", 0x130668, 0x000000C

gUnk_08130674:: @ 08130674
	.incbin "baserom.gba", 0x130674, 0x000000C

gUnk_08130680:: @ 08130680
	.incbin "baserom.gba", 0x130680, 0x000000C

gUnk_0813068C:: @ 0813068C
	.incbin "baserom.gba", 0x13068C, 0x000000C

gUnk_08130698:: @ 08130698
	.incbin "baserom.gba", 0x130698, 0x000000C

gUnk_081306A4:: @ 081306A4
	.incbin "baserom.gba", 0x1306A4, 0x000000C

gUnk_081306B0:: @ 081306B0
	.incbin "baserom.gba", 0x1306B0, 0x000000C

gUnk_081306BC:: @ 081306BC
	.incbin "baserom.gba", 0x1306BC, 0x000000C

gUnk_081306C8:: @ 081306C8
	.incbin "baserom.gba", 0x1306C8, 0x000000C

gUnk_081306D4:: @ 081306D4
	.incbin "baserom.gba", 0x1306D4, 0x000000C

gUnk_081306E0:: @ 081306E0
	.incbin "baserom.gba", 0x1306E0, 0x0000004

gUnk_081306E4:: @ 081306E4
	.incbin "baserom.gba", 0x1306E4, 0x0000008

gUnk_081306EC:: @ 081306EC
	.incbin "baserom.gba", 0x1306EC, 0x000000C

gUnk_081306F8:: @ 081306F8
	.incbin "baserom.gba", 0x1306F8, 0x000000C

gUnk_08130704:: @ 08130704
	.incbin "baserom.gba", 0x130704, 0x000000C

gUnk_08130710:: @ 08130710
	.incbin "baserom.gba", 0x130710, 0x000000C

gUnk_0813071C:: @ 0813071C
	.incbin "baserom.gba", 0x13071C, 0x000000C

gUnk_08130728:: @ 08130728
	.incbin "baserom.gba", 0x130728, 0x000000C

gUnk_08130734:: @ 08130734
	.incbin "baserom.gba", 0x130734, 0x000000C

gUnk_08130740:: @ 08130740
	.incbin "baserom.gba", 0x130740, 0x000000C

gUnk_0813074C:: @ 0813074C
	.incbin "baserom.gba", 0x13074C, 0x000000C

gUnk_08130758:: @ 08130758
	.incbin "baserom.gba", 0x130758, 0x000000C

gUnk_08130764:: @ 08130764
	.incbin "baserom.gba", 0x130764, 0x000000C

gUnk_08130770:: @ 08130770
	.incbin "baserom.gba", 0x130770, 0x000000C

gUnk_0813077C:: @ 0813077C
	.incbin "baserom.gba", 0x13077C, 0x000000C

gUnk_08130788:: @ 08130788
	.incbin "baserom.gba", 0x130788, 0x0000010

gUnk_08130798:: @ 08130798
	.incbin "baserom.gba", 0x130798, 0x000000C

gUnk_081307A4:: @ 081307A4
	.incbin "baserom.gba", 0x1307A4, 0x000000C

gUnk_081307B0:: @ 081307B0
	.incbin "baserom.gba", 0x1307B0, 0x0000010

gUnk_081307C0:: @ 081307C0
	.incbin "baserom.gba", 0x1307C0, 0x0000010

gUnk_081307D0:: @ 081307D0
	.incbin "baserom.gba", 0x1307D0, 0x0000010

gUnk_081307E0:: @ 081307E0
	.incbin "baserom.gba", 0x1307E0, 0x000000C

gUnk_081307EC:: @ 081307EC
	.incbin "baserom.gba", 0x1307EC, 0x000000C

gUnk_081307F8:: @ 081307F8
	.incbin "baserom.gba", 0x1307F8, 0x000000A

gUnk_08130802:: @ 08130802
	.incbin "baserom.gba", 0x130802, 0x0000002

gUnk_08130804:: @ 08130804
	.incbin "baserom.gba", 0x130804, 0x0000009

gUnk_0813080D:: @ 0813080D
	.incbin "baserom.gba", 0x13080D, 0x0000003

gUnk_08130810:: @ 08130810
	.incbin "baserom.gba", 0x130810, 0x000000C

gUnk_0813081C:: @ 0813081C
	.incbin "baserom.gba", 0x13081C, 0x000000C

gUnk_08130828:: @ 08130828
	.incbin "baserom.gba", 0x130828, 0x000000C

gUnk_08130834:: @ 08130834
	.incbin "baserom.gba", 0x130834, 0x000000C

gUnk_08130840:: @ 08130840
	.incbin "baserom.gba", 0x130840, 0x000000C

gUnk_0813084C:: @ 0813084C
	.incbin "baserom.gba", 0x13084C, 0x000000C

gUnk_08130858:: @ 08130858
	.incbin "baserom.gba", 0x130858, 0x000000C

gUnk_08130864:: @ 08130864
	.incbin "baserom.gba", 0x130864, 0x000000C

gUnk_08130870:: @ 08130870
	.incbin "baserom.gba", 0x130870, 0x000000C

gUnk_0813087C:: @ 0813087C
	.incbin "baserom.gba", 0x13087C, 0x0000010

gUnk_0813088C:: @ 0813088C
	.incbin "baserom.gba", 0x13088C, 0x000000C

gUnk_08130898:: @ 08130898
	.incbin "baserom.gba", 0x130898, 0x000000C

gUnk_081308A4:: @ 081308A4
	.incbin "baserom.gba", 0x1308A4, 0x000000C

gUnk_081308B0:: @ 081308B0
	.incbin "baserom.gba", 0x1308B0, 0x000000C

gUnk_081308BC:: @ 081308BC
	.incbin "baserom.gba", 0x1308BC, 0x000000C

gUnk_081308C8:: @ 081308C8
	.incbin "baserom.gba", 0x1308C8, 0x000000C

gUnk_081308D4:: @ 081308D4
	.incbin "baserom.gba", 0x1308D4, 0x000000C

gUnk_081308E0:: @ 081308E0
	.incbin "baserom.gba", 0x1308E0, 0x000000C

gUnk_081308EC:: @ 081308EC
	.incbin "baserom.gba", 0x1308EC, 0x000000C

gUnk_081308F8:: @ 081308F8
	.incbin "baserom.gba", 0x1308F8, 0x0000007

gUnk_081308FF:: @ 081308FF
	.incbin "baserom.gba", 0x1308FF, 0x0000005

gUnk_08130904:: @ 08130904
	.incbin "baserom.gba", 0x130904, 0x000000C

gUnk_08130910:: @ 08130910
	.incbin "baserom.gba", 0x130910, 0x000000A

gUnk_0813091A:: @ 0813091A
	.incbin "baserom.gba", 0x13091A, 0x0000002

gUnk_0813091C:: @ 0813091C
	.incbin "baserom.gba", 0x13091C, 0x000000C

gUnk_08130928:: @ 08130928
	.incbin "baserom.gba", 0x130928, 0x000000C

gUnk_08130934:: @ 08130934
	.incbin "baserom.gba", 0x130934, 0x000000C

gUnk_08130940:: @ 08130940
	.incbin "baserom.gba", 0x130940, 0x000000C

gUnk_0813094C:: @ 0813094C
	.incbin "baserom.gba", 0x13094C, 0x0000010

gUnk_0813095C:: @ 0813095C
	.incbin "baserom.gba", 0x13095C, 0x000000C

gUnk_08130968:: @ 08130968
	.incbin "baserom.gba", 0x130968, 0x000000C

gUnk_08130974:: @ 08130974
	.incbin "baserom.gba", 0x130974, 0x000000C

gUnk_08130980:: @ 08130980
	.incbin "baserom.gba", 0x130980, 0x0000010

gUnk_08130990:: @ 08130990
	.incbin "baserom.gba", 0x130990, 0x000000C

gUnk_0813099C:: @ 0813099C
	.incbin "baserom.gba", 0x13099C, 0x000000C

gUnk_081309A8:: @ 081309A8
	.incbin "baserom.gba", 0x1309A8, 0x000000C

gUnk_081309B4:: @ 081309B4
	.incbin "baserom.gba", 0x1309B4, 0x000000C

gUnk_081309C0:: @ 081309C0
	.incbin "baserom.gba", 0x1309C0, 0x000000C

gUnk_081309CC:: @ 081309CC
	.incbin "baserom.gba", 0x1309CC, 0x000000C

gUnk_081309D8:: @ 081309D8
	.incbin "baserom.gba", 0x1309D8, 0x000000C

gUnk_081309E4:: @ 081309E4
	.incbin "baserom.gba", 0x1309E4, 0x000000B

gUnk_081309EF:: @ 081309EF
	.incbin "baserom.gba", 0x1309EF, 0x0000001

gUnk_081309F0:: @ 081309F0
	.incbin "baserom.gba", 0x1309F0, 0x0000010

gUnk_08130A00:: @ 08130A00
	.incbin "baserom.gba", 0x130A00, 0x0000001

gUnk_08130A01:: @ 08130A01
	.incbin "baserom.gba", 0x130A01, 0x000000B

gUnk_08130A0C:: @ 08130A0C
	.incbin "baserom.gba", 0x130A0C, 0x000000C

gUnk_08130A18:: @ 08130A18
	.incbin "baserom.gba", 0x130A18, 0x000000C

gUnk_08130A24:: @ 08130A24
	.incbin "baserom.gba", 0x130A24, 0x0000010

gUnk_08130A34:: @ 08130A34
	.incbin "baserom.gba", 0x130A34, 0x000000C

gUnk_08130A40:: @ 08130A40
	.incbin "baserom.gba", 0x130A40, 0x000000C

gUnk_08130A4C:: @ 08130A4C
	.incbin "baserom.gba", 0x130A4C, 0x000000C

gUnk_08130A58:: @ 08130A58
	.incbin "baserom.gba", 0x130A58, 0x000000C

gUnk_08130A64:: @ 08130A64
	.incbin "baserom.gba", 0x130A64, 0x0000010

gUnk_08130A74:: @ 08130A74
	.incbin "baserom.gba", 0x130A74, 0x000000C

gUnk_08130A80:: @ 08130A80
	.incbin "baserom.gba", 0x130A80, 0x0000010

gUnk_08130A90:: @ 08130A90
	.incbin "baserom.gba", 0x130A90, 0x000000C

gUnk_08130A9C:: @ 08130A9C
	.incbin "baserom.gba", 0x130A9C, 0x000000C

gUnk_08130AA8:: @ 08130AA8
	.incbin "baserom.gba", 0x130AA8, 0x000000C

gUnk_08130AB4:: @ 08130AB4
	.incbin "baserom.gba", 0x130AB4, 0x000000C

gUnk_08130AC0:: @ 08130AC0
	.incbin "baserom.gba", 0x130AC0, 0x000000C

gUnk_08130ACC:: @ 08130ACC
	.incbin "baserom.gba", 0x130ACC, 0x000000C

gUnk_08130AD8:: @ 08130AD8
	.incbin "baserom.gba", 0x130AD8, 0x000000C

gUnk_08130AE4:: @ 08130AE4
	.incbin "baserom.gba", 0x130AE4, 0x0000010

gUnk_08130AF4:: @ 08130AF4
	.incbin "baserom.gba", 0x130AF4, 0x000000C

gUnk_08130B00:: @ 08130B00
	.incbin "baserom.gba", 0x130B00, 0x000000C

gUnk_08130B0C:: @ 08130B0C
	.incbin "baserom.gba", 0x130B0C, 0x000000C

gUnk_08130B18:: @ 08130B18
	.incbin "baserom.gba", 0x130B18, 0x000000C

gUnk_08130B24:: @ 08130B24
	.incbin "baserom.gba", 0x130B24, 0x000000C

gUnk_08130B30:: @ 08130B30
	.incbin "baserom.gba", 0x130B30, 0x000000C

gUnk_08130B3C:: @ 08130B3C
	.incbin "baserom.gba", 0x130B3C, 0x0000010

gUnk_08130B4C:: @ 08130B4C
	.incbin "baserom.gba", 0x130B4C, 0x000000C

gUnk_08130B58:: @ 08130B58
	.incbin "baserom.gba", 0x130B58, 0x0000014

gUnk_08130B6C:: @ 08130B6C
	.incbin "baserom.gba", 0x130B6C, 0x0000010

gUnk_08130B7C:: @ 08130B7C
	.incbin "baserom.gba", 0x130B7C, 0x0000014

gUnk_08130B90:: @ 08130B90
	.incbin "baserom.gba", 0x130B90, 0x0000010

gUnk_08130BA0:: @ 08130BA0
	.incbin "baserom.gba", 0x130BA0, 0x000000C

gUnk_08130BAC:: @ 08130BAC
	.incbin "baserom.gba", 0x130BAC, 0x000000C

gUnk_08130BB8:: @ 08130BB8
	.incbin "baserom.gba", 0x130BB8, 0x000000C

gUnk_08130BC4:: @ 08130BC4
	.incbin "baserom.gba", 0x130BC4, 0x000000C

gUnk_08130BD0:: @ 08130BD0
	.incbin "baserom.gba", 0x130BD0, 0x000000C

gUnk_08130BDC:: @ 08130BDC
	.incbin "baserom.gba", 0x130BDC, 0x000000C

gUnk_08130BE8:: @ 08130BE8
	.incbin "baserom.gba", 0x130BE8, 0x000000C

gUnk_08130BF4:: @ 08130BF4
	.incbin "baserom.gba", 0x130BF4, 0x000000F

gUnk_08130C03:: @ 08130C03
	.incbin "baserom.gba", 0x130C03, 0x0000001

gUnk_08130C04:: @ 08130C04
	.incbin "baserom.gba", 0x130C04, 0x0000010

gUnk_08130C14:: @ 08130C14
	.incbin "baserom.gba", 0x130C14, 0x000000C

gUnk_08130C20:: @ 08130C20
	.incbin "baserom.gba", 0x130C20, 0x000000C

gUnk_08130C2C:: @ 08130C2C
	.incbin "baserom.gba", 0x130C2C, 0x000000C

gUnk_08130C38:: @ 08130C38
	.incbin "baserom.gba", 0x130C38, 0x000000C

gUnk_08130C44:: @ 08130C44
	.incbin "baserom.gba", 0x130C44, 0x000000C

gUnk_08130C50:: @ 08130C50
	.incbin "baserom.gba", 0x130C50, 0x000000C

gUnk_08130C5C:: @ 08130C5C
	.incbin "baserom.gba", 0x130C5C, 0x000000C

gUnk_08130C68:: @ 08130C68
	.incbin "baserom.gba", 0x130C68, 0x000000C

gUnk_08130C74:: @ 08130C74
	.incbin "baserom.gba", 0x130C74, 0x000000C

gUnk_08130C80:: @ 08130C80
	.incbin "baserom.gba", 0x130C80, 0x000000C

gUnk_08130C8C:: @ 08130C8C
	.incbin "baserom.gba", 0x130C8C, 0x000000C

gUnk_08130C98:: @ 08130C98
	.incbin "baserom.gba", 0x130C98, 0x000000C

gUnk_08130CA4:: @ 08130CA4
	.incbin "baserom.gba", 0x130CA4, 0x000000C

gUnk_08130CB0:: @ 08130CB0
	.incbin "baserom.gba", 0x130CB0, 0x000000C

gUnk_08130CBC:: @ 08130CBC
	.incbin "baserom.gba", 0x130CBC, 0x000000C

gUnk_08130CC8:: @ 08130CC8
	.incbin "baserom.gba", 0x130CC8, 0x000000C

gUnk_08130CD4:: @ 08130CD4
	.incbin "baserom.gba", 0x130CD4, 0x000000C

gUnk_08130CE0:: @ 08130CE0
	.incbin "baserom.gba", 0x130CE0, 0x000000C

gUnk_08130CEC:: @ 08130CEC
	.incbin "baserom.gba", 0x130CEC, 0x000000C

gUnk_08130CF8:: @ 08130CF8
	.incbin "baserom.gba", 0x130CF8, 0x000000C

gUnk_08130D04:: @ 08130D04
	.incbin "baserom.gba", 0x130D04, 0x0000007

gUnk_08130D0B:: @ 08130D0B
	.incbin "baserom.gba", 0x130D0B, 0x0000004

gUnk_08130D0F:: @ 08130D0F
	.incbin "baserom.gba", 0x130D0F, 0x0000001

gUnk_08130D10:: @ 08130D10
	.incbin "baserom.gba", 0x130D10, 0x000000C

gUnk_08130D1C:: @ 08130D1C
	.incbin "baserom.gba", 0x130D1C, 0x000000C

gUnk_08130D28:: @ 08130D28
	.incbin "baserom.gba", 0x130D28, 0x000000C

gUnk_08130D34:: @ 08130D34
	.incbin "baserom.gba", 0x130D34, 0x000000C

gUnk_08130D40:: @ 08130D40
	.incbin "baserom.gba", 0x130D40, 0x000000C

gUnk_08130D4C:: @ 08130D4C
	.incbin "baserom.gba", 0x130D4C, 0x000000C

gUnk_08130D58:: @ 08130D58
	.incbin "baserom.gba", 0x130D58, 0x000000C

gUnk_08130D64:: @ 08130D64
	.incbin "baserom.gba", 0x130D64, 0x000000C

gUnk_08130D70:: @ 08130D70
	.incbin "baserom.gba", 0x130D70, 0x000000C

gUnk_08130D7C:: @ 08130D7C
	.incbin "baserom.gba", 0x130D7C, 0x000000C

gUnk_08130D88:: @ 08130D88
	.incbin "baserom.gba", 0x130D88, 0x000000C

gUnk_08130D94:: @ 08130D94
	.incbin "baserom.gba", 0x130D94, 0x000000C

gUnk_08130DA0:: @ 08130DA0
	.incbin "baserom.gba", 0x130DA0, 0x000000C

gUnk_08130DAC:: @ 08130DAC
	.incbin "baserom.gba", 0x130DAC, 0x000000C

gUnk_08130DB8:: @ 08130DB8
	.incbin "baserom.gba", 0x130DB8, 0x000000C

gUnk_08130DC4:: @ 08130DC4
	.incbin "baserom.gba", 0x130DC4, 0x000000C

gUnk_08130DD0:: @ 08130DD0
	.incbin "baserom.gba", 0x130DD0, 0x000000C

gUnk_08130DDC:: @ 08130DDC
	.incbin "baserom.gba", 0x130DDC, 0x000000C

gUnk_08130DE8:: @ 08130DE8
	.incbin "baserom.gba", 0x130DE8, 0x000000C

gUnk_08130DF4:: @ 08130DF4
	.incbin "baserom.gba", 0x130DF4, 0x000000C

gUnk_08130E00:: @ 08130E00
	.incbin "baserom.gba", 0x130E00, 0x00000E6

gUnk_08130EE6:: @ 08130EE6
	.incbin "baserom.gba", 0x130EE6, 0x0000017

gUnk_08130EFD:: @ 08130EFD
	.incbin "baserom.gba", 0x130EFD, 0x0000008

gUnk_08130F05:: @ 08130F05
	.incbin "baserom.gba", 0x130F05, 0x0000005

gUnk_08130F0A:: @ 08130F0A
	.incbin "baserom.gba", 0x130F0A, 0x0000002

gUnk_08130F0C:: @ 08130F0C
	.incbin "baserom.gba", 0x130F0C, 0x0000004

gUnk_08130F10:: @ 08130F10
	.incbin "baserom.gba", 0x130F10, 0x0000001

gUnk_08130F11:: @ 08130F11
	.incbin "baserom.gba", 0x130F11, 0x00000F4

gUnk_08131005:: @ 08131005
	.incbin "baserom.gba", 0x131005, 0x0000005

gUnk_0813100A:: @ 0813100A
	.incbin "baserom.gba", 0x13100A, 0x0000026

gUnk_08131030:: @ 08131030
	.incbin "baserom.gba", 0x131030, 0x000000C

gUnk_0813103C:: @ 0813103C
	.incbin "baserom.gba", 0x13103C, 0x000000C

gUnk_08131048:: @ 08131048
	.incbin "baserom.gba", 0x131048, 0x000000C

gUnk_08131054:: @ 08131054
	.incbin "baserom.gba", 0x131054, 0x000000C

gUnk_08131060:: @ 08131060
	.incbin "baserom.gba", 0x131060, 0x000000C

gUnk_0813106C:: @ 0813106C
	.incbin "baserom.gba", 0x13106C, 0x000000C

gUnk_08131078:: @ 08131078
	.incbin "baserom.gba", 0x131078, 0x000000C

gUnk_08131084:: @ 08131084
	.incbin "baserom.gba", 0x131084, 0x000000C

gUnk_08131090:: @ 08131090
	.incbin "baserom.gba", 0x131090, 0x0000010

gUnk_081310A0:: @ 081310A0
	.incbin "baserom.gba", 0x1310A0, 0x000000C

gUnk_081310AC:: @ 081310AC
	.incbin "baserom.gba", 0x1310AC, 0x0000010

gUnk_081310BC:: @ 081310BC
	.incbin "baserom.gba", 0x1310BC, 0x0000007

gUnk_081310C3:: @ 081310C3
	.incbin "baserom.gba", 0x1310C3, 0x0000009

gUnk_081310CC:: @ 081310CC
	.incbin "baserom.gba", 0x1310CC, 0x000000C

gUnk_081310D8:: @ 081310D8
	.incbin "baserom.gba", 0x1310D8, 0x000000C

gUnk_081310E4:: @ 081310E4
	.incbin "baserom.gba", 0x1310E4, 0x000000C

gUnk_081310F0:: @ 081310F0
	.incbin "baserom.gba", 0x1310F0, 0x0000005

gUnk_081310F5:: @ 081310F5
	.incbin "baserom.gba", 0x1310F5, 0x000000B

gUnk_08131100:: @ 08131100
	.incbin "baserom.gba", 0x131100, 0x000000C

gUnk_0813110C:: @ 0813110C
	.incbin "baserom.gba", 0x13110C, 0x0000004

gUnk_08131110:: @ 08131110
	.incbin "baserom.gba", 0x131110, 0x000000C

gUnk_0813111C:: @ 0813111C
	.incbin "baserom.gba", 0x13111C, 0x0000010

gUnk_0813112C:: @ 0813112C
	.incbin "baserom.gba", 0x13112C, 0x000000C

gUnk_08131138:: @ 08131138
	.incbin "baserom.gba", 0x131138, 0x000000C

gUnk_08131144:: @ 08131144
	.incbin "baserom.gba", 0x131144, 0x000000C

gUnk_08131150:: @ 08131150
	.incbin "baserom.gba", 0x131150, 0x000000C

gUnk_0813115C:: @ 0813115C
	.incbin "baserom.gba", 0x13115C, 0x000000C

gUnk_08131168:: @ 08131168
	.incbin "baserom.gba", 0x131168, 0x000000C

gUnk_08131174:: @ 08131174
	.incbin "baserom.gba", 0x131174, 0x000000C

gUnk_08131180:: @ 08131180
	.incbin "baserom.gba", 0x131180, 0x000000C

gUnk_0813118C:: @ 0813118C
	.incbin "baserom.gba", 0x13118C, 0x000000C

gUnk_08131198:: @ 08131198
	.incbin "baserom.gba", 0x131198, 0x000000C

gUnk_081311A4:: @ 081311A4
	.incbin "baserom.gba", 0x1311A4, 0x000000C

gUnk_081311B0:: @ 081311B0
	.incbin "baserom.gba", 0x1311B0, 0x000000C

gUnk_081311BC:: @ 081311BC
	.incbin "baserom.gba", 0x1311BC, 0x0000010

gUnk_081311CC:: @ 081311CC
	.incbin "baserom.gba", 0x1311CC, 0x000000C

gUnk_081311D8:: @ 081311D8
	.incbin "baserom.gba", 0x1311D8, 0x000000C

gUnk_081311E4:: @ 081311E4
	.incbin "baserom.gba", 0x1311E4, 0x0000010

gUnk_081311F4:: @ 081311F4
	.incbin "baserom.gba", 0x1311F4, 0x000000C

gUnk_08131200:: @ 08131200
	.incbin "baserom.gba", 0x131200, 0x000000C

gUnk_0813120C:: @ 0813120C
	.incbin "baserom.gba", 0x13120C, 0x0000006

gUnk_08131212:: @ 08131212
	.incbin "baserom.gba", 0x131212, 0x0000002

gUnk_08131214:: @ 08131214
	.incbin "baserom.gba", 0x131214, 0x0000001

gUnk_08131215:: @ 08131215
	.incbin "baserom.gba", 0x131215, 0x0000003

gUnk_08131218:: @ 08131218
	.incbin "baserom.gba", 0x131218, 0x000000C

gUnk_08131224:: @ 08131224
	.incbin "baserom.gba", 0x131224, 0x000000C

gUnk_08131230:: @ 08131230
	.incbin "baserom.gba", 0x131230, 0x000000C

gUnk_0813123C:: @ 0813123C
	.incbin "baserom.gba", 0x13123C, 0x000000C

gUnk_08131248:: @ 08131248
	.incbin "baserom.gba", 0x131248, 0x000000C

gUnk_08131254:: @ 08131254
	.incbin "baserom.gba", 0x131254, 0x000000C

gUnk_08131260:: @ 08131260
	.incbin "baserom.gba", 0x131260, 0x000000C

gUnk_0813126C:: @ 0813126C
	.incbin "baserom.gba", 0x13126C, 0x000000C

gUnk_08131278:: @ 08131278
	.incbin "baserom.gba", 0x131278, 0x000000C

gUnk_08131284:: @ 08131284
	.incbin "baserom.gba", 0x131284, 0x000000C

gUnk_08131290:: @ 08131290
	.incbin "baserom.gba", 0x131290, 0x000000C

gUnk_0813129C:: @ 0813129C
	.incbin "baserom.gba", 0x13129C, 0x000000C

gUnk_081312A8:: @ 081312A8
	.incbin "baserom.gba", 0x1312A8, 0x000000C

gUnk_081312B4:: @ 081312B4
	.incbin "baserom.gba", 0x1312B4, 0x000000C

gUnk_081312C0:: @ 081312C0
	.incbin "baserom.gba", 0x1312C0, 0x000000C

gUnk_081312CC:: @ 081312CC
	.incbin "baserom.gba", 0x1312CC, 0x000000C

gUnk_081312D8:: @ 081312D8
	.incbin "baserom.gba", 0x1312D8, 0x000000C

gUnk_081312E4:: @ 081312E4
	.incbin "baserom.gba", 0x1312E4, 0x000000C

gUnk_081312F0:: @ 081312F0
	.incbin "baserom.gba", 0x1312F0, 0x000000C

gUnk_081312FC:: @ 081312FC
	.incbin "baserom.gba", 0x1312FC, 0x000000C

gUnk_08131308:: @ 08131308
	.incbin "baserom.gba", 0x131308, 0x000000C

gUnk_08131314:: @ 08131314
	.incbin "baserom.gba", 0x131314, 0x0000003

gUnk_08131317:: @ 08131317
	.incbin "baserom.gba", 0x131317, 0x0000001

gUnk_08131318:: @ 08131318
	.incbin "baserom.gba", 0x131318, 0x0000008

gUnk_08131320:: @ 08131320
	.incbin "baserom.gba", 0x131320, 0x000000C

gUnk_0813132C:: @ 0813132C
	.incbin "baserom.gba", 0x13132C, 0x000000C

gUnk_08131338:: @ 08131338
	.incbin "baserom.gba", 0x131338, 0x000000C

gUnk_08131344:: @ 08131344
	.incbin "baserom.gba", 0x131344, 0x000000C

gUnk_08131350:: @ 08131350
	.incbin "baserom.gba", 0x131350, 0x000000C

gUnk_0813135C:: @ 0813135C
	.incbin "baserom.gba", 0x13135C, 0x000000C

gUnk_08131368:: @ 08131368
	.incbin "baserom.gba", 0x131368, 0x000000C

gUnk_08131374:: @ 08131374
	.incbin "baserom.gba", 0x131374, 0x000000C

gUnk_08131380:: @ 08131380
	.incbin "baserom.gba", 0x131380, 0x000000C

gUnk_0813138C:: @ 0813138C
	.incbin "baserom.gba", 0x13138C, 0x0000010

gUnk_0813139C:: @ 0813139C
	.incbin "baserom.gba", 0x13139C, 0x000000C

gUnk_081313A8:: @ 081313A8
	.incbin "baserom.gba", 0x1313A8, 0x000000C

gUnk_081313B4:: @ 081313B4
	.incbin "baserom.gba", 0x1313B4, 0x000000C

gUnk_081313C0:: @ 081313C0
	.incbin "baserom.gba", 0x1313C0, 0x000000C

gUnk_081313CC:: @ 081313CC
	.incbin "baserom.gba", 0x1313CC, 0x000000C

gUnk_081313D8:: @ 081313D8
	.incbin "baserom.gba", 0x1313D8, 0x000000C

gUnk_081313E4:: @ 081313E4
	.incbin "baserom.gba", 0x1313E4, 0x000000C

gUnk_081313F0:: @ 081313F0
	.incbin "baserom.gba", 0x1313F0, 0x000000C

gUnk_081313FC:: @ 081313FC
	.incbin "baserom.gba", 0x1313FC, 0x0000001

gUnk_081313FD:: @ 081313FD
	.incbin "baserom.gba", 0x1313FD, 0x000000B

gUnk_08131408:: @ 08131408
	.incbin "baserom.gba", 0x131408, 0x0000004

gUnk_0813140C:: @ 0813140C
	.incbin "baserom.gba", 0x13140C, 0x0000004

gUnk_08131410:: @ 08131410
	.incbin "baserom.gba", 0x131410, 0x0000004

gUnk_08131414:: @ 08131414
	.incbin "baserom.gba", 0x131414, 0x000000C

gUnk_08131420:: @ 08131420
	.incbin "baserom.gba", 0x131420, 0x000000C

gUnk_0813142C:: @ 0813142C
	.incbin "baserom.gba", 0x13142C, 0x0000004

gUnk_08131430:: @ 08131430
	.incbin "baserom.gba", 0x131430, 0x000000C

gUnk_0813143C:: @ 0813143C
	.incbin "baserom.gba", 0x13143C, 0x000000C

gUnk_08131448:: @ 08131448
	.incbin "baserom.gba", 0x131448, 0x000000C

gUnk_08131454:: @ 08131454
	.incbin "baserom.gba", 0x131454, 0x000000C

gUnk_08131460:: @ 08131460
	.incbin "baserom.gba", 0x131460, 0x000000C

gUnk_0813146C:: @ 0813146C
	.incbin "baserom.gba", 0x13146C, 0x000000C

gUnk_08131478:: @ 08131478
	.incbin "baserom.gba", 0x131478, 0x000000C

gUnk_08131484:: @ 08131484
	.incbin "baserom.gba", 0x131484, 0x000000C

gUnk_08131490:: @ 08131490
	.incbin "baserom.gba", 0x131490, 0x000000C

gUnk_0813149C:: @ 0813149C
	.incbin "baserom.gba", 0x13149C, 0x000000C

gUnk_081314A8:: @ 081314A8
	.incbin "baserom.gba", 0x1314A8, 0x000000C

gUnk_081314B4:: @ 081314B4
	.incbin "baserom.gba", 0x1314B4, 0x000000C

gUnk_081314C0:: @ 081314C0
	.incbin "baserom.gba", 0x1314C0, 0x000000C

gUnk_081314CC:: @ 081314CC
	.incbin "baserom.gba", 0x1314CC, 0x000000C

gUnk_081314D8:: @ 081314D8
	.incbin "baserom.gba", 0x1314D8, 0x000000C

gUnk_081314E4:: @ 081314E4
	.incbin "baserom.gba", 0x1314E4, 0x000000C

gUnk_081314F0:: @ 081314F0
	.incbin "baserom.gba", 0x1314F0, 0x000000C

gUnk_081314FC:: @ 081314FC
	.incbin "baserom.gba", 0x1314FC, 0x000000C

gUnk_08131508:: @ 08131508
	.incbin "baserom.gba", 0x131508, 0x000000C

gUnk_08131514:: @ 08131514
	.incbin "baserom.gba", 0x131514, 0x000000C

gUnk_08131520:: @ 08131520
	.incbin "baserom.gba", 0x131520, 0x000000C

gUnk_0813152C:: @ 0813152C
	.incbin "baserom.gba", 0x13152C, 0x000000C

gUnk_08131538:: @ 08131538
	.incbin "baserom.gba", 0x131538, 0x000000C

gUnk_08131544:: @ 08131544
	.incbin "baserom.gba", 0x131544, 0x000000C

gUnk_08131550:: @ 08131550
	.incbin "baserom.gba", 0x131550, 0x000000C

gUnk_0813155C:: @ 0813155C
	.incbin "baserom.gba", 0x13155C, 0x000000C

gUnk_08131568:: @ 08131568
	.incbin "baserom.gba", 0x131568, 0x000000C

gUnk_08131574:: @ 08131574
	.incbin "baserom.gba", 0x131574, 0x000000C

gUnk_08131580:: @ 08131580
	.incbin "baserom.gba", 0x131580, 0x000000C

gUnk_0813158C:: @ 0813158C
	.incbin "baserom.gba", 0x13158C, 0x000000C

gUnk_08131598:: @ 08131598
	.incbin "baserom.gba", 0x131598, 0x000000C

gUnk_081315A4:: @ 081315A4
	.incbin "baserom.gba", 0x1315A4, 0x000000C

gUnk_081315B0:: @ 081315B0
	.incbin "baserom.gba", 0x1315B0, 0x000000C

gUnk_081315BC:: @ 081315BC
	.incbin "baserom.gba", 0x1315BC, 0x000000C

gUnk_081315C8:: @ 081315C8
	.incbin "baserom.gba", 0x1315C8, 0x000000C

gUnk_081315D4:: @ 081315D4
	.incbin "baserom.gba", 0x1315D4, 0x0000009

gUnk_081315DD:: @ 081315DD
	.incbin "baserom.gba", 0x1315DD, 0x0000003

gUnk_081315E0:: @ 081315E0
	.incbin "baserom.gba", 0x1315E0, 0x000000C

gUnk_081315EC:: @ 081315EC
	.incbin "baserom.gba", 0x1315EC, 0x000000C

gUnk_081315F8:: @ 081315F8
	.incbin "baserom.gba", 0x1315F8, 0x000000C

gUnk_08131604:: @ 08131604
	.incbin "baserom.gba", 0x131604, 0x000000C

gUnk_08131610:: @ 08131610
	.incbin "baserom.gba", 0x131610, 0x000000B

gUnk_0813161B:: @ 0813161B
	.incbin "baserom.gba", 0x13161B, 0x0000001

gUnk_0813161C:: @ 0813161C
	.incbin "baserom.gba", 0x13161C, 0x000000C

gUnk_08131628:: @ 08131628
	.incbin "baserom.gba", 0x131628, 0x000000C

gUnk_08131634:: @ 08131634
	.incbin "baserom.gba", 0x131634, 0x000000C

gUnk_08131640:: @ 08131640
	.incbin "baserom.gba", 0x131640, 0x000000C

gUnk_0813164C:: @ 0813164C
	.incbin "baserom.gba", 0x13164C, 0x000000C

gUnk_08131658:: @ 08131658
	.incbin "baserom.gba", 0x131658, 0x000000C

gUnk_08131664:: @ 08131664
	.incbin "baserom.gba", 0x131664, 0x000000C

gUnk_08131670:: @ 08131670
	.incbin "baserom.gba", 0x131670, 0x000000C

gUnk_0813167C:: @ 0813167C
	.incbin "baserom.gba", 0x13167C, 0x000000C

gUnk_08131688:: @ 08131688
	.incbin "baserom.gba", 0x131688, 0x000000C

gUnk_08131694:: @ 08131694
	.incbin "baserom.gba", 0x131694, 0x000000C

gUnk_081316A0:: @ 081316A0
	.incbin "baserom.gba", 0x1316A0, 0x000004E

gUnk_081316EE:: @ 081316EE
	.incbin "baserom.gba", 0x1316EE, 0x000001A

gUnk_08131708:: @ 08131708
	.incbin "baserom.gba", 0x131708, 0x0000008

gUnk_08131710:: @ 08131710
	.incbin "baserom.gba", 0x131710, 0x0000002

gUnk_08131712:: @ 08131712
	.incbin "baserom.gba", 0x131712, 0x0000001

gUnk_08131713:: @ 08131713
	.incbin "baserom.gba", 0x131713, 0x0000003

gUnk_08131716:: @ 08131716
	.incbin "baserom.gba", 0x131716, 0x0000009

gUnk_0813171F:: @ 0813171F
	.incbin "baserom.gba", 0x13171F, 0x00000C3

gUnk_081317E2:: @ 081317E2
	.incbin "baserom.gba", 0x1317E2, 0x0000032

gUnk_08131814:: @ 08131814
	.incbin "baserom.gba", 0x131814, 0x0000001

gUnk_08131815:: @ 08131815
	.incbin "baserom.gba", 0x131815, 0x00000F7

gUnk_0813190C:: @ 0813190C
	.incbin "baserom.gba", 0x13190C, 0x0000001

gUnk_0813190D:: @ 0813190D
	.incbin "baserom.gba", 0x13190D, 0x0000008

gUnk_08131915:: @ 08131915
	.incbin "baserom.gba", 0x131915, 0x0000002

gUnk_08131917:: @ 08131917
	.incbin "baserom.gba", 0x131917, 0x0000001

gUnk_08131918:: @ 08131918
	.incbin "baserom.gba", 0x131918, 0x0000001

gUnk_08131919:: @ 08131919
	.incbin "baserom.gba", 0x131919, 0x0000004

gUnk_0813191D:: @ 0813191D
	.incbin "baserom.gba", 0x13191D, 0x0000003

gUnk_08131920:: @ 08131920
	.incbin "baserom.gba", 0x131920, 0x0000008

gUnk_08131928:: @ 08131928
	.incbin "baserom.gba", 0x131928, 0x0000010

gUnk_08131938:: @ 08131938
	.incbin "baserom.gba", 0x131938, 0x0000010

gUnk_08131948:: @ 08131948
	.incbin "baserom.gba", 0x131948, 0x000000C

gUnk_08131954:: @ 08131954
	.incbin "baserom.gba", 0x131954, 0x000000C

gUnk_08131960:: @ 08131960
	.incbin "baserom.gba", 0x131960, 0x000000C

gUnk_0813196C:: @ 0813196C
	.incbin "baserom.gba", 0x13196C, 0x000000C

gUnk_08131978:: @ 08131978
	.incbin "baserom.gba", 0x131978, 0x000000C

gUnk_08131984:: @ 08131984
	.incbin "baserom.gba", 0x131984, 0x000000C

gUnk_08131990:: @ 08131990
	.incbin "baserom.gba", 0x131990, 0x000000C

gUnk_0813199C:: @ 0813199C
	.incbin "baserom.gba", 0x13199C, 0x000000C

gUnk_081319A8:: @ 081319A8
	.incbin "baserom.gba", 0x1319A8, 0x000000C

gUnk_081319B4:: @ 081319B4
	.incbin "baserom.gba", 0x1319B4, 0x000000C

gUnk_081319C0:: @ 081319C0
	.incbin "baserom.gba", 0x1319C0, 0x000000C

gUnk_081319CC:: @ 081319CC
	.incbin "baserom.gba", 0x1319CC, 0x000000C

gUnk_081319D8:: @ 081319D8
	.incbin "baserom.gba", 0x1319D8, 0x000000C

gUnk_081319E4:: @ 081319E4
	.incbin "baserom.gba", 0x1319E4, 0x0000014

gUnk_081319F8:: @ 081319F8
	.incbin "baserom.gba", 0x1319F8, 0x0000010

gUnk_08131A08:: @ 08131A08
	.incbin "baserom.gba", 0x131A08, 0x0000010

gUnk_08131A18:: @ 08131A18
	.incbin "baserom.gba", 0x131A18, 0x0000005

gUnk_08131A1D:: @ 08131A1D
	.incbin "baserom.gba", 0x131A1D, 0x0000001

gUnk_08131A1E:: @ 08131A1E
	.incbin "baserom.gba", 0x131A1E, 0x0000001

gUnk_08131A1F:: @ 08131A1F
	.incbin "baserom.gba", 0x131A1F, 0x0000009

gUnk_08131A28:: @ 08131A28
	.incbin "baserom.gba", 0x131A28, 0x000000C

gUnk_08131A34:: @ 08131A34
	.incbin "baserom.gba", 0x131A34, 0x000000C

gUnk_08131A40:: @ 08131A40
	.incbin "baserom.gba", 0x131A40, 0x0000010

gUnk_08131A50:: @ 08131A50
	.incbin "baserom.gba", 0x131A50, 0x0000010

gUnk_08131A60:: @ 08131A60
	.incbin "baserom.gba", 0x131A60, 0x0000010

gUnk_08131A70:: @ 08131A70
	.incbin "baserom.gba", 0x131A70, 0x0000010

gUnk_08131A80:: @ 08131A80
	.incbin "baserom.gba", 0x131A80, 0x0000010

gUnk_08131A90:: @ 08131A90
	.incbin "baserom.gba", 0x131A90, 0x0000010

gUnk_08131AA0:: @ 08131AA0
	.incbin "baserom.gba", 0x131AA0, 0x0000014

gUnk_08131AB4:: @ 08131AB4
	.incbin "baserom.gba", 0x131AB4, 0x0000010

gUnk_08131AC4:: @ 08131AC4
	.incbin "baserom.gba", 0x131AC4, 0x0000014

gUnk_08131AD8:: @ 08131AD8
	.incbin "baserom.gba", 0x131AD8, 0x0000014

gUnk_08131AEC:: @ 08131AEC
	.incbin "baserom.gba", 0x131AEC, 0x0000014

gUnk_08131B00:: @ 08131B00
	.incbin "baserom.gba", 0x131B00, 0x000000F

gUnk_08131B0F:: @ 08131B0F
	.incbin "baserom.gba", 0x131B0F, 0x0000001

gUnk_08131B10:: @ 08131B10
	.incbin "baserom.gba", 0x131B10, 0x0000008

gUnk_08131B18:: @ 08131B18
	.incbin "baserom.gba", 0x131B18, 0x0000001

gUnk_08131B19:: @ 08131B19
	.incbin "baserom.gba", 0x131B19, 0x0000003

gUnk_08131B1C:: @ 08131B1C
	.incbin "baserom.gba", 0x131B1C, 0x0000004

gUnk_08131B20:: @ 08131B20
	.incbin "baserom.gba", 0x131B20, 0x0000002

gUnk_08131B22:: @ 08131B22
	.incbin "baserom.gba", 0x131B22, 0x0000002

gUnk_08131B24:: @ 08131B24
	.incbin "baserom.gba", 0x131B24, 0x0000010

gUnk_08131B34:: @ 08131B34
	.incbin "baserom.gba", 0x131B34, 0x0000010

gUnk_08131B44:: @ 08131B44
	.incbin "baserom.gba", 0x131B44, 0x0000010

gUnk_08131B54:: @ 08131B54
	.incbin "baserom.gba", 0x131B54, 0x0000010

gUnk_08131B64:: @ 08131B64
	.incbin "baserom.gba", 0x131B64, 0x000000C

gUnk_08131B70:: @ 08131B70
	.incbin "baserom.gba", 0x131B70, 0x000000C

gUnk_08131B7C:: @ 08131B7C
	.incbin "baserom.gba", 0x131B7C, 0x000000C

gUnk_08131B88:: @ 08131B88
	.incbin "baserom.gba", 0x131B88, 0x000000C

gUnk_08131B94:: @ 08131B94
	.incbin "baserom.gba", 0x131B94, 0x000000C

gUnk_08131BA0:: @ 08131BA0
	.incbin "baserom.gba", 0x131BA0, 0x000000C

gUnk_08131BAC:: @ 08131BAC
	.incbin "baserom.gba", 0x131BAC, 0x000000C

gUnk_08131BB8:: @ 08131BB8
	.incbin "baserom.gba", 0x131BB8, 0x000000C

gUnk_08131BC4:: @ 08131BC4
	.incbin "baserom.gba", 0x131BC4, 0x000000C

gUnk_08131BD0:: @ 08131BD0
	.incbin "baserom.gba", 0x131BD0, 0x000000C

gUnk_08131BDC:: @ 08131BDC
	.incbin "baserom.gba", 0x131BDC, 0x000000C

gUnk_08131BE8:: @ 08131BE8
	.incbin "baserom.gba", 0x131BE8, 0x0000010

gUnk_08131BF8:: @ 08131BF8
	.incbin "baserom.gba", 0x131BF8, 0x000000C

gUnk_08131C04:: @ 08131C04
	.incbin "baserom.gba", 0x131C04, 0x000000C

gUnk_08131C10:: @ 08131C10
	.incbin "baserom.gba", 0x131C10, 0x000000C

gUnk_08131C1C:: @ 08131C1C
	.incbin "baserom.gba", 0x131C1C, 0x0000002

gUnk_08131C1E:: @ 08131C1E
	.incbin "baserom.gba", 0x131C1E, 0x0000005

gUnk_08131C23:: @ 08131C23
	.incbin "baserom.gba", 0x131C23, 0x0000002

gUnk_08131C25:: @ 08131C25
	.incbin "baserom.gba", 0x131C25, 0x0000003

gUnk_08131C28:: @ 08131C28
	.incbin "baserom.gba", 0x131C28, 0x000000C

gUnk_08131C34:: @ 08131C34
	.incbin "baserom.gba", 0x131C34, 0x000000C

gUnk_08131C40:: @ 08131C40
	.incbin "baserom.gba", 0x131C40, 0x0000010

gUnk_08131C50:: @ 08131C50
	.incbin "baserom.gba", 0x131C50, 0x000000C

gUnk_08131C5C:: @ 08131C5C
	.incbin "baserom.gba", 0x131C5C, 0x000000C

gUnk_08131C68:: @ 08131C68
	.incbin "baserom.gba", 0x131C68, 0x000000C

gUnk_08131C74:: @ 08131C74
	.incbin "baserom.gba", 0x131C74, 0x000000C

gUnk_08131C80:: @ 08131C80
	.incbin "baserom.gba", 0x131C80, 0x000000C

gUnk_08131C8C:: @ 08131C8C
	.incbin "baserom.gba", 0x131C8C, 0x000000C

gUnk_08131C98:: @ 08131C98
	.incbin "baserom.gba", 0x131C98, 0x0000010

gUnk_08131CA8:: @ 08131CA8
	.incbin "baserom.gba", 0x131CA8, 0x000000C

gUnk_08131CB4:: @ 08131CB4
	.incbin "baserom.gba", 0x131CB4, 0x000000C

gUnk_08131CC0:: @ 08131CC0
	.incbin "baserom.gba", 0x131CC0, 0x000000C

gUnk_08131CCC:: @ 08131CCC
	.incbin "baserom.gba", 0x131CCC, 0x000000C

gUnk_08131CD8:: @ 08131CD8
	.incbin "baserom.gba", 0x131CD8, 0x000000C

gUnk_08131CE4:: @ 08131CE4
	.incbin "baserom.gba", 0x131CE4, 0x000000C

gUnk_08131CF0:: @ 08131CF0
	.incbin "baserom.gba", 0x131CF0, 0x000000C

gUnk_08131CFC:: @ 08131CFC
	.incbin "baserom.gba", 0x131CFC, 0x000000C

gUnk_08131D08:: @ 08131D08
	.incbin "baserom.gba", 0x131D08, 0x000000C

gUnk_08131D14:: @ 08131D14
	.incbin "baserom.gba", 0x131D14, 0x0000005

gUnk_08131D19:: @ 08131D19
	.incbin "baserom.gba", 0x131D19, 0x0000006

gUnk_08131D1F:: @ 08131D1F
	.incbin "baserom.gba", 0x131D1F, 0x0000001

gUnk_08131D20:: @ 08131D20
	.incbin "baserom.gba", 0x131D20, 0x0000002

gUnk_08131D22:: @ 08131D22
	.incbin "baserom.gba", 0x131D22, 0x0000002

gUnk_08131D24:: @ 08131D24
	.incbin "baserom.gba", 0x131D24, 0x0000001

gUnk_08131D25:: @ 08131D25
	.incbin "baserom.gba", 0x131D25, 0x0000001

gUnk_08131D26:: @ 08131D26
	.incbin "baserom.gba", 0x131D26, 0x0000004

gUnk_08131D2A:: @ 08131D2A
	.incbin "baserom.gba", 0x131D2A, 0x0000002

gUnk_08131D2C:: @ 08131D2C
	.incbin "baserom.gba", 0x131D2C, 0x000000C

gUnk_08131D38:: @ 08131D38
	.incbin "baserom.gba", 0x131D38, 0x000000C

gUnk_08131D44:: @ 08131D44
	.incbin "baserom.gba", 0x131D44, 0x000000C

gUnk_08131D50:: @ 08131D50
	.incbin "baserom.gba", 0x131D50, 0x000000C

gUnk_08131D5C:: @ 08131D5C
	.incbin "baserom.gba", 0x131D5C, 0x000000C

gUnk_08131D68:: @ 08131D68
	.incbin "baserom.gba", 0x131D68, 0x000000C

gUnk_08131D74:: @ 08131D74
	.incbin "baserom.gba", 0x131D74, 0x000000C

gUnk_08131D80:: @ 08131D80
	.incbin "baserom.gba", 0x131D80, 0x000000C

gUnk_08131D8C:: @ 08131D8C
	.incbin "baserom.gba", 0x131D8C, 0x000000C

gUnk_08131D98:: @ 08131D98
	.incbin "baserom.gba", 0x131D98, 0x000000C

gUnk_08131DA4:: @ 08131DA4
	.incbin "baserom.gba", 0x131DA4, 0x000000C

gUnk_08131DB0:: @ 08131DB0
	.incbin "baserom.gba", 0x131DB0, 0x000000C

gUnk_08131DBC:: @ 08131DBC
	.incbin "baserom.gba", 0x131DBC, 0x000000C

gUnk_08131DC8:: @ 08131DC8
	.incbin "baserom.gba", 0x131DC8, 0x000000C

gUnk_08131DD4:: @ 08131DD4
	.incbin "baserom.gba", 0x131DD4, 0x000000C

gUnk_08131DE0:: @ 08131DE0
	.incbin "baserom.gba", 0x131DE0, 0x000000C

gUnk_08131DEC:: @ 08131DEC
	.incbin "baserom.gba", 0x131DEC, 0x0000003

gUnk_08131DEF:: @ 08131DEF
	.incbin "baserom.gba", 0x131DEF, 0x0000009

gUnk_08131DF8:: @ 08131DF8
	.incbin "baserom.gba", 0x131DF8, 0x000000C

gUnk_08131E04:: @ 08131E04
	.incbin "baserom.gba", 0x131E04, 0x000000C

gUnk_08131E10:: @ 08131E10
	.incbin "baserom.gba", 0x131E10, 0x000000C

gUnk_08131E1C:: @ 08131E1C
	.incbin "baserom.gba", 0x131E1C, 0x000000B

gUnk_08131E27:: @ 08131E27
	.incbin "baserom.gba", 0x131E27, 0x0000001

gUnk_08131E28:: @ 08131E28
	.incbin "baserom.gba", 0x131E28, 0x0000001

gUnk_08131E29:: @ 08131E29
	.incbin "baserom.gba", 0x131E29, 0x000000A

gUnk_08131E33:: @ 08131E33
	.incbin "baserom.gba", 0x131E33, 0x0000001

gUnk_08131E34:: @ 08131E34
	.incbin "baserom.gba", 0x131E34, 0x000000C

gUnk_08131E40:: @ 08131E40
	.incbin "baserom.gba", 0x131E40, 0x000000C

gUnk_08131E4C:: @ 08131E4C
	.incbin "baserom.gba", 0x131E4C, 0x000000C

gUnk_08131E58:: @ 08131E58
	.incbin "baserom.gba", 0x131E58, 0x000000C

gUnk_08131E64:: @ 08131E64
	.incbin "baserom.gba", 0x131E64, 0x000000C

gUnk_08131E70:: @ 08131E70
	.incbin "baserom.gba", 0x131E70, 0x000000C

gUnk_08131E7C:: @ 08131E7C
	.incbin "baserom.gba", 0x131E7C, 0x000000C

gUnk_08131E88:: @ 08131E88
	.incbin "baserom.gba", 0x131E88, 0x000000C

gUnk_08131E94:: @ 08131E94
	.incbin "baserom.gba", 0x131E94, 0x000000C

gUnk_08131EA0:: @ 08131EA0
	.incbin "baserom.gba", 0x131EA0, 0x000000C

gUnk_08131EAC:: @ 08131EAC
	.incbin "baserom.gba", 0x131EAC, 0x000000C

gUnk_08131EB8:: @ 08131EB8
	.incbin "baserom.gba", 0x131EB8, 0x000000C

gUnk_08131EC4:: @ 08131EC4
	.incbin "baserom.gba", 0x131EC4, 0x000000C

gUnk_08131ED0:: @ 08131ED0
	.incbin "baserom.gba", 0x131ED0, 0x000000C

gUnk_08131EDC:: @ 08131EDC
	.incbin "baserom.gba", 0x131EDC, 0x000000C

gUnk_08131EE8:: @ 08131EE8
	.incbin "baserom.gba", 0x131EE8, 0x000000C

gUnk_08131EF4:: @ 08131EF4
	.incbin "baserom.gba", 0x131EF4, 0x000000C

gUnk_08131F00:: @ 08131F00
	.incbin "baserom.gba", 0x131F00, 0x000000C

gUnk_08131F0C:: @ 08131F0C
	.incbin "baserom.gba", 0x131F0C, 0x000000C

gUnk_08131F18:: @ 08131F18
	.incbin "baserom.gba", 0x131F18, 0x000000A

gUnk_08131F22:: @ 08131F22
	.incbin "baserom.gba", 0x131F22, 0x0000002

gUnk_08131F24:: @ 08131F24
	.incbin "baserom.gba", 0x131F24, 0x0000007

gUnk_08131F2B:: @ 08131F2B
	.incbin "baserom.gba", 0x131F2B, 0x0000004

gUnk_08131F2F:: @ 08131F2F
	.incbin "baserom.gba", 0x131F2F, 0x0000001

gUnk_08131F30:: @ 08131F30
	.incbin "baserom.gba", 0x131F30, 0x0000002

gUnk_08131F32:: @ 08131F32
	.incbin "baserom.gba", 0x131F32, 0x000000A

gUnk_08131F3C:: @ 08131F3C
	.incbin "baserom.gba", 0x131F3C, 0x000000C

gUnk_08131F48:: @ 08131F48
	.incbin "baserom.gba", 0x131F48, 0x000000C

gUnk_08131F54:: @ 08131F54
	.incbin "baserom.gba", 0x131F54, 0x000000C

gUnk_08131F60:: @ 08131F60
	.incbin "baserom.gba", 0x131F60, 0x000000C

gUnk_08131F6C:: @ 08131F6C
	.incbin "baserom.gba", 0x131F6C, 0x000000C

gUnk_08131F78:: @ 08131F78
	.incbin "baserom.gba", 0x131F78, 0x000000C

gUnk_08131F84:: @ 08131F84
	.incbin "baserom.gba", 0x131F84, 0x000000C

gUnk_08131F90:: @ 08131F90
	.incbin "baserom.gba", 0x131F90, 0x000000C

gUnk_08131F9C:: @ 08131F9C
	.incbin "baserom.gba", 0x131F9C, 0x000000C

gUnk_08131FA8:: @ 08131FA8
	.incbin "baserom.gba", 0x131FA8, 0x000000C

gUnk_08131FB4:: @ 08131FB4
	.incbin "baserom.gba", 0x131FB4, 0x000000C

gUnk_08131FC0:: @ 08131FC0
	.incbin "baserom.gba", 0x131FC0, 0x000000C

gUnk_08131FCC:: @ 08131FCC
	.incbin "baserom.gba", 0x131FCC, 0x000000C

gUnk_08131FD8:: @ 08131FD8
	.incbin "baserom.gba", 0x131FD8, 0x000000C

gUnk_08131FE4:: @ 08131FE4
	.incbin "baserom.gba", 0x131FE4, 0x000000C

gUnk_08131FF0:: @ 08131FF0
	.incbin "baserom.gba", 0x131FF0, 0x000000C

gUnk_08131FFC:: @ 08131FFC
	.incbin "baserom.gba", 0x131FFC, 0x0000003

gUnk_08131FFF:: @ 08131FFF
	.incbin "baserom.gba", 0x131FFF, 0x0000007

gUnk_08132006:: @ 08132006
	.incbin "baserom.gba", 0x132006, 0x0000002

gUnk_08132008:: @ 08132008
	.incbin "baserom.gba", 0x132008, 0x000000C

gUnk_08132014:: @ 08132014
	.incbin "baserom.gba", 0x132014, 0x000000C

gUnk_08132020:: @ 08132020
	.incbin "baserom.gba", 0x132020, 0x0000009

gUnk_08132029:: @ 08132029
	.incbin "baserom.gba", 0x132029, 0x0000001

gUnk_0813202A:: @ 0813202A
	.incbin "baserom.gba", 0x13202A, 0x0000002

gUnk_0813202C:: @ 0813202C
	.incbin "baserom.gba", 0x13202C, 0x0000001

gUnk_0813202D:: @ 0813202D
	.incbin "baserom.gba", 0x13202D, 0x0000002

gUnk_0813202F:: @ 0813202F
	.incbin "baserom.gba", 0x13202F, 0x0000009

gUnk_08132038:: @ 08132038
	.incbin "baserom.gba", 0x132038, 0x000000C

gUnk_08132044:: @ 08132044
	.incbin "baserom.gba", 0x132044, 0x000000C

gUnk_08132050:: @ 08132050
	.incbin "baserom.gba", 0x132050, 0x000000C

gUnk_0813205C:: @ 0813205C
	.incbin "baserom.gba", 0x13205C, 0x000000C

gUnk_08132068:: @ 08132068
	.incbin "baserom.gba", 0x132068, 0x000000C

gUnk_08132074:: @ 08132074
	.incbin "baserom.gba", 0x132074, 0x000000C

gUnk_08132080:: @ 08132080
	.incbin "baserom.gba", 0x132080, 0x000000C

gUnk_0813208C:: @ 0813208C
	.incbin "baserom.gba", 0x13208C, 0x000001C

gUnk_081320A8:: @ 081320A8
	.incbin "baserom.gba", 0x1320A8, 0x0000010

gUnk_081320B8:: @ 081320B8
	.incbin "baserom.gba", 0x1320B8, 0x000000C

gUnk_081320C4:: @ 081320C4
	.incbin "baserom.gba", 0x1320C4, 0x0000008

gUnk_081320CC:: @ 081320CC
	.incbin "baserom.gba", 0x1320CC, 0x0000008

gUnk_081320D4:: @ 081320D4
	.incbin "baserom.gba", 0x1320D4, 0x0000010

gUnk_081320E4:: @ 081320E4
	.incbin "baserom.gba", 0x1320E4, 0x000000C
