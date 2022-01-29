#include "entity.h"
#include "script.h"
#include "functions.h"
#include "npc.h"

extern u16 gUnk_081104F8[];

extern void (*const gUnk_081104E0[])(Entity*);
extern void (*const gUnk_081104EC[])(Entity*);

void KingDaltus(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        if (this->interactType == 2) {
            this->interactType = 0;
            this->action = 2;
            InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
            sub_0806F118(this);
        }
        gUnk_081104EC[this->action](this);
    } else {
        gUnk_081104E0[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_08066654(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
    InitAnimationForceUpdate(this, 2);
}

void sub_08066688(Entity* this) {
    s32 tmp = sub_0806ED9C(this, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
        } else {
            this->field_0xf -= 1;
            tmp = this->animIndex;
        }
    }
    if (sub_0806F078(this, tmp) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != 0) {
        this->action = 2;
        this->interactType = 0;
    }
}

void sub_080666DC(Entity* this) {
    this->action = 1;
}

void sub_080666E4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_0807DD50(this);
}

void sub_0806670C(Entity* this) {
    sub_0807DD94(this, NULL);
}

void sub_08066718(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806672C(Entity* this) {
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void sub_0806673C(Entity* this) {
    u32 index;
    if (CheckGlobalFlag(2) == 0) {
        index = 0;
    } else if (GetInventoryValue(2) == 0) {
        index = 1;
    } else if (GetInventoryValue(3) == 0) {
        index = 2;
    } else {
        index = 3;
    }
    MessageNoOverlap(gUnk_081104F8[index], this);
}

void KingDaltus_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
