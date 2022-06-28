#include "entity.h"
#include "area.h"
#include "main.h"
#include "sound.h"
#include "object.h"

void sub_0808C964(Entity*);
void sub_0808CA10(Entity*);

static const s16 gUnk_08121648[] = { 264, 252, 256, 256, 248, 260, 240, 264, 248, 260, 256, 256, 264, 252, 272, 248 };

void MacroMushroomStalks(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808C964,
        sub_0808CA10,
    };
    actionFuncs[this->action](this);
}

void Object75(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808C964,
        sub_0808CA10,
    };

    actionFuncs[this->action](this);
}

void Object76(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808C964,
        sub_0808CA10,
    };

    actionFuncs[this->action](this);
}

void sub_0808C964(Entity* this) {
    u32 uVar1;

    this->frameIndex = this->type;
    if ((this->id == OBJECT_76) && (gUI.roomControls.area != AREA_HYRULE_TOWN)) {
        this->type -= 9;
    }
    if (4 < this->type) {
        if (gArea.portal_exit_dir != this->type2) {
            DeleteThisEntity();
        }
    }
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->spriteOrientation.flipY = 2;
    this->spriteRendering.b3 = 2;
    this->spritePriority.b0 = this->type2;
    if (this->id != OBJECT_75 && (u8)(this->type - 1) < 3) {
        this->spriteRendering.b0 = 3;
        if (this->type == 1) {
            uVar1 = 0xe0;
        } else {
            uVar1 = 0x100;
        }
        SetAffineInfo(this, uVar1, uVar1, 0);
    }
}

void sub_0808CA10(Entity* this) {
    s32 sVar3;
    s32 sVar5;

    switch (this->type) {
        case 1:
            if (gUnk_02018EB0.unk_18 != 0) {
                this->timer = 32;
                gUnk_02018EB0.unk_18 = 0;
                SoundReq(SFX_12E);
            }
            break;
        case 2:
            if (gUnk_02018EB0.unk_19 != 0) {
                this->timer = 32;
                gUnk_02018EB0.unk_19 = 0;
                SoundReq(SFX_12E);
            }
            break;
        case 3:
            if (gUnk_02018EB0.unk_1a != 0) {
                this->timer = 32;
                gUnk_02018EB0.unk_1a = 0;
                SoundReq(SFX_12E);
            }
            break;
    }

    if ((this->id != OBJECT_75 && ((u8)(this->type - 1) < 3)) && this->timer != 0) {
        this->timer--;
        this->subtimer++;
        if (this->timer != 0) {
            sVar5 = gUnk_08121648[this->subtimer & 0xe];
            sVar3 = gUnk_08121648[(this->subtimer & 0xe) + 1];
        } else {
            sVar3 = 0x100;
            sVar5 = sVar3;
        }

        if (this->type == 1) {
            sVar5 = sVar5 - 0x20;
            sVar3 = sVar3 - 0x20;
        }
        SetAffineInfo(this, sVar5, sVar3, 0);
    }
}
