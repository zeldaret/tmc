#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "room.h"
#include "script.h"
#include "npc.h"
#include "overworld.h"

typedef struct {
    u32 unk_00;
    s8 unk_04;
} gUnk_0810C89C_struct;

extern void sub_08078850(Entity*, u32, s8, gUnk_0810C89C_struct*);

extern u8 gUnk_0810C88C[];
extern Hitbox gUnk_0810C894;
extern gUnk_0810C89C_struct gUnk_0810C89C[];
extern SpriteLoadData gUnk_0810C8D4;
extern void (*gUnk_0810C8E0[])(Entity*);
extern u8 gUnk_0810C8F0[];

void sub_080632C8(Entity* this);
void sub_08063410(Entity* this);
s32 sub_080633C8(Entity* this);
void sub_0806346C(Entity* this);

void Beedle(Entity* this) {
    if (this->flags & 0x2) {
        sub_08063410(this);
    } else {
        sub_080632C8(this);
    }
}

void sub_080632C8(Entity* this) {
    gUnk_0810C8E0[this->action](this);
}

void sub_080632E0(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_0810C8D4) != 0) {
        InitializeAnimation(this, 0);
        sub_08078778(this);
        this->spriteSettings.draw = 1;
        this->action = 1;
    }
}

void sub_08063314(Entity* this) {
    u32 offset;

    if (((++this->field_0xf & 0xF) == 0) && (offset = sub_080633C8(this), this->animIndex != offset)) {
        InitializeAnimation(this, offset);
    }
    if (this->interactType != '\0') {
        MessageFromTarget(this->actionDelay + 0xA01);
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
    if (this->frame & 0x80) {
        this->action = 1;
        InitializeAnimation(this, GetAnimationState(this));
        sub_08078778(this);
    }
    sub_0806ED78(this);
}

s32 sub_080633C8(Entity* this) {
    s32 uVar1;

    uVar1 = sub_0806ED9C(this, 0x20, 0x20);
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
        if (LoadExtraSpriteData(this, &gUnk_0810C8D4) == 0) {
            return;
        }
        this->action++;
        if (this->type != 0) {
            this->hitbox = &gUnk_0810C894;
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

    bVar1 = gUnk_0810C8F0[(gPlayerEntity.animationState >> 1) + iVar3 * 4 + iVar2 * 0x18];
    if (bVar1 != this->type2) {
        gUnk_0810C89C_struct* temp = &gUnk_0810C89C[bVar1];
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
