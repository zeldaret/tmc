#include "global.h"
#include "entity.h"
#include "npc.h"
#include "player.h"
#include "script.h"
#include "functions.h"

void Gentari(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = TRUE;
            SetDefaultPriority(this, 2);
            this->field_0x68.HALF.LO = sub_0801E99C(this);
            sub_08078784(this, this->field_0x68.HALF.LO);
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, 0);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }
}

void Gentari_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = TRUE;
        SetDefaultPriority(this, 2);
        InitAnimationForceUpdate(this, 10);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
