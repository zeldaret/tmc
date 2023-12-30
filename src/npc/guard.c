/**
 * @file guard.c
 * @ingroup NPCs
 *
 * @brief Guard NPC
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "player.h"
#include "projectile.h"
#include "room.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u8 unused[4];
    /*0x70*/ s8 unk_70;
    /*0x71*/ u8 unk_71;
} GuardEntity;

typedef struct {
    u32 unk;
    u32 entityCount;
} struct_03003DB8;

typedef struct {
    u32 unk;
    u32 unk2;
} struct_08064050;

extern void sub_08063D24(Entity*);
extern void sub_08064428(Entity*);
void sub_08063DC8(Entity*);

// TODO guardWithSpear rodata before this
const Dialog gUnk_0810CF4C[] = {
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FINDING_EZLO, 0x17) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FINDING_EZLO, 0x18) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CARPENTERS, 0x6) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_CARPENTERS, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_PROLOGUE, 0x3e) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_PROLOGUE, 0x40) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_PROLOGUE, 0x3c) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_PROLOGUE, 0x3b) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { TABIDACHI,
      DIALOG_GLOBAL_FLAG,
      DIALOG_CHECK_FLAG,
      1,
      { TEXT_INDEX(TEXT_PROLOGUE, 0x3f), TEXT_INDEX(TEXT_PROLOGUE, 0x3d) } },
    { TABIDACHI,
      DIALOG_GLOBAL_FLAG,
      DIALOG_CHECK_FLAG,
      1,
      { TEXT_INDEX(TEXT_PROLOGUE, 0x3f), TEXT_INDEX(TEXT_PROLOGUE, 0x3d) } },
    { TABIDACHI,
      DIALOG_GLOBAL_FLAG,
      DIALOG_CHECK_FLAG,
      1,
      { TEXT_INDEX(TEXT_PROLOGUE, 0x3f), TEXT_INDEX(TEXT_PROLOGUE, 0x3d) } },
    { TABIDACHI,
      DIALOG_GLOBAL_FLAG,
      DIALOG_CHECK_FLAG,
      1,
      { TEXT_INDEX(TEXT_PROLOGUE, 0x3f), TEXT_INDEX(TEXT_PROLOGUE, 0x3d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_VAATI, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_VAATI, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_VAATI, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_VAATI, 0x22) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_VAATI, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0x1d) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_PROLOGUE, 0x63) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_PROLOGUE, 0x64) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
};

const Dialog gUnk_0810D0A4[] = {
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN, 0x32) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN, 0x32) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x2d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x29) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x29) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x26) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x24) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x24) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN6, 0x1d) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN6, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0xb) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x26) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x23) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN6, 0x1c) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x8) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x35) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0xc) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x24) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x21) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x22) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x22) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN6, 0x1b) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x38) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x32) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x2d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x2d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN6, 0x26) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0xd) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN2, 0x16) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x16) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x4) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN6, 0x15) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x6) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x5) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x1) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x9) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0xa) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN, 0x33) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x30) } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
    { 0, 0, DIALOG_NONE, 0, { 0, 0 } },
};
// Seemingly wasted space. Is this ever indexed?
const u32 emptyDialogs[2048] = {};

const SpriteLoadData gUnk_0810F524[] = {
    { 55, 43, 4 }, { 6199, 43, 4 },  { 22583, 43, 4 }, { 0, 0, 0 },
    { 4, 43, 4 },  { 16388, 43, 4 }, { 8196, 43, 4 },  { 0, 0, 0 },
};
void sub_08063E90(GuardEntity*);
void sub_08063F20(GuardEntity*);
void sub_08063F78(GuardEntity*);
void (*const gUnk_0810F544[])(GuardEntity*) = {
    sub_08063E90,
    sub_08063F20,
    sub_08063F78,
};
void sub_08063D44(Entity*);
void sub_08063DC8(Entity*);
void sub_08063E54(Entity*);
void sub_08063E6C(Entity*);
void (*const gUnk_0810F550[])(Entity*) = {
    sub_08063D44,
    sub_08063DC8,
    sub_08063E54,
    sub_08063E6C,
};

extern void* gUnk_0810F6BC[]; // TODO find out type of second param for sub_0806EE04

void Guard(GuardEntity* this) {
    if ((super->flags & ENT_SCRIPTED) != 0) {
        gUnk_0810F544[super->action](this);
    } else {
        sub_08063D24(super);
    }
}

void sub_08063D24(Entity* this) {
    gUnk_0810F550[this->action](this);
    sub_0806ED78(this);
}

void sub_08063D44(Entity* this) {
    Entity* ent;
    u32 idx;

    if (gEntCount > 0x46)
        return;

    idx = (this->id ^ 0x15) ? 1 : 0;
    if (!LoadExtraSpriteData(this, &gUnk_0810F524[idx * 4]))
        return;

    InitializeAnimation(this, 4);
    sub_0806EE04(this, gUnk_0810F6BC[this->type], 0);
    switch (this->type) {
        case 0 ... 3:
            ent = CreateProjectile(GUARD_LINE_OF_SIGHT);
            ent->parent = this;
            ent->subtimer = 60;
            break;
        case 4 ... 5:
            AddInteractableWhenBigObject(this);
            break;
    }
    this->action++;
    this->type = 0;
    sub_08063DC8(this);
}

void sub_08063DC8(Entity* this) {
    if (this->type == 0xff) {
        this->action = 2;
        this->timer = 30;
        this->animationState = GetAnimationStateForDirection4(GetFacingDirection(this, &gPlayerEntity.base));
        InitAnimationForceUpdate(this, this->animationState + 4);
    } else {
        sub_0806EE20(this);
        if (this->knockbackDirection != this->animationState) {
            this->animationState = this->knockbackDirection;
            InitializeAnimation(this, this->animationState + 4);
        } else {
            GetNextFrame(this);
        }
        if (this->interactType != INTERACTION_NONE) {
            this->action = 3;
            this->interactType = INTERACTION_NONE;
            InitializeAnimation(this, GetAnimationStateForDirection4(GetFacingDirection(this, &gPlayerEntity.base)));
            sub_08064428(this);
        }
    }
}

void sub_08063E54(Entity* this) {
    if (--this->timer == 0) {
        SetRoomFlag(0xf);
    }
}

void sub_08063E6C(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->action = 1;
        InitializeAnimation(this, this->animationState + 4);
    }
}

void sub_08063E90(GuardEntity* this) {
    u32 idx;
    u32 unk;

    idx = (super->id ^ 0x15) ? 1 : 0;
    if (!LoadExtraSpriteData(super, &gUnk_0810F524[idx * 4]))
        return;

    super->action++;
    if (super->timer) {
        this->unk_70 = 8;
    } else {
        this->unk_70 = 0;
    }
    super->timer = 0;

    unk = sub_0805ACC0(super);
    if (unk == 0) {
        this->unk_68 = super->x.HALF.HI;
        this->unk_6a = super->y.HALF.HI;
    } else {
        this->unk_68 = unk >> 0x10;
        this->unk_6a = unk;
    }
    this->unk_71 = 0;
    super->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(super);
    sub_0807DD64(super);
    sub_08063F20(this);
}

void sub_08063F20(GuardEntity* this) {
    ExecuteScriptForEntity(super, 0);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
    if (super->interactType != INTERACTION_NONE) {
        super->action++;
        super->interactType = INTERACTION_NONE;
        InitializeAnimation(super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)) +
                                       this->unk_70);
        sub_08064428(super);
    }
}

void sub_08063F78(GuardEntity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->action = super->action - 1;
        InitializeAnimation(super, (super->animationState >> 1) + 4 + this->unk_70);
    }
}

void Guard_Head(Entity* this) {
    u32 uVar2;
    u32 pbVar3;
    u32 uVar4;
    u32 pbVar5;

    uVar2 = this->frame & 0x3f;
    pbVar5 = (this->frameIndex & 0x3f);
    uVar4 = this->frameSpriteSettings & 0x3f;
    if (this->id == 0x15) {
        if ((this->frameIndex & 0x40) != 0) {
            pbVar5 = pbVar5 + 0x21;
            pbVar3 = -1;
            uVar4 = 0;
        } else {
            pbVar3 = (uVar2 + 0x19);
            if ((this->frameSpriteSettings & 0x3f) != 0) {
                uVar4 += 0x1f;
            }
        }
    } else {
        pbVar3 = (uVar2 + 0x46);
        pbVar5 = pbVar5 + 0x2d;
        if ((this->frameSpriteSettings & 0x3f) != 0) {
            uVar4 += 0x4c;
        }
    }
    uVar4--;
    SetExtraSpriteFrame(this, 0, pbVar3);
    SetExtraSpriteFrame(this, 1, pbVar5);
    SetExtraSpriteFrame(this, 2, uVar4);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    SetSpriteSubEntryOffsetData2(this, 1, 2);
    sub_0807000C(this);
}

void sub_08064030(Entity* arg0, Entity* arg1) {
    *(u32*)&arg1->animationState = !!gRoomVars.animFlags;
}

void sub_08064044(void) {
    gRoomTransition.transitioningOut = 1;
}

void sub_08064050(Entity* this, ScriptExecutionContext* context) {
    context->intVariable = 0;
    switch (this->type2) {
        case 0x11:
            context->intVariable = 1;
            break;
        case 0x12:
            context->intVariable = 2;
            break;
        case 0x13:
            context->intVariable = 3;
    }
}
