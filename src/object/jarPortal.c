#include "global.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "area.h"
#include "audio.h"

extern void (*gUnk_08121488[])(Entity*);

extern u32 sub_08057810(void);
extern void CreateMagicSparkles(u32, u32, u32);

u32 sub_0808C128(Entity*);
void sub_0808C13C(Entity*);
void sub_0808C148(Entity*, u32);
void sub_0808C01C(Entity*, u32);

void JarPortal(Entity* this) {
    gUnk_08121488[this->action](this);
}

void sub_0808BE9C(Entity* this) {
    this->flags |= 0x80;
    this->damageType = 1;
    this->field_0x3c = 0x47;
    this->field_0x40 = 0x44;
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

void sub_0808BF14(Entity* this) {
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

void sub_0808BF58(Entity* this) {
    sub_08003FC4(this, 0x2000);
    switch (this->subAction) {
        case 0:
            if (this->field_0x20 <= 98303) {
                ++this->subAction;
                InitAnimationForceUpdate(this, 2);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(this);
            if (!this->height.HALF.HI) {
                ++this->subAction;
                this->field_0x20 = 0x8000;
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (!this->height.HALF.HI) {
                ++this->action;
                this->field_0xf = 0;
                InitAnimationForceUpdate(this, 1);
                sub_0808C148(this, 1);
            }
            break;
    }
}

void sub_0808BFD8(Entity* this) {
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
        gArea.curPortalX = this->x.HALF.HI;
        gArea.curPortalY = this->y.HALF.HI;
        gArea.curPortalExitDirection = 2;
        type = 4;
        if (r1 != 0)
            type = 2;
        gArea.curPortalType = type;
        if (r1 == 1) {
            if (((gPlayerState.flags.all & 0x20) != 0) && (gPlayerState.jumpStatus == 0)) {
                gArea.field_0x18 = 2;
            } else {
                if (sub_08057810() != 0) {
                    gArea.field_0x18 = 3;
                }
            }
            CreateMagicSparkles(this->x.HALF.HI, this->y.HALF.HI, this->collisionLayer);
            if (this->field_0xf == 0) {
                this->field_0xf = 1;
                SoundReq(SFX_NEAR_PORTAL);
            }
        }
    }
}

void sub_0808C0AC(Entity* this) {
    sub_08003FC4(this, 0x2000);
    switch (this->subAction) {
        case 0:
            if (this->field_0x20 <= 98303) {
                this->subAction = 1;
                InitAnimationForceUpdate(this, 3);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(this);
            if (!this->height.HALF.HI) {
                ++this->subAction;
                this->field_0x20 = 0x8000;
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (!this->height.HALF.HI) {
                this->action = 1;
                InitAnimationForceUpdate(this, 0);
                sub_0808C148(this, 1);
            }
            break;
    }
}

u32 sub_0808C128(Entity* this) {
    return this->bitfield == 157;
}

void sub_0808C13C(Entity* this) {
    this->subAction = 0;
    this->field_0x20 = 163840;
}

void sub_0808C148(Entity* this, u32 a2) {
    u32 pos;

    pos = COORD_TO_TILE(this);
    if (!a2) {
        SetTile(16530, pos - 1, this->collisionLayer);
        SetTile(16531, pos, this->collisionLayer);
        SetTile(16532, pos + 63, this->collisionLayer);
        SetTile(16533, pos + 64, this->collisionLayer);
    } else {
        sub_0807BA8C(pos - 1, this->collisionLayer);
        sub_0807BA8C(pos, this->collisionLayer);
        sub_0807BA8C(pos + 63, this->collisionLayer);
        sub_0807BA8C(pos + 64, this->collisionLayer);
    }
}
