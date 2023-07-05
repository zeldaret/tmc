/**
 * @file phonograph.c
 * @ingroup NPCs
 *
 * @brief Phonograph NPC
 */
#include "common.h"
#include "entity.h"
#include "fileselect.h"
#include "flags.h"
#include "functions.h"
#include "message.h"
#include "screen.h"
#include "script.h"

#ifdef EU
void sub_0806EABC(Entity* this);
#else
void sub_0806EABC(Entity* this, u32 param);
#endif

void Phonograph(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->field_0x68.HWORD = 1;
        this->field_0x6a.HWORD = -1;
        sub_0807DD64(this);
        this->frameIndex = 0;
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
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
void sub_0806E964(Entity* this, ScriptExecutionContext* context) {
    if (gInput.newKeys & B_BUTTON) {
        sub_08050384();
        return;
    }

    if (context->unk_18 == 0) {
        context->unk_18++;
        this->field_0x6c.HWORD = 0;
        sub_0806EABC(this);
    }

    if (gInput.unk4 & 0xc0) {
        s32 val2, val3;
        s32 val = (s16)this->field_0x68.HWORD;
        if (gInput.unk4 & 0x40) {
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

        this->field_0x68.HWORD = val;
        sub_0806EABC(this);
        if ((s16)this->field_0x6c.HWORD > 0) {
            this->field_0x6c.HWORD--;
        }
    }

    if (gInput.newKeys & A_BUTTON) {
        if ((s16)this->field_0x68.HWORD != (s16)this->field_0x6a.HWORD || (s16)this->field_0x6c.HWORD == 0) {
            const s16* ptr2 = gUnk_081145E4;
            s32 field_0x68;
            SoundReq(*(ptr2 + (s16)this->field_0x68.HWORD * 2));
            this->field_0x6a.HWORD = this->field_0x68.HWORD;
            field_0x68 = (s16)this->field_0x68.HWORD * 4;
            ptr2++;
            this->field_0x6c.HWORD = *(s16*)((((s32)ptr2 + field_0x68)));
        } else {
            SoundReq(SONG_STOP_ALL);
            this->field_0x6a.HWORD = 0;
        }
    }

    if ((s16)this->field_0x6c.HWORD > 0) {
        if ((s16)-- this->field_0x6c.HWORD <= 0) {
            this->field_0x6a.HWORD = 0;
            this->field_0x6c.HWORD = 0;
        }
    }

    gActiveScriptInfo.commandSize = 0;
}
#else
void sub_0806E964(Entity* this, ScriptExecutionContext* context) {
    s32 val, val2, val3;
    if (gInput.newKeys & B_BUTTON) {
        sub_08050384();
        return;
    }

    if (context->unk_18 == 0) {
        context->unk_18++;
        this->field_0x6c.HWORD = 0;
        sub_0806EABC(this, (s16)this->field_0x68.HWORD);
    }

    val2 = 0x1c;
    if (CheckGlobalFlag(GAMECLEAR)) {
        val2 = 0x34;
    }
    val = (s16)this->field_0x68.HWORD;
    if (gInput.newKeys & 0xc0) {
        if (gInput.newKeys & 0x40) {
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
    } else if (gInput.unk4 & 0xc0) {
        if (gInput.unk4 & 0x40) {
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

    if (val != (s16)this->field_0x68.HWORD) {
        sub_0806EABC(this, val);
        if ((s16)this->field_0x6c.HWORD > 0) {
            this->field_0x6c.HWORD--;
        }
    }

    this->field_0x68.HWORD = val;

    if (gInput.newKeys & A_BUTTON) {
        if ((s16)this->field_0x68.HWORD != (s16)this->field_0x6a.HWORD || (s16)this->field_0x6c.HWORD == 0) {
            const s16* ptr2 = gUnk_081145E4;
            s32 field_0x68;
            SoundReq(*(ptr2 + (s16)this->field_0x68.HWORD * 2));
            this->field_0x6a.HWORD = this->field_0x68.HWORD;
            field_0x68 = (s16)this->field_0x68.HWORD * 4;
            ptr2++;
            this->field_0x6c.HWORD = *(s16*)((((s32)ptr2 + field_0x68)));
        } else {
            SoundReq(SONG_STOP_ALL);
            this->field_0x6a.HWORD = 0;
        }
    }

    if ((s16)this->field_0x6c.HWORD > 0) {
        if ((s16)-- this->field_0x6c.HWORD <= 0) {
            this->field_0x6a.HWORD = 0;
            this->field_0x6c.HWORD = 0;
        }
    }

    gActiveScriptInfo.commandSize = 0;
}
#endif

const static Font gUnk_081146B8 = {
    (u16*)0x2034fce, (void*)0x0600d000, (void*)0x2000d00, 0, 0xf080, 0xd0, 1, 1, 1, 1, 0, 0, 0, 1, 0
};

#ifdef EU
void sub_0806EABC(Entity* this) {
    sub_08050384();
    sub_08057044((s16)this->field_0x68.HWORD, gUnk_020227E8, 0x202020);
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
