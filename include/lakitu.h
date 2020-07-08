#ifndef LAKITU_H
#define LAKITU_H

// Lakitu
extern void EnemyFunctionHandler(Entity *, void (*const funcs[])(Entity*));
extern void SetChildOffset(Entity *, u32, u32, u32);

// sub_0803C784
extern void sub_0804A9FC(Entity *, u32);
extern void sub_0804AA30(Entity *, void (*const funcs[])(Entity *));

// sub_0803C820
extern u32 sub_0806F520(Entity *);

// sub_0803C850
extern void sub_0806F4E8(Entity *);

// Lakitu_Initialize
extern void sub_0804A720(Entity *);

// Lakitu_Cloudless
extern u32 sub_08003FC4(Entity *, u32);

// sub_0803CA4C
extern u32 sub_080041A0(Entity *, Entity *, u32, u32);

// sub_0803CAD0
extern u8 sub_080045D4(s16, s16, u16, u16);
extern void sub_080AEFE0(Entity *);

// Lakitu_SpawnLightning
extern void PositionRelative(Entity *, Entity *, u32, u32);
extern void sub_08004488(u32);

// sub_0803CC08
extern void DeleteEntity(Entity *);

// Part of function tables
extern void sub_08001324(Entity *);
extern void sub_0804A7D4(Entity *);
extern void sub_08001242(Entity *);

// Used in multiple functions
extern Entity *CreateFx(Entity*, u32, u32);
extern Entity *sub_0804A98C(Entity *positionEntity, u8 subtype, u8 form); // Creates a projectile positioned at the given entity
extern void UpdateAnimationSingleFrame(Entity *);
extern void InitAnimationForceUpdate(Entity *, u32);
extern u32 sub_0806FCB8(Entity *, u32, u32, u32);
extern u32 sub_080045C4(Entity *, Entity *);


// Forward references to functions in lakitu.c
extern void sub_0803CAD0(Entity *);
extern void sub_0803CBAC(Entity *);
extern void sub_0803CA84(Entity *, u32);
extern bool32 sub_0803CA4C(Entity *);
extern bool32 sub_0803CB04(Entity *);
extern void Lakitu_SpawnLightning(Entity *);
extern void sub_0803CB34(Entity *);
extern void sub_0803CC08(Entity *this);

enum {
    INIT,
    HIDDEN,
    END_HIDE,
    IDLE,
    BEGIN_HIDE,
    LIGHTNING_THROW,
    LIGHTNING_DELAY,
    CLOUDLESS,
};

extern void (*const gUnk_080D0110[])(Entity *);
extern void (*const LakituActionFuncs[])(Entity *);
extern void (*const gUnk_080D0148[])(Entity *);

typedef struct {
    s8 x;
    s8 y;
} PACKED OffsetCoords;

extern const OffsetCoords gUnk_080D0154[];

#endif // LAKITU_H