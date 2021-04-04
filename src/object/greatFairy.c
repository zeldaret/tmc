#include "global.h"
#include "audio.h"
#include "entity.h"
#include "room.h"
#include "screen.h"
#include "greatFairy.h"
#include "flags.h"
#include "save.h"
#include "random.h"
#include "script.h"
#include "structures.h"
#include "functions.h"

enum {
    BEHAVIORS,
    WINGS,
    WAKE,
    MINI,
    MINIAFFINE,
    DROPLET,
    RIPPLE,
    BIGRIPPLE,
    FORM8,
    FORM9,
};

// Main
void GreatFairy(Entity* this) {
    if (this->action == 0) {
        s32 temp = 11;
        this->type2 = this->type % temp;
    }
    GreatFairy_Main[this->type2](this);
}

// Behaviors
void GreatFairy_CallBehavior(Entity* this) {
    GreatFairy_Behaviors[this->action](this);

    if ((gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY) < 168) {

        gRoomControls.cameraTarget = this;
        gRoomControls.unk5 = 2;
    } else {
        gRoomControls.cameraTarget = &gPlayerEntity;
        gRoomControls.unk5 = 2;
    }
}

// Init
void GreatFairy_Init(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->actionDelay = 0;
    this->cutsceneBeh.HWORD = 290;
}

void GreatFairy_DormantUpdate(Entity* this) {
    u16* pFrame;    // r1@2
    s32 frame;      // r1@4
    Entity* ripple; // r5@16

    if (!CheckRoomFlag(0))
        return;

    pFrame = &this->cutsceneBeh.HWORD;
    if (*pFrame != 0) {
        --*pFrame;
    }
    switch (*pFrame) {
        case 0:
            this->action = 2;
            break;
        case 130:
        case 150:
        case 170:
        case 210:
        case 289:
            ripple = GreatFairy_CreateForm(this, RIPPLE, 0);
            if (ripple) {
                PositionRelative(this, ripple, (s32)GreatFairy_RippleOffsets[this->actionDelay] * 65536,
                                 (s32)GreatFairy_RippleOffsets[this->actionDelay + 1] * 65536);
                this->actionDelay += 2;
                break;
            }
    }
}

void GreatFairy_CreateBigRipple(Entity* this) {
    Entity* ripple;

    ripple = GreatFairy_CreateForm(this, BIGRIPPLE, 0);
    if (ripple != NULL) {
        PositionRelative(this, ripple, 0, 0x80000);
        this->action = 3;
    }
}

// Great Fairy spawning in update
void GreatFairy_SpawningUpdate(Entity* this) {
    Entity* mini;
    u32 var;

    if (gRoomVars.greatFairyState & 1) {
        mini = GreatFairy_CreateForm(this, WAKE, 0); //???
        if (mini != NULL) {
            CopyPosition(this, mini);
            DoFade(6, 4);
            SoundReq(SFX_145);
            this->action = 4;
            this->actionDelay = 60;
            this->spriteSettings.b.draw = 1;
        }
    }
}

void GreatFairy_MiniUpdate(Entity* this) {
    Entity* target;

    GetNextFrame(this);
    if (this->actionDelay != 0) {
        --this->actionDelay;
    } else {
        target = GreatFairy_CreateForm(this, WINGS, 0);
        if (target != NULL) {
            PositionRelative(this, target, 0, -0x140000);
            this->action = 5;
            this->actionDelay = 120;
            this->field_0xf = 0;
        }
    }
}

// This is the great fairy's "normal" form
void GreatFairy_FinalUpdate(Entity* this) {
    Entity* target;

    if (this->actionDelay != 0) {
        --this->actionDelay;
    } else {
        if ((this->field_0xf == 0) && (target = GreatFairy_CreateForm(this, FORM9, 0), target != NULL)) {
            PositionRelative(this, target, 0, -0x4C0000);
            target->parent = this;
            this->field_0xf = 1;
        }
    }
    GetNextFrame(this);
}

void GreatFairy_WingsCallBehavior(Entity* this) {
    GreatFairy_WingsBehaviors[this->action](this);
}

void GreatFairy_WingsInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->spritePriority.b0 = 5;
    this->spriteSettings.b.draw = 1;
    this->spriteRendering.alphaBlend = 1;
    gScreen.controls.layerFXControl = 0xF40;
    gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 8);
    this->speed = 1024;
    sub_0805EC9C(this, 1024, 256, 0);
}

void GreatFairy_WingsUpdate(Entity* this) {
    this->speed -= 32;
    if (this->speed == 256) {
        this->action = 2;
        sub_0805EC60(this);
        gRoomVars.greatFairyState |= 32;
        gActiveScriptInfo.unk_00 |= 4;
    } else {
        sub_0805EC9C(this, this->speed, 256, 0);
    }
}

void nullsub_116(Entity* this) {
}

// The wake that appears beneath the Great Fairy as she stands in the water
void GreatFairy_WakeCallBehavior(Entity* this) {
    GreatFairy_WakeBehaviors[this->action](this);
}

void GreatFairy_WakeInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->spriteSettings.b.draw = 1;
    this->spritePriority.b0 = 6;
}

void GreatFairy_WakeUpdate(Entity* this) {
    GetNextFrame(this);
}

// The miniature sprite that emerges from the water when Great Fairy is spawned
void GreatFairy_MiniCallBehavior(Entity* this) {
    GreatFairy_MiniBehaviors[this->action](this);
}

void GreatFairy_MiniInit(Entity* this) {
    Entity* aff;

    aff = GreatFairy_CreateForm(this, MINIAFFINE, 0);
    if (aff != NULL) {
        CopyPosition(this, aff);
        aff->parent = this;
        GreatFairy_InitializeAnimation(this);
        this->spriteSettings.b.draw = 1;
        this->field_0xf = 0;
    }
}

// Spawns a droplet of water once it reaches a certain height
void GreatFairy_MiniRisingUpdate(Entity* this) {
    Entity* target;

    GetNextFrame(this);
    this->height.WORD -= 0x8000;
    if (this->height.HALF.HI == -20) {
        this->action = 2;
        SoundReq(SFX_HEART_CONTAINER_SPAWN);
    } else {
        if (((this->height.HALF.HI == -10) && (this->field_0xf == 0)) &&
            (target = GreatFairy_CreateForm(this, DROPLET, 0), target != NULL)) {
            PositionRelative(this, target, 0, 0x40000);
            this->field_0xf = 1;
        }
    }
}

// Deletes itself
void GreatFairy_MiniRemoveMe(Entity* this) {
    GetNextFrame(this);
    sub_080873D0(this);
    if (gRoomVars.greatFairyState & 1) {
        DeleteEntity(this);
    }
}

// Same as mini Great Fairy except it is able to stretch
void GreatFairy_MiniAffineCallBehavior(Entity* this) {
    GreatFairy_MiniAffineBehaviors[this->action](this);
}

void GreatFairy_MiniAffineInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->spritePriority.b0 = 6;
    this->spriteSettings.b.draw = 1;
}

// Getting ready for affine transformation
void GreatFairy_MiniAffineInit2(Entity* this) {
    Entity* parent = this->parent;

    CopyPosition(parent, this);

    if (this->height.HALF.HI == -20) {
        this->action = 2;
        this->actionDelay = 90;
        this->speed = 4096;
        this->spriteRendering.b0 = 3;
        sub_0805EC9C(this, 256, 256, 0);
    }
}

// Mini great fairy stretch
void GreatFairy_MiniAffineUpdate(Entity* this) {
    if (--this->actionDelay == 0) {
        gRoomVars.greatFairyState |= 1;
        this->action = 3;
        sub_0805EC60(this);
    } else {
        this->speed -= 24;
        sub_0805EC9C(this, 256, this->speed >> 4, 0);
    }
}

// The droplet that falls off of the mini Great Fairy emerging from the water
void GreatFairy_DropletCallBehavior(Entity* this) {
    GreatFairy_DropletBehaviors[this->action](this);
}

void GreatFairy_DropletInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->spriteSettings.b.draw = 1;
    this->height.HALF.HI = 0;
    this->spritePriority.b0 = 5;
    SoundReq(SFX_140);
}

void GreatFairy_DropletUpdate(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        DeleteEntity(this);
    }
}

// Ripples that appear before the great fairy emerges
void GreatFairy_RippleCallBehavior(Entity* this) {
    GreatFairy_RippleBehaviors[this->action](this);
}

void GreatFairy_RippleInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->spriteSettings.b.draw = 1;
    this->spritePriority.b0 = 6;
}

void GreatFairy_RippleUpdate(Entity* this) {
    if (gRoomVars.greatFairyState & 2) {
        DeleteEntity(this);
    } else {
        GetNextFrame(this);
    }
}

// Big ripple that appears in the spot where the fairy emerges from
void GreatFairy_BigRippleCallBehavior(Entity* this) {
    GreatFairy_BigRippleBehaviors[this->action](this);
}

void GreatFairy_BigRippleInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->actionDelay = 120;
    this->spriteSettings.b.draw = 1;
    this->spritePriority.b0 = 5;
    SoundReq(SFX_TELEPORTER);
}

void GreatFairy_BigRippleUpdate(Entity* this) {
    Entity* target;

    GetNextFrame(this);
    if (this->actionDelay != 0) {
        --this->actionDelay;
    } else {
        target = GreatFairy_CreateForm(this, MINI, 0);
        if (target != NULL) {
            PositionRelative(this, target, 0, -0x80000);
            gRoomVars.greatFairyState |= 2;
            DeleteEntity(this);
        }
    }
}

// Energy bands that surround the mini Great Fairy as it is transforming
void GreatFairy_EnergyCallBehavior(Entity* this) {
    GreatFairy_EnergyBehaviors[this->action](this);
}

void GreatFairy_EnergyInit(Entity* this) {
    GreatFairy_InitializeAnimation(this);
    this->spriteSettings.b.draw = 1;
    this->spritePriority.b0 = 5;
}

void GreatFairy_EnergyUpdate(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        DeleteEntity(this);
    }
}

void sub_08087114(Entity* this) {
    if (this->type2 == 0) {
        GreatFairy_Form1Behaviors[this->action](this);
    } else {
        GreatFairy_Form2Behaviors[this->action](this);
        GetNextFrame(this);
    }
}

NONMATCH("asm/greatFairy/sub_08087150.inc", void sub_08087150(Entity* this)) {
    u32 temp;

    GreatFairy_InitializeAnimation(this);
    this->spriteSettings.b.draw = TRUE;
    this->spriteOrientation.flipY = 0;
    this->spriteRendering.b0 = 0;
    this->spritePriority.b0 = 3;
    this->speed = 128;
    this->direction = 0x10;
    temp = gUnk_0812079C[0];
    this->palette.raw = ((temp & 0xf) << 4) | 0xf;
}
END_NONMATCH

void nullsub_516(Entity* this) {
}

void sub_080871A8(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->actionDelay = 60;
        gRoomVars.greatFairyState |= 4;
    }
}

void sub_080871D0(Entity* this) {
    if (--this->actionDelay == 0) {
        gRoomVars.greatFairyState |= 8;
        DeleteEntity(this);
    }
}

void sub_080871F8(Entity* this) {
    Entity* temp = this->attachedEntity;

    if ((temp->x.HALF.HI == this->x.HALF.HI) && (temp->y.HALF.HI - 32 == this->y.HALF.HI)) {
        this->action = 2;
    } else {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, temp->x.HALF.HI, temp->y.HALF.HI - 32);
        sub_0806F69C(this);
    }
}

void sub_08087240(Entity* this) {
    if (gRoomVars.greatFairyState & 4) {
        this->action = 3;
        this->actionDelay = 20;
        this->direction = 16;
    }
}

void sub_08087264(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay--;
        sub_0806F69C(this);
    }
}

void sub_0808727C(Entity* this) {
    if (--this->actionDelay == 0) {
        DeleteEntity(this);
    }
}

void sub_08087294(Entity* this) {
    gUnk_081207A4[this->action](this);
}

void sub_080872AC(Entity* this) {
    this->spriteSettings.b.draw = 1;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 0;
    this->field_0x68.HWORD = this->x.HALF.HI;
    this->field_0x6a.HWORD = this->y.HALF.HI;
    this->direction = (u8)Random() & 0x1F;
    this->speed = 32;
    GreatFairy_InitializeAnimation(this);
}

void sub_080872F8(Entity* this) {
    s32 temp;
    sub_0806F69C(this);
    GetNextFrame(this);
    if (((u16)(this->field_0x68.HWORD - this->x.HALF.HI) > 0xc) ||
        ((u16)(this->field_0x6a.HWORD - this->y.HALF.HI) > 0xc)) {
        this->direction =
            sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, (s16)this->field_0x68.HWORD, (s16)this->field_0x6a.HWORD);
        this->direction = (this->direction + gUnk_081207AC[Random() & 3]) & 0x1f;
    }
    temp = gSineTable[this->actionDelay + 64];
    this->height.HALF.HI = (temp >> 6) - 8;
    this->actionDelay++;
}

void GreatFairy_InitializeAnimation(Entity* this) {
    s32 temp = 11;

    this->action = 1;
    this->type2 = this->type % temp;
    this->collisionLayer = 2;
    InitializeAnimation(this, this->type2);
    sub_0805E3A0(this, 2);
}

Entity* GreatFairy_CreateForm(Entity* this, u32 curForm, u32 parameter) {
    s32 nextForm;
    Entity* ent;

    nextForm = this->type;
    nextForm /= 11;

    ent = CreateObject(0x1b, (u8)nextForm * 11 + curForm, parameter);
    return ent;
}

void sub_080873D0(Entity* this) {
    Entity* ent;

    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        ent = GreatFairy_CreateForm(this, 8, 0);
        if (ent != NULL) {
            CopyPosition(this, ent);
            this->actionDelay = 48;
        }
    }
}

void sub_080873FC(void) {
    Entity* ent;

    SoundReq(SFX_APPARATE);
    gRoomControls.cameraTarget = NULL;

    while (ent = FindEntityByID(0x6, 0x1b, 0x6), ent != NULL) {
        DeleteEntity(ent);
    }
}

void sub_08087424(Entity* this, ScriptExecutionContext* context) {
    Entity* ent;

    sub_080791D0();
    ent = CreateObject(0x64, 0, 0);
    if (ent != NULL) {
        ent->parent = &gPlayerEntity;
        CopyPosition(&gPlayerEntity, ent);
        sub_0805E3A0(ent, 2);
    }

    switch (context->intVariable) {
        case 0:
            gSave.stats.arrowCount = 0;
            break;
        case 1:
            gSave.stats.bombCount = 0;
            break;
    }
}

void sub_0808747C(Entity* this, ScriptExecutionContext* context) {
    u32 iVar1 = 0;

    iVar1 = (u32)FindEntity(0x6, 0xf, 0x6, 0xb, 0x0);
    if (iVar1 != 0) {
        iVar1 = 1;
    }
    context->condition = iVar1;
}

void (*const GreatFairy_Main[])(Entity*) = {
    GreatFairy_CallBehavior,
    GreatFairy_WingsCallBehavior,
    GreatFairy_WakeCallBehavior,
    GreatFairy_MiniCallBehavior,
    GreatFairy_MiniAffineCallBehavior,
    GreatFairy_DropletCallBehavior,
    GreatFairy_RippleCallBehavior,
    GreatFairy_BigRippleCallBehavior,
    GreatFairy_EnergyCallBehavior,
    sub_08087114,
    sub_08087294,
};

void (*const GreatFairy_Behaviors[])(Entity*) = {
    GreatFairy_Init,           GreatFairy_DormantUpdate, GreatFairy_CreateBigRipple,
    GreatFairy_SpawningUpdate, GreatFairy_MiniUpdate,    GreatFairy_FinalUpdate,
};

const s16 GreatFairy_RippleOffsets[10] = {
    0, 0, -32, -8, 16, 20, 24, -12, -16, 24,
};

void (*const GreatFairy_WingsBehaviors[])(Entity*) = {
    GreatFairy_WingsInit,
    GreatFairy_WingsUpdate,
    nullsub_116,
};

void (*const GreatFairy_WakeBehaviors[])(Entity*) = {
    GreatFairy_WakeInit,
    GreatFairy_WakeUpdate,
};

void (*const GreatFairy_MiniBehaviors[])(Entity*) = {
    GreatFairy_MiniInit,
    GreatFairy_MiniRisingUpdate,
    GreatFairy_MiniRemoveMe,
};

void (*const GreatFairy_MiniAffineBehaviors[])(Entity*) = {
    GreatFairy_MiniAffineInit,
    GreatFairy_MiniAffineInit2,
    GreatFairy_MiniAffineUpdate,
    DeleteEntity,
};

void (*const GreatFairy_DropletBehaviors[])(Entity*) = {
    GreatFairy_DropletInit,
    GreatFairy_DropletUpdate,
};

void (*const GreatFairy_RippleBehaviors[])(Entity*) = {
    GreatFairy_RippleInit,
    GreatFairy_RippleUpdate,
};

void (*const GreatFairy_BigRippleBehaviors[])(Entity*) = {
    GreatFairy_BigRippleInit,
    GreatFairy_BigRippleUpdate,
};

void (*const GreatFairy_EnergyBehaviors[])(Entity*) = {
    GreatFairy_EnergyInit,
    GreatFairy_EnergyUpdate,
};

void (*const GreatFairy_Form1Behaviors[])(Entity*) = {
    sub_08087150,
    nullsub_516,
    sub_080871A8,
    sub_080871D0,
};

void (*const GreatFairy_Form2Behaviors[])(Entity*) = {
    sub_08087150, sub_080871F8, sub_08087240, sub_08087264, sub_0808727C,
};
