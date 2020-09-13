#include "global.h"
#include "entity.h"
#include "npc.h"
#include "player.h"
#include "textbox.h"
#include "flags.h"
#include "structures.h"
#include "functions.h"

typedef struct {
    u8 frame1;
    u8 frame2;
    u8 unk2;
    u8 unk3;
} struct_0810B680;

typedef struct {
    u32 unk;
    u32 unk2;
} struct_08061FB8;

extern void (*const gUnk_0810B774[])(Entity*);
extern void (*const gUnk_0810B77C[])(Entity*);
extern void sub_08061CB4(Entity*, u32);
extern u32 sub_0805ACC0(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_0807DD64(Entity*);
extern void sub_08061D64(Entity*);
extern void sub_0806F118(Entity*);
extern u32 sub_0806F5A4(u32);
extern u32 GetFacingDirection(Entity*, Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void sub_08062048(Entity*);
extern void sub_08078784(Entity*, u32);
extern void sub_08078778(Entity*);
extern u32 sub_0806F5B0(u32);
extern u32 Random(void);
extern void ResolveEntityOnTop(Entity*, Entity*);
extern void sub_08078850(Entity*, u32, u8, u32*);

extern SpriteLoadData* gUnk_0810B6EC[];
extern u8 gUnk_0810B78C[];
extern struct_0810B680 gUnk_0810B680[];
extern u16 gUnk_0810B74A[];
extern u8 gUnk_02033280[];
extern u8 gUnk_0810B748[];
extern u32 gUnk_0810B740[];
extern u16 gUnk_0810B790[];
extern u16 gUnk_0810B7BA[];
extern Dialog gUnk_0810B7C0[];

void Townsperson(Entity* this) {
    if ((this->flags & 2) != 0) {
        gUnk_0810B77C[this->action](this);
    } else {
        gUnk_0810B774[this->action](this);
    }
}

void sub_08061BC8(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810B6EC[this->entityType.form])) {
        this->animationState = 2;
        this->field_0xf = this->entityType.form + 1;
        this->action++;
        sub_08061CB4(this, 2);
    }
}

void sub_08061C00(Entity* this) {
    s32 uVar1;

    uVar1 = sub_0806ED9C(this, 0x20, 0x20);
    if (uVar1 < 0) {
        uVar1 = this->animationState + 4;
    } else {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
        } else {
            this->field_0xf--;
            uVar1 = this->animIndex & 3;
        }
    }
    sub_08061CB4(this, uVar1);
    sub_0806ED78(this);
    if (this->interactType != 0) {
        this->interactType = 0;
        TextboxNoOverlapFollow(this->entityType.parameter + 0xa01);
    }
}

#if NON_MATCHING
void Townsperson_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0,
                        *(gUnk_0810B78C + (this->animIndex & 3)) + gUnk_0810B680[this->entityType.form].frame1);
    SetExtraSpriteFrame(this, 1, this->frameIndex + gUnk_0810B680[this->entityType.form].frame2);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}
#else
NAKED
void Townsperson_Head(Entity* this) {
    asm(".include \"asm/non_matching/townsperson/sub_08061C60.inc\"");
}
#endif

void sub_08061CB4(Entity* this, u32 arg1) {
    if (this->animIndex != arg1) {
        InitializeAnimation(this, arg1);
    } else {
        GetNextFrame(this);
    }
    if (this->frameDuration == 0xff) {
        this->frameDuration = gUnk_0810B680[this->entityType.form].unk2;
    }
}

void sub_08061CEC(Entity* this) {
    u32 uVar2;

    if (LoadExtraSpriteData(this, gUnk_0810B6EC[this->entityType.form])) {
        this->action = 1;
        this->spriteSettings.b.draw = TRUE;
        this->animationState = this->actionDelay;
        this->field_0x68.HALF.HI = 0xff;
        uVar2 = sub_0805ACC0(this);
        if (uVar2 == 0) {
            this->field_0x6a.HWORD = this->x.HALF.HI;
            uVar2 = (u16)this->y.HALF.HI;
        } else {
            this->field_0x6a.HWORD = (uVar2 >> 0x10);
        }
        *(u16*)&this->field_0x6c = uVar2;
        this->field_0x68.HALF.LO = sub_0801E99C(this);
        sub_0807DD64(this);
        sub_08061D64(this);
    }
}

void sub_08061D64(Entity* this) {
    if (this->interactType == 2) {
        this->action = 3;
        this->interactType = 0;
        sub_0806F118(this);
        this->field_0x68.HALF.HI = this->animIndex;
        InitializeAnimation(this, (this->animIndex & -4) + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
    } else {
        sub_0807DDAC(this, 0);
        sub_0807DDE4(this);
        if (this->frameDuration == 0xff) {
            this->frameDuration = gUnk_0810B680[this->entityType.form].unk2;
        }
        GetNextFrame(this);
        if (this->interactType != 0) {
            this->action = 2;
            this->interactType = 0;
            sub_08062048(this);
            this->field_0x68.HALF.HI = this->animIndex;
            InitializeAnimation(this, (this->animIndex & -4) + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        }
    }
}

void sub_08061E24(Entity* this) {
    GetNextFrame(this);
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->action = 1;
        InitializeAnimation(this, this->field_0x68.HALF.HI);
    }
}

void sub_08061E50(Entity* this) {

    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
        InitializeAnimation(this, this->field_0x68.HALF.HI);
    }
}

void sub_08061E70(Entity* this) {
    if ((this->entityType).subtype == 6) {
        sub_08078784(this, this->field_0x68.HALF.LO);
    } else {
        sub_08078778(this);
    }
}

void sub_08061E90(Entity* this, Entity* arg1) {
    u32 animIndex;
    s32 iVar4;

    if (arg1->spriteSettings.raw == 0) {
        arg1->spriteSettings.raw++;
        arg1->spriteIndex = (Random() & 0x3f) + 0x20;
        animIndex = DirectionRound(Random());
        switch (this->direction) {
            case 0x0:
                if (animIndex == 0x10) {
                    animIndex = 0x8;
                }
                break;
            case 0x8:
                if (animIndex == 0x18) {
                    animIndex = 0x10;
                }
                break;
            case 0x10:
                if (animIndex == 0x0) {
                    animIndex = 0x18;
                }
                break;
            case 0x18:
                if (animIndex == 0x8) {
                    animIndex = 0;
                }
        }
        this->direction = (u8)animIndex;
        this->animationState = sub_0806F5B0(animIndex);
        this->nonPlanarMovement = gUnk_0810B74A[this->entityType.form];
    }
    animIndex = (this->animationState >> 1) + 4;
    if (animIndex != this->animIndex) {
        InitializeAnimation(this, animIndex);
    }
    ProcessMovement(this);
    iVar4 = this->x.HALF.HI - *(s16*)&this->field_0x6a.HWORD;
    if (0x10 < iVar4) {
        this->x.HALF.HI = this->field_0x6a.HWORD + 0x10;
        arg1->spriteIndex = 1;
    }
    if (iVar4 < -0x10) {
        this->x.HALF.HI = *(s16*)&this->field_0x6a.HWORD - 0x10;
        arg1->spriteIndex = 1;
    }

    iVar4 = this->y.HALF.HI - *(s16*)&this->field_0x6c;
    if (0x10 < iVar4) {
        this->y.HALF.HI = *(s16*)&this->field_0x6c + 0x10;
        arg1->spriteIndex = 1;
    }
    if (iVar4 < -0x10) {
        this->y.HALF.HI = *(s16*)&this->field_0x6c - 0x10;
        arg1->spriteIndex = 1;
    }
    if (--arg1->spriteIndex != 0) {
        gUnk_02033280[6] = 0;
    }
}

void sub_08061F94(Entity* this) {
    Entity* ent;

    ent = CreateFx(this, 0x35, 0);
    if (ent != NULL) {
        ResolveEntityOnTop(this, ent);
    }
}

void sub_08061FB0(Entity* this) {
    this->boundingBox = NULL;
}

void sub_08061FB8(Entity* this, struct_08061FB8* arg1) {
    u8* temp = gUnk_0810B748;

    sub_08078850(this, 1, temp[arg1->unk2], &gUnk_0810B740[arg1->unk2]);
}

void sub_08061FD8(Entity* this) {
    InitializeAnimation(this, this->animationState >> 1);
}

void sub_08061FE4(Entity* this) {
    InitializeAnimation(this, (this->animationState >> 1) + 4);
}

void sub_08061FF4(Entity* this) {
    TextboxNoOverlap(gUnk_0810B790[this->entityType.form], this);
}

void sub_0806200C(Entity* this) {
    u32 index;

    index = 0;
    if ((CheckGlobalFlag(MIZUKAKI_START) != 0) && (CheckLocalFlag(0x6b))) {

        // hyrule bestiary
        if (GetInventoryValue(0x39) == 2) {
            index = 2;
        } else {
            index = 1;
        }
    }
    TextboxNoOverlap(gUnk_0810B7BA[index], this);
}

void sub_08062048(Entity* this) {
    int iVar1;

    if ((this->entityType).subtype == 6) {
        iVar1 = gUnk_02002A40.unk8 - 2;
        if (iVar1 < 0) {
            iVar1 = 0;
        }
        ShowNPCDialogue(this, gUnk_0810B7C0 + this->entityType.form * 0x8 + iVar1);
    } else {
        TextboxNoOverlap(0, this);
    }
}

void Townsperson_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810B6EC[this->entityType.form]) == 0) {
            return;
        }
        this->action++;
        this->spriteSettings.b.draw = TRUE;
    }
    sub_08061CB4(this, 6);
}