/**
 * @file cutsceneMiscObject.c
 * @ingroup Objects
 *
 * @brief Cutscene Misc object
 */
#define NENT_DEPRECATED
#include "area.h"
#include "functions.h"
#include "item.h"
#include "message.h"
#include "object.h"
#include "screen.h"
#include "script.h"

extern u8 gUnk_08122AE0[];
extern u16 gUnk_08122AE8[];
extern s8 gUnk_08122AF8[]; // TODO struct s8XY
extern u16 gUnk_08122B00[];
extern s16 gUnk_08122B0E[];
extern u16 gUnk_08122B1E[];
extern Coords8 gUnk_08122B2E[]; // TODO struct xy
typedef struct {
    Hitbox hit;
    u8 _8[4]; // TODO fourth param of SetInteractableObjectCollision
    u8 _c;
} HitboxCfg;
extern HitboxCfg gUnk_08122B3C[];

// npcUtils.c
extern u8 gUnk_08114F30[];
extern u8 gUnk_08114F34[];

// TODO use Script type
extern u16 script_CutsceneMiscObjectTheLittleHat;
extern u16 script_CutsceneMiscObjectSwordInChest;
extern u16 script_08015B14;
extern u16 script_ZeldaMagic;
extern u16 script_08012C48;

typedef struct {
    Entity base;
    u16 px, py, pz;
    u8 off;
    u8 fill[0x14];
    void* ctx;
} CutsceneMiscObjectEntity;

typedef struct {
    u16 arr[8];
    u8 filler[4];
    u16 my_x, my_y;
    u8 fill[4];
    u16 parent_x, parent_y;
} Type15Vars;

typedef struct {
    Entity base;
    Type15Vars vars;
} CutsceneMiscObjectEntityType15;

typedef struct {
    Entity base;
    u8 fill[0x1C];
    u32 anim;
} Type1F;

typedef void(CutsceneMiscObjectTypeAction)(CutsceneMiscObjectEntity*);

CutsceneMiscObjectTypeAction sub_08094A5C;
CutsceneMiscObjectTypeAction sub_08094A90;
CutsceneMiscObjectTypeAction sub_08094C30;
CutsceneMiscObjectTypeAction sub_08094C88;
CutsceneMiscObjectTypeAction sub_08094D94;
CutsceneMiscObjectTypeAction sub_08094E30;
CutsceneMiscObjectTypeAction sub_08094FA8;
CutsceneMiscObjectTypeAction sub_08095088;
CutsceneMiscObjectTypeAction sub_08095120;
CutsceneMiscObjectTypeAction sub_08095188;
CutsceneMiscObjectTypeAction sub_080951C4;
CutsceneMiscObjectTypeAction sub_08095288;
CutsceneMiscObjectTypeAction sub_080953A4;
CutsceneMiscObjectTypeAction sub_080953A4;
CutsceneMiscObjectTypeAction sub_080954DC;
CutsceneMiscObjectTypeAction sub_080956B4;
CutsceneMiscObjectTypeAction sub_0809577C;
CutsceneMiscObjectTypeAction sub_080957DC;
CutsceneMiscObjectTypeAction sub_0809584C;
CutsceneMiscObjectTypeAction sub_080958D8;
CutsceneMiscObjectTypeAction sub_08095918;
CutsceneMiscObjectTypeAction sub_08094C88;
CutsceneMiscObjectTypeAction sub_080959CC;
CutsceneMiscObjectTypeAction sub_08095A8C;
CutsceneMiscObjectTypeAction sub_08095B48;
CutsceneMiscObjectTypeAction sub_08095C00;
CutsceneMiscObjectTypeAction sub_080953A4;
CutsceneMiscObjectTypeAction sub_08095C68;
CutsceneMiscObjectTypeAction sub_08095CE0;
CutsceneMiscObjectTypeAction sub_08095CE0;
CutsceneMiscObjectTypeAction sub_08095DBC;
CutsceneMiscObjectTypeAction sub_08095F38;
CutsceneMiscObjectTypeAction sub_08096058;
CutsceneMiscObjectTypeAction sub_08096058;
CutsceneMiscObjectTypeAction sub_08094A90;
CutsceneMiscObjectTypeAction sub_08096084;
CutsceneMiscObjectTypeAction sub_08096084;
CutsceneMiscObjectTypeAction sub_08096168;
CutsceneMiscObjectTypeAction sub_080961F4;
CutsceneMiscObjectTypeAction sub_080961F4;
CutsceneMiscObjectTypeAction sub_080961F4;
CutsceneMiscObjectTypeAction sub_08096284;
CutsceneMiscObjectTypeAction sub_08096290;

void sub_08095754(CutsceneMiscObjectEntity*);
void sub_080957B4(CutsceneMiscObjectEntity*);
void sub_08095954(CutsceneMiscObjectEntity*);
void sub_08095D30(CutsceneMiscObjectEntity*, u32);

static void sub_0809629C(CutsceneMiscObjectEntity*, u32);

void CutsceneMiscObject(Entity* this) {
    static CutsceneMiscObjectTypeAction* const sTypeTable[] = {
        sub_08094A5C, sub_08094A90, sub_08094C30, sub_08094C88, sub_08094D94, sub_08094E30, sub_08094FA8, sub_08095088,
        sub_08095120, sub_08095188, sub_080951C4, sub_08095288, sub_080953A4, sub_080953A4, sub_080954DC, sub_080956B4,
        sub_0809577C, sub_080957DC, sub_0809584C, sub_080958D8, sub_08095918, sub_08094C88, sub_080959CC, sub_08095A8C,
        sub_08095B48, sub_08095C00, sub_080953A4, sub_08095C68, sub_08095CE0, sub_08095CE0, sub_08095DBC, sub_08095F38,
        sub_08096058, sub_08096058, sub_08094A90, sub_08096084, sub_08096084, sub_08096168, sub_080961F4, sub_080961F4,
        sub_080961F4, sub_08096284, sub_08096290,
    };
    sTypeTable[this->type]((CutsceneMiscObjectEntity*)this);
}

void sub_08094A5C(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        sub_0807DD64(super);
        InitializeAnimation(super, 4);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
}

void sub_08094A90(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(super);
        super->spriteRendering.b3 = gUnk_08114F30[super->spriteRendering.b3];
        InitAnimationForceUpdate(super, 0);
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
}

void sub_08094AE8(Entity* this, ScriptExecutionContext* ctx) {
    CutsceneMiscObjectEntity* e = (CutsceneMiscObjectEntity*)CreateObject(CUTSCENE_MISC_OBJECT, 1, 0);
    if (e != NULL) {
        e->ctx = StartCutscene(&e->base, (void*)ctx->intVariable);
    }
}

void sub_08094B0C(CutsceneMiscObjectEntity* this) {
    if (--super->z.HALF.HI <= -32)
        super->z.HALF.HI = -32;
    else
        gActiveScriptInfo.commandSize = 0;
}

void sub_08094B3C(CutsceneMiscObjectEntity* this) {
    super->z.WORD += Q_16_16(0.5);
    if (super->z.HALF.HI >= -13)
        super->z.HALF.HI = -13;
    else
        gActiveScriptInfo.commandSize = 0;
}

void sub_08094B6C(CutsceneMiscObjectEntity* this) {
    super->spritePriority.b1 = 0x3;
}

void sub_08094B80(CutsceneMiscObjectEntity* this) {
    super->spritePriority.b1 = 0x2;
}

void sub_08094B94(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x22, 0);
    if (e != NULL) {
        CopyPosition(&gPlayerEntity, e);
        e->z.HALF.HI = -48;
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, &script_CutsceneMiscObjectTheLittleHat);
        CreateDust(e);
        e->z.HALF.HI += 16;
        e->y.HALF.HI++;
    }
}

void sub_08094BE0(Entity* this) {
    Entity* e = FindEntity(OBJECT, CUTSCENE_MISC_OBJECT, 6, 0x22, 0);
    if (e != NULL) {
        CopyPosition(&gPlayerEntity, e);
        e->z.HALF.HI = -12;
        e->y.HALF.HI++;
        e->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(e);
        InitAnimationForceUpdate(e, 1);
    }
}

void sub_08094C30(CutsceneMiscObjectEntity* this) {
    Entity* p = super->parent;
    if (p == NULL || p->next == NULL)
        DeleteThisEntity();
    if (super->action == 0) {
        super->action++;
        SetDefaultPriority(super, PRIO_MESSAGE);
        super->spriteRendering.b3 = gUnk_08114F30[p->spriteRendering.b3];
        InitAnimationForceUpdate(super, 1);
    }
    CopyPosition(p, super);
    UpdateAnimationSingleFrame(super);
}

void sub_08094C88(CutsceneMiscObjectEntity* this) {
    u32 tmp;

    if (super->action != 0) {
        if (super->action & 0x80) {
            DeleteThisEntity();
            return;
        }
    } else {
        super->action++;
        super->spriteSettings.draw = 1;
        SetDefaultPriority(super, PRIO_NO_BLOCK);
        switch (super->type2) {
            case 0x40:
            case 0x41:
            case 0x42:
            case 0x43:
                SortEntityBelow(super, super);
        }
    }

    tmp = super->type;
    super->type = super->type2;
    sub_08080CB4(super);
    super->type = tmp;
}

void sub_08094CDC(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(0x6a, 3, 0x62);
    if (e != NULL) {
        e->x.HALF.HI = gRoomControls.origin_x + Q_8_8(7.0 / 8.0);
        e->y.HALF.HI = gRoomControls.origin_y + Q_8_8(2.345);
        SoundReq(324);
    }
}

void sub_08094D10(CutsceneMiscObjectEntity* this) {
    Entity* e = FindEntity(OBJECT, CUTSCENE_MISC_OBJECT, 6, 3, 98);
    if (e != NULL) {
        e->action = 0xFF;
    }
}

void sub_08094D34(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x15, 0xd);
    if (e != NULL) {
        e->x.HALF.HI = gRoomControls.origin_x + Q_8_8(1.0);
        e->y.HALF.HI = gRoomControls.origin_y + Q_8_8(2.345);
        SoundReq(324);
    }
}

void sub_08094D70(CutsceneMiscObjectEntity* this) {
    Entity* e = FindEntity(OBJECT, CUTSCENE_MISC_OBJECT, 6, 0x15, 0xd);
    if (e != NULL) {
        e->action = 0xFF;
    }
}

void sub_08094D94(CutsceneMiscObjectEntity* this) {
    u32 tmp;

    if (super->action != 0) {
        if (super->action & 0x80) {
            DeleteThisEntity();
            return;
        }
    } else {
        super->action++;
        super->spriteSettings.draw = 1;
        SetDefaultPriority(super, PRIO_NO_BLOCK);
        InitAnimationForceUpdate(super, 0);
    }
    UpdateAnimationSingleFrame(super);
}

void sub_08094DD8(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(0x6a, 0x4, 0);
    if (e != NULL) {
        e->x.HALF.HI = gRoomControls.origin_x + Q_8_8(15.0 / 16.0);
        e->y.HALF.HI = gRoomControls.origin_y + Q_8_8(2.345);
        SoundReq(324);
    }
}

void sub_08094E0C(CutsceneMiscObjectEntity* this) {
    Entity* e = FindEntity(OBJECT, CUTSCENE_MISC_OBJECT, 6, 4, 0);
    if (e != NULL) {
        e->action = 0xFF;
    }
}

void sub_08094E30(CutsceneMiscObjectEntity* this) {
    if (super->type2 == 0) {
        if ((gRoomTransition.frameCount % 32) == 0) {
            Entity* e = CreateObject(0x6A, 5, 1);
            if (e != NULL) {
                e->x.HALF.HI = gRoomControls.scroll_x + (s32)Random() % DISPLAY_WIDTH;
                e->y.HALF.HI = gRoomControls.scroll_y + (s32)Random() % DISPLAY_HEIGHT;
            }
        }
        return;
    }

    if (super->type2 == 1) {
        switch (super->action) {
            case 0:
                super->action++;
                super->z.WORD = Q_16_16(-160.0);
                super->zVelocity = 0;
                SetDefaultPriority(super, PRIO_PLAYER_EVENT);
                InitializeAnimation(super, 0);
                if (GetTileUnderEntity(super) == 13) {
                    super->action = 3;
                }
                break;
            case 1:
                super->z.WORD -= super->zVelocity;
                super->zVelocity -= Q_8_8(32.0);
                if (super->z.WORD > 0) {
                    super->action++;
                    super->z.WORD = 0;
                    super->zVelocity = 0;
                    InitializeAnimation(super, 1);
                    EnqueueSFX(SFX_LAVA_TILE_FLIP);
                }
                break;
            case 2:
                GetNextFrame(super);
                if (super->frame & ANIM_DONE) {
                    DeleteThisEntity();
                }
                break;
            case 3:
                super->z.WORD -= super->zVelocity;
                super->zVelocity -= Q_8_8(32.0);
                if (!CheckOnScreen(super)) {
                    DeleteThisEntity();
                }
                break;
        }
    } else if (super->action == 0) {
        super->action++;
        switch (super->timer) {
            case 1:
                InitializeAnimation(super, 2);
                break;
            case 2:
                super->spriteSettings.flipX = 1;
                InitializeAnimation(super, 0);
                break;
            case 0:
                InitializeAnimation(super, 0);
                break;
            case 3:
                super->spriteSettings.flipX = 1;
                InitializeAnimation(super, 2);
                break;
        }
    }
}

void sub_08094F98(CutsceneMiscObjectEntity* this) {
    CreateObject(CUTSCENE_MISC_OBJECT, 5, 0);
}

void sub_08094FA8(CutsceneMiscObjectEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->frameIndex = 0;
            super->spritePriority.b0 = 7;
            AddInteractableCheckableObject(super);
            break;
        case 1:
            if (super->interactType != 0) {
                super->interactType = 0;
                super->action = 2;
                RemoveInteractableObject(super);
                gPlayerState.queued_action = PLAYER_EMPTYBOTTLE;
                gPlayerState.field_0x38 = 54;
#ifndef EU
                SetPlayerControl(2);
#endif
            }
            break;
        case 2:
            if (GetInventoryValue(ITEM_QST_DOGFOOD) == 2) {
                super->action = 3;
                super->spriteSettings.draw = 1;
            }
            break;
        case 3:
            if (gPlayerEntity.action != PLAYER_EMPTYBOTTLE) {
                super->action = 4;
#ifndef EU
                if (!CheckGlobalFlag(BIN_DOGFOOD)) {
                    CreateItemEntity(ITEM_BOTTLE1, 0, 0);
                    SetGlobalFlag(BIN_DOGFOOD);
                    super->timer = 60;
                }
#else
                CreateItemEntity(ITEM_BOTTLE1, 0, 0);
#endif
            }
            break;
#ifndef EU
        case 4:
            if (!--super->timer) {
                super->action = 5;
                SetPlayerControl(1);
            }
            break;
#endif
    }
}

void sub_08095088(CutsceneMiscObjectEntity* this) {
    u32 tmp;

    switch (super->action) {
        case 0:
            if (GetInventoryValue(ITEM_JABBERNUT))
                DeleteThisEntity();
            super->action = 1;
            super->spritePriority.b0 = 7;
            AddInteractableCheckableObject(super);
            break;
        case 1:
            if (super->interactType != 0) {
                super->interactType = 0;
                super->action = 2;
                RemoveInteractableObject(super);
                CreateEzloHint(TEXT_INDEX(TEXT_BELARI, 0x1F), 0);
            }
            break;
        case 2:
            if ((gMessage.doTextBox & 0x7F) == 0) {
                CreateItemEntity(ITEM_JABBERNUT, 0, 0);
                DeleteThisEntity();
            }
            break;
    }
    tmp = super->type;
    super->type = 91;
    sub_08080CB4(super);
    super->type = tmp;
}

void sub_08095120(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        SetDefaultPriority(super, PRIO_NO_BLOCK);
        SortEntityBelow(super, super);
        sub_0807DD64(super);
        InitAnimationForceUpdate(super, 2);
    }
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
}

void sub_08095164(CutsceneMiscObjectEntity* this) {
    Entity* e = FindEntity(OBJECT, CUTSCENE_MISC_OBJECT, 6, 8, 0);
    if (e != NULL) {
        InitAnimationForceUpdate(e, 3);
    }
}

void sub_08095188(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        SetDefaultPriority(super, PRIO_NO_BLOCK);
        SortEntityBelow(super, super);
        sub_0807DD64(super);
        InitAnimationForceUpdate(super, 0);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
}

void sub_080951C4(CutsceneMiscObjectEntity* this) {
    Entity* p;

    if (super->action == 0) {
        super->action++;
        super->z.HALF.HI = -16;
        super->timer = 0;
        sub_0807DD64(super);
        InitializeAnimation(super, 3);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
    if (super->z.HALF.HI == 0) {
        super->z.WORD = 0;
        super->parent = NULL;
        if (super->timer == 0) {
            super->timer++;
            SoundReq(230);
        }
    }
    p = super->parent;
    if (p != NULL) {
        super->spriteSettings.draw = p->spriteSettings.draw;
        super->x.HALF.HI = p->x.HALF.HI + 16;
        super->y.HALF.HI = p->y.HALF.HI - 16;
    }
}

void sub_08095244(CutsceneMiscObjectEntity* this) {
    if (super->type == 0) {
        Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0xA, 0);
        if (e != NULL) {
            e->parent = super;
            PositionRelative(super, e, Q_16_16(16.0), -Q_16_16(16.0));
            ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, &script_CutsceneMiscObjectSwordInChest);
        }
    }
}

void sub_08095288(CutsceneMiscObjectEntity* this) {
    Entity* p;

    if (super->action == 0) {
        super->action++;
        super->subAction = 0;
        SetDefaultPriority(super, PRIO_NO_BLOCK);
        InitAnimationForceUpdate(super, 0);
    }
    if (super->subAction != 0) {
        if ((u32)sub_080044EC(super, 0x1800) <= 1) {
            super->subAction = 0;
            SetAffineInfo(super, 0x100, 0x100, 0xC000);
        } else {
            SetAffineInfo(super, 0x100, 0x100, super->timer << 8);
            super->timer += 10;
            LinearMoveUpdate(super);
        }
    }
    p = super->child;
    if (p != NULL) {
        CopyPosition(p, super);
    }
    UpdateAnimationSingleFrame(super);
    p = super->parent;
    if (p != NULL) {
        super->spriteSettings.draw = p->spriteSettings.draw;
        if (p->next == NULL)
            DeleteThisEntity();
    } else {
        DeleteThisEntity();
    }
}

void sub_08095330(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0xB, 0);
    if (e != NULL) {
        super->child = e;
        e->child = super;
        e->parent = super;
        CopyPosition(super, e);
        e->z.HALF.HI = -16;
        SortEntityAbove(e, e);
    }
}

void sub_08095364(CutsceneMiscObjectEntity* this) {
    Entity* e = super->child;
    if (e != NULL) {
        e->frameIndex = 2;
        e->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(e);
        e->child = NULL;
        e->subAction = 1;
        e->z.HALF.HI = -16;
        e->direction = 7;
        e->zVelocity = Q_16_16(3.0);
        e->speed = 128;
        InitAnimationForceUpdate(e, 1);
    }
}

void sub_080953A4(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->z.HALF.HI = -16;
        SetDefaultPriority(super, PRIO_MESSAGE);
        super->spriteRendering.b3 = gUnk_08114F30[super->spriteRendering.b3];
        SortEntityAbove(super, super);
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
    if (super->type == 13) {
        u32 x = 0;
        u32 y = 0x139;
        ChangeObjPalette(super, super->frameSpriteSettings & 1 ? x : y);
    }
}

void sub_08095420(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0xC, 0);
    if (e != NULL) {
        PositionRelative(super, e, 0, Q_16_16(-16));
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
}

void nullsub_527(CutsceneMiscObjectEntity* this) {
}

void sub_0809545C(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* p = CreateObject(CUTSCENE_MISC_OBJECT, 0xD, 0);
    Entity* e;
    if (p != NULL) {
        PositionRelative(super, p, 0, Q_16_16(-16));
        ((CutsceneMiscObjectEntity*)p)->ctx = StartCutscene(p, (u16*)ctx->intVariable);
        e = CreateObject(CUTSCENE_MISC_OBJECT, 2, 0);
        if (e != NULL) {
            CopyPosition(p, e);
            e->parent = p;
        }
    }
}

void sub_080954AC(CutsceneMiscObjectEntity* this, u32 arg2) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x1A, 0);
    if (e != NULL) {
        CopyPosition(super, e);
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, &script_08015B14);
    }
}

void sub_080954DC(CutsceneMiscObjectEntity* this) {
    switch (super->action) {
        case 0:
            if (super->timer != 0) {
                super->timer--;
            } else {
                super->action++;
                super->subAction = 0;
                super->spriteSettings.draw = 1;
                super->z.HALF.HI = 0;
                super->spritePriority.b0 = 1;
                this->px = super->x.HALF.HI;
                this->py = super->y.HALF.HI;
                this->pz = 0;
                this->off = gUnk_08122AE0[super->type2];
                ChangeObjPalette(super, gUnk_08122AE8[super->type2]);
                sub_0807DD64(super);
                InitializeAnimation(super, super->type2 + 2);
                sub_08095754(this);
                SoundReq((s32)Random() % 6 + 0x1BC);
            }
            break;
        case 1:
            if (--super->z.HALF.HI <= -16) {
                super->action++;
                super->z.HALF.HI = -16;
            }
            break;
        case 2:
            if (++this->pz > 0x40)
                this->pz = 0x40;
            super->x.HALF.HI = (gSineTable[this->off + 64] * (this->pz << 8)) >> 16;
            super->y.HALF.HI = (gSineTable[this->off] * (this->pz << 7)) >> 16;
            super->x.HALF.HI += this->px;
            super->y.HALF.HI += this->py;
            break;
        case 3:
            LinearMoveAngle(super, super->speed, super->direction);
            break;
    }
    this->off += 4;
    if (super->subAction != 0 && !CheckOnScreen(super))
        DeleteThisEntity();
    if (super->direction & 0x80)
        super->spriteSettings.flipX = 0;
    else
        super->spriteSettings.flipX = 1;
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
}

void sub_0809567C(CutsceneMiscObjectEntity* this) {
    super->action = 3;
    super->subAction = 1;
    super->speed = 0x400;
    super->direction = sub_080045DA(super->x.WORD - ((s16)this->px << 16), super->y.WORD - ((s16)this->py << 16));
}

void sub_080956B4(CutsceneMiscObjectEntity* this) {
    Entity* p;
    u16* p1;
    u16* p2;
    Type15Vars* tmp;

    if (super->action == 0) {
        s32 i;
        u16* p;
        u32 x;
        u32 y;

        super->action++;
        InitializeAnimation(super, 0);
        // p = this->v.arr;
        asm("mov r4, r5");
        asm("add r4, #0x68");
        x = super->x.HALF_U.HI;
        y = super->y.HALF_U.HI;
        for (i = 0; i < 8; i++) {
            *p++ = x;
            *p++ = y;
        }
    }
    GetNextFrame(super);
    if ((super->type2 + gRoomTransition.frameCount) % 16 == 0)
        sub_080957B4(this);
    p = super->parent;
    if (p != NULL) {
        super->spriteSettings.draw = p->spriteSettings.draw;
        if (p->next == NULL) {
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }
    tmp = &((CutsceneMiscObjectEntityType15*)this)->vars;
    MemCopy(&tmp->arr[2], &tmp->arr[0], 0x1C);
    super->x.HALF.HI = tmp->my_x;
    super->y.HALF.HI = tmp->my_y;
    super->z.HALF.HI = p->z.HALF.HI;
    tmp->parent_x = p->x.HALF.HI;
    tmp->parent_y = p->y.HALF.HI;
}

void sub_08095754(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0xF, super->type2);
    if (e != NULL) {
        e->parent = super;
        CopyPosition(super, e);
        SortEntityBelow(super, e);
    }
}

void sub_0809577C(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->z.HALF.HI = -16;
        InitializeAnimation(super, 1);
    }
    GetNextFrame(super);
    if (super->frame & ANIM_DONE)
        DeleteThisEntity();
}

void sub_080957B4(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x10, 0);
    if (e != NULL) {
        e->parent = super;
        CopyPosition(super, e);
        SortEntityBelow(super, e);
    }
}

void sub_080957DC(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        sub_0807DD64(super);
        InitAnimationForceUpdate(super, 0);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
}

void sub_08095810(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x11, 0);
    if (e != NULL) {
        e->parent = super;
        CopyPosition(super, e);
        SortEntityAbove(super, e);
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, &script_ZeldaMagic);
    }
}

void sub_0809584C(CutsceneMiscObjectEntity* this) {
    u32 tmp, idx;

    idx = super->health;
    if ((idx & 0x7F) != 0 && !ReadBit((u32*)gArea.filler6, idx - 1))
        DeleteThisEntity();
    if (super->timer != 0 && CheckKinstoneFused(super->type2))
        DeleteThisEntity();
    if (super->action == 0) {
        super->action++;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(super);
        super->spriteRendering.b3 = gUnk_08114F30[super->spriteRendering.b3];
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    tmp = super->type;
    super->type = 92;
    sub_08080CB4(super);
    super->type = tmp;
}

void sub_080958D8(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
    if (super->frame & 1)
        sub_08095954(this);
}

void sub_08095918(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        SetDefaultPriority(super, PRIO_PLAYER_EVENT);
        sub_0807DD64(super);
        InitializeAnimation(super, 0);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
}

void sub_08095954(CutsceneMiscObjectEntity* this) {
    typedef struct {
        s8 x, y;
    } s8XY;

    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x14, 0);
    if (e != NULL) {
        u32 tmp, x, y;
        e->parent = super;
        tmp = super->animationState;
        x = ((s8XY*)(&gUnk_08122AF8[tmp]))->x << 16;
        y = ((s8XY*)(&gUnk_08122AF8[tmp]))->y << 16;
        PositionRelative(super, e, x, y);
        e->z.HALF.HI = -3;
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, &script_08012C48);
        EnqueueSFX(SFX_124);
        super->frame &= ~1;
    } else {
        gActiveScriptInfo.syncFlags |= 0x100;
    }
}

void sub_080959CC(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 0;
        SetDefaultPriority(super, PRIO_NO_BLOCK);
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
    sub_08095D30(this, super->frame & ~0x80);
}

void sub_08095A1C(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x16, 0);
    if (e != NULL) {
        e->x.HALF.HI = gRoomControls.origin_x + 232;
        e->y.HALF.HI = gRoomControls.origin_y + 312;
        e->z.HALF.HI = -4;
        e->collisionLayer = 2;
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
}

void sub_08095A68(CutsceneMiscObjectEntity* this) {
    Entity* e = FindEntity(6, CUTSCENE_MISC_OBJECT, 6, 0x16, 0);
    if (e != NULL) {
        e->action = 0xFF;
    }
}

void sub_08095A8C(CutsceneMiscObjectEntity* this) {
    switch (super->action) {
        case 0:
            super->action++;
            super->frameIndex = 0;
            sub_0807DD64(super);
        case 1:
            ExecuteScriptForEntity(super, 0);
            HandleEntity0x82Actions(super);
            break;
        case 2:
            super->action++;
            super->timer = 120;
        case 3:
            super->spriteSettings.draw ^= 1;
            if (--super->timer == 0) {
                super->action = 1;
                super->spriteSettings.draw = 1;
            }
            break;
        case 4:
            super->action++;
            super->timer = 120;
        case 5:
            super->spriteSettings.draw ^= 1;
            if (--super->timer == 0) {
                super->action = 1;
                super->spriteSettings.draw = 0;
            }
            break;
    }
}

void sub_08095B48(CutsceneMiscObjectEntity* this) {
    Entity* p;
    u32 tmp;

    if (super->action == 0) {
        super->action++;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(super);
        super->spriteRendering.b3 = gUnk_08114F30[super->spriteRendering.b3];
    }
    super->spriteSettings.draw = 0;
    p = super->parent;
    if (p != NULL) {
        if ((p->frame & 0x40) == 0) {
            if (p->frame & ANIM_DONE) {
                DeleteThisEntity();
                return;
            }
        } else {
            s8* data;
            super->spriteSettings.draw = 1;
            data = GetSpriteSubEntryOffsetDataPointer((u16)p->spriteIndex, p->frameIndex);
            super->spriteOffsetX = data[0];
            super->spriteOffsetY = data[1];
        }
    }
    tmp = super->type;
    super->type = super->type2;
    sub_08080CB4(super);
    super->type = tmp;
}

void sub_08095BE0(CutsceneMiscObjectEntity* this, u32 val) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x18, val);
    if (e != NULL) {
        e->parent = super;
        CopyPosition(super, e);
    }
}

void sub_08095C00(CutsceneMiscObjectEntity* this) {
    if (super->action & 0x80) {
        DeleteThisEntity();
    } else {
        Entity* p = super->parent;
        if (p != NULL) {
            super->spriteVramOffset = 232;
            if (p->spriteSettings.draw == 1)
                super->spriteSettings.draw = 0;
            else
                super->spriteSettings.draw = 1;
        }
    }
}

void sub_08095C48(Entity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x19, 0);
    if (e != NULL) {
        this->child = e;
        e->parent = this;
        CopyPosition(this, e);
    }
}

void sub_08095C68(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        sub_080042D0(super, super->frameIndex, (u16)super->spriteIndex);
    }
    if (super->timer != 0) {
        if (--super->timer < 8) {
            super->spriteSettings.draw ^= 1;
        }
        if (super->timer != 0) {
            return;
        }
    }
    DeleteThisEntity();
}

void sub_08095CB0(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x1B, 0);
    if (e != NULL) {
        super->child = e;
        e->parent = super;
        CopyPosition(super, e);
        e->timer = 16;
        e->frameIndex = super->frameIndex;
        e->lastFrameIndex = super->frameIndex;
    }
}

void sub_08095CE0(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 0;
        SetDefaultPriority(super, PRIO_PLAYER_EVENT);
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
    sub_08095D30(this, super->frame & ~0x80);
}

void sub_08095D30(CutsceneMiscObjectEntity* this, u32 a2) {
    if (a2 != 0)
        ChangeObjPalette(super, gUnk_08122B00[a2] & ~0x80);
}

void sub_08095D54(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x1C, 0);
    if (e != NULL) {
        CopyPosition(&gPlayerEntity, e);
        e->collisionLayer = 2;
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
}

void sub_08095D8C(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x1D, 0);
    if (e != NULL) {
        CopyPosition(super, e);
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
}

void sub_08095DBC(CutsceneMiscObjectEntity* this) {
    if (gActiveScriptInfo.syncFlags & 0x10)
        DeleteThisEntity();
    if (super->type2 == 0) {
        if (super->action == 0) {
            super->action++;
            sub_0807DD64(super);
        }
        ExecuteScriptForEntity(super, 0);
    } else {
        if (super->action == 0) {
            super->action++;
            super->spriteSettings.draw = 1;
            InitializeAnimation(super, 75);
            super->spriteRendering.b3 = gUnk_08114F30[super->spriteRendering.b3];
            SortEntityAbove(super, super);
        }
        if ((super->type2 & 0x80) == 0 && gActiveScriptInfo.syncFlags & 0x20000) {
            super->type2 = -1;
            super->zVelocity = Q_16_16(4.0);
            super->speed = Q_8_8(192);
        }
        GravityUpdate(super, super->speed);
        GetNextFrame(super);
        if (!CheckOnScreen(super))
            DeleteThisEntity();
    }
}

void sub_08095E7C(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x1E, 0);
    if (e != NULL) {
        CopyPosition(super, e);
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
}

void sub_08095EAC(Entity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x1E, 1);
    s32 x;
    s16 y;
    s32 a, b, speed;
    s32 vel;

    if (e != NULL) {
        if (ctx->intVariable == 0) {
            a = 0x10;
            b = 0x1F;
            vel = Q_16_16(0.25);
            speed = 0;
        } else {
            a = 0x8;
            b = 0xF;
            vel = Q_16_16(4);
            speed = gUnk_08122B0E[Random() & 7];
            e->type2 = -1;
        }

        x = (a - (Random() & b));
        y = (a - (Random() & b));
        PositionRelative(this, e, x << 16, y << 16);
        e->zVelocity = vel;
        e->speed = speed;
    }
}

#define local ((Type1F*)this)
void sub_08095F38(CutsceneMiscObjectEntity* this) {
    u32 tmp;

    if (super->action == 0) {
        u32 pal;

        super->action = 1;
        super->frameIndex = -1;
        switch (super->type2) {
            case 3:
                pal = 0;
                break;
            case 4:
                pal = 1;
                break;
            case 6:
                pal = 4;
                break;
        }
        ChangeObjPalette(super, pal);
        if ((gPlayerEntity.frame & 1) == 0) {
            local->anim = 0x8BF;
            super->timer = 52;
            super->subtimer = -75;
        } else {
            local->anim = 0x8E3;
            super->timer = 85;
            super->subtimer = -42;
        }
        CopyPosition(&gPlayerEntity, super);
        super->spritePriority.b0 = 3;
    }
    if (gPlayerEntity.frame & 0x10) {
        gPlayerEntity.frame &= ~0x10;
        SoundReq(468);
    }
    if ((u16)gPlayerEntity.spriteIndex != local->anim >> 8 || gPlayerEntity.animIndex != (u8)local->anim)
        DeleteThisEntity();
    tmp = gPlayerEntity.frameIndex - super->timer + super->subtimer;
    if (tmp != super->frameIndex) {
        super->frameIndex = tmp;
        sub_080042D0(super, super->frameIndex, (u16)super->spriteIndex);
    }
}

void sub_08096028(CutsceneMiscObjectEntity* this) {
    u32 type2 = 6;
    if (!CheckLocalFlagByBank(FLAG_BANK_3, 123))
        type2 = 4;
    if (!CheckLocalFlagByBank(FLAG_BANK_3, 122))
        type2 = 3;
    CreateObject(CUTSCENE_MISC_OBJECT, 0x1F, type2);
}

void sub_08096058(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
}

void sub_08096084(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        sub_0807DD64(super);
        InitializeAnimation(super, super->type2);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
    if (super->parent != NULL) {
        CopyPosition(super->parent, super);
    }
}

void sub_080960C4(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x23, 0x49);
    if (e != NULL) {
        e->parent = super;
        CopyPosition(super, e);
        e->spriteRendering.b3 = gUnk_08114F34[super->spriteRendering.b3];
        SortEntityBelow(super, e);
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
    e = CreateObject(CUTSCENE_MISC_OBJECT, 0x24, 0x4A);
    if (e != NULL) {
        e->parent = super;
        CopyPosition(super, e);
        e->spriteRendering.b3 = gUnk_08114F30[super->spriteRendering.b3];
        SortEntityAbove(super, e);
        e->collisionLayer = 2;
        ((CutsceneMiscObjectEntity*)e)->ctx = StartCutscene(e, (u16*)ctx->intVariable);
    }
}

void sub_08096168(CutsceneMiscObjectEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 75);
    }
    GetNextFrame(super);
    LinearMoveAngle(super, super->speed, super->direction);
    if (!CheckOnScreen(super))
        DeleteThisEntity();
}

void sub_080961B0(CutsceneMiscObjectEntity* this) {
    int i;
    for (i = 0; i < 8; ++i) {
        Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x25, 0);
        if (e != NULL) {
            CopyPosition(super, e);
            e->direction = 32 * i;
            e->speed = (Random() & 0x1F0) + gUnk_08122B1E[i];
        }
    }
}

void sub_080961F4(CutsceneMiscObjectEntity* this) {
    super->spriteSettings.draw = 1;
    super->frameIndex = 0;
}

void sub_08096208(CutsceneMiscObjectEntity* this, u32 x) {
    Coords8* p = &gUnk_08122B2E[x];
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x26, 0);
    if (e != NULL) {
        PositionRelative(super, e, Q_16_16(p->x), Q_16_16(p->y));
    }
}

void sub_0809623C(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x27, 0);
    if (e != NULL) {
        PositionRelative(super, e, 0, Q_16_16(-16.0));
    }
}

void sub_08096260(CutsceneMiscObjectEntity* this) {
    Entity* e = CreateObject(CUTSCENE_MISC_OBJECT, 0x28, 0);
    if (e != NULL) {
        PositionRelative(super, e, 0, Q_16_16(-16.0));
    }
}

void sub_08096284(CutsceneMiscObjectEntity* this) {
    sub_0809629C(this, 0xd);
}

void sub_08096290(CutsceneMiscObjectEntity* this) {
    sub_0809629C(this, 0xe);
}

void sub_0809629C(CutsceneMiscObjectEntity* this, u32 type) {
    u32 tmp;

    if (super->action == 0) {
        super->action = 1;
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GravityUpdate(super, Q_8_8(16.0));
    tmp = super->type;
    super->type = type;
    sub_08080CB4(super);
    super->type = tmp;
}

void sub_080962D8(CutsceneMiscObjectEntity* this) {
    SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x100);
}

void sub_080962E8(CutsceneMiscObjectEntity* this) {
    SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x100);
}

void sub_080962F8(CutsceneMiscObjectEntity* this, ScriptExecutionContext* ctx) {
    HitboxCfg* cfg = &gUnk_08122B3C[ctx->intVariable];
    SetInteractableObjectCollision(super, 1, cfg->_c, cfg->_8);
    super->hitbox = &cfg->hit;
}
