#include "global.h"
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "player.h"

extern u32 sub_0801E99C(Entity*);
extern void sub_08078784(Entity*, u32);
extern void sub_0807DD50(Entity*);
extern void sub_0806F118(Entity*);
extern void ExecuteScriptCommandSet(Entity*, void*);
extern void sub_0805FF2C(Entity*, void*);

extern void (*const gUnk_08109BBC[])(Entity*);

void Festari(Entity* this) {
    gUnk_08109BBC[this->action](this);
}

void sub_0805FE10(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = TRUE;
    sub_0805E3A0(this, 2);
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
    sub_0807DD50(this);
}

void sub_0805FE48(Entity* this) {
    u8 bVar1;
    u16 uVar2;
    u32 uVar3;
    u32 uVar4;

    if (this->interactType == 2) {
        this->action = 2;
        this->interactType = 0;
        InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        sub_0806F118(this);
    } else {
        ExecuteScriptCommandSet(this, *(void**)&this->cutsceneBeh);
        sub_0805FF2C(this, *(void**)&this->cutsceneBeh);
        uVar4 = this->field_0x80.HWORD;
        if (uVar4 < 8) {
            if ((this->field_0x82.HWORD & 1) != 0) {
                uVar4 = (uVar4 & 0xfc) + (this->field_0xf >> 1);
            } else {
                uVar4 = (uVar4 & 0xfc) + (this->animationState >> 1);
                this->field_0xf = this->animationState;
            }
        }
        if (uVar4 != this->animIndex) {
            InitAnimationForceUpdate(this, uVar4);
        }
        UpdateAnimationSingleFrame(this);

        if (this->frames.b.f3) {
            switch (this->animIndex) {
                case 8:
                case 10:
                case 11:
                case 12:
                    this->field_0x80.HWORD = 0;
                    break;
            }
        }
        if ((this->field_0x82.HWORD & (~this->field_0x82.HWORD + 1)) == 2) {
            sub_0806ED78(this);
        }
    }
}

void sub_0805FF18(Entity* this) {
    if (UpdateFuseInteraction(this)) {
        this->action = 1;
    }
}
