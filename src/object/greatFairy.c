/**
 * @file greatFairy.c
 * @ingroup Objects
 *
 * @brief Great Fairy object
 */
#include "functions.h"
#include "object.h"
#include "save.h"
#include "screen.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s16 unk_68;
    /*0x6a*/ s16 unk_6a;
    /*0x6c*/ u8 unused1[24];
    /*0x84*/ u16 unk_84;
} GreatFairyEntity;

void GreatFairy_InitializeAnimation(GreatFairyEntity*);
Entity* GreatFairy_CreateForm(GreatFairyEntity*, u32, u32);
void sub_080873D0(GreatFairyEntity*);
extern void (*const GreatFairy_Main[])(GreatFairyEntity*);
extern void (*const GreatFairy_Behaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_WingsBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_WakeBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_MiniBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_MiniAffineBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_DropletBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_RippleBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_BigRippleBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_EnergyBehaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_Form1Behaviors[])(GreatFairyEntity*);
extern void (*const GreatFairy_Form2Behaviors[])(GreatFairyEntity*);
extern void (*const gUnk_081207A4[])(GreatFairyEntity*);

extern const s16 GreatFairy_RippleOffsets[10];
extern u8 gUnk_0812079C[8];
extern s8 gUnk_081207AC[];

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
void GreatFairy(GreatFairyEntity* this) {
    if (super->action == 0) {
        s32 temp = 11;
        super->type2 = super->type % temp;
    }
    GreatFairy_Main[super->type2](this);
}

// Behaviors
void GreatFairy_CallBehavior(GreatFairyEntity* this) {
    GreatFairy_Behaviors[super->action](this);

    if ((gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y) < 168) {

        gRoomControls.camera_target = super;
        gRoomControls.scrollSpeed = 2;
    } else {
        gRoomControls.camera_target = &gPlayerEntity.base;
        gRoomControls.scrollSpeed = 2;
    }
}

// Init
void GreatFairy_Init(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->timer = 0;
    this->unk_84 = 290;
}

void GreatFairy_DormantUpdate(GreatFairyEntity* this) {
    u16* pFrame;    // r1@2
    s32 frame;      // r1@4
    Entity* ripple; // r5@16

    if (!CheckRoomFlag(0))
        return;

    pFrame = &this->unk_84;
    if (*pFrame != 0) {
        --*pFrame;
    }
    switch (*pFrame) {
        case 0:
            super->action = 2;
            break;
        case 130:
        case 150:
        case 170:
        case 210:
        case 289:
            ripple = GreatFairy_CreateForm(this, RIPPLE, 0);
            if (ripple) {
                PositionRelative(super, ripple, Q_16_16(GreatFairy_RippleOffsets[super->timer]),
                                 Q_16_16(GreatFairy_RippleOffsets[super->timer + 1]));
                super->timer += 2;
                break;
            }
    }
}

void GreatFairy_CreateBigRipple(GreatFairyEntity* this) {
    Entity* ripple;

    ripple = GreatFairy_CreateForm(this, BIGRIPPLE, 0);
    if (ripple != NULL) {
        PositionRelative(super, ripple, 0, Q_16_16(8.0));
        super->action = 3;
    }
}

// Great Fairy spawning in update
void GreatFairy_SpawningUpdate(GreatFairyEntity* this) {
    Entity* mini;
    u32 var;

    if (gRoomVars.animFlags & 1) {
        mini = GreatFairy_CreateForm(this, WAKE, 0); //???
        if (mini != NULL) {
            CopyPosition(super, mini);
            SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 4);
            SoundReq(SFX_145);
            super->action = 4;
            super->timer = 60;
            super->spriteSettings.draw = 1;
        }
    }
}

void GreatFairy_MiniUpdate(GreatFairyEntity* this) {
    Entity* target;

    GetNextFrame(super);
    if (super->timer != 0) {
        --super->timer;
    } else {
        target = GreatFairy_CreateForm(this, WINGS, 0);
        if (target != NULL) {
            PositionRelative(super, target, 0, Q_16_16(-20.0));
            super->action = 5;
            super->timer = 120;
            super->subtimer = 0;
        }
    }
}

// This is the great fairy's "normal" form
void GreatFairy_FinalUpdate(GreatFairyEntity* this) {
    Entity* target;

    if (super->timer != 0) {
        --super->timer;
    } else {
        if ((super->subtimer == 0) && (target = GreatFairy_CreateForm(this, FORM9, 0), target != NULL)) {
            PositionRelative(super, target, 0, Q_16_16(-76.0));
            target->parent = super;
            super->subtimer = 1;
        }
    }
    GetNextFrame(super);
}

void GreatFairy_WingsCallBehavior(GreatFairyEntity* this) {
    GreatFairy_WingsBehaviors[super->action](this);
}

void GreatFairy_WingsInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spritePriority.b0 = 5;
    super->spriteSettings.draw = 1;
    super->spriteRendering.alphaBlend = 1;
    gScreen.controls.layerFXControl = 0xF40;
    gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 8);
    super->speed = 1024;
    SetAffineInfo(super, 1024, 256, 0);
}

void GreatFairy_WingsUpdate(GreatFairyEntity* this) {
    super->speed -= 32;
    if (super->speed == 256) {
        super->action = 2;
        sub_0805EC60(super);
        gRoomVars.animFlags |= 32;
        gActiveScriptInfo.syncFlags |= 4;
    } else {
        SetAffineInfo(super, super->speed, 256, 0);
    }
}

void nullsub_116(GreatFairyEntity* this) {
}

// The wake that appears beneath the Great Fairy as she stands in the water
void GreatFairy_WakeCallBehavior(GreatFairyEntity* this) {
    GreatFairy_WakeBehaviors[super->action](this);
}

void GreatFairy_WakeInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 6;
}

void GreatFairy_WakeUpdate(GreatFairyEntity* this) {
    GetNextFrame(super);
}

// The miniature sprite that emerges from the water when Great Fairy is spawned
void GreatFairy_MiniCallBehavior(GreatFairyEntity* this) {
    GreatFairy_MiniBehaviors[super->action](this);
}

void GreatFairy_MiniInit(GreatFairyEntity* this) {
    Entity* aff;

    aff = GreatFairy_CreateForm(this, MINIAFFINE, 0);
    if (aff != NULL) {
        CopyPosition(super, aff);
        aff->parent = super;
        GreatFairy_InitializeAnimation(this);
        super->spriteSettings.draw = 1;
        super->subtimer = 0;
    }
}

// Spawns a droplet of water once it reaches a certain height
void GreatFairy_MiniRisingUpdate(GreatFairyEntity* this) {
    Entity* target;

    GetNextFrame(super);
    super->z.WORD -= Q_16_16(0.5);
    if (super->z.HALF.HI == -20) {
        super->action = 2;
        SoundReq(SFX_HEART_CONTAINER_SPAWN);
    } else {
        if (((super->z.HALF.HI == -10) && (super->subtimer == 0)) &&
            (target = GreatFairy_CreateForm(this, DROPLET, 0), target != NULL)) {
            PositionRelative(super, target, 0, Q_16_16(4.0));
            super->subtimer = 1;
        }
    }
}

// Deletes itself
void GreatFairy_MiniRemoveMe(GreatFairyEntity* this) {
    GetNextFrame(super);
    sub_080873D0(this);
    if (gRoomVars.animFlags & 1) {
        DeleteEntity(super);
    }
}

// Same as mini Great Fairy except it is able to stretch
void GreatFairy_MiniAffineCallBehavior(GreatFairyEntity* this) {
    GreatFairy_MiniAffineBehaviors[super->action](this);
}

void GreatFairy_MiniAffineInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spritePriority.b0 = 6;
    super->spriteSettings.draw = 1;
}

// Getting ready for affine transformation
void GreatFairy_MiniAffineInit2(GreatFairyEntity* this) {
    Entity* parent = super->parent;

    CopyPosition(parent, super);

    if (super->z.HALF.HI == -20) {
        super->action = 2;
        super->timer = 90;
        super->speed = 4096;
        super->spriteRendering.b0 = 3;
        SetAffineInfo(super, 256, 256, 0);
    }
}

// Mini great fairy stretch
void GreatFairy_MiniAffineUpdate(GreatFairyEntity* this) {
    if (--super->timer == 0) {
        gRoomVars.animFlags |= 1;
        super->action = 3;
        sub_0805EC60(super);
    } else {
        super->speed -= 24;
        SetAffineInfo(super, 256, super->speed >> 4, 0);
    }
}

// The droplet that falls off of the mini Great Fairy emerging from the water
void GreatFairy_DropletCallBehavior(GreatFairyEntity* this) {
    GreatFairy_DropletBehaviors[super->action](this);
}

void GreatFairy_DropletInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spriteSettings.draw = 1;
    super->z.HALF.HI = 0;
    super->spritePriority.b0 = 5;
    SoundReq(SFX_140);
}

void GreatFairy_DropletUpdate(GreatFairyEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        DeleteEntity(super);
    }
}

// Ripples that appear before the great fairy emerges
void GreatFairy_RippleCallBehavior(GreatFairyEntity* this) {
    GreatFairy_RippleBehaviors[super->action](this);
}

void GreatFairy_RippleInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 6;
}

void GreatFairy_RippleUpdate(GreatFairyEntity* this) {
    if (gRoomVars.animFlags & 2) {
        DeleteEntity(super);
    } else {
        GetNextFrame(super);
    }
}

// Big ripple that appears in the spot where the fairy emerges from
void GreatFairy_BigRippleCallBehavior(GreatFairyEntity* this) {
    GreatFairy_BigRippleBehaviors[super->action](this);
}

void GreatFairy_BigRippleInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->timer = 120;
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 5;
    SoundReq(SFX_TELEPORTER);
}

void GreatFairy_BigRippleUpdate(GreatFairyEntity* this) {
    Entity* target;

    GetNextFrame(super);
    if (super->timer != 0) {
        --super->timer;
    } else {
        target = GreatFairy_CreateForm(this, MINI, 0);
        if (target != NULL) {
            PositionRelative(super, target, 0, Q_16_16(-8.0));
            gRoomVars.animFlags |= 2;
            DeleteEntity(super);
        }
    }
}

// Energy bands that surround the mini Great Fairy as it is transforming
void GreatFairy_EnergyCallBehavior(GreatFairyEntity* this) {
    GreatFairy_EnergyBehaviors[super->action](this);
}

void GreatFairy_EnergyInit(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 5;
}

void GreatFairy_EnergyUpdate(GreatFairyEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        DeleteEntity(super);
    }
}

void sub_08087114(GreatFairyEntity* this) {
    if (super->type2 == 0) {
        GreatFairy_Form1Behaviors[super->action](this);
    } else {
        GreatFairy_Form2Behaviors[super->action](this);
        GetNextFrame(super);
    }
}

void sub_08087150(GreatFairyEntity* this) {
    GreatFairy_InitializeAnimation(this);
    super->spriteSettings.draw = 1;
    super->spriteOrientation.flipY = 0;
    super->spriteRendering.b3 = 0;
    super->spritePriority.b0 = 3;
    super->speed = 0x80;
    super->direction = 0x10;
    super->palette.b.b4 = gUnk_0812079C[0];
    super->palette.b.b0 = gUnk_0812079C[0];
}

void nullsub_516(GreatFairyEntity* this) {
}

void sub_080871A8(GreatFairyEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        super->timer = 60;
        gRoomVars.animFlags |= 4;
    }
}

void sub_080871D0(GreatFairyEntity* this) {
    if (--super->timer == 0) {
        gRoomVars.animFlags |= 8;
        DeleteEntity(super);
    }
}

void sub_080871F8(GreatFairyEntity* this) {
    Entity* temp = super->child;

    if ((temp->x.HALF.HI == super->x.HALF.HI) && (temp->y.HALF.HI - 32 == super->y.HALF.HI)) {
        super->action = 2;
    } else {
        super->direction =
            CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, temp->x.HALF.HI, temp->y.HALF.HI - 32);
        LinearMoveUpdate(super);
    }
}

void sub_08087240(GreatFairyEntity* this) {
    if (gRoomVars.animFlags & 4) {
        super->action = 3;
        super->timer = 20;
        super->direction = 16;
    }
}

void sub_08087264(GreatFairyEntity* this) {
    if (super->timer != 0) {
        super->timer--;
        LinearMoveUpdate(super);
    }
}

void sub_0808727C(GreatFairyEntity* this) {
    if (--super->timer == 0) {
        DeleteEntity(super);
    }
}

void sub_08087294(GreatFairyEntity* this) {
    gUnk_081207A4[super->action](this);
}

void sub_080872AC(GreatFairyEntity* this) {
    super->spriteSettings.draw = 1;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 0;
    this->unk_68 = super->x.HALF.HI;
    this->unk_6a = super->y.HALF.HI;
    super->direction = (u8)Random() & 0x1F;
    super->speed = 32;
    GreatFairy_InitializeAnimation(this);
}

void sub_080872F8(GreatFairyEntity* this) {
    s32 temp;
    LinearMoveUpdate(super);
    GetNextFrame(super);
    if (((u16)(this->unk_68 - super->x.HALF.HI) > 0xc) || ((u16)(this->unk_6a - super->y.HALF.HI) > 0xc)) {
        super->direction =
            CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, (s16)this->unk_68, (s16)this->unk_6a);
        super->direction = (super->direction + gUnk_081207AC[Random() & 3]) & 0x1f;
    }
    temp = gSineTable[super->timer + 64];
    super->z.HALF.HI = (temp >> 6) - 8;
    super->timer++;
}

void GreatFairy_InitializeAnimation(GreatFairyEntity* this) {
    s32 temp = 11;

    super->action = 1;
    super->type2 = super->type % temp;
    super->collisionLayer = 2;
    InitializeAnimation(super, super->type2);
    SetEntityPriority(super, PRIO_MESSAGE);
}

Entity* GreatFairy_CreateForm(GreatFairyEntity* this, u32 curForm, u32 parameter) {
    s32 nextForm;
    Entity* ent;

    nextForm = super->type;
    nextForm /= 11;

    ent = CreateObject(GREAT_FAIRY, (u8)nextForm * 11 + curForm, parameter);
    return ent;
}

void sub_080873D0(GreatFairyEntity* this) {
    Entity* ent;

    if (super->timer != 0) {
        super->timer--;
    } else {
        ent = GreatFairy_CreateForm(this, 8, 0);
        if (ent != NULL) {
            CopyPosition(super, ent);
            super->timer = 48;
        }
    }
}

void sub_080873FC(void) {
    Entity* ent;

    SoundReq(SFX_APPARATE);
    gRoomControls.camera_target = NULL;

    while (ent = FindEntityByID(OBJECT, GREAT_FAIRY, 0x6), ent != NULL) {
        DeleteEntity(ent);
    }
}

void sub_08087424(GreatFairyEntity* this, ScriptExecutionContext* context) {
    Entity* ent;

    ResetPlayerAnimationAndAction();
    ent = CreateObject(THUNDERBOLT, 0, 0);
    if (ent != NULL) {
        ent->parent = &gPlayerEntity.base;
        CopyPosition(&gPlayerEntity.base, ent);
        SetEntityPriority(ent, PRIO_MESSAGE);
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

void sub_0808747C(GreatFairyEntity* this, ScriptExecutionContext* context) {
    u32 iVar1 = 0;

    iVar1 = (u32)FindEntity(OBJECT, SPECIAL_FX, 0x6, 0xb, 0x0);
    if (iVar1 != 0) {
        iVar1 = 1;
    }
    context->condition = iVar1;
}

void (*const GreatFairy_Main[])(GreatFairyEntity*) = {
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

void (*const GreatFairy_Behaviors[])(GreatFairyEntity*) = {
    GreatFairy_Init,           GreatFairy_DormantUpdate, GreatFairy_CreateBigRipple,
    GreatFairy_SpawningUpdate, GreatFairy_MiniUpdate,    GreatFairy_FinalUpdate,
};

const s16 GreatFairy_RippleOffsets[10] = {
    0, 0, -32, -8, 16, 20, 24, -12, -16, 24,
};

void (*const GreatFairy_WingsBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_WingsInit,
    GreatFairy_WingsUpdate,
    nullsub_116,
};

void (*const GreatFairy_WakeBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_WakeInit,
    GreatFairy_WakeUpdate,
};

void (*const GreatFairy_MiniBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_MiniInit,
    GreatFairy_MiniRisingUpdate,
    GreatFairy_MiniRemoveMe,
};

void (*const GreatFairy_MiniAffineBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_MiniAffineInit,
    GreatFairy_MiniAffineInit2,
    GreatFairy_MiniAffineUpdate,
    (void (*)(GreatFairyEntity*))DeleteEntity,
};

void (*const GreatFairy_DropletBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_DropletInit,
    GreatFairy_DropletUpdate,
};

void (*const GreatFairy_RippleBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_RippleInit,
    GreatFairy_RippleUpdate,
};

void (*const GreatFairy_BigRippleBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_BigRippleInit,
    GreatFairy_BigRippleUpdate,
};

void (*const GreatFairy_EnergyBehaviors[])(GreatFairyEntity*) = {
    GreatFairy_EnergyInit,
    GreatFairy_EnergyUpdate,
};

void (*const GreatFairy_Form1Behaviors[])(GreatFairyEntity*) = {
    sub_08087150,
    nullsub_516,
    sub_080871A8,
    sub_080871D0,
};

void (*const GreatFairy_Form2Behaviors[])(GreatFairyEntity*) = {
    sub_08087150, sub_080871F8, sub_08087240, sub_08087264, sub_0808727C,
};
