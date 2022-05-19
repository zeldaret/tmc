/**
 * @file delayedEntityLoadManager.c
 * @ingroup Managers
 *
 * @brief Delayed entity loader.
 */
#include "manager/delayedEntityLoadManager.h"

ASM_FUNC("asm/non_matching/delayedEntityLoadManager/DelayedEntityLoadManager_Main.inc",
         void DelayedEntityLoadManager_Main())

ASM_FUNC("asm/non_matching/delayedEntityLoadManager/sub_0805ACC0.inc", u32 sub_0805ACC0(Entity* ent))
