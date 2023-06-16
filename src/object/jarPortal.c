/**
 * @file jarPortal.c
 * @ingroup Objects
 *
 * @brief Jar Portal object
 */
#include "area.h"
#include "functions.h"
#include "object.h"

extern u32 PortalReadyForMinish(void);

u32 sub_0808C128(Entity*);
void sub_0808C13C(Entity*);
void JarPortal_Init(Entity*);
void JarPortal_Action1(Entity*);
void JarPortal_Action2(Entity*);
void JarPortal_Action3(Entity*);
void JarPortal_Action4(Entity*);
void sub_0808C148(Entity*, u32);
void sub_0808C01C(Entity*, u32);

void JarPortal(Entity* this) {
    static void (*const JarPortal_Actions[])(Entity*) = {
        JarPortal_Init, JarPortal_Action1, JarPortal_Action2, JarPortal_Action3, JarPortal_Action4,
    };
    JarPortal_Actions[this->action](this);
}

void JarPortal_Init(Entity* this) {
    COLLISION_ON(this);
    this->hitType = 1;
    this->collisionFlags = 0x47;
    this->hurtType = 0x44;
    this->flags2 = 0x80;
    this->field_0x68.HALF.LO = 0;
    if (CheckLocalFlag(this->type)) {
        if (this->field_0x7c.BYTES.byte0 != 0) {
            this->action = 1;
            InitAnimationForceUpdate(this, 0);
        } else {
            this->action = 3;
            InitAnimationForceUpdate(this, 1);
        }
    } else {
        if (this->field_0x7c.BYTES.byte0 == 0) {
            this->action = 1;
            InitAnimationForceUpdate(this, 0);
        } else {
            this->action = 3;
            InitAnimationForceUpdate(this, 1);
        }
    }
}

void JarPortal_Action1(Entity* this) {
    if (sub_0808C128(this)) {
        this->action++;
        sub_0808C13C(this);
        if (this->field_0x7c.BYTES.byte0 == 0) {
            SetLocalFlag(this->type);
        } else {
            ClearLocalFlag(this->type);
        }
        sub_0808C148(this, 0);
    }
    sub_0808C01C(this, 0);
}

void JarPortal_Action2(Entity* this) {
    GravityUpdate(this, Q_8_8(32.0));
    switch (this->subAction) {
        case 0:
            if (this->zVelocity < Q_16_16(1.5)) {
                ++this->subAction;
                InitAnimationForceUpdate(this, 2);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(this);
            if (!this->z.HALF.HI) {
                ++this->subAction;
                this->zVelocity = Q_16_16(0.5);
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (!this->z.HALF.HI) {
                ++this->action;
                this->subtimer = 0;
                InitAnimationForceUpdate(this, 1);
                sub_0808C148(this, 1);
            }
            break;
    }
}

void JarPortal_Action3(Entity* this) {
    if (sub_0808C128(this)) {
        ++this->action;
        sub_0808C13C(this);
        if (!this->field_0x7c.BYTES.byte0)
            ClearLocalFlag(this->type);
        else
            SetLocalFlag(this->type);
        sub_0808C148(this, 0);
    }
    sub_0808C01C(this, 1);
}

void sub_0808C01C(Entity* this, u32 r1) {
    if (CheckPlayerProximity(this->x.HALF.HI - 0x18, this->y.HALF.HI - 0x18, 0x30, 0x30)) {
        u32 type;
        gArea.portal_x = this->x.HALF.HI;
        gArea.portal_y = this->y.HALF.HI;
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
            CreateMagicSparkles(this->x.HALF.HI, this->y.HALF.HI, this->collisionLayer);
            if (this->subtimer == 0) {
                this->subtimer = 1;
                SoundReq(SFX_NEAR_PORTAL);
            }
        }
    }
}

void JarPortal_Action4(Entity* this) {
    GravityUpdate(this, Q_8_8(32.0));
    switch (this->subAction) {
        case 0:
            if (this->zVelocity < Q_16_16(1.5)) {
                this->subAction = 1;
                InitAnimationForceUpdate(this, 3);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(this);
            if (!this->z.HALF.HI) {
                ++this->subAction;
                this->zVelocity = Q_16_16(0.5);
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (!this->z.HALF.HI) {
                this->action = 1;
                InitAnimationForceUpdate(this, 0);
                sub_0808C148(this, 1);
            }
            break;
    }
}

u32 sub_0808C128(Entity* this) {
    return this->contactFlags == 157;
}

void sub_0808C13C(Entity* this) {
    this->subAction = 0;
    this->zVelocity = Q_16_16(2.5);
}

void sub_0808C148(Entity* this, u32 a2) {
    u32 pos;

    pos = COORD_TO_TILE(this);
    if (!a2) {
        SetTile(0x4092, pos - 1, this->collisionLayer);
        SetTile(0x4093, pos, this->collisionLayer);
        SetTile(0x4094, pos + 63, this->collisionLayer);
        SetTile(0x4095, pos + 64, this->collisionLayer);
    } else {
        RestorePrevTileEntity(pos - 1, this->collisionLayer);
        RestorePrevTileEntity(pos, this->collisionLayer);
        RestorePrevTileEntity(pos + 63, this->collisionLayer);
        RestorePrevTileEntity(pos + 64, this->collisionLayer);
    }
}
