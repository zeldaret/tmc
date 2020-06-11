#ifndef GREATFAIRY_H
#define GREATFAIRY_H

extern u32 __modsi3(u32, u32);
extern void UpdateSprite(Entity *, u32);
extern void sub_08087380();
extern u32 sub_0807CC3C();
extern Entity *sub_080873AC(Entity*, u32, u32);
extern void PositionRelative();
extern void CopyPosition();
extern void DoFade();
extern void PlaySFX();
extern void sub_08004274();
extern void sub_0805EC9C();
extern void sub_0805EC60();
extern void sub_080873D0();
extern void DeleteEntity();
extern void sub_080045D4();
extern void sub_0806F69C();
extern u32 Random();

extern void (*gGreatFairy[11])(Entity *);
extern void (*gGreatFairyBehaviors[6])(Entity *);
extern void (*gGreatFairyWings[3])(Entity *);
extern void (*gGreatFairyWake[2])(Entity *);
extern void (*gGreatFairyMini[3])(Entity *);
extern void (*gGreatFairyMiniAnim[3])(Entity *);
extern void (*gGreatFairyDrip[2])(Entity *);
extern void (*gGreatFairyRipple[2])(Entity *);
extern void (*gGreatFairyBigRipple[2])(Entity *);
extern void (*gGreatFairyEnergy[2])(Entity *);
extern void (*gGreatFairyInteract1[4])(Entity *);
extern void (*gGreatFairyInteract2[5])(Entity *);
extern void (*gUnk_081207A4[2])(Entity *);

extern u32 gUnk_0810C2E4;
extern RoomControls gRoomControls;
extern Entity gLinkEntity;
extern s16 gGreatFairyRippleOffsets[10];
extern u32 gUnk_02034350;
extern RoomVars gRoomVars;
extern Screen gScreen;
extern u32 gUnk_02033280;
extern u8 gUnk_0812079C[8];

#endif