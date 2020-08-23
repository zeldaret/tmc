#include "global.h"
#include "entity.h"
#include "player.h"
#include "flags.h"
#include "textbox.h"
#include "room.h"

typedef struct {
    u32 unk;
    u32 entityCount;
} struct_03003DB8;

typedef struct {
    u8 filler[8];
    u8 unk;
} ScreenTransition;

typedef struct {
    u32 unk;
    u32 unk2;
} struct_08064050;

extern void sub_08063D24(Entity*);
extern void sub_0806ED78(Entity*);
extern u32 GetFacingDirection(Entity*, Entity*);
extern u32 sub_0806F5A4(u32);
extern void sub_0806EE20(Entity*);
extern void sub_08064428(Entity*);
extern u32 sub_0805ACC0(Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void sub_0807000C(Entity*);
extern void sub_0806EE04(Entity*, void*, u32);
extern Entity* sub_080A7EE0(int);
extern void sub_08078778(Entity*);
extern void sub_0807DD64(Entity*);
void sub_08063DC8(Entity*);
void sub_08063F20(Entity*);

extern void (*const gUnk_0810F544[])(Entity*);
extern void (*const gUnk_0810F550[])(Entity*);

// entity count
extern u8 gEntCount;
extern SpriteLoadData gUnk_0810F524[];
extern void* gUnk_0810F6BC[];
extern ScreenTransition gScreenTransition;

void Guard(Entity* this) {
    if ((this->flags & 2) != 0) {
        gUnk_0810F544[this->action](this);
    } else {
        sub_08063D24(this);
    }
}

void sub_08063D24(Entity* this) {
    gUnk_0810F550[this->action](this);
    sub_0806ED78(this);
}

void sub_08063D44(Entity* this) {
    Entity* ent;
    u32 temp, idx;

    if (gEntCount > 0x46)
        return;

    temp = this->entityType.subtype;
    temp ^= 0x15;
    idx = ((-temp | temp) >> 0x1f) * 4;
    if (!LoadExtraSpriteData(this, &gUnk_0810F524[idx]))
        return;

    InitializeAnimation(this, 4);
    sub_0806EE04(this, gUnk_0810F6BC[this->entityType.form], 0);
    switch (this->entityType.form) {
        case 0 ... 3:
            ent = sub_080A7EE0(0xc);
            ent->parent = this;
            ent->field_0xf = 0x3c;
            break;
        case 4 ... 5:
            sub_08078778(this);
            break;
    }
    this->action++;
    this->entityType.form = 0;
    sub_08063DC8(this);
}

void sub_08063DC8(Entity* this) {
    if ((this->entityType).form == 0xff) {
        this->action = 2;
        this->actionDelay = 0x1e;
        this->animationState = sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
        InitAnimationForceUpdate(this, this->animationState + 4);
    } else {
        sub_0806EE20(this);
        if (this->field_0x3e != this->animationState) {
            this->animationState = this->field_0x3e;
            InitializeAnimation(this, this->animationState + 4);
        } else {
            GetNextFrame(this);
        }
        if (this->interactType != 0) {
            this->action = 3;
            this->interactType = 0;
            InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
            sub_08064428(this);
        }
    }
}

void sub_08063E54(Entity* this) {
    if (--this->actionDelay == 0) {
        SetRoomFlag(0xf);
    }
}

void sub_08063E6C(Entity* this) {
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->action = 1;
        InitializeAnimation(this, this->animationState + 4);
    }
}

void sub_08063E90(Entity* this) {
    Entity* ent;
    u32 temp, idx;
    u32 unk;

    temp = this->entityType.subtype;
    temp ^= 0x15;
    idx = ((-temp | temp) >> 0x1f) * 4;
    if (!LoadExtraSpriteData(this, &gUnk_0810F524[idx]))
        return;

    this->action++;
    if (this->actionDelay) {
        this->field_0x70.BYTES.byte0 = 8;
    } else {
        this->field_0x70.BYTES.byte0 = 0;
    }
    this->actionDelay = 0;

    unk = sub_0805ACC0(this);
    if (unk == 0) {
        this->field_0x68.HWORD = this->x.HALF.HI;
        this->field_0x6a.HWORD = this->y.HALF.HI;
    } else {
        this->field_0x68.HWORD = unk >> 0x10;
        this->field_0x6a.HWORD = unk;
    }
    this->field_0x70.BYTES.byte1 = 0;
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
    sub_0807DD64(this);
    sub_08063F20(this);
}

void sub_08063F20(Entity* this) {
    sub_0807DDAC(this, 0);
    sub_0807DDE4(this);
    GetNextFrame(this);
    if (this->interactType != 0) {
        this->action++;
        this->interactType = 0;
        InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + *(s8*)&this->field_0x70);
        sub_08064428(this);
    }
}

void sub_08063F78(Entity* this) {
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->action = this->action - 1;
        InitializeAnimation(this, (this->animationState >> 1) + 4 + *(s8*)&this->field_0x70);
    }
}

void Guard_Head(Entity* this) {
    u8 bVar1;
    u32 uVar2;
    u32 pbVar3;
    u32 uVar4;
    u32 pbVar5;

    uVar2 = this->frames.all & 0x3f;
    pbVar5 = (this->frameIndex & 0x3f);
    uVar4 = this->frameSpriteSettings & 0x3f;
    if ((this->entityType).subtype == 0x15) {
        if ((this->frameIndex & 0x40) != 0) {
            pbVar5 = pbVar5 + 0x21;
            pbVar3 = 0xffffffff;
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
    *(u32*)&arg1->animationState = (-gRoomVars.greatFairyState | gRoomVars.greatFairyState) >> 0x1f;
}

void sub_08064044(void) {
    gScreenTransition.unk = 1;
}

void sub_08064050(Entity* arg0, struct_08064050* arg1) {
    u32 unk;

    arg1->unk2 = 0;
    switch (arg0->entityType.parameter) {
        case 0x11:
            arg1->unk2 = 1;
            break;
        case 0x12:
            arg1->unk2 = 2;
            break;
        case 0x13:
            arg1->unk2 = 3;
    }
}
