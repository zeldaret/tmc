#include "entity.h"
#include "script.h"
#include "functions.h"
#include "fileselect.h"
#include "screen.h"
#include "common.h"
#include "flags.h"

#ifdef EU
void sub_0806EABC(Entity* this);
#else
void sub_0806EABC(Entity* this, u32 param);
#endif

extern void sub_08057044(u32, struct_020227E8*, u32);
extern u32 gUnk_081146B8;
extern s8 gUnk_081145E4[];

void Phonograph(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        this->field_0x68.HWORD = 1;
        this->field_0x6a.HWORD = 0xffff;
        sub_0807DD64(this);
        this->frameIndex = 0;
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
}

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
        if (CheckGlobalFlag(0x55)) {
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
            s8* ptr2 = gUnk_081145E4;
            s32 field_0x68;
            SoundReq(*(s16*)(ptr2 + (s16)this->field_0x68.HWORD * 4));
            this->field_0x6a.HWORD = this->field_0x68.HWORD;
            field_0x68 = (s16)this->field_0x68.HWORD * 4;
            ptr2 += 2;
            this->field_0x6c.HWORD = *(s16*)(((ptr2 + field_0x68)));
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
    if (CheckGlobalFlag(0x55)) {
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
            s8* ptr2 = gUnk_081145E4;
            s32 field_0x68;
            SoundReq(*(s16*)(ptr2 + (s16)this->field_0x68.HWORD * 4));
            this->field_0x6a.HWORD = this->field_0x68.HWORD;
            field_0x68 = (s16)this->field_0x68.HWORD * 4;
            ptr2 += 2;
            this->field_0x6c.HWORD = *(s16*)(((ptr2 + field_0x68)));
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

#ifdef EU
void sub_0806EABC(Entity* this) {
    sub_08050384();
    sub_08057044((s16)this->field_0x68.HWORD, gUnk_020227E8, 0x202020);
    sub_0805F46C(0x3302, &gUnk_081146B8);
    gScreen.bg0.updated = 1;
}
#else
void sub_0806EABC(Entity* this, u32 param) {
    sub_08050384();
    sub_08057044(param, gUnk_020227E8, 0x202020);
    sub_0805F46C(0x3302, &gUnk_081146B8);
    gScreen.bg0.updated = 1;
}
#endif
