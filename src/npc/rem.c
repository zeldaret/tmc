/**
 * @file rem.c
 * @ingroup NPCs
 *
 * @brief Rem NPC
 */
#include "functions.h"
#include "item.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u8 unused1[20];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u8 unused2[2];
    /*0x84*/ ScriptExecutionContext* context;
} RemEntity;

extern void sub_0806A8C8(Entity*);

extern void script_Rem;

extern void DeleteThoughtBubble(Entity* this, ScriptExecutionContext* context);

void sub_0806A9B0(RemEntity*, ScriptExecutionContext*);
void sub_0806A914(Entity* this);

void sub_0806a370(RemEntity* this);
void sub_0806A5E8(RemEntity* this);
void sub_0806A630(RemEntity* this);
void sub_0806A674(RemEntity* this);
void sub_0806A830(RemEntity* this);
void sub_0806A890(RemEntity* this);

void sub_0806A3D8(RemEntity* this);
void sub_0806A410(RemEntity* this);
void sub_0806A458(RemEntity* this);
void sub_0806A4CC(RemEntity* this);
void sub_0806A550(RemEntity* this);
void nullsub_503(RemEntity* this);
void sub_0806A5C0(RemEntity* this);

void Rem(RemEntity* this) {
    static void (*const typeFuncs[])(RemEntity*) = {
        sub_0806a370, sub_0806A5E8, sub_0806A630, sub_0806A674, sub_0806A830, sub_0806A890,
    };
    typeFuncs[super->type](this);
}

void sub_0806a370(RemEntity* this) {
    static void (*const actionFuncs[])(RemEntity*) = {
        sub_0806A3D8, sub_0806A410, sub_0806A458, sub_0806A4CC, sub_0806A550, nullsub_503, sub_0806A5C0,
    };

    actionFuncs[super->action](this);
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
    sub_0806ED78(super);
    if (super->animIndex == 0xf) {
        if (super->frame == 1) {
            super->frame = 0;
            SoundReq(SFX_218);
        }
        if (super->frame == 2) {
            super->frame = 0;
            SoundReq(SFX_219);
        }
    }
}

void sub_0806A3D8(RemEntity* this) {
    super->action = 1;
    super->timer = 180;
    SetEntityPriority(super, PRIO_MESSAGE);
    sub_0806A8C8(super);
    this->context = StartCutscene(super, &script_Rem);
    ExecuteScriptAndHandleAnimation(super, NULL);
}

void sub_0806A410(RemEntity* this) {
    switch (super->subAction) {
        case 0:
            if (--super->timer == 0) {
                super->subAction++;
                InitializeAnimation(super, 8);
            }
            break;
        case 1:
            if (((super->frame & ANIM_DONE) != 0)) {
                sub_0806A9B0(this, this->context);
            }
            break;
    }
}

void sub_0806A458(RemEntity* this) {
    switch (super->subAction) {
        case 0:
            if (--super->timer == 0) {
                super->subAction++;
            }
            break;
        case 1:
            if ((super->frame & ANIM_DONE) != 0) {
                super->subAction = 2;
                InitializeAnimation(super, 10);
                ClearLocalFlag(0x62);
            }
            break;
        case 2:
            if (((super->frame & ANIM_DONE) != 0)) {
                super->action = 1;
                super->subAction = 0;
                super->timer = 60;
                InitializeAnimation(super, 2);
            }
            break;
    }
}

void sub_0806A4CC(RemEntity* this) {
    switch (super->subAction) {
        case 0:
            if ((super->frame & ANIM_DONE) != 0) {
                if ((u8)(super->animIndex - 8) < 2) {
                    super->subAction = 1;
                    this->unk_6a = 1;
                    InitializeAnimation(super, 10);
                } else {
                    super->subAction = 2;
                    this->unk_6a = 0;
                    InitializeAnimation(super, GetAnimationState(super));
                }
                break;
                case 1:
                    if ((super->frame & ANIM_DONE) != 0) {
                        super->subAction = 2;
                        InitializeAnimation(super, GetAnimationState(super));
                    }
                    break;
                default:
                    super->timer = 180;
                    break;
            }
    }
}

void sub_0806A550(RemEntity* this) {
    if (super->subAction == 0) {
        super->subAction = 1;
        InitializeAnimation(super, 0xc);
    } else {
        if (super->frame == 1) {
            super->frame = 0;
            InitScreenShake(8, 2);
            gActiveScriptInfo.syncFlags |= 0x100;
            SoundReq(SFX_CHEST_OPEN);
        }
        if ((super->frame & ANIM_DONE) != 0) {
            super->action = 5;
            super->subAction = 0;
            InitializeAnimation(super, 0xd);
            sub_0806A914(super);
        }
    }
}

void nullsub_503(RemEntity* this) {
}

void sub_0806A5C0(RemEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        InitializeAnimation(super, (Random() & 3) + 4);
    }
}

void sub_0806A5E8(RemEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 0x10);
        super->timer = (Random() & 0x3f) + 60;
    }
    super->timer--;
    if (super->timer == 0) {
        super->timer = (Random() & 0x3f) + 120;
        SoundReq(SFX_REM_SLEEP);
    }
    GetNextFrame(super);
}

void sub_0806A630(RemEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 0x12);
    }
    if ((gActiveScriptInfo.syncFlags & 0x100) != 0) {
        GetNextFrame(super);
    }
    if (super->frame == 1) {
        super->frame = 0;
        SoundReq(SFX_SECRET);
    }
}

void sub_0806A674(RemEntity* this) {
    static const u8 gUnk_08112294[] = { 0, -1, 0, 1, 0, -1, 0, 1 };
    u32 rand;
    u8 auStack16[8];

    memcpy(auStack16, &gUnk_08112294, 8);
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spritePriority.b0 = 6;
            InitializeAnimation(super, 0x13);
            break;
        case 1:
            if ((gActiveScriptInfo.syncFlags & 0x100) != 0) {
                super->action = 2;
                super->spriteOffsetY = 0;
                super->spriteOffsetX = 0;
            } else {
                if (super->parent->animIndex == 9) {
                    super->spritePriority.b0 = 3;

                    if (super->timer == 0) {
                        rand = Random();
                        super->timer = rand & 7;
                        this->unk_68 = auStack16[rand >> 8 & 7];
                    } else if ((gRoomTransition.frameCount & 3U) == 0) {
                        super->timer--;
                        if ((s8)super->spriteOffsetX < 1) {
                            this->unk_68 = 1;
                        }

                        if (0xf < (s8)super->spriteOffsetX) {
                            this->unk_68 = -1;
                        }
                        super->spriteOffsetX += this->unk_68;
                    }

                    if (super->subtimer == 0) {
                        rand = Random();
                        super->subtimer = rand & 7;
                        this->unk_69 = auStack16[rand >> 8 & 7];
                    } else if (((u32)gRoomTransition.frameCount >> 4 & 3) == 0) {
                        super->subtimer--;
                        if (-1 < super->spriteOffsetY) {
                            this->unk_69 = -1;
                        }

                        if (super->spriteOffsetY <= -8) {
                            this->unk_69 = 1;
                        }
                        super->spriteOffsetY += this->unk_69;
                    }
                } else {
                    super->spritePriority.b0 = 6;
                    if ((s8)super->spriteOffsetX != 0) {
                        if (0 < (s8)super->spriteOffsetX) {
                            super->spriteOffsetX--;
                        }

                        if ((s8)super->spriteOffsetX < 0) {
                            super->spriteOffsetX++;
                        }
                    }

                    if (super->spriteOffsetY != 0) {
                        if (0 < super->spriteOffsetY) {
                            super->spriteOffsetY--;
                        }

                        if (super->spriteOffsetY < 0) {
                            super->spriteOffsetY++;
                        }
                    }
                }
            }

            break;
        case 2:
            GetNextFrame(super);
            break;
    }
}

void sub_0806A830(RemEntity* this) {
    Entity* npc;

    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 0x14);
        SetEntityPriority(super, PRIO_MESSAGE);
    }
    if ((gActiveScriptInfo.syncFlags & 0x200) != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(super);
    if (super->frame == 1) {
        super->frame = 0;
        npc = CreateNPC(REM, 5, 0);
        if (npc != NULL) {
            PositionEntityOnTop(super, npc);
        }
    }
}

void sub_0806A890(RemEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 0x15);
        SetEntityPriority(super, PRIO_MESSAGE);
    }
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_0806A8C8(Entity* this) {
    Entity* entity;
    if ((CheckLocalFlag(SHOP02_KUTSU_00) == 0) && (entity = CreateNPC(REM, 2, 0), entity != NULL)) {
        CopyPosition(this, entity);
        entity->parent = this;
    }
    entity = CreateNPC(REM, 3, 0);
    if (entity != NULL) {
        CopyPosition(this, entity);
        entity->y.HALF.HI += 2;
        entity->parent = this;
    }
}

void sub_0806A914(Entity* this) {
    Entity* npc = CreateNPC(REM, 1, 0);
    if (npc != NULL) {
        CopyPosition(this, npc);
        SortEntityAbove(this, npc);
    }
}

void Rem_MakeInteractable(Entity* this) {
    static const Rect gUnk_0811229C = { 0, 6, 10, 16 };
    AddInteractableWhenBigObject(this);
    SetInteractableObjectCollision(this, 0, 0, &gUnk_0811229C);
}

void sub_0806A958(Entity* this) {
    if (this->action != 5) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_0806A96C(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (this->interactType != INTERACTION_NONE) {
        if (this->action != 3) {
            this->action = 3;
            this->subAction = 0;
        } else {
            if (this->subAction > 1) {
                this->interactType = INTERACTION_NONE;
                context->condition = 1;
                gActiveScriptInfo.flags |= 1;
            }
        }
    }
}

void sub_0806A9B0(RemEntity* this, ScriptExecutionContext* context) {
    static const u8 gUnk_081122A0[] = { 60, 100, 200, 60, 100, 200, 80, 80 };
    super->action = 2;
    super->subAction = 0;
    super->timer = gUnk_081122A0[Random() & 7];
    this->unk_80 = 9;
    InitializeAnimation(super, 9);
    SetLocalFlag(NPC37_REM_SLEEP);
}

void sub_0806A9E8(Entity* this) {
    Entity* npc = CreateNPC(REM, 4, 0);
    if (npc != NULL) {
        CopyPosition(this, npc);
        SortEntityBelow(this, npc);
    }
}

void sub_0806AA10(Entity* this) {
    sub_0806A914(this);
}

void sub_0806AA18(RemEntity* this) {
    u32 index;
    if (this->unk_6a != 0) {
        index = TEXT_INDEX(TEXT_REM, 0x8);
    } else if ((gRoomTransition.frameCount & 1) == 0) {
        index = TEXT_INDEX(TEXT_REM, 0x7);
    } else {
        index = TEXT_INDEX(TEXT_REM, 0xd);
    }
    MessageNoOverlap(index, super);
}

void sub_0806AA50(Entity* this, ScriptExecutionContext* context) {
    static const u16 gUnk_081122A8[] = { TEXT_INDEX(TEXT_REM, 0x1c), TEXT_INDEX(TEXT_REM, 0x1d),
                                         TEXT_INDEX(TEXT_REM, 0x1e), 0 };
    static const u16 gUnk_081122B0[] = { TEXT_INDEX(TEXT_REM, 0x1f), TEXT_INDEX(TEXT_REM, 0x20),
                                         TEXT_INDEX(TEXT_REM, 0x21), 0 };
    static const u16 gUnk_081122B8[] = { TEXT_INDEX(TEXT_REM, 0x10), TEXT_INDEX(TEXT_REM, 0x11),
                                         TEXT_INDEX(TEXT_REM, 0x12), 0 };
    s32 messageIndex;
    Entity* pEnt;

    switch (context->unk_18) {
        case 0:
            context->condition = 0;
            if (CheckLocalFlag(0x8f) == 0) {
                messageIndex = gUnk_081122A8[gRoomVars.animFlags];
            } else if (GetInventoryValue(ITEM_PEGASUS_BOOTS) == 0) {
                messageIndex = gUnk_081122B0[gRoomVars.animFlags];
            } else {
                messageIndex = gUnk_081122B8[gRoomVars.animFlags];
            }

            if (++gRoomVars.animFlags > 2) {
                gRoomVars.animFlags = 0;
            }
            MessageNoOverlap(messageIndex, this);
            switch (context->intVariable) {
                case 0:
                    gRoomVars.puzzleEntities[0] = this;
                    PrependEntityToList(this, NPC);
                    this->zVelocity = Q_16_16(1.5);
                    break;
                case 1:
                    pEnt = FindNextDuplicateID(gRoomVars.puzzleEntities[0], NPC);
                    gRoomVars.puzzleEntities[1] = pEnt;
                    pEnt->zVelocity = Q_16_16(1.5);
                    break;
                case 2:
                    pEnt = FindNextDuplicateID(gRoomVars.puzzleEntities[1], NPC);
                    gRoomVars.puzzleEntities[2] = pEnt;
                    pEnt->zVelocity = Q_16_16(1.5);
                    break;
            }
            if (messageIndex == TEXT_INDEX(TEXT_REM, 0x1e)) {
                SetLocalFlag(0x8f);
                context->condition = 1;
            }
            context->unk_18 = 1;
            break;
        case 1:
            pEnt = gRoomVars.puzzleEntities[context->intVariable];
            if (pEnt->z.HALF.HI < 0) {
                break;
            }
            pEnt->zVelocity = Q_16_16(1.5);
            context->unk_18 = 2;
            break;
        case 2:
            if (this->z.HALF.HI >= 0) {
                return;
            }
            break;
    }

    gActiveScriptInfo.commandSize = 0;
}

void sub_0806AB74(Entity* this) {
    gRoomVars.remFlagUnused = TRUE;
    if ((s32)(this->y.HALF.HI - (u32)gRoomControls.origin_y) < 0xa8) {
        this->y.HALF.HI = gRoomControls.origin_y + 0xa8;
    }
}

void DeleteNpcRem(Entity* this, ScriptExecutionContext* context) {
    Entity* entity = FindEntity(NPC, REM, NPC, 1, 0);
    if (entity != NULL) {
        DeleteEntity(entity);
    }
    DeleteThoughtBubble(this, context);
}
