/**
 * @file windTribeTeleporter.c
 * @ingroup Objects
 *
 * @brief Wind Tribe Teleporter object
 */
#define NENT_DEPRECATED
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "screenTransitions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
} WindTribeTeleporterEntity;

void WindTribeTeleporter_Init(WindTribeTeleporterEntity*);
void WindTribeTeleporter_Action1(WindTribeTeleporterEntity*);
void WindTribeTeleporter_Action2(WindTribeTeleporterEntity*);
void WindTribeTeleporter_Action3(WindTribeTeleporterEntity*);
void sub_080A11E0(WindTribeTeleporterEntity*);
bool32 sub_080A11C0(WindTribeTeleporterEntity*);

void WindTribeTeleporter(WindTribeTeleporterEntity* this) {
    static void (*const WindTribeTeleporter_Actions[])(WindTribeTeleporterEntity*) = {
        WindTribeTeleporter_Init,
        WindTribeTeleporter_Action1,
        WindTribeTeleporter_Action2,
        WindTribeTeleporter_Action3,
    };
    WindTribeTeleporter_Actions[super->action](this);
    sub_080A11E0(this);
}

void WindTribeTeleporter_Init(WindTribeTeleporterEntity* this) {
    super->action = 1;
    super->frameDuration = 8;
    super->spritePriority.b0 = 7;
    super->hitbox = (Hitbox*)&gHitbox_22;
    SetDefaultPriority(super, 6);
    if (sub_080A11C0(this)) {
        gPlayerEntity.x.HALF.HI = super->x.HALF.HI;
        gPlayerEntity.y.HALF.HI = super->y.HALF.HI;
        SetPlayerControl(CONTROL_DISABLED);
        sub_08078B48();
        SetPlayerEventPriority();
        SoundReq(SFX_112);
        super->action = 3;
        super->subAction = 0;
        this->unk_68 = 1;
    }
}

void WindTribeTeleporter_Action1(WindTribeTeleporterEntity* this) {
    if (sub_080A11C0(this)) {
        if (this->unk_68 == 0) {
            gPlayerEntity.x.HALF.HI = super->x.HALF.HI;
            gPlayerEntity.y.HALF.HI = super->y.HALF.HI;
            SetPlayerControl(CONTROL_DISABLED);
            sub_08078B48();
            SetPlayerEventPriority();
            SoundReq(SFX_112);
            super->action = 2;
            super->subAction = 0;
        }
    } else {
        this->unk_68 = 0;
    }
}

void WindTribeTeleporter_Action2(WindTribeTeleporterEntity* this) {
    switch (super->subAction) {
        case 0:
            super->timer = 30;
            super->subAction++;
            break;
        case 1:
            if (--super->timer == 0) {
                super->subAction++;
                super->timer = 30;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                super->subAction++;
                super->timer = 30;
                SoundReq(SFX_113);
            } else {
                if ((gRoomTransition.frameCount & 7) == 0) {
                    gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
                }
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->subAction++;
                super->timer = 30;
            } else {
                if ((gRoomTransition.frameCount & 3) == 0) {
                    gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
                }
            }
            break;
        default:
            if (--super->timer == 0) {
#if defined(DEMO_JP) || defined(JP) || defined(EU)
#ifdef DEMO_JP
                SetLocalFlag(0xfc);
#endif
                DoExitTransition(&gUnk_0813ADEC[super->type2]);
#else
                if (gRoomControls.area == 3) {
                    SetLocalFlag(0xf9);
                }
                DoExitTransition(&gUnk_0813ADEC[super->type2]);
#endif
            } else {
                if ((gRoomTransition.frameCount & 1) == 0) {
                    gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
                }
            }
            break;
    }
}

void WindTribeTeleporter_Action3(WindTribeTeleporterEntity* this) {
    switch (super->subAction) {
        case 0:
            super->subAction = 1;
            super->timer = 30;
            SoundReq(SFX_114);
            break;
        case 1:
            if (--super->timer != 0) {
                if ((gRoomTransition.frameCount & 1) == 0) {
                    gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
                }
            } else {
                super->subAction++;
                super->timer = 30;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                super->subAction++;
                super->timer = 30;
            } else {
                if ((gRoomTransition.frameCount & 3) == 0) {
                    gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
                }
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->subAction++;
            } else {
                if ((gRoomTransition.frameCount & 7) == 0) {
                    gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
                }
            }
            break;
        default:
            if (gPlayerEntity.animationState != 4) {
                if ((gRoomTransition.frameCount & 7U) != 0) {
                    return;
                }
                gPlayerEntity.animationState = (gPlayerEntity.animationState + 2) & 6;
            } else {
                super->action = 1;
                super->subAction = 0;
                gPlayerState.controlMode = 1;
                ResetPlayerEventPriority();
            }
            break;
    }
}

bool32 sub_080A11C0(WindTribeTeleporterEntity* this) {
    if (gPlayerEntity.z.HALF.HI != 0) {
        return FALSE;
    } else {
        return IsCollidingPlayer(super);
    }
}

void sub_080A11E0(WindTribeTeleporterEntity* this) {
    if (--super->frameDuration == 0) {
        super->frameDuration = 8;
        super->frameIndex = (super->frameIndex + 1) & 3;
    }
}
