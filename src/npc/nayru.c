#include "global.h"
#include "entity.h"
#include "npc.h"

void Nayru(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                sub_0806F118(this);
                this->field_0x68.HALF.LO = this->animIndex;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
            } else {
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this) != 0) {
                this->action = 1;
                InitAnimationForceUpdate(this, this->field_0x68.HALF.LO);
            }
            break;
    }
}

void sub_08064928(Entity* this) {
    u32 tmp = sub_0801E99C(this);
    if ((gSave.unk141[sub_08002632(this)] != 0) && (gSave.global_progress < 7)) {
        tmp = 0;
    }
    sub_08078784(this, tmp);
}

void Nayru_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
