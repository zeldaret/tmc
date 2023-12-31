/**
 * @file postman.c
 * @ingroup NPCs
 *
 * @brief Postman NPC
 */
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "sound.h"
#include "structures.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s8 unk_68;
    /*0x69*/ s8 unk_69;
    /*0x6a*/ s16 unk_6a;
    /*0x6c*/ u8 fusionOffer;
    /*0x6d*/ u8 unk_6d;
} PostmanEntity;

extern void sub_08060528(PostmanEntity*);
extern void sub_080604DC(Entity*);
extern void sub_080606D8(Entity*);
extern void Postman_MakeInteractable(PostmanEntity*);

const Coords gUnk_0810A66C[] = {
    { .HALF = { 0x0, 0x0 } },     { .HALF = { 0x48, 0xa8 } },   { .HALF = { 0x0, 0xf0 } },
    { .HALF = { 0x1f8, 0x0 } },   { .HALF = { 0x3f8, 0xf0 } },  { .HALF = { 0x1f8, 0x3c8 } },
    { .HALF = { 0x48, 0xf0 } },   { .HALF = { 0x60, 0xf0 } },   { .HALF = { 0x60, 0x188 } },
    { .HALF = { 0x78, 0x188 } },  { .HALF = { 0x78, 0x270 } },  { .HALF = { 0x38, 0x270 } },
    { .HALF = { 0x38, 0x328 } },  { .HALF = { 0x98, 0x328 } },  { .HALF = { 0xd8, 0x328 } },
    { .HALF = { 0x108, 0x328 } }, { .HALF = { 0x188, 0x328 } }, { .HALF = { 0x188, 0x368 } },
    { .HALF = { 0x108, 0x278 } }, { .HALF = { 0x128, 0x278 } }, { .HALF = { 0x128, 0x1d0 } },
    { .HALF = { 0x1a8, 0x1d0 } }, { .HALF = { 0x1f8, 0x1d0 } }, { .HALF = { 0x1a8, 0x288 } },
    { .HALF = { 0x1f8, 0x288 } }, { .HALF = { 0x1f8, 0x328 } }, { .HALF = { 0x268, 0x328 } },
    { .HALF = { 0x268, 0x368 } }, { .HALF = { 0x268, 0x390 } }, { .HALF = { 0x1f8, 0xf0 } },
    { .HALF = { 0x248, 0x1d0 } }, { .HALF = { 0x248, 0x1c0 } }, { .HALF = { 0x248, 0x288 } },
    { .HALF = { 0x298, 0x288 } }, { .HALF = { 0x298, 0x328 } }, { .HALF = { 0x328, 0x328 } },
    { .HALF = { 0x328, 0x390 } }, { .HALF = { 0x368, 0x328 } }, { .HALF = { 0x368, 0x318 } },
    { .HALF = { 0x3a0, 0x318 } }, { .HALF = { 0x3a0, 0x290 } }, { .HALF = { 0x370, 0x290 } },
    { .HALF = { 0x370, 0x280 } }, { .HALF = { 0x360, 0x280 } }, { .HALF = { 0x360, 0x270 } },
    { .HALF = { 0x340, 0x270 } }, { .HALF = { 0x340, 0x248 } }, { .HALF = { 0x320, 0x248 } },
    { .HALF = { 0x2e0, 0x248 } }, { .HALF = { 0x2e0, 0x1d0 } }, { .HALF = { 0x2d0, 0x1d0 } },
    { .HALF = { 0x2d0, 0x1c0 } }, { .HALF = { 0x320, 0x168 } }, { .HALF = { 0x378, 0x168 } },
    { .HALF = { 0x378, 0xf0 } },  { .HALF = { 0x2b0, 0x288 } }, { .HALF = { 0x2b0, 0x280 } },
    { .HALF = { 0x2c0, 0x280 } }, { .HALF = { 0x2c0, 0x270 } }, { .HALF = { 0x2d0, 0x270 } },
    { .HALF = { 0x2d0, 0x248 } }, { .HALF = { 0x78, 0x1f0 } },  { .HALF = { 0x78, 0x230 } },
};

// Indices into the coords array above
const s8 gUnk_0810A768[] = { 1, -4, 0, 1, 2 };
const s8 gUnk_0810A76D[] = { 6, 0, 2, 4, 21 };
const s8 gUnk_0810A772[] = { 6, 0, 2, 1, 21 };
const s8 gUnk_0810A777[] = { 2, -5, 3, 5, 7, 9 };
const s8 gUnk_0810A77D[] = { 29, 0, 3, 20, 17, 16 };
const s8 gUnk_0810A783[] = { 3, -5, 3, 3, 7, 9 };
const s8 gUnk_0810A789[] = { 54, 0, 2, 18, 62 };
const s8 gUnk_0810A78E[] = { 4, -5, 3, 3, 5, 9 };
const s8 gUnk_0810A794[] = { 25, 0, 3, 46, 30, 31 };
const s8 gUnk_0810A79A[] = { 5, -5, 3, 3, 5, 7 };
const s8 gUnk_0810A7A0[] = { 24, 0, 3, 45, 47, 14 };
const s8 gUnk_0810A7A6[] = { 22, 0, 3, 15, 66, 63 };
const s8 gUnk_0810A7AC[] = { 23, 24, 0, 3, 12, 47, 45 };
const s8 gUnk_0810A7B3[] = { 23, 21, 0, 2, 65, 26 };
const s8 gUnk_0810A7B9[] = { 29, 0, 3, 6, 20, 17 };
const s8 gUnk_0810A7BF[] = { 22, 0, 3, 66, 11, 63 };
const s8 gUnk_0810A7C5[] = { 54, 0, 2, 8, 62 };
const s8 gUnk_0810A7CA[] = { 29, 0, 3, 6, 20, 16 };
const s8 gUnk_0810A7D0[] = { 29, 0, 3, 6, 17, 16 };
const s8 gUnk_0810A7D6[] = { 7, 0, 2, 22, 23 };
const s8 gUnk_0810A7DB[] = { 7, 0, 2, 23, 19 };
const s8 gUnk_0810A7E0[] = { 6, 0, 2, 1, 4 };
const s8 gUnk_0810A7E5[] = { 8, 9, 61, -1, 62, 10, 11, 12, 13, -1, 14, 15, 0, 2, 27, 25 };
const s8 gUnk_0810A7F5[] = { 14, -1, 13, 12, 11, 10, 62, -1, 61, 9, 8, 7, 0, 2, 22, 19 };
const s8 gUnk_0810A805[] = { 18, 19, 20, 21, 0, 2, 65, 13 };
const s8 gUnk_0810A80D[] = { 20, 19, 18, 15, 0, 2, 24, 27 };
const s8 gUnk_0810A815[] = { 16, 0, 2, 29, 33 };
const s8 gUnk_0810A81A[] = { 15, 0, 2, 24, 25 };
const s8 gUnk_0810A81F[] = { 25, 0, 3, 46, 31, 10 };
const s8 gUnk_0810A825[] = { 16, 0, 2, 28, 33 };
const s8 gUnk_0810A82A[] = { 26, 0, 2, 41, 43 };
const s8 gUnk_0810A82F[] = { 25, 0, 3, 10, 46, 30 };
const s8 gUnk_0810A835[] = { 17, 27, 0, 2, 42, 35 };
const s8 gUnk_0810A83B[] = { 17, 16, 0, 2, 28, 29 };
const s8 gUnk_0810A841[] = { 28, 36, 35, 0, 2, 40, 37 };
const s8 gUnk_0810A848[] = { 36, 28, 27, 0, 2, 34, 42 };
const s8 gUnk_0810A84F[] = { 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 0, 2, 57, 61 };
const s8 gUnk_0810A85E[] = { 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 35, 0, 2, 36, 40 };
const s8 gUnk_0810A86D[] = { 35, 0, 2, 36, 37 };
const s8 gUnk_0810A872[] = { 34, 0, 2, 44, 52 };
const s8 gUnk_0810A877[] = { 27, 0, 2, 34, 35 };
const s8 gUnk_0810A87C[] = { 26, 0, 2, 32, 43 };
const s8 gUnk_0810A881[] = { 34, 0, 2, 52, 39 };
const s8 gUnk_0810A886[] = { 26, 0, 2, 32, 41 };
const s8 gUnk_0810A88B[] = { 25, 0, 3, 10, 30, 31 };
const s8 gUnk_0810A891[] = { 24, 0, 3, 14, 12, 47 };
const s8 gUnk_0810A897[] = { 32, 0, 2, 54, 49 };
const s8 gUnk_0810A89C[] = { 24, 0, 3, 14, 12, 45 };
const s8 gUnk_0810A8A2[] = { 33, 0, 2, 51, 55 };
const s8 gUnk_0810A8A7[] = { 32, 0, 2, 48, 54 };
const s8 gUnk_0810A8AC[] = { 34, 0, 2, 44, 39 };
const s8 gUnk_0810A8B1[] = { 33, 0, 2, 50, 55 };
const s8 gUnk_0810A8B6[] = { 32, 0, 2, 48, 49 };
const s8 gUnk_0810A8BB[] = { 30, 0, 2, 64, 59 };
const s8 gUnk_0810A8C0[] = { 55, 56, 57, 58, 59, 60, 48, 0, 2, 60, 58 };
const s8 gUnk_0810A8CB[] = { 60, 59, 58, 57, 56, 55, 33, 0, 2, 50, 51 };
const s8 gUnk_0810A8D6[] = { 48, 0, 2, 60, 56 };
const s8 gUnk_0810A8DB[] = { 47, 0, 2, 38, 61 };
const s8 gUnk_0810A8E0[] = { 31, 51, 50, 49, 48, 0, 2, 56, 58 };
const s8 gUnk_0810A8E9[] = { 49, 50, 51, 31, 30, 0, 2, 64, 53 };
const s8 gUnk_0810A8F2[] = { 52, 53, 54, 0, 2, 8, 18 };
const s8 gUnk_0810A8F9[] = { 53, 52, 47, 0, 2, 38, 57 };
const s8 gUnk_0810A900[] = { 30, 0, 2, 53, 59 };
const s8 gUnk_0810A905[] = { 22, 0, 3, 66, 11, 15 };
const s8 gUnk_0810A90B[] = { 22, 0, 3, 11, 15, 63 };
const s8 gUnk_0810A911[] = { 21, 0, 2, 26, 13, 0, 0 };

const s8* const gUnk_0810A918[] = {
    gUnk_0810A768, gUnk_0810A768, gUnk_0810A76D, gUnk_0810A772, gUnk_0810A777, gUnk_0810A77D, gUnk_0810A783,
    gUnk_0810A789, gUnk_0810A78E, gUnk_0810A794, gUnk_0810A79A, gUnk_0810A7A0, gUnk_0810A7A6, gUnk_0810A7AC,
    gUnk_0810A7B3, gUnk_0810A7B9, gUnk_0810A7BF, gUnk_0810A7C5, gUnk_0810A7CA, gUnk_0810A7D0, gUnk_0810A7D6,
    gUnk_0810A7DB, gUnk_0810A7E0, gUnk_0810A7E5, gUnk_0810A7F5, gUnk_0810A805, gUnk_0810A80D, gUnk_0810A815,
    gUnk_0810A81A, gUnk_0810A81F, gUnk_0810A825, gUnk_0810A82A, gUnk_0810A82F, gUnk_0810A835, gUnk_0810A83B,
    gUnk_0810A841, gUnk_0810A848, gUnk_0810A84F, gUnk_0810A85E, gUnk_0810A86D, gUnk_0810A872, gUnk_0810A877,
    gUnk_0810A87C, gUnk_0810A881, gUnk_0810A886, gUnk_0810A88B, gUnk_0810A891, gUnk_0810A897, gUnk_0810A89C,
    gUnk_0810A8A2, gUnk_0810A8A7, gUnk_0810A8AC, gUnk_0810A8B1, gUnk_0810A8B6, gUnk_0810A8BB, gUnk_0810A8C0,
    gUnk_0810A8CB, gUnk_0810A8D6, gUnk_0810A8DB, gUnk_0810A8E0, gUnk_0810A8E9, gUnk_0810A8F2, gUnk_0810A8F9,
    gUnk_0810A900, gUnk_0810A905, gUnk_0810A90B, gUnk_0810A911,
};
void sub_08060428(Entity*);
void sub_0806045C(Entity*);
void sub_080604C8(Entity*);
void (*const gUnk_0810AA24[])(Entity*) = {
    sub_08060428,
    sub_0806045C,
    sub_080604C8,
};

const Dialog gUnk_0810AA30[] = {
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0xc) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0xc) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0xd) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0xe) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0xf) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0x10) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0x11) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_POST, 0x12) } },
};

const Rect gUnk_0810AA70[][4] = {
    {
        { 0, -16, 16, 16 },
        { 16, 0, 16, 16 },
        { 0, 16, 16, 16 },
        { -16, 0, 16, 16 },
    },
    {
        { 0, -16, 32, 32 },
        { 16, 0, 32, 32 },
        { 0, 16, 32, 32 },
        { -16, 0, 32, 32 },
    },
};

void Postman(PostmanEntity* this) {
    if ((super->flags & ENT_SCRIPTED) != 0) {
        sub_08060528(this);
    } else {
        gUnk_0810AA24[super->action](super);
    }
}

void sub_08060428(Entity* this) {
    void* data;

    this->timer = 90;
    this->speed = 0x180;
    if (this->type2 != 0) {
        data = GetCurrentRoomProperty(this->type2);
    } else {
        data = NULL;
    }
    sub_0806EE04(this, data, 0);
    this->action = 1;
    InitAnimationForceUpdate(this, 4);
}

void sub_0806045C(Entity* this) {
    u8 bVar1;
    u32 bVar3;
    s32 temp;

    UpdateAnimationSingleFrame(this);
    sub_080604DC(this);
    switch (this->interactType) {
        case INTERACTION_TALK:
        case INTERACTION_FUSE:
            this->action = 2;
            MessageFromTarget(0);
            break;
        default:
            bVar1 = this->knockbackDirection;
            if (bVar1 != this->animationState) {
                this->animationState = bVar1;
                InitAnimationForceUpdate(this, 4 + bVar1);
            }
            temp = GetAnimationStateInRectRadius(this, 0x18, 0x18);
            if ((temp > -1) && (temp == this->animationState)) {
                bVar3 = 1;
            } else {
                bVar3 = 0;
            }
            if (!bVar3) {
                sub_0806EE20(this);
            }
    }
    sub_0806ED78(this);
}

void sub_080604C8(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_080604DC(this);
    this->action = 1;
}

void sub_080604DC(Entity* this) {
    Entity* ent;

    if (this->spriteSettings.draw == 1 && CheckOnScreen(this)) {
        if ((this->frame & 1) != 0) {
            this->frame &= 0xfe;
            ent = CreateFx(this, FX_DASH, 0x40);
            if (ent != NULL) {
                ent->y.HALF.HI++;
                SetEntityPriority(ent, 3);
            }
        }
    }
}

void sub_08060528(PostmanEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = TRUE;
            this->unk_68 = 0;
            this->unk_69 = 0;
            this->unk_6a = 0;
            this->unk_6d = 0;
            this->fusionOffer = GetFusionToOffer(super);
            InitScriptForNPC(super);
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 3;
                super->interactType = INTERACTION_NONE;
                InitializeNPCFusion(super);
                InitAnimationForceUpdate(
                    super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
            } else {
                if (super->interactType != INTERACTION_NONE) {
                    super->action = 2;
                    super->interactType = INTERACTION_NONE;
                    sub_080606D8(super);
                    InitAnimationForceUpdate(
                        super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                } else {
                    ExecuteScriptAndHandleAnimation(super, NULL);
                }
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(super);
            if ((gMessage.state & MESSAGE_ACTIVE) != 0) {
                break;
            }
            super->action = 1;
            break;
        case 3:
            UpdateAnimationSingleFrame(super);
            if (!UpdateFuseInteraction(super)) {
                break;
            }
            super->action = 1;
    }
    sub_080604DC(super);
    if (0 < (s16)this->unk_6a) {
        if ((s16)this->unk_6a > 0x12b) {
            this->unk_6a = 0;
            super->zVelocity = Q_16_16(2.0);
            this->unk_6d = 1;
            RemoveInteractableObject(super);
            EnqueueSFX(SFX_PLY_JUMP);
        } else {
            this->unk_6a--;
        }
    }
    GravityUpdate(super, Q_8_8(24.0));
    if (((this->unk_6d != 0) && (super->zVelocity == 0)) && super->z.WORD == 0) {
        this->unk_6d = 0;
        Postman_MakeInteractable(this);
    }
    if (super->z.WORD >= 0 &&
        ((gPlayerEntity.base.collisionLayer == 0 || (super->collisionLayer == gPlayerEntity.base.collisionLayer)))) {
        sub_0806ED78(super);
    }
    sub_0800451C(super);
}

void Postman_MakeInteractable(PostmanEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void sub_080606D8(Entity* this) {
    s32 index;

    index = gSave.global_progress - 2;
    if (index < 0) {
        index = 0;
    }
    ShowNPCDialogue(this, &gUnk_0810AA30[index]);
}

void sub_08060700(PostmanEntity* this, ScriptExecutionContext* context) {
    const s8* var0 = gUnk_0810A918[(s8)this->unk_68];
    const Coords* coords = &gUnk_0810A66C[var0[(s8)this->unk_69]];
    u32 x = coords->HALF.x + gRoomControls.origin_x;
    u32 y = coords->HALF.y + gRoomControls.origin_y;
    LookAt(super, context, x, y);
    gActiveScriptInfo.flags |= 1;
}

void sub_0806075C(PostmanEntity* this) {
    this->unk_68 = 0xb;
    this->unk_69 = 0xff;
}

void sub_0806076C(PostmanEntity* this, ScriptExecutionContext* context) {
    s32 cVar2;
    int iVar4;
    u32 uVar6;
    s32 uVar9;
    int local_24;
    const Coords* ptr;
    const s8* pbVar10;

    if (super->z.WORD < 0) {
        gActiveScriptInfo.commandSize = 0;
        return;
    }
    this->unk_69++;
    super->collisionLayer = 1;
    Postman_MakeInteractable(this);
    pbVar10 = gUnk_0810A918[this->unk_68];
    pbVar10 += this->unk_69;
    do {
        switch ((s8)(pbVar10[0] + 5)) {
            case 5:
                pbVar10++;
                uVar9 = pbVar10[0];
                pbVar10++;
                iVar4 = (s32)Random() % uVar9;
                this->unk_68 = pbVar10[iVar4];
                this->unk_69 = 0;
                return;
            case 4:
                this->unk_6a = 300;
                break;
            case 3:
                super->collisionLayer = 1;
                break;
            case 2:
                super->collisionLayer = 2;
                break;
            case 1:
                context->wait = 0x1e;
                super->spriteSettings.draw = 0;
                break;
            case 0:
                pbVar10++;
                uVar9 = *pbVar10++;
                local_24 = ((s32)Random()) % uVar9;

                for (uVar6 = 0; uVar6 < uVar9; uVar6++) {
                    this->unk_68 = pbVar10[local_24];
                    cVar2 = gUnk_0810A918[this->unk_68][0];
                    ptr = &gUnk_0810A66C[cVar2];
                    super->x.HALF_U.HI = gRoomControls.origin_x + ptr->HALF.x;
                    super->y.HALF_U.HI = gRoomControls.origin_y + ptr->HALF.y;
                    if (CheckOnScreen(super) == 0)
                        break;
                    local_24 = (s32)(local_24 + 1) % uVar9;
                }
                this->unk_69 = 0;
                return;
            default:
                return;
        }
        this->unk_69++;
        pbVar10++;
    } while (TRUE);
}

void sub_080608E4(PostmanEntity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (super->z.WORD >= 0) {
        if ((super->collisionLayer != 1 || gPlayerEntity.base.collisionLayer != 2) &&
            (super->collisionLayer != 2 || gPlayerEntity.base.collisionLayer != 1)) {
            const Rect* ptr = &gUnk_0810AA70[context->intVariable][super->animationState >> 1];
            u32 x = super->x.HALF.HI + ptr->x;
            u32 y = super->y.HALF.HI + ptr->y;
            x = gPlayerEntity.base.x.HALF.HI - x;
            y = gPlayerEntity.base.y.HALF.HI - y;
            x += ptr->width;
            y += ptr->height;
            if (ptr->width * 2 > x && ptr->height * 2 > y) {
                context->condition = 1;
                this->unk_6a += 2;
            }
        }
    }
}

void Postman_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
