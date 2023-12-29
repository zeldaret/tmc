/**
 * @file phonograph.c
 * @ingroup NPCs
 *
 * @brief Phonograph NPC
 */
#define NENT_DEPRECATED
#include "common.h"
#include "entity.h"
#include "fileselect.h"
#include "flags.h"
#include "functions.h"
#include "message.h"
#include "screen.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s16 unk_68;
    /*0x6a*/ s16 unk_6a;
    /*0x6c*/ s16 unk_6c;
} PhonographEntity;

#ifdef EU
void sub_0806EABC(PhonographEntity* this);
#else
void sub_0806EABC(Entity* this, u32 param);
#endif

void Phonograph(PhonographEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        this->unk_68 = 1;
        this->unk_6a = -1;
        sub_0807DD64(super);
        super->frameIndex = 0;
    }
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
}

static const s16 gUnk_081145E4[] = {
    0x0,  -0x1, 0x3,  0x1c8, 0x4,  0x171, 0x5,  0x236,  0x6,  -0x1, 0xa,  -0x1, 0xc,  0x23a, 0xd,  -0x1, 0xe,  -0x1,
    0xf,  -0x1, 0x13, -0x1,  0x14, -0x1,  0x15, -0x1,   0x16, -0x1, 0x17, -0x1, 0x18, -0x1,  0x19, -0x1, 0x1a, -0x1,
    0x1c, -0x1, 0x1d, -0x1,  0x20, -0x1,  0x2d, -0x1,   0x2e, -0x1, 0x2f, -0x1, 0x33, -0x1,  0x35, -0x1, 0x37, -0x1,
    0x38, -0x1, 0x3a, -0x1,  0x1,  -0x1,  0x9,  0x320e, 0xb,  -0x1, 0x11, -0x1, 0x1e, -0x1,  0x1f, -0x1, 0x21, -0x1,
    0x22, -0x1, 0x23, -0x1,  0x24, -0x1,  0x25, -0x1,   0x26, -0x1, 0x27, -0x1, 0x28, -0x1,  0x29, -0x1, 0x2a, -0x1,
    0x2b, -0x1, 0x2c, -0x1,  0x30, -0x1,  0x31, -0x1,   0x32, -0x1, 0x34, -0x1, 0x36, -0x1,  0x3b, -0x1
};

#ifdef EU
void sub_0806E964(PhonographEntity* this, ScriptExecutionContext* context) {
    if (gInput.newKeys & B_BUTTON) {
        sub_08050384();
        return;
    }

    if (context->unk_18 == 0) {
        context->unk_18++;
        this->unk_6c = 0;
        sub_0806EABC(this);
    }

    if (gInput.unk4 & (DPAD_UP | DPAD_DOWN)) {
        s32 val2, val3;
        s32 val = this->unk_68;
        if (gInput.unk4 & DPAD_UP) {
            val++;
        } else {
            val--;
        }

        if (val <= 0) {
            val = 1;
        }

        val2 = 0x1c;
        if (CheckGlobalFlag(GAMECLEAR)) {
            val2 = 0x34;
        }

        if (val > val2) {
            val = val2;
        }

        this->unk_68 = val;
        sub_0806EABC(this);
        if (this->unk_6c > 0) {
            this->unk_6c--;
        }
    }

    if (gInput.newKeys & A_BUTTON) {
        if (this->unk_68 != this->unk_6a || this->unk_6c == 0) {
            const s16* ptr2 = gUnk_081145E4;
            s32 field_0x68;
            SoundReq(*(ptr2 + this->unk_68 * 2));
            this->unk_6a = this->unk_68;
            field_0x68 = this->unk_68 * 4;
            ptr2++;
            this->unk_6c = *(s16*)((((s32)ptr2 + field_0x68)));
        } else {
            SoundReq(SONG_STOP_ALL);
            this->unk_6a = 0;
        }
    }

    if (this->unk_6c > 0) {
        if (--this->unk_6c <= 0) {
            this->unk_6a = 0;
            this->unk_6c = 0;
        }
    }

    gActiveScriptInfo.commandSize = 0;
}
#else
void sub_0806E964(PhonographEntity* this, ScriptExecutionContext* context) {
    s32 val, val2, val3;
    if (gInput.newKeys & B_BUTTON) {
        sub_08050384();
        return;
    }

    if (context->unk_18 == 0) {
        context->unk_18++;
        this->unk_6c = 0;
        sub_0806EABC(super, this->unk_68);
    }

    val2 = 0x1c;
    if (CheckGlobalFlag(GAMECLEAR)) {
        val2 = 0x34;
    }
    val = this->unk_68;
    if (gInput.newKeys & (DPAD_UP | DPAD_DOWN)) {
        if (gInput.newKeys & DPAD_UP) {
            val++;
        } else {
            val--;
        }

        if (val <= 0) {
            val = val2;
        }

        if (val > val2) {
            val = 1;
        }
    } else if (gInput.unk4 & (DPAD_UP | DPAD_DOWN)) {
        if (gInput.unk4 & DPAD_UP) {
            val++;
        } else {
            val--;
        }

        if (val <= 0) {
            val = 1;
        }

        if (val > val2) {
            val = val2;
        }
    }

    if (val != this->unk_68) {
        sub_0806EABC(super, val);
        if (this->unk_6c > 0) {
            this->unk_6c--;
        }
    }

    this->unk_68 = val;

    if (gInput.newKeys & A_BUTTON) {
        if (this->unk_68 != this->unk_6a || this->unk_6c == 0) {
            const s16* ptr2 = gUnk_081145E4;
            s32 field_0x68;
            SoundReq(*(ptr2 + this->unk_68 * 2));
            this->unk_6a = this->unk_68;
            field_0x68 = this->unk_68 * 4;
            ptr2++;
            this->unk_6c = *(s16*)((((s32)ptr2 + field_0x68)));
        } else {
            SoundReq(SONG_STOP_ALL);
            this->unk_6a = 0;
        }
    }

    if (this->unk_6c > 0) {
        if (--this->unk_6c <= 0) {
            this->unk_6a = 0;
            this->unk_6c = 0;
        }
    }

    gActiveScriptInfo.commandSize = 0;
}
#endif

const static Font gUnk_081146B8 = {
    (u16*)0x2034fce, (void*)0x0600d000, (void*)0x2000d00, 0, 0xf080, 0xd0, 1, 1, 1, 1, 0, 0, 0, 1, 0
};

#ifdef EU
void sub_0806EABC(PhonographEntity* this) {
    sub_08050384();
    sub_08057044(this->unk_68, gUnk_020227E8, 0x202020);
    ShowTextBox(0x3302, &gUnk_081146B8);
    gScreen.bg0.updated = 1;
}
#else
void sub_0806EABC(Entity* this, u32 param) {
    sub_08050384();
    sub_08057044(param, gUnk_020227E8, 0x202020);
    ShowTextBox(0x3302, &gUnk_081146B8);
    gScreen.bg0.updated = 1;
}
#endif
