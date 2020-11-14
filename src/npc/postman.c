#include "global.h"
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "textbox.h"
#include "player.h"
#include "room.h"
#include "structures.h"

typedef struct {
    u8 filler[7];
    u8 unk;
} struct_02033280;

extern void sub_08060528(Entity*);
extern void* GetCurrentRoomProperty(u32);
extern void sub_0806EE04(Entity*, void*, u32);
extern void sub_080604DC(Entity*);
extern s32 sub_0806ED9C(Entity*, u32, u32);
extern void sub_0806EE20(Entity*);
extern u32 sub_080040A8(Entity*);
extern u32 sub_0801E99C(Entity*);
extern void sub_0807DD50(Entity*);
extern void sub_0806F118(Entity*);
extern u32 sub_0806F5A4(u32);
extern u32 GetFacingDirection(Entity*, Entity*);
extern void sub_080606D8(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern void sub_080788E0(Entity*);
extern void EnqueueSFX(u32);
extern void sub_080606C0(Entity*);
extern void sub_0800451C(Entity*);
extern void sub_08078784(Entity*, u32);
extern void sub_0807DEDC(Entity*, u32, u32, u32);

typedef struct {
    s16 x;
    s16 y;
} Coords16;

extern Coords16 gUnk_0810A66C[];
extern s8* gUnk_0810A918[];

extern void (*const gUnk_0810AA24[])(Entity*);
extern Dialog gUnk_0810AA30[];
extern struct_02033280 gUnk_02033280;

void Postman(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_08060528(this);
    } else {
        gUnk_0810AA24[this->action](this);
    }
}

void sub_08060428(Entity* this) {
    u8 bVar1;
    void* data;

    this->actionDelay = 0x5a;
    this->nonPlanarMovement = 0x180;
    if (this->entityType.parameter != 0) {
        data = GetCurrentRoomProperty(this->entityType.parameter);
    } else {
        data = NULL;
    }
    sub_0806EE04(this, data, 0);
    this->action = 1;
    InitAnimationForceUpdate(this, 4);
}

void sub_0806045C(Entity* this) {
    u8 bVar1;
    u32 uVar2;
    u32 bVar3;
    s32 temp;

    UpdateAnimationSingleFrame(this);
    sub_080604DC(this);
    switch (this->interactType) {
        case 1:
        case 2:
            this->action = 2;
            TextboxNoOverlapFollow(0);
            break;
        default:
            bVar1 = this->field_0x3e;
            if (bVar1 != this->animationState) {
                this->animationState = bVar1;
                InitAnimationForceUpdate(this, 4 + bVar1);
            }
            temp = sub_0806ED9C(this, 0x18, 0x18);
            if ((temp > -1) && (temp == this->animationState)) {
                bVar3 = 1;
            } else {
                bVar3 = 0;
            }
            if (!bVar3) {
                sub_0806EE20(this);
            }
    }
    sub_0806ED78(this);
}

void sub_080604C8(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_080604DC(this);
    this->action = 1;
}

void sub_080604DC(Entity* this) {
    u8 bVar1;
    int iVar2;
    Entity* ent;

    if (((u32)(this->spriteSettings.raw << 0x1e) >> 0x1e == 1) && sub_080040A8(this)) {
        if ((this->frames.all & 1) != 0) {
            this->frames.all &= 0xfe;
            ent = CreateFx(this, 0x11, 0x40);
            if (ent != NULL) {
                ent->y.HALF.HI++;
                sub_0805E3A0(ent, 3);
            }
        }
    }
}

void sub_08060528(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.b.draw = TRUE;
            this->field_0x68.HALF.LO = 0;
            this->field_0x68.HALF.HI = 0;
            this->field_0x6a.HWORD = 0;
            this->field_0x6c.HALF.HI = 0;
            this->field_0x6c.HALF.LO = sub_0801E99C(this);
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 3;
                this->interactType = 0;
                sub_0806F118(this);
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
            } else {
                if (this->interactType != 0) {
                    this->action = 2;
                    this->interactType = 0;
                    sub_080606D8(this);
                    InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                } else {
                    sub_0807DD94(this, 0);
                }
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(this);
            if ((gTextBox.doTextBox & 0x7f) != 0) {
                break;
            }
            this->action = 1;
            break;
        case 3:
            UpdateAnimationSingleFrame(this);
            if (!UpdateFuseInteraction(this)) {
                break;
            }
            this->action = 1;
    }
    sub_080604DC(this);
    if (0 < (s16)this->field_0x6a.HWORD) {
        if ((s16)this->field_0x6a.HWORD > 0x12b) {
            this->field_0x6a.HWORD = 0;
            this->field_0x20 = 0x20000;
            this->field_0x6c.HALF.HI = 1;
            sub_080788E0(this);
            EnqueueSFX(0x7c);
        } else {
            this->field_0x6a.HWORD -= 1;
        }
    }
    sub_08003FC4(this, 0x1800);
    if (((this->field_0x6c.HALF.HI != 0) && (this->field_0x20 == 0)) && this->height.WORD == 0) {
        this->field_0x6c.HALF.HI = 0;
        sub_080606C0(this);
    }
    if ((-1 < this->height.WORD) &&
        ((gPlayerEntity.collisionLayer == 0 || (this->collisionLayer == gPlayerEntity.collisionLayer)))) {
        sub_0806ED78(this);
    }
    sub_0800451C(this);
}

void sub_080606C0(Entity* this) {
    this->field_0x6c.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x6c.HALF.LO);
}

void sub_080606D8(Entity* this) {
    s32 index;

    index = gUnk_02002A40.unk8 - 2;
    if (index < 0) {
        index = 0;
    }
    ShowNPCDialogue(this, &gUnk_0810AA30[index]);
}

void sub_08060700(Entity* entity, u32 arg1) {
    s8* var0 = gUnk_0810A918[(s8)entity->field_0x68.HALF.LO];
    Coords16* coords = &gUnk_0810A66C[var0[(s8)entity->field_0x68.HALF.HI]];
    u32 x = coords->x + gRoomControls.roomOriginX;
    u32 y = coords->y + gRoomControls.roomOriginY;
    sub_0807DEDC(entity, arg1, x, y);
    gUnk_02033280.unk |= 1;
}

void sub_0806075C(Entity* this) {
    this->field_0x68.HALF.LO = 0xb;
    this->field_0x68.HALF.HI = 0xff;
}
