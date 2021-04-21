#include "global.h"
#include "entity.h"
#include "npc.h"
#include "textbox.h"
#include "script.h"
#include "random.h"
#include "audio.h"
#include "functions.h"

extern void sub_08068780(Entity*);
extern s32 sub_0806EDD8(Entity*, u32, u32);

extern void (*const gUnk_08111530[])(Entity*);

extern SpriteLoadData gUnk_08111520;
extern u16 gUnk_0811153E[];
extern u16 gUnk_08111538[];

void Melari(Entity* this) {
    if ((this->flags & 2) == 0) {
        gUnk_08111530[this->action](this);
        sub_0806ED78(this);
    } else {
        sub_08068780(this);
    }
}

void sub_08068708(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_08111520) != 0) {
        this->action = 1;
        InitializeAnimation(this, 0);
        sub_08078778(this);
    }
}

void sub_08068730(Entity* this) {
    s32 animIndex;

    animIndex = sub_0806ED9C(this, 0x20, 0x20);
    if (-1 < animIndex) {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
            if (this->animIndex != animIndex) {
                InitializeAnimation(this, animIndex);
            }
        } else {
            this->field_0xf--;
        }
    }
    if (this->interactType != 0) {
        this->interactType = 0;
        TextboxNoOverlapFollow(this->actionDelay + 0x1200);
    }
}

void sub_08068780(Entity* this) {
    Entity* ent;

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_08111520) == 0) {
                return;
            }
            this->action = 1;
            this->spriteSettings.b.draw = TRUE;
            this->animationState = this->type;
            sub_0805E3A0(this, 2);
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                HandleEntity0x82Actions(this);
                GetNextFrame(this);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }

    if ((this->frames.b.f2) != 0) {
        this->frames.all &= 0xbf;
        if (sub_080040A8(this) == 0) {
            SoundReq(gUnk_0811153E[(s32)Random() % 3]);
        } else {
            EnqueueSFX(gUnk_08111538[(s32)Random() % 3]);
        }
        ent = CreateFx(this, 0x3d, 0x20);
        if (ent != NULL) {
            PositionRelative(this, ent, 0x180000, -0xa0000);
        }
    }
}

void sub_08068884(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Melari_Head(Entity* this) {
    u32 bVar1;

    bVar1 = this->frames.all;
    bVar1 &= -0xc1;
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    if ((bVar1 & 0x20) != 0) {
        SetExtraSpriteFrame(this, 0, bVar1 & -0xe1);
        SetExtraSpriteFrame(this, 2, 0xff);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
    } else {
        SetExtraSpriteFrame(this, 0, 0xff);
        SetExtraSpriteFrame(this, 2, bVar1 & -0xe1);
        SetSpriteSubEntryOffsetData2(this, 1, 2);
    }
    sub_0807000C(this);
}

void sub_08068910(Entity* this) {
    s32 iVar1;

    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        this->actionDelay = 0x10;
        if ((this->frames.all & 0x20) != 0) {
            iVar1 = sub_0806EDD8(this, 0x30, 0x30);
            if (iVar1 < 0) {
                iVar1 = 0x10;
            } else {
            }
            iVar1 = sub_0806F5A4(iVar1);
            InitializeAnimation(this, (this->animIndex & -0x4) + iVar1);
        }
    }
}

void sub_08068964(Entity* this) {
    sub_080A7C18(53, 0, 3);
    sub_0807CAA0(53, 2);
}

void Melari_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08111520)) {
            this->action++;
            this->spriteSettings.b.draw = TRUE;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}

void nullsub_502(Entity* this) {
}
