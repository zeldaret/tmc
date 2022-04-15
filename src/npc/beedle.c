#include "global.h"
#include "entity.h"
#include "message.h"
#include "room.h"
#include "script.h"
#include "npc.h"
#include "game.h"
#include "functions.h"

typedef struct {
    s8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s8 unk_04;
    s8 unk_05;
    s8 unk_06;
    s8 unk_07;
} gUnk_0810C89C_struct;

void sub_080632E0(Entity* this);
void sub_08063314(Entity* this);
void sub_0806336C(Entity* this);
void sub_08063390(Entity* this);

static const u8 gUnk_0810C88C[] = {
    0, 0x2d, 0x2c, 0x29, 0x2a, 0x2b, 0x2e, 0,
};
static const Hitbox gUnk_0810C894 = { 0, 0, { 0, 0, 0, 0 }, 16, 6 };
static const gUnk_0810C89C_struct gUnk_0810C89C[] = {
    { 0, 0, 6, 6, 0, 0, 0, 0 },    { -24, 0, 6, 6, 0, 0, 0, 0 }, { -24, 16, 6, 6, 0, 0, 0, 0 },
    { -24, 32, 6, 6, 0, 0, 0, 0 }, { 24, 0, 6, 6, 0, 0, 0, 0 },  { 24, 16, 6, 6, 0, 0, 0, 0 },
    { 24, 32, 6, 6, 0, 0, 0, 0 },
};
static const SpriteLoadData gUnk_0810C8D4[] = {
    { 0x3e, 0x31, 0x4 },
    { 0x203e, 0x31, 0x4 },
    { 0, 0, 0 },
};

void sub_080632C8(Entity* this);
void sub_08063410(Entity* this);
s32 sub_080633C8(Entity* this);
void sub_0806346C(Entity* this);

void Beedle(Entity* this) {
    if (this->flags & ENT_SCRIPTED) {
        sub_08063410(this);
    } else {
        sub_080632C8(this);
    }
}

void sub_080632C8(Entity* this) {
    static void (*const gUnk_0810C8E0[])(Entity*) = {
        sub_080632E0,
        sub_08063314,
        sub_0806336C,
        sub_08063390,
    };
    gUnk_0810C8E0[this->action](this);
}

void sub_080632E0(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810C8D4) != 0) {
        InitializeAnimation(this, 0);
        sub_08078778(this);
        this->spriteSettings.draw = 1;
        this->action = 1;
    }
}

void sub_08063314(Entity* this) {
    u32 offset;

    if (((++this->subtimer & 0xF) == 0) && (offset = sub_080633C8(this), this->animIndex != offset)) {
        InitializeAnimation(this, offset);
    }
    if (this->interactType != 0) {
        MessageFromTarget(this->timer + 0xA01);
        this->action++;
    }
    sub_0806ED78(this);
}

void sub_0806336C(Entity* this) {
    if ((gMessage.doTextBox & 0x7F) == 0) {
        this->action++;
        InitializeAnimation(this, 8);
    }
}

void sub_08063390(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        InitializeAnimation(this, GetAnimationState(this));
        sub_08078778(this);
    }
    sub_0806ED78(this);
}

s32 sub_080633C8(Entity* this) {
    s32 uVar1;

    uVar1 = GetAnimationStateInRectRadius(this, 0x20, 0x20);
    if (uVar1 < 0) {
        uVar1 = this->animIndex;
    }
    return uVar1;
}

void Beedle_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, this->frame & 0x3F);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08063410(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810C8D4) == 0) {
            return;
        }
        this->action++;
        if (this->type != 0) {
            this->hitbox = (Hitbox*)&gUnk_0810C894;
            this->type2 = 0;
        }
        sub_0807DD64(this);
        sub_08078778(this);
    }
    if (this->type != 0) {
        sub_0806346C(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
}

void sub_0806346C(Entity* this) {
    static const u8 gUnk_0810C8F0[][6][4] = {
        {
            { 1, 1, 1, 1 },
            { 1, 1, 1, 1 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 4, 4, 4, 4 },
            { 4, 4, 4, 4 },
        },
        {
            { 1, 1, 1, 1 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 4, 4, 4, 4 },
        },
        {
            { 2, 2, 2, 2 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 2 },
            { 0, 5, 0, 0 },
            { 0, 0, 0, 0 },
            { 5, 5, 5, 5 },
        },
        {
            { 3, 3, 3, 3 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 3 },
            { 0, 6, 0, 0 },
            { 0, 0, 0, 0 },
            { 6, 6, 6, 6 },
        },
        {
            { 3, 3, 3, 3 },
            { 3, 3, 3, 3 },
            { 3, 3, 3, 3 },
            { 6, 6, 6, 6 },
            { 6, 6, 6, 6 },
            { 6, 6, 6, 6 },
        },
    };
    u8 bVar1;
    s32 iVar2;
    s32 iVar3;

    iVar3 = (gPlayerEntity.x.HALF.HI - this->x.HALF.HI);
    iVar2 = (gPlayerEntity.y.HALF.HI - this->y.HALF.HI);

    iVar3 += 0x30;
    iVar2 += 0x18;
    if (iVar3 < 0) {
        iVar3 = 0;
    }
    if (iVar3 > 0x50) {
        iVar3 = 0x50;
    }
    if (iVar2 < 0) {
        iVar2 = 0;
    }
    if (iVar2 > 0x40) {
        iVar2 = 0x40;
    }

    iVar3 >>= 4;
    iVar2 >>= 4;

    bVar1 = gUnk_0810C8F0[iVar2][iVar3][gPlayerEntity.animationState >> 1];
    if (bVar1 != this->type2) {
        const gUnk_0810C89C_struct* temp = &gUnk_0810C89C[bVar1];
        sub_08078850(this, 1, temp->unk_04, temp);
        this->type2 = bVar1;
    }
}

void sub_080634E4(Entity* this, ScriptExecutionContext* context) {
    context->intVariable = this->type2;
}

void sub_080634EC(Entity* this) {
    gRoomVars.shopItemType = gUnk_0810C88C[this->type2];
}

void sub_08063504(Entity* this, ScriptExecutionContext* context) {
    context->condition = !!GetBottleContaining(gUnk_0810C88C[this->type2]);
}
