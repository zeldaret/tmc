#define NENT_DEPRECATED
#include "entity.h"
#include "script.h"
#include "player.h"
#include "npc.h"
#include "functions.h"
#include "object.h"
#include "item.h"

typedef struct {
    Entity base;
    s16 unk68;
    s16 unk6a;
    s16 unk6c;
    s16 unk6e;
    s8 unk70;
    s8 unk71;
} GuardWithSpearEntity;

extern Dialog gUnk_0810CF4C[];
extern Dialog gUnk_0810D0A4[];

void sub_0806407C(GuardWithSpearEntity* this, ScriptExecutionContext* context) {
    u32 dir;
    s32 x, y;
    u32 uVar7;

    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        dir = Random() & 0x18;
        switch (super->direction) {
            case DirectionNorth:
                if (dir == DirectionSouth) {
                    dir = DirectionEast;
                }
                break;
            case DirectionEast:
                if (dir == DirectionWest) {
                    dir = DirectionSouth;
                }
                break;
            case DirectionSouth:
                if (dir == DirectionNorth) {
                    dir = DirectionWest;
                }
                break;
            case DirectionWest:
                if (dir == DirectionEast) {
                    dir = DirectionNorth;
                }
                break;
        }

        super->direction = dir;
        super->animationState = sub_0806F5B0(dir);
        super->speed = 0x80;
    }

    uVar7 = super->animationState >> 1;
    if (uVar7 + 4 != super->animIndex) {
        InitializeAnimation(super, uVar7 + 4 + this->unk70);
    }
    ProcessMovement0(super);

    x = super->x.HALF.HI - this->unk68;
    if (0x10 < x) {
        super->x.HALF.HI = this->unk68 + 0x10;
        context->unk_12 = 1;
    }
    if (x < -0x10) {
        super->x.HALF.HI = this->unk68 + -0x10;
        context->unk_12 = 1;
    }

    y = super->y.HALF.HI - this->unk6a;
    if (0x10 < y) {
        super->y.HALF.HI = this->unk6a + 0x10;
        context->unk_12 = 1;
    }

    if (y < -0x10) {
        super->y.HALF.HI = this->unk6a + -0x10;
        context->unk_12 = 1;
    }

    if (--context->unk_12) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_08064180(void) {
    Entity* entity = FindEntityByID(NPC, GUARD_1, 7);
    if (entity != NULL) {
        DeleteEntity(entity);
    }
}

void sub_08064198(GuardWithSpearEntity* this) {
    s32 sVar1;
    s32 yDiff;
    u32 animIndex;
    u32 animationState;

    if (this->unk71 > 0) {
        this->unk71--;
    }

    yDiff = gPlayerEntity.y.HALF.HI - super->y.HALF.HI;
    if (2 < yDiff) {
        yDiff = 2;
    }
    if (yDiff < -2) {
        yDiff = -2;
    }
    if (yDiff != 0) {
        if (yDiff >= 1) {
            super->direction = 16;
        } else {
            super->direction = 0;
        }
        if (yDiff < 0) {
            yDiff = -yDiff;
        }
        super->speed = (s16)(yDiff << 8);
        sVar1 = super->y.HALF.HI;
        ProcessMovement0(super);
        if (sVar1 != super->y.HALF.HI) {
            if (0x140 < gPlayerEntity.speed && gRoomTransition.frameCount % 6 == 0) {
                CreateDustSmall(super);
            }
            this->unk71 = 10;
            animationState = super->animationState = sub_0806F5B0(super->direction);
            animIndex = (animationState >> 1) + 4 + this->unk70;
            if (animIndex != super->animIndex) {
                InitializeAnimation(super, animIndex);
            }
        }
    }
    if (this->unk71 == 0) {
        animationState = super->animationState = sub_0806F5B0(GetFacingDirection(super, &gPlayerEntity));
        animIndex = (animationState >> 1) + this->unk70;
        if (animIndex != super->animIndex) {
            InitializeAnimation(super, animIndex);
        }
    }
    sub_0806ED78(super);
    sVar1 = super->z.HALF.HI;
    super->z.HALF.HI = gPlayerEntity.z.HALF.HI;
    if (sVar1 < 0 && gPlayerEntity.z.HALF.HI == 0) {
        CreateDustSmall(super);
    }
}

void sub_080642B8(GuardWithSpearEntity* this) {
    s32 sVar1;
    s32 yDiff;
    u32 animIndex;
    u32 animationState;

    if (this->unk71 > 0) {
        this->unk71--;
    }

    yDiff = gPlayerEntity.x.HALF.HI - super->x.HALF.HI;
    if (2 < yDiff) {
        yDiff = 2;
    }
    if (yDiff < -2) {
        yDiff = -2;
    }
    if (yDiff != 0) {
        if (yDiff >= 1) {
            super->direction = 8;
        } else {
            super->direction = 24;
        }
        if (yDiff < 0) {
            yDiff = -yDiff;
        }
        super->speed = (s16)(yDiff << 8);
        sVar1 = super->x.HALF.HI;
        ProcessMovement0(super);
        if (sVar1 != super->x.HALF.HI) {
            if (0x140 < gPlayerEntity.speed && gRoomTransition.frameCount % 6 == 0) {
                CreateDustSmall(super);
            }
            this->unk71 = 10;
            animationState = super->animationState = sub_0806F5B0(super->direction);
            animIndex = (animationState >> 1) + 4 + this->unk70;
            if (animIndex != super->animIndex) {
                InitializeAnimation(super, animIndex);
            }
        }
    }
    if (this->unk71 == 0) {
        animationState = super->animationState = sub_0806F5B0(GetFacingDirection(super, &gPlayerEntity));
        animIndex = (animationState >> 1) + this->unk70;
        if (animIndex != super->animIndex) {
            InitializeAnimation(super, animIndex);
        }
    }
    sub_0806ED78(super);
    sVar1 = super->z.HALF.HI;
    super->z.HALF.HI = gPlayerEntity.z.HALF.HI;
    if (sVar1 < 0 && gPlayerEntity.z.HALF.HI == 0) {
        CreateDustSmall(super);
    }
}

void sub_080643D8(GuardWithSpearEntity* this) {
    static const u16 messageIndices[][4] = {
        { TEXT_INDEX(TEXT_PROLOGUE, 0x62), TEXT_INDEX(TEXT_VAATI, 0x28), TEXT_INDEX(TEXT_VAATI, 0x2b),
          TEXT_INDEX(TEXT_VAATI, 0x2b) },
        { TEXT_INDEX(TEXT_PROLOGUE, 0x62), TEXT_INDEX(TEXT_VAATI, 0x28), TEXT_INDEX(TEXT_VAATI, 0x2c),
          TEXT_INDEX(TEXT_VAATI, 0x2c) },
    };

    u32 iVar1;
    int iVar2;

    if (CheckGlobalFlag(LV1_CLEAR) == 0) {
        iVar2 = 0;
    } else {
        if (GetInventoryValue(ITEM_GREEN_SWORD) == 0) {
            iVar2 = 1;
        } else {
            if (GetInventoryValue(ITEM_RED_SWORD) == 0) {
                iVar2 = 2;
            } else {
                iVar2 = 3;
            }
        }
    }

    iVar1 = super->type2 ? 1 : 0;
    MessageNoOverlap(messageIndices[iVar1][iVar2], super);
}

void sub_08064428(GuardWithSpearEntity* this) {
    int iVar2;
    Dialog* pDialog;

    iVar2 = gSave.global_progress - 2;
    if (iVar2 < 0) {
        iVar2 = 0;
    }
    if ((super->type2 & 0x80) == 0) {
        pDialog = gUnk_0810CF4C + super->type2;
    } else {
        pDialog = gUnk_0810D0A4 + ((super->type2 & 0x7f) << 3) + iVar2;
    }
    ShowNPCDialogue(super, pDialog);
}

void sub_08064470(Entity* this, ScriptExecutionContext* context) {
    if (gPlayerState.field_0xab == 1) {
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08064488(void) {
    if (gPlayerState.framestate != PL_STATE_SWORD) {
        gPlayerState.field_0xab = 0;
    }
}

void sub_080644A4(void) {
    gPlayerState.field_0xab = 0;
}

void sub_080644B4(Entity* this, ScriptExecutionContext* context) {
    context->condition = this->animationState == context->intVariable;
}

u32 sub_080644C8(GuardWithSpearEntity* this) {
    if (super->x.HALF.HI - gRoomControls.scroll_x + 8 < 0)
        return 0;
    if (super->x.HALF.HI - gRoomControls.scroll_x - 8 > 0xf0)
        return 0;
    if (super->y.HALF.HI - gRoomControls.scroll_y < 0)
        return 0;
    if (super->y.HALF.HI - gRoomControls.scroll_y - 0x18 > 0xa0)
        return 0;
    return 1;
}
