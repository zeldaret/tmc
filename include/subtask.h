#ifndef SUBTASK_H
#define SUBTASK_H

#include "global.h"
#include "game.h"
#include "room.h"

/** Subtasks override the game task for short periods */
typedef enum {
    SUBTASK_EXIT,
    SUBTASK_PAUSEMENU,
    SUBTASK_EXIT2,
    SUBTASK_MAPHINT,
    SUBTASK_KINSTONEMENU,
    SUBTASK_AUXCUTSCENE,    /* cutscene without presence of player */
    SUBTASK_PORTALCUTSCENE, /* player "falling" down portal cutscene */
    SUBTASK_FIGURINEMENU,
    SUBTASK_WORLDEVENT,
    SUBTASK_FASTTRAVEL,
    SUBTASK_LOCALMAPHINT,
} ESubtask;

typedef void(Subtask)(void);

/** @name Subtask entrypoints */
///@{
/** Subtask entrypoint. */
Subtask Subtask_Exit;
Subtask Subtask_PauseMenu;
Subtask Subtask_Exit;
Subtask Subtask_MapHint;
Subtask Subtask_KinstoneMenu;
Subtask Subtask_AuxCutscene;
Subtask Subtask_PortalCutscene;
Subtask Subtask_FigurineMenu;
Subtask Subtask_WorldEvent;
Subtask Subtask_FastTravel;
Subtask Subtask_LocalMapHint;
///@}

// todo: separate headers for each subtask?

extern void sub_080A4398(void);
extern void SetMenuType(u32);
extern void sub_080A4D34(void);
extern void sub_080A4E90(u8);
extern void sub_080A4E84(u8);

typedef struct {
    u8 unk0;
    u8 unk1;
    // u8 pad[2];
    void (*func)(void);
} struct_08128A38;
extern const struct_08128A38 gUnk_08128A38[];

typedef struct {
    u8 item;
    u8 unk1;
    u8 frameIndex;
    u8 unk3;
    u8 unk4;
    s8 unk5;
    u16 textIndex;
} struct_gUnk_08128D70;

extern const struct_gUnk_08128D70 gUnk_08128D70[];

typedef struct {
    u8 frameIndex;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
} struct_gUnk_08128F58;

extern struct_gUnk_08128F58 gUnk_08128F58[];

// Functions used in world events.
extern void sub_08055B70(u32 param_1, u32 param_2, u32 param_3, u32 param_4);
extern void sub_0801876C(u32, u32);
extern void sub_080553E0(u32);
extern void sub_08054974(u32, u32);
extern void sub_0804B0E8(u32, u32);

// Functions used in subtasks.
void sub_080A4DB8(u32);
void sub_080A6290(void);
void sub_080A66D0();
void sub_080A67C4(u32);
void ShowAreaName(u32 id, u32 type);
void sub_080A698C(u32 param_1, u32 param_2, u32 param_3, u32 param_4);
u32 sub_080A6F40();
s32 sub_080A69E0();
const OverworldLocation* GetOverworldLocation(u32 x, u32 y);
void sub_080A6498(void);
void sub_080A71F4(const ScreenTransitionData* exitTransition);
void sub_080A6F6C(u32 textIndexOrPtr);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    s8 unk5;
    u8 unk6;
    u8 unk7;
} struct_gUnk_08128E94;

extern const struct_gUnk_08128E94 gUnk_08128E94[];

#ifdef EU
#define DRAW_DIRECT_SPRITE_INDEX 0x1fa
#else
#define DRAW_DIRECT_SPRITE_INDEX 0x1fb
#endif

#endif // SUBTASK_H
