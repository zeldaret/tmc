#include "global.h"
#include "entity.h"
#include "player.h"
#include "npc.h"
#include "flags.h"
#include "functions.h"
#include "script.h"

void Gina(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.b.draw = 1;

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
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this) != 0) {
                this->action = 1;
#if defined(USA) || defined(DEMO)
                SetLocalFlag(0x88);
#endif
            }
            break;
    }
}

void Gina_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
