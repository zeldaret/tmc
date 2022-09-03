#ifndef SUBTASK_H
#define SUBTASK_H

#include "global.h"

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

extern const struct {
    u8 unk0;
    u8 unk1;
    // u8 pad[2];
    void (*func)(void);
} gUnk_08128A38[];

#endif // SUBTASK_H
