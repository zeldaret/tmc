#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "save.h"
#include "script.h"
#include "random.h"
#include "npc.h"
#include "audio.h"
#include "functions.h"

extern void sub_08078850(Entity*, u32, u32, u32*);

extern void (*const gUnk_08110360[])(Entity*);
extern void (*const gUnk_0811036C[])(Entity*);

extern u16 gUnk_08110380[];
extern SpriteLoadData gUnk_08110354;
extern Dialog gUnk_08110390[];
extern u16 gUnk_081103D0[];
extern u32 gUnk_081103E0;

void Smith(Entity* this) {
    u32 index;

    if ((this->flags & 2) != 0) {
        if (this->interactType == 2) {
            this->action = 4;
            this->interactType = 0;
            index = (this->animIndex == 0xc) ? 8 : 0;
            index += sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
            InitAnimationForceUpdate(this, index);
            sub_0806F118(this);
        }
        gUnk_0811036C[this->action](this);
    } else {
        gUnk_08110360[this->action](this);
        sub_0806ED78(this);
    }
    if (this->animIndex == 0xc) {
        this->spritePriority.b1 = 0;
    } else {
        this->spritePriority.b1 = 1;
    }
    if ((this->frames.all & 1) != 0) {
        this->frames.all &= 0xfe;
        CreateFx(this, 0x3d, 0x20);
        SoundReq(gUnk_08110380[(Random() & 7)]);
    }
}

void Smith_Head(Entity* this) {
    u8 bVar1;

    bVar1 = this->frames.all;
    SetExtraSpriteFrame(this, 0, this->frameIndex);
    if ((bVar1 & 0x40) != 0) {
        SetExtraSpriteFrame(this, 1, 0x16);
    } else {
        SetExtraSpriteFrame(this, 1, 0xff);
    }
    SetSpriteSubEntryOffsetData1(this, 0, 1);
    sub_0807000C(this);
}

void sub_080660EC(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_08110354) != 0) {
        this->action = 1;
        this->field_0x68.HALF.LO = sub_0801E99C(this);
        InitAnimationForceUpdate(this, 2);
    }
}

void sub_08066118(Entity* this) {
    s32 uVar1;
    u32 iVar2;

    uVar1 = sub_0806ED9C(this, 0x28, 0x28);
    if (uVar1 < 0) {
        uVar1 = 2;
    } else {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
        } else {
            --this->field_0xf;
            uVar1 = this->animIndex;
        }
    }
    if (sub_0806F078(this, uVar1) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != 0) {
        this->action = 2;
        TextboxNoOverlapFollow(0);
    }
}

void sub_08066170(Entity* this) {
    this->action = 1;
}

void sub_08066178(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_08110354) != 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 1;
        this->field_0x68.HALF.LO = sub_0801E99C(this);
        sub_0807DD50(this);
    }
}

void sub_080661B0(Entity* this) {
    sub_0807DD94(this, NULL);
}

void sub_080661BC(Entity* this) {
    u32 sVar1;

    if (this->animIndex == 0xc) {
        UpdateAnimationSingleFrame(this);
        if ((this->frames.b.f3) != 0) {
            this->field_0x80.HWORD = GetAnimationState(this) + 8;
            InitAnimationForceUpdate(this, this->field_0x80.HWORD);
        }
    } else {
        sub_0807DD94(this, NULL);
    }
}

void sub_08066200(Entity* this) {
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    UpdateAnimationSingleFrame(this);
}

void sub_08066218(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806622C(Entity* this) {
    u32 index;

    if (gSave.unk8 - 2 < 0) {
        index = 0;
    } else {
        index = gSave.unk8 - 2;
    }
    ShowNPCDialogue(this, &gUnk_08110390[index]);
}

void nullsub_501(Entity* this) {
}

void sub_08066258(void) {
    SoundReq(gUnk_081103D0[Random() & 7]);
}

void sub_08066274(Entity* this) {
    sub_08078850(this, 1, 0, &gUnk_081103E0);
}

void sub_08066288(Entity* this) {
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Smith_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08110354) != 0) {
            this->action++;
            this->spriteSettings.b.draw = 1;
            InitAnimationForceUpdate(this, 6);
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
