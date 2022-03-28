#include "global.h"
#include "sound.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "npc.h"

void sub_08068680(Entity*, Entity*);
void sub_08068694(Entity*, Entity*);
extern Entity* GetEntityByType(u32, u32);
extern void sub_080686C4(Entity*, Entity*);

extern void (*gUnk_08110BD8[])(Entity* ent);
extern u16 gUnk_08110BE0[];

void Zelda(Entity* this) {
    gUnk_08110BD8[this->action](this);
}

void sub_08066CCC(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    PrependEntityToList(this, 7);
    SetDefaultPriority(this, PRIO_MESSAGE);
    sub_0807DD50(this);
}

void sub_08066CF8(Entity* this) {
    sub_0807DD94(this, NULL);
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
        sub_08068680(this, this->parent);
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08066D4C(Entity* this, ScriptExecutionContext* context) {
    Entity* parent;

    parent = this->parent;
    if (this->parent != NULL) {
        CopyPosition(this, parent);
        this->parent->spriteSettings.draw = 1;
        this->parent->animationState = this->animationState;
        this->spriteSettings.draw = 0;
        this->field_0x17 &= 0xFE;
        sub_08068694(this, this->parent);
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_08066D94(Entity* this) {
    u32 room;
    Entity* npc;

    SetGlobalFlag(ZELDA_CHASE);
    npc = CreateNPC(ZELDA_FOLLOWER, 0, 0);
    if (npc != NULL) {
        npc->animationState = gPlayerEntity.animationState;
        npc->flags |= ENT_PERSIST;
        npc->animationState = GetAnimationState(this);
        room = gRoomControls.room;
        npc->field_0x74.HWORD = room;
        CopyPosition(this, npc);
    }
    DeleteThisEntity();
}

void SetZeldaFollowTarget(Entity* this) {
    Entity* pEVar1;

    pEVar1 = DeepFindEntityByID(NPC, ZELDA_FOLLOWER);
    if (pEVar1 != NULL) {
        CopyPosition(this, pEVar1);
        sub_080686C4(this, pEVar1);
    }
}

void sub_08066E08(Entity* this) {
    InitAnimationForceUpdate(this, 0x50);
    this->field_0x80.HWORD = this->animIndex;
}

void sub_08066E20(Entity* this) {
    InitAnimationForceUpdate(this, 0x44);
    this->field_0x80.HWORD = this->animIndex;
}

void sub_08066E38(Entity* this) {
    InitAnimationForceUpdate(this, 0x48);
    this->field_0x80.HWORD = this->animIndex;
}

void sub_08066E50(Entity* this) {
    InitAnimationForceUpdate(this, 0x4C);
    this->field_0x80.HWORD = this->animIndex;
}

void sub_08066E68(Entity* this) {
    InitAnimationForceUpdate(this, 0x54);
    this->field_0x80.HWORD = this->animIndex;
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
            GravityUpdate(this, 0x2000);
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
            if (GravityUpdate(this, 0x2000) == 0) {
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
    this->field_0x80.HWORD = this->animIndex;
    gActiveScriptInfo.commandSize = 0;
}

void sub_08066F94(void) {
    u16 uVar1;
    u16* puVar2;

    puVar2 = gUnk_08110BE0;
    while (*puVar2 != 0) {
        uVar1 = *puVar2;
        puVar2++;
        SetTileType(16498, uVar1, 1);
    }
}

void sub_08066FB8(void) {
    u16 uVar1;
    u16* puVar2;

    puVar2 = gUnk_08110BE0;
    while (*puVar2 != 0) {
        uVar1 = *puVar2;
        puVar2++;
        RestorePrevTileEntity(uVar1, 1);
    }
}
