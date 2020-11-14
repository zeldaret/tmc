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

void Anju(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.b.draw = 1;
            this->animationState = this->actionDelay;
            sub_0807DD50(this);
            return;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitializeAnimation(this,
                                    (this->animIndex & -4) + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, 0);
            }
            return;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
        default:
    }
}

void sub_0806C354(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C();
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Anju_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.b.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
