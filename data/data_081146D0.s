	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081146D0:: @ 081146D0
	.incbin "data_081146D0/gUnk_081146D0.bin"

gUnk_081146E4:: @ 081146E4
	.incbin "data_081146D0/gUnk_081146E4.bin"

gUnk_081146F4:: @ 081146F4
	.incbin "data_081146D0/gUnk_081146F4.bin"

gUnk_0811479C:: @ 0811479C
	.incbin "data_081146D0/gUnk_0811479C.bin"

gUnk_081147E4:: @ 081147E4
	.incbin "data_081146D0/gUnk_081147E4.bin"

gUnk_08114804:: @ 08114804
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114804_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114804_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114814:: @ 08114814
	.incbin "data_081146D0/gUnk_08114814.bin"

gUnk_08114824:: @ 08114824
	.incbin "data_081146D0/gUnk_08114824.bin"

gUnk_08114864:: @ 08114864
	.incbin "data_081146D0/gUnk_08114864.bin"

gUnk_08114874:: @ 08114874
	.incbin "data_081146D0/gUnk_08114874.bin"

gUnk_081148A4:: @ 081148A4
	.incbin "data_081146D0/gUnk_081148A4.bin"

gUnk_081148C4:: @ 081148C4
	.incbin "data_081146D0/gUnk_081148C4.bin"

gUnk_081148E4:: @ 081148E4
	.incbin "data_081146D0/gUnk_081148E4.bin"

gUnk_08114914:: @ 08114914
	.incbin "data_081146D0/gUnk_08114914.bin"

gUnk_08114944:: @ 08114944
	.incbin "data_081146D0/gUnk_08114944.bin"

gUnk_08114974:: @ 08114974
	.incbin "data_081146D0/gUnk_08114974.bin"

gUnk_08114984:: @ 08114984
	.incbin "data_081146D0/gUnk_08114984.bin"

gUnk_08114994:: @ 08114994
	.incbin "data_081146D0/gUnk_08114994.bin"

gUnk_081149A4:: @ 081149A4
	.incbin "data_081146D0/gUnk_081149A4.bin"

gUnk_081149B4:: @ 081149B4
	.incbin "data_081146D0/gUnk_081149B4.bin"

gUnk_081149C4:: @ 081149C4
	.incbin "data_081146D0/gUnk_081149C4.bin"

gUnk_081149F4:: @ 081149F4
	.incbin "data_081146D0/gUnk_081149F4.bin"

gUnk_08114A14:: @ 08114A14
	.incbin "data_081146D0/gUnk_08114A14.bin"

gUnk_08114A6C:: @ 08114A6C
	.incbin "data_081146D0/gUnk_08114A6C.bin"

gUnk_08114A8C:: @ 08114A8C
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114A8C_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114A8C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114ABC:: @ 08114ABC
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114ABC_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114ABC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114AE4:: @ 08114AE4
	.incbin "data_081146D0/gUnk_08114AE4.bin"
	.4byte gUnk_081146E4
	.incbin "data_081146D0/gUnk_08114AE4_1.bin"
	.4byte gUnk_081148A4
	.incbin "data_081146D0/gUnk_08114AE4_2.bin"
	.4byte gUnk_081146F4
	.incbin "data_081146D0/gUnk_08114AE4_3.bin"
	.4byte gUnk_0811479C
	.incbin "data_081146D0/gUnk_08114AE4_4.bin"
	.4byte gUnk_081147E4
	.incbin "data_081146D0/gUnk_08114AE4_5.bin"
	.4byte gUnk_08114874
	.incbin "data_081146D0/gUnk_08114AE4_6.bin"
	.4byte gUnk_08114804
	.incbin "data_081146D0/gUnk_08114AE4_7.bin"
	.4byte gUnk_08114814
	.incbin "data_081146D0/gUnk_08114AE4_8.bin"
	.4byte gUnk_081148E4
	.incbin "data_081146D0/gUnk_08114AE4_9.bin"
	.4byte gUnk_08114824
	.incbin "data_081146D0/gUnk_08114AE4_10.bin"
	.4byte gUnk_08114864
	.incbin "data_081146D0/gUnk_08114AE4_11.bin"
	.4byte gUnk_081148C4
	.incbin "data_081146D0/gUnk_08114AE4_12.bin"
	.4byte gUnk_08114914
	.incbin "data_081146D0/gUnk_08114AE4_13.bin"
	.4byte gUnk_08114944
	.incbin "data_081146D0/gUnk_08114AE4_14.bin"
	.4byte gUnk_08114A8C
	.incbin "data_081146D0/gUnk_08114AE4_15.bin"
	.4byte gUnk_08114974
	.incbin "data_081146D0/gUnk_08114AE4_16.bin"
	.4byte gUnk_08114984
	.incbin "data_081146D0/gUnk_08114AE4_17.bin"
	.4byte gUnk_08114994
	.incbin "data_081146D0/gUnk_08114AE4_18.bin"
	.4byte gUnk_081149A4
	.incbin "data_081146D0/gUnk_08114AE4_19.bin"
	.4byte gUnk_081149B4
	.incbin "data_081146D0/gUnk_08114AE4_20.bin"
	.4byte gUnk_081149C4
	.incbin "data_081146D0/gUnk_08114AE4_21.bin"
	.4byte gUnk_081149F4
	.incbin "data_081146D0/gUnk_08114AE4_22.bin"
	.4byte gUnk_08114A14
	.incbin "data_081146D0/gUnk_08114AE4_23.bin"
	.4byte gUnk_08114A6C
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114AE4_24_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114AE4_25_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_08114ABC
.ifdef EU
    @ TODO only small differences
	.incbin "data_081146D0/gUnk_08114AE4_26_EU.bin"
.else
	.incbin "data_081146D0/gUnk_08114AE4_27_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08114EE4:: @ 08114EE4
	.4byte 00000000
	.4byte gUnk_080FD170
	.4byte gUnk_080FD158
	.4byte gUnk_080FD170
	.4byte gUnk_080FD180
	.4byte gUnk_080FD160

gUnk_08114EFC:: @ 08114EFC
	.4byte sub_0806EF88
	.4byte sub_0806EE70
	.4byte sub_0806EED0
	.4byte sub_0806EEF4

gUnk_08114F0C:: @ 08114F0C
	.4byte sub_0806EFAC
	.4byte sub_0806EFBC
	.4byte sub_0806EFCC
	.4byte sub_0806EFDC
	.4byte sub_0806F014
	.4byte sub_0806F02C
	.4byte sub_0806F048
	.4byte sub_0806F050
	.4byte sub_0806F064

gUnk_08114F30:: @ 08114F30
	.incbin "data_081146D0/gUnk_08114F30.bin"

gUnk_08114F34:: @ 08114F34
	.incbin "data_081146D0/gUnk_08114F34.bin"

gUnk_08114F38:: @ 08114F38
	.incbin "data_081146D0/gUnk_08114F38.bin"

gUnk_08114F58:: @ 08114F58
	.incbin "data_081146D0/gUnk_08114F58.bin"

gUnk_08114F78:: @ 08114F78
	.incbin "data_081146D0/gUnk_08114F78.bin"

gUnk_08114F80:: @ 08114F80
	.incbin "data_081146D0/gUnk_08114F80.bin"

gUnk_08114F88:: @ 08114F88
	.incbin "data_081146D0/gUnk_08114F88.bin"

gSpriteFrames_1:: @ 08114F98
	.incbin "data_081146D0/gSpriteFrames_1.bin"

gSpriteFrames_2:: @ 0811538C
	.incbin "data_081146D0/gSpriteFrames_2.bin"

gSpriteFrames_3:: @ 08115724
	.incbin "data_081146D0/gSpriteFrames_3.bin"

gSpriteFrames_4:: @ 08115AF8
	.incbin "data_081146D0/gSpriteFrames_4.bin"

gSpriteFrames_5:: @ 08115E9C
	.incbin "data_081146D0/gSpriteFrames_5.bin"

gSpriteFrames_6:: @ 08116280
	.incbin "data_081146D0/gSpriteFrames_6.bin"

gSpriteFrames_7:: @ 08116530
	.incbin "data_081146D0/gSpriteFrames_7.bin"

gSpriteFrames_8:: @ 08116888
	.incbin "data_081146D0/gSpriteFrames_8.bin"

gSpriteFrames_9:: @ 08116A9C
	.incbin "data_081146D0/gSpriteFrames_9.bin"

gSpriteFrames_Object4:: @ 08116D0C
	.incbin "data_081146D0/gSpriteFrames_Object4.bin"

gSpriteFrames_Object6:: @ 08116DD4
	.incbin "data_081146D0/gSpriteFrames_Object6.bin"

gSpriteFrames_12:: @ 08116F64
	.incbin "data_081146D0/gSpriteFrames_12.bin"

gSpriteFrames_13:: @ 08117208
	.incbin "data_081146D0/gSpriteFrames_13.bin"

gSpriteFrames_14:: @ 08117240
	.incbin "data_081146D0/gSpriteFrames_14.bin"

gSpriteFrames_15:: @ 081175DC
	.incbin "data_081146D0/gSpriteFrames_15.bin"

gSpriteFrames_16:: @ 081178B0
	.incbin "data_081146D0/gSpriteFrames_16.bin"

gSpriteFrames_17:: @ 08117B84
	.incbin "data_081146D0/gSpriteFrames_17.bin"

gSpriteFrames_18:: @ 08117D64
	.incbin "data_081146D0/gSpriteFrames_18.bin"

gSpriteFrames_19:: @ 08117E40
	.incbin "data_081146D0/gSpriteFrames_19.bin"

gSpriteFrames_20:: @ 08117F68
	.incbin "data_081146D0/gSpriteFrames_20.bin"

gSpriteFrames_21:: @ 08117FD4
	.incbin "data_081146D0/gSpriteFrames_21.bin"

gSpriteFrames_22:: @ 081181B4
	.incbin "data_081146D0/gSpriteFrames_22.bin"

gSpriteFrames_24:: @ 081181E4
	.incbin "data_081146D0/gSpriteFrames_24.bin"

gSpriteFrames_25:: @ 08118238
	.incbin "data_081146D0/gSpriteFrames_25.bin"

gSpriteFrames_26:: @ 08118264
	.incbin "data_081146D0/gSpriteFrames_26.bin"

gSpriteFrames_27:: @ 08118298
	.incbin "data_081146D0/gSpriteFrames_27.bin"

gSpriteFrames_28:: @ 08118398
	.incbin "data_081146D0/gSpriteFrames_28.bin"

gSpriteFrames_29:: @ 081183BC
	.incbin "data_081146D0/gSpriteFrames_29.bin"

gSpriteFrames_30:: @ 0811846C
	.incbin "data_081146D0/gSpriteFrames_30.bin"

gSpriteFrames_31:: @ 081184A8
	.incbin "data_081146D0/gSpriteFrames_31.bin"

gSpriteFrames_32:: @ 08118558
	.incbin "data_081146D0/gSpriteFrames_32.bin"

gSpriteFrames_33:: @ 08118720
	.incbin "data_081146D0/gSpriteFrames_33.bin"

gSpriteFrames_Object6A_0:: @ 08118768
	.incbin "data_081146D0/gSpriteFrames_Object6A_0.bin"

gSpriteFrames_Object6A_1:: @ 08118780
	.incbin "data_081146D0/gSpriteFrames_Object6A_1.bin"

gSpriteFrames_Object6A_2:: @ 08118788
	.incbin "data_081146D0/gSpriteFrames_Object6A_2.bin"

gSpriteFrames_MinishEzlo:: @ 08118794
	.incbin "data_081146D0/gSpriteFrames_MinishEzlo.bin"

gSpriteFrames_Object6A_3:: @ 081188C0
	.incbin "data_081146D0/gSpriteFrames_Object6A_3.bin"

gSpriteFrames_Din:: @ 08118948
	.incbin "data_081146D0/gSpriteFrames_Din.bin"

gSpriteFrames_Nayru:: @ 08118960
	.incbin "data_081146D0/gSpriteFrames_Nayru.bin"

gSpriteFrames_Farore:: @ 08118974
	.incbin "data_081146D0/gSpriteFrames_Farore.bin"

gSpriteFrames_Npc5:: @ 08118988
	.incbin "data_081146D0/gSpriteFrames_Npc5.bin"

gSpriteFrames_GuardWithSpear:: @ 08118C00
	.incbin "data_081146D0/gSpriteFrames_GuardWithSpear.bin"

gSpriteFrames_KingDaltus:: @ 08118D38
	.incbin "data_081146D0/gSpriteFrames_KingDaltus.bin"

gSpriteFrames_MinisterPotho:: @ 08118DA4
	.incbin "data_081146D0/gSpriteFrames_MinisterPotho.bin"

gSpriteFrames_Npc26:: @ 08118DD0
	.incbin "data_081146D0/gSpriteFrames_Npc26.bin"

gSpriteFrames_Maid:: @ 08118DDC
	.incbin "data_081146D0/gSpriteFrames_Maid.bin"

gSpriteFrames_TingleSiblings:: @ 08118E5C
	.incbin "data_081146D0/gSpriteFrames_TingleSiblings.bin"

gSpriteFrames_Beedle:: @ 08118F04
	.incbin "data_081146D0/gSpriteFrames_Beedle.bin"

gSpriteFrames_Brocco:: @ 08118F3C
	.incbin "data_081146D0/gSpriteFrames_Brocco.bin"

gSpriteFrames_Pina:: @ 08118F64
	.incbin "data_081146D0/gSpriteFrames_Pina.bin"

gSpriteFrames_Postman:: @ 08118F98
	.incbin "data_081146D0/gSpriteFrames_Postman.bin"

gSpriteFrames_Malon:: @ 081190A0
	.incbin "data_081146D0/gSpriteFrames_Malon.bin"

gSpriteFrames_Epona:: @ 081190E4
	.incbin "data_081146D0/gSpriteFrames_Epona.bin"

gSpriteFrames_MilkCart:: @ 0811911C
	.incbin "data_081146D0/gSpriteFrames_MilkCart.bin"

gSpriteFrames_Smith:: @ 0811912C
	.incbin "data_081146D0/gSpriteFrames_Smith.bin"

gSpriteFrames_Townsperson:: @ 08119188
	.incbin "data_081146D0/gSpriteFrames_Townsperson.bin"

gSpriteFrames_58:: @ 081192A8
	.incbin "data_081146D0/gSpriteFrames_58.bin"

gSpriteFrames_Kid:: @ 08119548
	.incbin "data_081146D0/gSpriteFrames_Kid.bin"

gSpriteFrames_Mailbox:: @ 081197C4
	.incbin "data_081146D0/gSpriteFrames_Mailbox.bin"

gSpriteFrames_SittingPerson:: @ 081197F4
	.incbin "data_081146D0/gSpriteFrames_SittingPerson.bin"

gSpriteFrames_Mutoh:: @ 081198C4
	.incbin "data_081146D0/gSpriteFrames_Mutoh.bin"

gSpriteFrames_Carpenter:: @ 081198EC
	.incbin "data_081146D0/gSpriteFrames_Carpenter.bin"

gSpriteFrames_Gorman:: @ 081199A4
	.incbin "data_081146D0/gSpriteFrames_Gorman.bin"

gSpriteFrames_Cat:: @ 081199F8
	.incbin "data_081146D0/gSpriteFrames_Cat.bin"

gSpriteFrames_66:: @ 08119A74
	.incbin "data_081146D0/gSpriteFrames_66.bin"

gSpriteFrames_Dog:: @ 08119AF0
	.incbin "data_081146D0/gSpriteFrames_Dog.bin"

gSpriteFrames_68:: @ 08119B7C
	.incbin "data_081146D0/gSpriteFrames_68.bin"

gSpriteFrames_69:: @ 08119BF0
	.incbin "data_081146D0/gSpriteFrames_69.bin"

gSpriteFrames_Syrup:: @ 08119C64
	.incbin "data_081146D0/gSpriteFrames_Syrup.bin"

gSpriteFrames_Percy:: @ 08119CF4
	.incbin "data_081146D0/gSpriteFrames_Percy.bin"

gSpriteFrames_Farmers_0:: @ 08119D54
	.incbin "data_081146D0/gSpriteFrames_Farmers_0.bin"

gSpriteFrames_Farmers_1:: @ 08119DA8
	.incbin "data_081146D0/gSpriteFrames_Farmers_1.bin"

gSpriteFrames_Dampe:: @ 08119DFC
	.incbin "data_081146D0/gSpriteFrames_Dampe.bin"

gSpriteFrames_KingGustaf:: @ 08119E18
	.incbin "data_081146D0/gSpriteFrames_KingGustaf.bin"

gSpriteFrames_Gina:: @ 08119E44
	.incbin "data_081146D0/gSpriteFrames_Gina.bin"

gSpriteFrames_Simon:: @ 08119EB0
	.incbin "data_081146D0/gSpriteFrames_Simon.bin"

gSpriteFrames_Mama:: @ 08119ED8
	.incbin "data_081146D0/gSpriteFrames_Mama.bin"

gSpriteFrames_Teachers:: @ 08119F80
	.incbin "data_081146D0/gSpriteFrames_Teachers.bin"

gSpriteFrames_80:: @ 08119FA4
	.incbin "data_081146D0/gSpriteFrames_80.bin"

gSpriteFrames_WindTribespeople_0:: @ 08119FD4
	.incbin "data_081146D0/gSpriteFrames_WindTribespeople_0.bin"

gSpriteFrames_WindTribespeople_1:: @ 0811A01C
	.incbin "data_081146D0/gSpriteFrames_WindTribespeople_1.bin"

gSpriteFrames_WindTribespeople_2:: @ 0811A04C
	.incbin "data_081146D0/gSpriteFrames_WindTribespeople_2.bin"

gSpriteFrames_WindTribespeople_3:: @ 0811A068
	.incbin "data_081146D0/gSpriteFrames_WindTribespeople_3.bin"

gSpriteFrames_WindTribespeople_4:: @ 0811A0A4
	.incbin "data_081146D0/gSpriteFrames_WindTribespeople_4.bin"

gSpriteFrames_WindTribespeople_5:: @ 0811A0CC
	.incbin "data_081146D0/gSpriteFrames_WindTribespeople_5.bin"

gSpriteFrames_MayorHagen:: @ 0811A0E4
	.incbin "data_081146D0/gSpriteFrames_MayorHagen.bin"

gSpriteFrames_GhostBrothers:: @ 0811A124
	.incbin "data_081146D0/gSpriteFrames_GhostBrothers.bin"

gSpriteFrames_HurdyGurdyMan:: @ 0811A144
	.incbin "data_081146D0/gSpriteFrames_HurdyGurdyMan.bin"

gSpriteFrames_Cow:: @ 0811A17C
	.incbin "data_081146D0/gSpriteFrames_Cow.bin"

gSpriteFrames_GoronMerchant:: @ 0811A1C8
	.incbin "data_081146D0/gSpriteFrames_GoronMerchant.bin"

gSpriteFrames_92:: @ 0811A1F8
	.incbin "data_081146D0/gSpriteFrames_92.bin"

gSpriteFrames_Goron:: @ 0811A228
	.incbin "data_081146D0/gSpriteFrames_Goron.bin"

gSpriteFrames_CastorWildsStatue:: @ 0811A280
	.incbin "data_081146D0/gSpriteFrames_CastorWildsStatue.bin"

gSpriteFrames_Npc4F:: @ 0811A28C
	.incbin "data_081146D0/gSpriteFrames_Npc4F.bin"

gSpriteFrames_Object6A_4:: @ 0811A2A8
	.incbin "data_081146D0/gSpriteFrames_Object6A_4.bin"

gSpriteFrames_97:: @ 0811A2D0
	.incbin "data_081146D0/gSpriteFrames_97.bin"

gSpriteFrames_DarkNut_0:: @ 0811A2FC
	.incbin "data_081146D0/gSpriteFrames_DarkNut_0.bin"

gSpriteFrames_DarkNut_1:: @ 0811A510
	.incbin "data_081146D0/gSpriteFrames_DarkNut_1.bin"

gSpriteFrames_ChuchuBoss_0:: @ 0811A75C
	.incbin "data_081146D0/gSpriteFrames_ChuchuBoss_0.bin"

gSpriteFrames_DeathFx_0:: @ 0811A7A8
	.incbin "data_081146D0/gSpriteFrames_DeathFx_0.bin"

gSpriteFrames_Madderpillar_0:: @ 0811A86C
	.incbin "data_081146D0/gSpriteFrames_Madderpillar_0.bin"

gSpriteFrames_Gleerok_0:: @ 0811A8CC
	.incbin "data_081146D0/gSpriteFrames_Gleerok_0.bin"

gSpriteFrames_Keaton:: @ 0811A9B4
	.incbin "data_081146D0/gSpriteFrames_Keaton.bin"

gSpriteFrames_MazaalHand:: @ 0811AA2C
	.incbin "data_081146D0/gSpriteFrames_MazaalHand.bin"

gSpriteFrames_ScissorsBeetle:: @ 0811AA7C
	.incbin "data_081146D0/gSpriteFrames_ScissorsBeetle.bin"

gSpriteFrames_MandiblesProjectile:: @ 0811AB18
	.incbin "data_081146D0/gSpriteFrames_MandiblesProjectile.bin"

gSpriteFrames_Stalfos:: @ 0811ABF8
	.incbin "data_081146D0/gSpriteFrames_Stalfos.bin"

gSpriteFrames_Gibdo:: @ 0811AD24
	.incbin "data_081146D0/gSpriteFrames_Gibdo.bin"

gSpriteFrames_Lakitu:: @ 0811ADCC
	.incbin "data_081146D0/gSpriteFrames_Lakitu.bin"

gSpriteFrames_LakituCloudProjectile:: @ 0811AEB0
	.incbin "data_081146D0/gSpriteFrames_LakituCloudProjectile.bin"

gSpriteFrames_VaatiRebornEnemy_0:: @ 0811AED8
	.incbin "data_081146D0/gSpriteFrames_VaatiRebornEnemy_0.bin"

gSpriteFrames_VaatiRebornEnemy_1:: @ 0811AF24
	.incbin "data_081146D0/gSpriteFrames_VaatiRebornEnemy_1.bin"

gSpriteFrames_VaatiRebornEnemy_2:: @ 0811AF34
	.incbin "data_081146D0/gSpriteFrames_VaatiRebornEnemy_2.bin"

gSpriteFrames_VaatiRebornEnemy_3:: @ 0811AF64
	.incbin "data_081146D0/gSpriteFrames_VaatiRebornEnemy_3.bin"

gSpriteFrames_VaatiBall:: @ 0811AF8C
	.incbin "data_081146D0/gSpriteFrames_VaatiBall.bin"

gSpriteFrames_VaatiTransfigured_0:: @ 0811AFBC
	.incbin "data_081146D0/gSpriteFrames_VaatiTransfigured_0.bin"

gSpriteFrames_VaatiTransfigured_1:: @ 0811AFD0
	.incbin "data_081146D0/gSpriteFrames_VaatiTransfigured_1.bin"

gSpriteFrames_VaatiTransfigured_2:: @ 0811B000
	.incbin "data_081146D0/gSpriteFrames_VaatiTransfigured_2.bin"

gSpriteFrames_VaatiTransfigured_3:: @ 0811B01C
	.incbin "data_081146D0/gSpriteFrames_VaatiTransfigured_3.bin"

gSpriteFrames_VaatiArm:: @ 0811B02C
	.incbin "data_081146D0/gSpriteFrames_VaatiArm.bin"

gSpriteFrames_VaatiWrath:: @ 0811B0B0
	.incbin "data_081146D0/gSpriteFrames_VaatiWrath.bin"

gSpriteFrames_VaatiReborn:: @ 0811B130
	.incbin "data_081146D0/gSpriteFrames_VaatiReborn.bin"

gSpriteFrames_MoblinLady_1:: @ 0811B178
	.incbin "data_081146D0/gSpriteFrames_MoblinLady_1.bin"

gSpriteFrames_BallChainSoldier:: @ 0811B190
	.incbin "data_081146D0/gSpriteFrames_BallChainSoldier.bin"

gSpriteFrames_GyorgMale:: @ 0811B214
	.incbin "data_081146D0/gSpriteFrames_GyorgMale.bin"

gSpriteFrames_JarPortal:: @ 0811B258
	.incbin "data_081146D0/gSpriteFrames_JarPortal.bin"

gSpriteFrames_Beanstalk_0:: @ 0811B294
	.incbin "data_081146D0/gSpriteFrames_Beanstalk_0.bin"

gSpriteFrames_Minecart:: @ 0811B2FC
	.incbin "data_081146D0/gSpriteFrames_Minecart.bin"

gSpriteFrames_LavaPlatform_1:: @ 0811B34C
	.incbin "data_081146D0/gSpriteFrames_LavaPlatform_1.bin"

gSpriteFrames_BigVortex:: @ 0811B394
	.incbin "data_081146D0/gSpriteFrames_BigVortex.bin"

gSpriteFrames_MacroBook:: @ 0811B3A4
	.incbin "data_081146D0/gSpriteFrames_MacroBook.bin"

gSpriteFrames_GentariCurtains:: @ 0811B3B4
	.incbin "data_081146D0/gSpriteFrames_GentariCurtains.bin"

gSpriteFrames_SpiderWeb:: @ 0811B3C8
	.incbin "data_081146D0/gSpriteFrames_SpiderWeb.bin"

gSpriteFrames_Object79:: @ 0811B408
	.incbin "data_081146D0/gSpriteFrames_Object79.bin"

gSpriteFrames_OctorokBoss_0:: @ 0811B540
	.incbin "data_081146D0/gSpriteFrames_OctorokBoss_0.bin"

gSpriteFrames_Bell:: @ 0811B564
	.incbin "data_081146D0/gSpriteFrames_Bell.bin"

gSpriteFrames_322:: @ 0811B578
	.incbin "data_081146D0/gSpriteFrames_322.bin"

gSpriteFrames_Vaati_1:: @ 0811B940
	.incbin "data_081146D0/gSpriteFrames_Vaati_1.bin"
