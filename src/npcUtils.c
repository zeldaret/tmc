#include "global.h"
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "definitions.h"
#include "save.h"
#include "npc.h"
#include "kinstone.h"
#include "hitbox.h"

extern const NPCDefinition gNPCDefinitions[];

typedef struct {
    u16 textIndex;
    u16 cancelledTextIndex;
    u16 fusingTextIndex;
} NPCData;
extern NPCData* gUnk_08001A7C[];

u32 sub_0806EF88(Entity*);
u32 sub_0806EE70(Entity*);
u32 sub_0806EED0(Entity*);
u32 sub_0806EEF4(Entity*);
u32 sub_0806EFAC(Entity*, u16*);
u32 sub_0806EFBC(Entity*, u16*);
u32 sub_0806EFCC(Entity*, u16*);
u32 sub_0806EFDC(Entity*, u16*);
u32 sub_0806F014(Entity*, u16*);
u32 sub_0806F02C(Entity*, u16*);
u32 sub_0806F048(Entity*, u16*);
u32 sub_0806F050(Entity*, u16*);
u32 sub_0806F064(Entity*, u16*);

static void sub_0806EF14(Entity*);
static void sub_0806EF4C(Entity*, u16*);
static u32 sub_0806EF74(Entity*, u32);

void sub_0806EC20(Entity* ent) {
    Entity* e = CreateNPC(NPC_UNK_58, 0, 0);
    if (e != NULL) {
        e->parent = ent;
    }
}

void sub_0806EC38(void) {
    Entity* e = FindEntityByID(NPC, NPC_UNK_58, 7);
    if (e != NULL)
        DeleteEntity(e);
}

static const NPCDefinition* GetNPCDefinition(Entity* this) {
    const NPCDefinition* definition = &gNPCDefinitions[this->id];
    if (definition->bitfield.type == 2) {
        definition = &definition->data.definition[this->type];
    }
    return definition;
}

void NPCInit(Entity* this) {
    static const Hitbox* const gNPCHitboxes[] = {
        NULL, &gHitbox_2, &gHitbox_30, &gHitbox_2, &gHitbox_3, &gHitbox_31,
    };
    u32 tmp;
    u32 tmp2;

    if ((this->flags & ENT_DID_INIT) == 0) {
        const NPCDefinition* definition = GetNPCDefinition(this);
        if (definition->bitfield.type == 0) {
            // No sprite for this NPC
            this->flags |= ENT_DID_INIT;
        } else {
            tmp = definition->bitfield.gfx;
            switch (definition->bitfield.gfx_type) {
                case 2:
                    this->spriteVramOffset = definition->bitfield.gfx;
                    break;
                case 1:
                    LoadSwapGFX(this, tmp, 0);
                    break;
                default:
                    LoadFixedGFX(this, tmp);
                    break;
            }
            tmp = definition->data.sprite.paletteIndex;
            LoadObjPalette(this, tmp);
            this->spriteIndex = definition->data.sprite.spriteIndex;
            this->spriteSettings.shadow = definition->data.sprite.shadow;
            this->spritePriority.b1 = definition->data.sprite.spritePriority;
            this->spriteSettings.draw = definition->data.sprite.draw;
            this->hitbox = (Hitbox*)gNPCHitboxes[definition->bitfield.hitbox];
            this->flags |= ENT_DID_INIT;
            tmp2 = 0xff;
            this->animIndex = tmp2;
            this->frameIndex = tmp2;
            UpdateSpriteForCollisionLayer(this);
        }
    }
}

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter) {
    Entity* entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = NPC;
        entity->id = subtype;
        entity->type = form;
        entity->type2 = parameter;
        AppendEntityToList(entity, 7);
    }
    return entity;
}

u32 sub_0806ED78(Entity* ent) {
    u32 result = sub_0800445C(ent);
    if (result) {
        if (gPlayerState.dash_state & 0x40) {
            PutAwayItems();
        }
    }
    return result;
}

s32 GetAnimationStateInRectRadius(Entity* ent, u32 x, u32 y) {
    s32 anim = -1;
    if (EntityInRectRadius(ent, &gPlayerEntity.base, x, y))
        anim = GetAnimationState(ent);
    return anim;
}

u32 GetAnimationState(Entity* ent) {
    u32 direction = GetFacingDirection(ent, &gPlayerEntity.base);
    return GetAnimationStateForDirection4(direction);
}

s32 GetFacingDirectionInRectRadius(Entity* ent, u32 x, u32 y) {
    s32 dir = -1;
    if (EntityInRectRadius(ent, &gPlayerEntity.base, x, y))
        dir = GetFacingDirection(ent, &gPlayerEntity.base);
    return dir;
}

void sub_0806EE04(Entity* ent, void* a2, u32 a3) {
    ent->child = a2;
    ent->collisionFlags = a3;
    ent->hitType = 0;
    ent->knockbackSpeed = 0;
    ent->carryFlags = 0;
}

u32 sub_0806EE20(Entity* ent) {
    static u32 (*const gUnk_08114EFC[])(Entity*) = {
        sub_0806EF88,
        sub_0806EE70,
        sub_0806EED0,
        sub_0806EEF4,
    };
    u32 v3;

    if (!ent->interactType) {
        if (ent->child != NULL)
            return gUnk_08114EFC[ent->carryFlags](ent);
    } else {
        ent->knockbackSpeed = 8;
        v3 = GetFacingDirection(ent, &gPlayerEntity.base);
        ent->knockbackDirection = GetAnimationStateForDirection4(v3);
    }
    return 0;
}

u32 sub_0806EE70(Entity* ent) {
    s32 tmp1;
    s32 tmp2;
    u32 result;
    u16 xy[2];

    if (++ent->knockbackSpeed > 8) {
        ent->knockbackSpeed = 0;
        sub_0806EF14(ent);
    }
    LinearMoveUpdate(ent);
    sub_0806EF4C(ent, xy);
    tmp1 = sub_080041DC(ent, xy[0], xy[1]);
    tmp2 = ent->speed;
    if (tmp2 < 0)
        tmp2 = -tmp2;
    if ((u32)tmp2 / 8 <= tmp1)
        result = 0;
    else
        result = sub_0806EF74(ent, 3);
    return result;
}

u32 sub_0806EED0(Entity* ent) {
    if (!--ent->knockbackSpeed)
        return sub_0806EF74(ent, 2);
    return 0;
}

u32 sub_0806EEF4(Entity* ent) {
    if (ent->frame & ANIM_DONE)
        return sub_0806EF74(ent, 1);
    return 0;
}

static void sub_0806EF14(Entity* ent) {
    u16 xy[2];
    sub_0806EF4C(ent, xy);
    ent->direction = sub_080045B4(ent, xy[0], xy[1]);
    if ((ent->collisionFlags & 1) == 0)
        ent->knockbackDirection = GetAnimationStateForDirection4(ent->direction);
}

static void sub_0806EF4C(Entity* ent, u16* xy) {
    u16* src = &((u16*)ent->child)[ent->hitType];
    xy[0] = gRoomControls.origin_x + src[1];
    xy[1] = gRoomControls.origin_y + src[2];
}

static u32 sub_0806EF74(Entity* ent, u32 a2) {
    ent->hitType += a2;
    return sub_0806EF88(ent);
}

u32 sub_0806EF88(Entity* ent) {
    static u32 (*const gUnk_08114F0C[])(Entity*, u16*) = {
        sub_0806EFAC, sub_0806EFBC, sub_0806EFCC, sub_0806EFDC, sub_0806F014,
        sub_0806F02C, sub_0806F048, sub_0806F050, sub_0806F064,
    };
    u8* v1 = (u8*)&((u16*)ent->child)[ent->hitType];
    return gUnk_08114F0C[*v1](ent, (u16*)v1);
}

u32 sub_0806EFAC(Entity* ent, u16* a2) {
    ent->hitType = 0;
    return sub_0806EF88(ent);
}

u32 sub_0806EFBC(Entity* ent, u16* a2) {
    ent->carryFlags = 1;
    ent->knockbackSpeed = 8;
    return 0;
}

u32 sub_0806EFCC(Entity* ent, u16* a2) {
    ent->carryFlags = 2;
    ent->knockbackSpeed = a2[1];
    return 0;
}

u32 sub_0806EFDC(Entity* ent, u16* a2) {
    if (*a2 >> 8) {
        ent->collisionFlags &= ~1;
    } else {
        ent->collisionFlags |= 1;
    }
    ent->hitType++;
    return sub_0806EF88(ent);
}

u32 sub_0806F014(Entity* ent, u16* a2) {
    ent->speed = a2[1];
    ent->hitType += 2;
    return sub_0806EF88(ent);
}

u32 sub_0806F02C(Entity* ent, u16* a2) {
    ent->knockbackDirection = *a2 >> 8;
    ent->hitType++;
    return sub_0806EF88(ent);
}

u32 sub_0806F048(Entity* ent, u16* a2) {
    ent->carryFlags = 3;
    return 0;
}

u32 sub_0806F050(Entity* ent, u16* a2) {
    (u16*)ent->child = a2 + 1;
    ent->hitType = 0;
    return sub_0806EF88(ent);
}

u32 sub_0806F064(Entity* ent, u16* a2) {
    ent->carryFlags = 0;
    ent->hitType++;
    return *a2 >> 8;
}

s32 sub_0806F078(Entity* ent, s32 a2) {
    if (a2 != ent->animIndex) {
        if (ent->spriteAnimation[0])
            InitAnimationForceUpdate(ent, a2);
        else
            InitializeAnimation(ent, a2);
        return 1;
    }
    return 0;
}

void CollideFollowers(void) {
    LinkedList* entityList = gEntityLists + 7;
    Entity* currentEntity;
    u32 val;

    for (currentEntity = entityList->first, val = 0; currentEntity != (Entity*)entityList;
         currentEntity = currentEntity->next) {
        val++;
    }

    if (val <= 1)
        return;

    for (currentEntity = entityList->first; currentEntity != (Entity*)entityList; currentEntity = currentEntity->next) {
        Entity* nextEnt;
        if ((currentEntity->flags & ENT_DID_INIT) == 0)
            continue;
        if ((currentEntity->followerFlag & 1) == 0)
            continue;

        for (nextEnt = currentEntity->next; nextEnt != (Entity*)entityList; nextEnt = nextEnt->next) {
            if ((nextEnt->flags & ENT_DID_INIT) == 0)
                continue;
            if ((nextEnt->followerFlag & 1) == 0)
                continue;
            CalcCollisionStaticEntity(currentEntity, nextEnt);
        }
    }
}

void InitializeNPCFusion(Entity* entity) {
    u32 fuserId = GetFuserId(entity);
    NPCData* data = gUnk_08001A7C[fuserId];
    InitializeFuseInfo(entity, data->textIndex, data->cancelledTextIndex, data->fusingTextIndex);
    gPlayerState.controlMode = CONTROL_DISABLED;
}

// Returns -1, 0, or 1
u32 UpdateFuseInteraction(Entity* entity) {
    u32 result;
    PerformFuseAction();
    result = -1;
    switch (gFuseInfo.fusionState) {
        default:
            result = 0;
            break;
        case FUSION_STATE_2:
            gPlayerState.controlMode = CONTROL_DISABLED;
            result = 1;
        case FUSION_STATE_1:
            PlayerResetStateFromFusion();
            gPlayerState.controlMode = CONTROL_1;
            break;
    }
    return result;
}

void MarkFuserDone(Entity* entity) {
    u32 fuserId = GetFuserId(entity);
    if (fuserId != 0)
        gSave.kinstones.fuserOffers[fuserId] = KINSTONE_FUSER_DONE;
}

void ShowNPCDialogue(Entity* ent, const Dialog* dia) {
    u32 fromSelf;
    s32 temp;
    u32 uVar2;
    u32 uVar3;
    u32 flagType;
    s32 uVar4;
    bool32 isFlagSet;

    temp = *(((u16*)dia) + 1);
    fromSelf = (temp >> 4) & 1;
    temp &= 0xf;
    switch (temp) {
        case DIALOG_SET_FLAG:
            uVar3 = (int)*(u32*)dia;
            temp = (s32)uVar3 >> 0xc & 0xf;
            uVar3 = uVar3 & 0xfff;
            isFlagSet = FALSE;
            switch (temp) {
                case DIALOG_ROOM_FLAG:
                    isFlagSet = CheckRoomFlag(uVar3);
                    SetRoomFlag(uVar3);
                    break;
                case DIALOG_LOCAL_FLAG:
                    isFlagSet = CheckLocalFlag(uVar3);
                    SetLocalFlag(uVar3);
                    break;
                case DIALOG_GLOBAL_FLAG:
                    isFlagSet = CheckGlobalFlag(uVar3);
                    SetGlobalFlag(uVar3);
                    break;
            }
            if (!isFlagSet) {
                uVar2 = dia->data.indices.b;
            } else {
                uVar2 = dia->data.indices.a;
            }
            break;
        case DIALOG_TOGGLE_FLAG:
            uVar3 = (int)*(u32*)dia;
            uVar4 = (s32)uVar3 >> 0xc & 0xf;
            uVar3 = uVar3 & 0xfff;
            isFlagSet = 0;
            switch (uVar4) {
                case DIALOG_ROOM_FLAG:
                    isFlagSet = CheckRoomFlag(uVar3);
                    if (!isFlagSet) {
                        SetRoomFlag(uVar3);
                    } else {
                        ClearRoomFlag(uVar3);
                    }
                    break;
                case DIALOG_LOCAL_FLAG:
                    isFlagSet = CheckLocalFlag(uVar3);
                    if (!isFlagSet) {
                        SetLocalFlag(uVar3);
                    } else {
                        ClearLocalFlag(uVar3);
                    }
                    break;
                case DIALOG_GLOBAL_FLAG:
                    isFlagSet = CheckGlobalFlag(uVar3);
                    if (!isFlagSet) {
                        SetGlobalFlag(uVar3);
                    } else {
                        ClearGlobalFlag(uVar3);
                    }
                    break;
            }
            if (!isFlagSet) {
                uVar2 = dia->data.indices.b;
            } else {
                uVar2 = dia->data.indices.a;
            }
            break;
        case DIALOG_CHECK_FLAG:
            uVar3 = (int)*(u32*)dia;
            uVar4 = (s32)uVar3 >> 0xc & 0xf;
            uVar3 = uVar3 & 0xfff;
            isFlagSet = FALSE;
            {
                bool32 local;
                switch (uVar4) {
                    case DIALOG_ROOM_FLAG:
                        isFlagSet = CheckRoomFlag(uVar3);
                        break;
                    case DIALOG_LOCAL_FLAG:
                        isFlagSet = CheckLocalFlag(uVar3);
                        break;
                    case DIALOG_GLOBAL_FLAG:
                        isFlagSet = CheckGlobalFlag(uVar3);
                        break;
                    case DIALOG_KINSTONE:
                        isFlagSet = CheckKinstoneFused(uVar3);
                        break;
                    case DIALOG_INVENTORY:
                        local = GetInventoryValue(uVar3);
                        if (local != 0) {
                            local = 1;
                        }
                        isFlagSet = local;
                        break;
                }
            }
            if (!isFlagSet) {
                uVar2 = dia->data.indices.b;
            } else {
                uVar2 = dia->data.indices.a;
            }
            break;
        case DIALOG_CALL_FUNC:
            if (dia->data.func != 0) {
                dia->data.func(ent);
                return;
            }
        default:
        case DIALOG_NONE:
            uVar2 = 0;
            break;
        case DIALOG_NORMAL:
            uVar2 = dia->data.indices.b;
            break;
        case DIALOG_MINISH:
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                uVar2 = dia->data.indices.b;
            } else {
                uVar2 = dia->data.indices.a;
            }
            break;
    }

    if (fromSelf) {
        MessageNoOverlap(uVar2, ent);
    } else {
        MessageFromTarget(uVar2);
    }
}

const u8 gUnk_08114F30[] = {
    0,
    0,
    1,
    2,
};
const u8 gUnk_08114F34[] = {
    1,
    2,
    3,
    3,
};
