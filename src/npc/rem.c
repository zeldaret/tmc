#include "functions.h"
#include "npc.h"
#include "item.h"

extern void sub_0806A8C8(Entity*);

extern void script_Rem;

extern void DeleteThoughtBubble(Entity* this, ScriptExecutionContext* context);

void sub_0806A9B0(Entity*, ScriptExecutionContext*);
void sub_0806A914(Entity* this);

void sub_0806a370(Entity* this);
void sub_0806A5E8(Entity* this);
void sub_0806A630(Entity* this);
void sub_0806A674(Entity* this);
void sub_0806A830(Entity* this);
void sub_0806A890(Entity* this);

void sub_0806A3D8(Entity* this);
void sub_0806A410(Entity* this);
void sub_0806A458(Entity* this);
void sub_0806A4CC(Entity* this);
void sub_0806A550(Entity* this);
void nullsub_503(Entity* this);
void sub_0806A5C0(Entity* this);

void Rem(Entity* this) {
    static void (*const typeFuncs[])(Entity*) = {
        sub_0806a370, sub_0806A5E8, sub_0806A630, sub_0806A674, sub_0806A830, sub_0806A890,
    };
    typeFuncs[this->type](this);
}

void sub_0806a370(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0806A3D8, sub_0806A410, sub_0806A458, sub_0806A4CC, sub_0806A550, nullsub_503, sub_0806A5C0,
    };

    actionFuncs[this->action](this);
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    UpdateAnimationSingleFrame(this);
    sub_0806ED78(this);
    if (this->animIndex == 0xf) {
        if (this->frame == 1) {
            this->frame = 0;
            SoundReq(SFX_218);
        }
        if (this->frame == 2) {
            this->frame = 0;
            SoundReq(SFX_219);
        }
    }
}

void sub_0806A3D8(Entity* this) {
    this->action = 1;
    this->timer = 180;
    SetDefaultPriority(this, PRIO_MESSAGE);
    sub_0806A8C8(this);
    *(ScriptExecutionContext**)&this->cutsceneBeh = StartCutscene(this, &script_Rem);
    sub_0807DD94(this, NULL);
}

void sub_0806A410(Entity* this) {
    switch (this->subAction) {
        case 0:
            if (--this->timer == 0) {
                this->subAction++;
                InitializeAnimation(this, 8);
            }
            break;
        case 1:
            if (((this->frame & ANIM_DONE) != 0)) {
                sub_0806A9B0(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
            }
            break;
    }
}

void sub_0806A458(Entity* this) {
    switch (this->subAction) {
        case 0:
            if (--this->timer == 0) {
                this->subAction++;
            }
            break;
        case 1:
            if ((this->frame & ANIM_DONE) != 0) {
                this->subAction = 2;
                InitializeAnimation(this, 10);
                ClearLocalFlag(0x62);
            }
            break;
        case 2:
            if (((this->frame & ANIM_DONE) != 0)) {
                this->action = 1;
                this->subAction = 0;
                this->timer = 60;
                InitializeAnimation(this, 2);
            }
            break;
    }
}

void sub_0806A4CC(Entity* this) {
    switch (this->subAction) {
        case 0:
            if ((this->frame & ANIM_DONE) != 0) {
                if ((u8)(this->animIndex - 8) < 2) {
                    this->subAction = 1;
                    this->field_0x6a.HWORD = 1;
                    InitializeAnimation(this, 10);
                } else {
                    this->subAction = 2;
                    this->field_0x6a.HWORD = 0;
                    InitializeAnimation(this, GetAnimationState(this));
                }
                break;
                case 1:
                    if ((this->frame & ANIM_DONE) != 0) {
                        this->subAction = 2;
                        InitializeAnimation(this, GetAnimationState(this));
                    }
                    break;
                default:
                    this->timer = 180;
                    break;
            }
    }
}

void sub_0806A550(Entity* this) {
    if (this->subAction == 0) {
        this->subAction = 1;
        InitializeAnimation(this, 0xc);
    } else {
        if (this->frame == 1) {
            this->frame = 0;
            InitScreenShake(8, 2);
            gActiveScriptInfo.syncFlags |= 0x100;
            SoundReq(SFX_CHEST_OPEN);
        }
        if ((this->frame & ANIM_DONE) != 0) {
            this->action = 5;
            this->subAction = 0;
            InitializeAnimation(this, 0xd);
            sub_0806A914(this);
        }
    }
}

void nullsub_503(Entity* this) {
}

void sub_0806A5C0(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        InitializeAnimation(this, (Random() & 3) + 4);
    }
}

void sub_0806A5E8(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x10);
        this->timer = (Random() & 0x3f) + 60;
    }
    this->timer--;
    if (this->timer == 0) {
        this->timer = (Random() & 0x3f) + 120;
        SoundReq(SFX_REM_SLEEP);
    }
    GetNextFrame(this);
}

void sub_0806A630(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x12);
    }
    if ((gActiveScriptInfo.syncFlags & 0x100) != 0) {
        GetNextFrame(this);
    }
    if (this->frame == 1) {
        this->frame = 0;
        SoundReq(SFX_SECRET);
    }
}

void sub_0806A674(Entity* this) {
    static const u8 gUnk_08112294[] = { 0, -1, 0, 1, 0, -1, 0, 1 };
    u32 rand;
    u8 auStack16[8];

    memcpy(auStack16, &gUnk_08112294, 8);
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spritePriority.b0 = 6;
            InitializeAnimation(this, 0x13);
            break;
        case 1:
            if ((gActiveScriptInfo.syncFlags & 0x100) != 0) {
                this->action = 2;
                this->spriteOffsetY = 0;
                this->spriteOffsetX = 0;
            } else {
                if (this->parent->animIndex == 9) {
                    this->spritePriority.b0 = 3;

                    if (this->timer == 0) {
                        rand = Random();
                        this->timer = rand & 7;
                        this->field_0x68.HALF.LO = auStack16[rand >> 8 & 7];
                    } else if ((gRoomTransition.frameCount & 3U) == 0) {
                        this->timer--;
                        if ((s8)this->spriteOffsetX < 1) {
                            this->field_0x68.HALF.LO = 1;
                        }

                        if (0xf < (s8)this->spriteOffsetX) {
                            this->field_0x68.HALF.LO = -1;
                        }
                        this->spriteOffsetX += this->field_0x68.HALF.LO;
                    }

                    if (this->subtimer == 0) {
                        rand = Random();
                        this->subtimer = rand & 7;
                        this->field_0x68.HALF.HI = auStack16[rand >> 8 & 7];
                    } else if (((u32)gRoomTransition.frameCount >> 4 & 3) == 0) {
                        this->subtimer--;
                        if (-1 < this->spriteOffsetY) {
                            this->field_0x68.HALF.HI = -1;
                        }

                        if (this->spriteOffsetY <= -8) {
                            this->field_0x68.HALF.HI = 1;
                        }
                        this->spriteOffsetY += this->field_0x68.HALF.HI;
                    }
                } else {
                    this->spritePriority.b0 = 6;
                    if ((s8)this->spriteOffsetX != 0) {
                        if (0 < (s8)this->spriteOffsetX) {
                            this->spriteOffsetX--;
                        }

                        if ((s8)this->spriteOffsetX < 0) {
                            this->spriteOffsetX++;
                        }
                    }

                    if (this->spriteOffsetY != 0) {
                        if (0 < this->spriteOffsetY) {
                            this->spriteOffsetY--;
                        }

                        if (this->spriteOffsetY < 0) {
                            this->spriteOffsetY++;
                        }
                    }
                }
            }

            break;
        case 2:
            GetNextFrame(this);
            break;
    }
}

void sub_0806A830(Entity* this) {
    Entity* npc;

    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x14);
        SetDefaultPriority(this, PRIO_MESSAGE);
    }
    if ((gActiveScriptInfo.syncFlags & 0x200) != 0) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    if (this->frame == 1) {
        this->frame = 0;
        npc = CreateNPC(REM, 5, 0);
        if (npc != NULL) {
            PositionEntityOnTop(this, npc);
        }
    }
}

void sub_0806A890(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0x15);
        SetDefaultPriority(this, PRIO_MESSAGE);
    }
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
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
    if (this->interactType != 0) {
        if (this->action != 3) {
            this->action = 3;
            this->subAction = 0;
        } else {
            if (this->subAction > 1) {
                this->interactType = 0;
                context->condition = 1;
                gActiveScriptInfo.flags |= 1;
            }
        }
    }
}

void sub_0806A9B0(Entity* this, ScriptExecutionContext* context) {
    static const u8 gUnk_081122A0[] = { 60, 100, 200, 60, 100, 200, 80, 80 };
    this->action = 2;
    this->subAction = 0;
    this->timer = gUnk_081122A0[Random() & 7];
    this->field_0x80.HWORD = 9;
    InitializeAnimation(this, 9);
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

void sub_0806AA18(Entity* this) {
    u32 index;
    if (this->field_0x6a.HWORD != 0) {
        index = TEXT_INDEX(TEXT_REM, 0x8);
    } else if ((gRoomTransition.frameCount & 1) == 0) {
        index = TEXT_INDEX(TEXT_REM, 0x7);
    } else {
        index = TEXT_INDEX(TEXT_REM, 0xd);
    }
    MessageNoOverlap(index, this);
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
                    gRoomVars.entities[0] = this;
                    PrependEntityToList(this, NPC);
                    this->zVelocity = Q_16_16(1.5);
                    break;
                case 1:
                    pEnt = FindNextDuplicateID(gRoomVars.entities[0], NPC);
                    gRoomVars.entities[1] = pEnt;
                    pEnt->zVelocity = Q_16_16(1.5);
                    break;
                case 2:
                    pEnt = FindNextDuplicateID(gRoomVars.entities[1], NPC);
                    gRoomVars.entities[2] = pEnt;
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
            pEnt = gRoomVars.entities[context->intVariable];
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
    gRoomVars.field_0x3 = 1;
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
