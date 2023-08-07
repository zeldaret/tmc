/**
 * @file jarPortal.c
 * @ingroup Objects
 *
 * @brief Jar Portal object
 */
#define NENT_DEPRECATED
#include "area.h"
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unused1[19];
    /*0x7c*/ u8 unk_7c;
} JarPortalEntity;

extern u32 PortalReadyForMinish(void);

u32 sub_0808C128(JarPortalEntity* this);
void sub_0808C13C(JarPortalEntity* this);
void JarPortal_Init(JarPortalEntity* this);
void JarPortal_Action1(JarPortalEntity* this);
void JarPortal_Action2(JarPortalEntity* this);
void JarPortal_Action3(JarPortalEntity* this);
void JarPortal_Action4(JarPortalEntity* this);
void sub_0808C148(JarPortalEntity* this, u32);
void sub_0808C01C(JarPortalEntity* this, u32);

void JarPortal(JarPortalEntity* this) {
    static void (*const JarPortal_Actions[])(JarPortalEntity*) = {
        JarPortal_Init, JarPortal_Action1, JarPortal_Action2, JarPortal_Action3, JarPortal_Action4,
    };
    JarPortal_Actions[super->action](this);
}

void JarPortal_Init(JarPortalEntity* this) {
    COLLISION_ON(super);
    super->hitType = 1;
    super->collisionFlags = 0x47;
    super->hurtType = 0x44;
    super->flags2 = 0x80;
    this->unk_68 = 0;
    if (CheckLocalFlag(super->type)) {
        if (this->unk_7c != 0) {
            super->action = 1;
            InitAnimationForceUpdate(super, 0);
        } else {
            super->action = 3;
            InitAnimationForceUpdate(super, 1);
        }
    } else {
        if (this->unk_7c == 0) {
            super->action = 1;
            InitAnimationForceUpdate(super, 0);
        } else {
            super->action = 3;
            InitAnimationForceUpdate(super, 1);
        }
    }
}

void JarPortal_Action1(JarPortalEntity* this) {
    if (sub_0808C128(this)) {
        super->action++;
        sub_0808C13C(this);
        if (this->unk_7c == 0) {
            SetLocalFlag(super->type);
        } else {
            ClearLocalFlag(super->type);
        }
        sub_0808C148(this, 0);
    }
    sub_0808C01C(this, 0);
}

void JarPortal_Action2(JarPortalEntity* this) {
    GravityUpdate(super, Q_8_8(32.0));
    switch (super->subAction) {
        case 0:
            if (super->zVelocity < Q_16_16(1.5)) {
                ++super->subAction;
                InitAnimationForceUpdate(super, 2);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(super);
            if (!super->z.HALF.HI) {
                ++super->subAction;
                super->zVelocity = Q_16_16(0.5);
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(super);
            if (!super->z.HALF.HI) {
                ++super->action;
                super->subtimer = 0;
                InitAnimationForceUpdate(super, 1);
                sub_0808C148(this, 1);
            }
            break;
    }
}

void JarPortal_Action3(JarPortalEntity* this) {
    if (sub_0808C128(this)) {
        ++super->action;
        sub_0808C13C(this);
        if (!this->unk_7c)
            ClearLocalFlag(super->type);
        else
            SetLocalFlag(super->type);
        sub_0808C148(this, 0);
    }
    sub_0808C01C(this, 1);
}

void sub_0808C01C(JarPortalEntity* this, u32 r1) {
    if (CheckPlayerProximity(super->x.HALF.HI - 0x18, super->y.HALF.HI - 0x18, 0x30, 0x30)) {
        u32 type;
        gArea.portal_x = super->x.HALF.HI;
        gArea.portal_y = super->y.HALF.HI;
        gArea.portal_exit_dir = 2;
        type = 4;
        if (r1 != 0)
            type = 2;
        gArea.portal_type = type;
        if (r1 == 1) {
            if ((gPlayerState.flags & PL_USE_PORTAL) && (gPlayerState.jump_status == 0)) {
                gArea.portal_mode = 2;
            } else {
                if (PortalReadyForMinish() != 0) {
                    gArea.portal_mode = 3;
                }
            }
            CreateMagicSparkles(super->x.HALF.HI, super->y.HALF.HI, super->collisionLayer);
            if (super->subtimer == 0) {
                super->subtimer = 1;
                SoundReq(SFX_NEAR_PORTAL);
            }
        }
    }
}

void JarPortal_Action4(JarPortalEntity* this) {
    GravityUpdate(super, Q_8_8(32.0));
    switch (super->subAction) {
        case 0:
            if (super->zVelocity < Q_16_16(1.5)) {
                super->subAction = 1;
                InitAnimationForceUpdate(super, 3);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(super);
            if (!super->z.HALF.HI) {
                ++super->subAction;
                super->zVelocity = Q_16_16(0.5);
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(super);
            if (!super->z.HALF.HI) {
                super->action = 1;
                InitAnimationForceUpdate(super, 0);
                sub_0808C148(this, 1);
            }
            break;
    }
}

u32 sub_0808C128(JarPortalEntity* this) {
    return super->contactFlags == 157;
}

void sub_0808C13C(JarPortalEntity* this) {
    super->subAction = 0;
    super->zVelocity = Q_16_16(2.5);
}

void sub_0808C148(JarPortalEntity* this, u32 a2) {
    u32 pos;

    pos = COORD_TO_TILE(super);
    if (!a2) {
        SetTile(16530, pos - 1, super->collisionLayer);
        SetTile(16531, pos, super->collisionLayer);
        SetTile(16532, pos + 63, super->collisionLayer);
        SetTile(16533, pos + 64, super->collisionLayer);
    } else {
        RestorePrevTileEntity(pos - 1, super->collisionLayer);
        RestorePrevTileEntity(pos, super->collisionLayer);
        RestorePrevTileEntity(pos + 63, super->collisionLayer);
        RestorePrevTileEntity(pos + 64, super->collisionLayer);
    }
}
