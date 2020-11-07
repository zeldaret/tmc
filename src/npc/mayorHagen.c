#include "global.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "flags.h"
#include "sprite.h"
#include "textbox.h"
#include "npc.h"
#include "structures.h"
#include "functions.h"

extern void sub_0807DD50(Entity*);
extern u32 sub_0806F5A4(u32);
extern void sub_0806F118(Entity*);
extern void sub_08078784(Entity*, u32);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void sub_08078850();
extern u32 gUnk_08113F44;
extern Dialog gUnk_08113F48[];
extern u32 GetInventoryValue(u32);
extern u32 CheckLocalFlag(u32);
extern void SetLocalFlag();

void MayorHagen(Entity* this) {
    u32 v;
    switch (this->action) {
        case 0:
            this->action = 1;
            this->field_0x68.HALF.HI = 0;
            this->field_0x68.HALF.LO = sub_0801E99C(this);
            sub_0805E3A0(this, 2);
            sub_0807DD50(this);
            break;
        case 1:
            v = this->interactType;
            if (v == 2) {
                this->action = v;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitAnimationForceUpdate(this, 4 + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
                break;
            }
            sub_0807DDAC(this, 0);
            sub_0807DDE4(this);
            UpdateAnimationSingleFrame(this);
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
                InitAnimationForceUpdate(this, this->field_0x68.HALF.HI);
            }
    }
}

void sub_0806CE5C(Entity* this) {
    sub_08078784(this, sub_0801E99C(this));
    sub_08078850(this, 1, 0, &gUnk_08113F44);
}

void sub_0806CE80(Entity* this) {
    u32 v;
    u32 v2;
    v = gUnk_02002A40.unk8;
    if (v == 5) {
        // flippers
        if (GetInventoryValue(0x46) == 0) {
            if (CheckLocalFlag(0x70) != 0) {
                v2 = CheckLocalFlag(0x71);
                if (v2 == 0) {
                    v = 0xb;
                    SetLocalFlag(0x71);
                } else {
                    v = 0xc;
                }
            } else {
                v = 0xa;
            }
        } else {
            v2 = CheckLocalFlag(0x89);
            if (v2 == 0) {
                v = 0xd;
                SetLocalFlag(0x89);
            } else {
                v = 0xe;
            }
        }
    }
    ShowNPCDialogue(this, &gUnk_08113F48[v]);
}

void MayorHagen_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.b.draw = 1;
        InitAnimationForceUpdate(this, 8);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
