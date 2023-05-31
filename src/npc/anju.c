#include "entity.h"
#include "player.h"
#include "npc.h"

void Anju(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->animationState = this->timer;
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
    }
}

void Anju_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void Anju_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
