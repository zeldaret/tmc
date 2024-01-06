/**
 * @file zelda.c
 * @ingroup NPCs
 *
 * @brief Zelda NPC
 */
#include "npc/zelda.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "npc.h"
#include "sound.h"
#include "tiles.h"

void ZeldaFollower_Hide(Entity*, Entity*);
void ZeldaFollower_Show(Entity*, Entity*);
extern Entity* GetEntityByType(u32, u32);
extern void sub_080686C4(Entity*, Entity*);
void sub_08066CCC(Entity*);
void sub_08066CF8(Entity*);

void Zelda(Entity* this) {
    static void (*const gUnk_08110BD8[])(Entity * ent) = {
        sub_08066CCC,
        sub_08066CF8,
    };
    gUnk_08110BD8[this->action](this);
}

void sub_08066CCC(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    PrependEntityToList(this, 7);
    SetEntityPriority(this, PRIO_MESSAGE);
    InitScriptForNPC(this);
}

void sub_08066CF8(Entity* this) {
    ExecuteScriptAndHandleAnimation(this, NULL);
}

void sub_08066D04(Entity* this) {
    this->parent = DeepFindEntityByID(NPC, ZELDA_FOLLOWER);
}

void sub_08066D14(Entity* this, ScriptExecutionContext* context) {
    Entity* parent;

    parent = this->parent;
    if (parent != NULL) {
        this->animationState = parent->animationState;
        this->spriteSettings.draw = 1;
        CopyPosition(parent, this);
        ZeldaFollower_Hide(this, this->parent);
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08066D4C(Entity* this, ScriptExecutionContext* context) {
    Entity* parent = this->parent;
    if (this->parent != NULL) {
        CopyPosition(this, parent);
        this->parent->spriteSettings.draw = 1;
        this->parent->animationState = this->animationState;
        this->spriteSettings.draw = 0;
        this->followerFlag &= 0xFE;
        ZeldaFollower_Show(this, this->parent);
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08066D94(Entity* this) {
    u32 room;
    ZeldaFollowerEntity* npc;

    SetGlobalFlag(ZELDA_CHASE);
    npc = (ZeldaFollowerEntity*)CreateNPC(ZELDA_FOLLOWER, 0, 0);
    if (npc != NULL) {
        npc->base.animationState = gPlayerEntity.base.animationState;
        npc->base.flags |= ENT_PERSIST;
        npc->base.animationState = GetAnimationState(this);
        room = gRoomControls.room;
        npc->unk_74 = room;
        CopyPosition(this, &npc->base);
    }
    DeleteThisEntity();
}

void SetZeldaFollowTarget(Entity* target) {
    Entity* follower = DeepFindEntityByID(NPC, ZELDA_FOLLOWER);
    if (follower != NULL) {
        CopyPosition(target, follower);
        sub_080686C4(target, follower);
    }
}

void sub_08066E08(ZeldaEntity* this) {
    InitAnimationForceUpdate(super, 0x50);
    this->unk_80 = super->animIndex;
}

void sub_08066E20(ZeldaEntity* this) {
    InitAnimationForceUpdate(super, 0x44);
    this->unk_80 = super->animIndex;
}

void sub_08066E38(ZeldaEntity* this) {
    InitAnimationForceUpdate(super, 0x48);
    this->unk_80 = super->animIndex;
}

void sub_08066E50(ZeldaEntity* this) {
    InitAnimationForceUpdate(super, 0x4C);
    this->unk_80 = super->animIndex;
}

void sub_08066E68(ZeldaEntity* this) {
    InitAnimationForceUpdate(super, 0x54);
    this->unk_80 = super->animIndex;
}

void sub_08066E80(Entity* this, ScriptExecutionContext* context) {
    switch (context->unk_18) {
        case 0:
            context->unk_18++;
            InitAnimationForceUpdate(this, 0x16);
            break;
        case 1:
            UpdateAnimationSingleFrame(this);
            if (this->frame & 1) {
                context->unk_18++;
                this->zVelocity = Q_16_16(2.0);
                this->frame &= 0xFE;
                SoundReq(SFX_PLY_JUMP);
            }
            break;
        case 2:
            LinearMoveAngle(this, 0x100, 0x80);
            GravityUpdate(this, Q_8_8(32.0));
            if (!(this->frame & 1)) {
                UpdateAnimationSingleFrame(this);
            }
            if (this->zVelocity < 0) {
                context->unk_18++;
            }
            break;
        case 3:
            LinearMoveAngle(this, 0x100, 0x80);
            UpdateAnimationSingleFrame(this);
            if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
                context->unk_18++;
                InitAnimationForceUpdate(this, 0x1E);
            }
            break;
        case 4:
            UpdateAnimationSingleFrame(this);
            if (this->frame & ANIM_DONE) {
                gActiveScriptInfo.flags |= 1;
                return;
            }
    }
    ((ZeldaEntity*)this)->unk_80 = this->animIndex;
    gActiveScriptInfo.commandSize = 0;
}

static const u16 gUnk_08110BE0[] = {
    0x81c, 0x85c, 0x89c, 0x8dc, 0x91c, 0x95c, 0x99c, 0x9dc, 0x9dd, 0x9de, 0x9df, 0x9e0, 0x9e1, 0x9e2, 0x0, 0x0,
};

void sub_08066F94(void) {
    u16 tilePos;
    const u16* puVar2;

    puVar2 = gUnk_08110BE0;
    while (*puVar2 != 0) {
        tilePos = *puVar2;
        puVar2++;
        SetTileType(SPECIAL_TILE_114, tilePos, LAYER_BOTTOM);
    }
}

void sub_08066FB8(void) {
    u16 uVar1;
    const u16* puVar2;

    puVar2 = gUnk_08110BE0;
    while (*puVar2 != 0) {
        uVar1 = *puVar2;
        puVar2++;
        RestorePrevTileEntity(uVar1, 1);
    }
}
