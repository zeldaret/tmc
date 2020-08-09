#include "global.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "flags.h"
#include "sprite.h"
#include "textbox.h"
#include "npc.h"

extern void sub_0805E3A0(Entity*, u32);
extern void sub_0807DD50(Entity*);
extern u32 sub_0806F5A4(u32);
extern void sub_0806F118(Entity*);
extern void sub_0807DD94(Entity*, u32);
extern u32 sub_0801E99C(void);
extern void sub_08078784(Entity*, u32);

extern u16 gUnk_08113344[];
extern u16 gUnk_0811334A[];

typedef struct {
    u8 filler[18];
    u32 unk;
} struct_0806BE84;

void Dampe(Entity* this) {

    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.b.draw = 1;
            sub_0805E3A0(this, 2);
            sub_0807DD50(this);
            return;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4);
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, 0);
            }
            return;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
        default:
    }
}

void sub_0806BE3C(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C();
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Dampe_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.b.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_0806BE84(Entity* this, struct_0806BE84* r1) {
    u32 msgIndex;

    r1->unk = 0;
    msgIndex = 1;
    if (!CheckLocalFlag(0x69)) {
        msgIndex = 0;
        SetLocalFlag(0x69);
        r1->unk = 1;
    }
    // Graveyard key
    if (GetInventoryValue(0x3C) >= 2) {
        msgIndex = 2;
    }
    TextboxNoOverlap(gUnk_08113344[msgIndex], this);
}

void sub_0806BEC8(Entity* this, struct_0806BE84* r1) {
    u32 hasGraveyardKey;
    u32 msgIndex;

    msgIndex = 0;
    r1->unk = 0;
    hasGraveyardKey = GetInventoryValue(0x3C);
    if (hasGraveyardKey == 1) {
        msgIndex = 1;
        r1->unk = 1;
    } else if (hasGraveyardKey >= 2) {
        msgIndex = 2;
    }

    TextboxNoOverlap(gUnk_0811334A[msgIndex], this);
}

void sub_0806BEFC() {
    SetTileType(0x17E, 0x58E, 1);
    SetTileType(0x17F, 0x58F, 1);
    SetTileType(0x180, 0x5CE, 1);
    SetTileType(0x181, 0x5CF, 1);
}

void sub_0806BF44(Entity* this, struct_0806BE84* r1) {
    r1->unk = 0;
    if (((this->x.HALF.HI - gRoomControls.roomScrollX) + 0x10U < 0x110) &&
        ((this->y.HALF.HI - gRoomControls.roomScrollY) + 0x18U < 0xD0)) {
        r1->unk = 1;
    }
}
